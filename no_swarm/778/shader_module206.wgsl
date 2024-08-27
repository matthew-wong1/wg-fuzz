struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = abs(-(~vec3<i32>(u_input.b, 36820i << (global0.x % 32u), global1.b.a)));
    var var_1 = global1.b;
    var_0 = u_input.c.yzw;
    let var_2 = Struct_1(var_1.a, all(vec4<bool>(all(vec4<bool>(false, false, false, true)), var_1.c.x, all(vec3<bool>(true, true, true)), false)), select(!global1.d.c, !(!select(vec3<bool>(global1.b.b, true, false), var_1.c, global1.d.c)), (all(vec4<bool>(false, false, true, false)) | global1.d.b) || !var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * var_1.d) + _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(global1.a - global1.b.d)))), countOneBits(~select(global1.b.e, var_1.e, true)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -941f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-854f)), _wgslsmith_f_op_f32(var_1.d * var_1.d)))) + -527f), Struct_1(8638i, !any(!var_2.c.yx), var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -336f), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.x, global0.x, 9709u, 36664u), vec4<u32>(36477u, global0.x, global1.d.e.x, arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d))), var_2);
    return u_input.c.x;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> vec4<f32> {
    var var_0 = Struct_3(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-884f * -987f) - arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-434f, _wgslsmith_f_op_f32(min(-341f, -609f)))) * _wgslsmith_f_op_f32(f32(-1f) * -860f)), -826f));
    global0 = vec2<u32>(~_wgslsmith_add_u32(1u, global1.d.e.x), _wgslsmith_sub_u32(arg_0.d.e.x, countOneBits(global1.b.e.x)));
    let var_1 = arg_0.d.b;
    let var_2 = !all(!select(!vec2<bool>(arg_0.b.b, global1.d.b), vec2<bool>(true, false), var_1));
    let var_3 = arg_0.b.e.zy;
    return _wgslsmith_f_op_vec4_f32(-var_0.a);
}

fn func_2() -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(global1.b.d, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f) + _wgslsmith_div_f32(global1.a, -1522f)), global1.b), _wgslsmith_mult_i32(firstTrailingBit(-1i), global1.d.a), func_3(firstLeadingBit(~vec4<u32>(0u, 1u, u_input.a, 29220u))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_4 {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(abs(arg_1.c), ~arg_1.c), 20372u), _wgslsmith_clamp_vec2_u32(firstLeadingBit(abs(_wgslsmith_mod_vec2_u32(global1.d.e.xw, vec2<u32>(arg_0.c, 75638u)))), global1.d.e.ww, ~(~_wgslsmith_add_vec2_u32(global1.d.e.xx, vec2<u32>(100217u, global0.x)))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a.x, arg_2.a.x))), global1.b, arg_2.a.x, Struct_1(16450i, global1.b.b, vec3<bool>(true, !select(global1.b.b, false, arg_3.x), all(select(arg_0.a.zzy, vec3<bool>(false, false, global1.d.c.x), arg_0.a.zww))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.a.x, 1000f, global1.d.b)) + _wgslsmith_f_op_f32(trunc(265f))) + _wgslsmith_f_op_vec4_f32(func_4(Struct_2(arg_2.a.x, global1.d, -1000f, global1.d), -44190i, _wgslsmith_clamp_i32(u_input.c.x, -72818i, global1.d.a))).x), min(~abs(vec4<u32>(53542u, u_input.a, global1.b.e.x, arg_0.c)), abs(vec4<u32>(1u, arg_1.c, u_input.a, 0u)))));
    var var_1 = select(select(select(select(select(var_0.b.c, vec3<bool>(true, true, true), global1.d.b), vec3<bool>(false, false, true), vec3<bool>(true, global1.b.b, arg_3.x)), arg_1.a.xxy, true), select(!global1.b.c, vec3<bool>(!global1.b.b, true, global1.b.c.x), !select(var_0.d.c, vec3<bool>(arg_3.x, true, false), vec3<bool>(arg_1.a.x, false, true))), var_0.d.c), vec3<bool>(any(vec4<bool>(true, !arg_0.a.x, arg_1.b.a.x > arg_2.a.x, true)), select(false, all(arg_0.a.xz), global1.d.b | global1.d.c.x) || all(global1.b.c), true), !vec3<bool>(all(vec2<bool>(arg_3.x, arg_0.a.x)) & true, all(select(vec2<bool>(arg_1.a.x, var_0.d.b), vec2<bool>(global1.d.b, false), true)), arg_1.b.a.x < _wgslsmith_f_op_f32(-global1.c)));
    let var_2 = select(true, (any(global1.b.c.zz) & false) & (true || var_1.x), true);
    global1 = Struct_2(435f, var_0.b, arg_0.b.a.x, Struct_1(global1.b.a, true, arg_1.a.zwy, -1674f, ~(var_0.b.e << (vec4<u32>(0u, 4294967295u, var_0.d.e.x, 4294967295u) % vec4<u32>(32u))) >> (countOneBits(reverseBits(vec4<u32>(u_input.a, global1.d.e.x, u_input.a, 26647u))) % vec4<u32>(32u))));
    return arg_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_5(-427f, vec3<bool>(false, !global1.d.b, all(global1.d.c.xz)), _wgslsmith_f_op_f32(trunc(global1.d.d)), func_5(Struct_4(select(!vec4<bool>(false, true, global1.b.c.x, true), !vec4<bool>(false, false, global1.d.b, global1.b.b), !global1.b.c.x), func_2(), ~u_input.a & 4294967295u), Struct_4(vec4<bool>(true, global1.b.b, true, global0.x != global1.d.e.x), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, 510f, 2109f, global1.d.d))), 1u), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(floor(-1219f)), -1067f, _wgslsmith_f_op_f32(abs(global1.c)), global1.c)), !vec3<bool>(!global1.d.b, global1.b.c.x, global1.b.d > global1.a)));
    global0 = vec2<u32>(~global0.x, ~(~_wgslsmith_add_u32(global0.x, global1.d.e.x) | firstLeadingBit(4294967295u)));
    var var_1 = var_0.d.b;
    let var_2 = ~global1.b.e.x;
    var var_3 = (reverseBits(select(-vec4<i32>(-2147483647i, u_input.b, -60332i, 27728i), _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(global1.d.a, u_input.c.x, global1.b.a, 1i)), vec4<bool>(true, var_0.d.a.x, global1.b.c.x, false))) ^ vec4<i32>(global1.d.a, -7501i, -1973i, u_input.c.x)) | u_input.c;
    return StorageBuffer(select(vec4<u32>(countOneBits(0u), 0u, 1u, global1.b.e.x), vec4<u32>(_wgslsmith_sub_u32(global0.x, 0u), ~global1.b.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_2, global1.d.e.x), global1.b.e.yzy), _wgslsmith_dot_vec2_u32(global1.b.e.yx, global1.d.e.zy)), var_0.d.a) & ~firstLeadingBit(global1.d.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_i32(~0i, select(-2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.c.x), u_input.c.yxx), !any(vec2<bool>(global1.b.c.x, true)))), ~58925u >= ~global0.x, global1.d.c, _wgslsmith_f_op_f32(-global1.a), vec4<u32>(~_wgslsmith_div_u32(abs(global1.d.e.x), global1.d.e.x >> (0u % 32u)), u_input.a, 1u, 0u));
    global1 = Struct_2(var_0.d, global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(261f, -1054f) - var_0.d) - 1221f), global1.d);
    let x = u_input.a;
    s_output = func_1();
}

