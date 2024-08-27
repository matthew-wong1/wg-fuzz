struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(384f, -1000f), vec3<f32>(2359f, 312f, -111f), vec3<i32>(15650i, -4408i, 1i), vec2<f32>(465f, 226f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.d, global1.a.d) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a.a.x, global1.a.d.x), global1.a.a)))), arg_0.a.b, arg_0.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(143f, arg_0.a.b.x), vec2<f32>(global1.a.d.x, -1198f)))))));
    var var_0 = vec3<bool>(all(vec4<bool>(true, select(any(vec4<bool>(false, false, false, true)), true, all(vec4<bool>(true, true, true, true))), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), !(arg_0.a.b.x < 1352f), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, any(vec3<bool>(true, false, false))), any(vec3<bool>(false, false, true)))));
    let var_1 = Struct_1(arg_0.a.b.zy, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.x, arg_0.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1292f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-683f, _wgslsmith_f_op_f32(step(1189f, 489f)), _wgslsmith_f_op_f32(max(global1.a.b.x, arg_0.a.d.x)))))), ~(u_input.b.xwy | firstTrailingBit(min(vec3<i32>(6782i, -1i, u_input.b.x), arg_0.a.c))), _wgslsmith_f_op_vec2_f32(-global1.a.d));
    global0 = u_input.d;
    global1 = Struct_2(arg_0.a);
    return 63962u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_0.zy, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1161f, -1055f, arg_0.x)), _wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(2540f, arg_1.x, -467f), vec3<bool>(false, false, false)))) - _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-586f, -587f, arg_0.x) - vec3<f32>(-207f, -291f, -324f)))), global1.a.c << (~u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1.xz * vec2<f32>(arg_0.x, 753f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(812f, 509f) - vec2<f32>(arg_1.x, global1.a.d.x)))));
    global0 = (~u_input.c.x << (53151u % 32u)) | abs(_wgslsmith_mod_u32(u_input.d, _wgslsmith_mod_u32(abs(u_input.a.x), func_3(Struct_2(var_0.a)))));
    let var_1 = _wgslsmith_dot_vec3_i32(reverseBits(-abs(vec3<i32>(68869i, 84284i, 2147483647i) | var_0.a.c)), var_0.a.c);
    let var_2 = Struct_2(Struct_1(arg_1.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b))), -_wgslsmith_mod_vec3_i32(abs(u_input.b.zyw), _wgslsmith_mod_vec3_i32(global1.a.c, u_input.b.yxx)), arg_0.yz));
    return var_2.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    global1 = arg_1;
    let var_0 = vec3<u32>(~reverseBits(25475u), countOneBits(4294967295u), (u_input.a.x >> (~4294967295u % 32u)) >> (u_input.c.x % 32u));
    let var_1 = func_2(arg_1.a.b, global1.a.b);
    var var_2 = arg_1.a;
    let var_3 = -31077i;
    return Struct_2(arg_1.a);
}

fn func_1() -> i32 {
    let var_0 = global1.a.d.x;
    var var_1 = func_4(vec2<bool>(true, true), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.b * vec3<f32>(-658f, global1.a.a.x, 1663f)) + vec3<f32>(global1.a.a.x, global1.a.a.x, global1.a.d.x)), _wgslsmith_f_op_vec3_f32(-global1.a.b))));
    var var_2 = Struct_2(var_1.a);
    let var_3 = Struct_3(var_1.a.c.zy >> (vec2<u32>(func_3(func_4(vec2<bool>(true, false), Struct_2(var_2.a))), _wgslsmith_dot_vec4_u32(min(vec4<u32>(37483u, u_input.d, 17382u, 114100u), u_input.c), select(u_input.c, vec4<u32>(18024u, u_input.d, u_input.c.x, u_input.c.x), vec4<bool>(false, false, false, false)))) % vec2<u32>(32u)), 51287u, var_1.a);
    global1 = Struct_2(var_2.a);
    return ~(-var_2.a.c.x & -47133i);
}

fn func_5(arg_0: i32, arg_1: i32) -> u32 {
    global0 = _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, ~31030u), ~(~u_input.d)), 1u), 18139u);
    let var_0 = Struct_3(vec2<i32>(_wgslsmith_mod_i32(~arg_0, u_input.b.x), arg_1), u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.b.zx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.a.x, global1.a.a.x, 187f), global1.a.b, true)), global1.a.b)) + global1.a.b), vec3<i32>(-global1.a.c.x, ~47351i ^ global1.a.c.x, -arg_1 | (global1.a.c.x << (7772u % 32u))), global1.a.a));
    let var_1 = true && (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~arg_1, -2147483647i << (var_0.b % 32u), global1.a.c.x << (4294967295u % 32u)), var_0.c.c.x) != select(0i, max(global1.a.c.x, _wgslsmith_mod_i32(2147483647i, 1i)), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-242f, -363f) * 708f) + var_0.c.b.x)), vec2<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(-var_0.c.b.x))));
    let var_3 = func_4(select(!vec2<bool>(var_1, var_1), vec2<bool>(true, true), all(select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, true, true)))), func_4(vec2<bool>(false, true), Struct_2(var_0.c))).a.b.yz;
    return 54954u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<i32>(u_input.b.x, -_wgslsmith_sub_i32(u_input.b.x, 2147483647i) << (0u % 32u)), func_5(func_1() >> (_wgslsmith_dot_vec3_u32(select(u_input.c.xzz, vec3<u32>(u_input.c.x, 47716u, u_input.a.x), vec3<bool>(true, true, true)), vec3<u32>(u_input.d, u_input.c.x, u_input.c.x) | u_input.c.wxx) % 32u), firstLeadingBit(_wgslsmith_mult_i32(min(global1.a.c.x, -2147483647i), ~(-1i)))), global1.a);
    var var_1 = false != !(false && (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_0.b, 1u, u_input.d)) < 32158u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(168f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-288f - global1.a.b.x)), var_0.c.a.x));
}

