struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec2<f32>;

var<private> global2: f32 = 1365f;

var<private> global3: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    global2 = _wgslsmith_f_op_f32(abs(-1151f));
    var var_0 = arg_2;
    var var_1 = vec4<i32>(2147483647i, abs(~_wgslsmith_sub_i32(u_input.a.x, 15057i)), -abs(~_wgslsmith_clamp_i32(1i, var_0.b.x, u_input.a.x)), _wgslsmith_div_i32(arg_1.b.x, -1i));
    var_1 = vec4<i32>(max(select(arg_2.b.x, ~var_1.x >> (_wgslsmith_mod_u32(u_input.c.x, u_input.b) % 32u), var_0.d.x), arg_1.b.x << (_wgslsmith_add_u32(abs(u_input.b), u_input.c.x) % 32u)), _wgslsmith_mult_i32(-1i, firstTrailingBit(-var_1.x << (_wgslsmith_mod_u32(1u, 12052u) % 32u))), reverseBits(~_wgslsmith_mult_i32(26149i, -arg_2.a)), _wgslsmith_clamp_i32(~(_wgslsmith_dot_vec2_i32(arg_1.b.yz, vec2<i32>(16389i, 1i)) | abs(arg_2.b.x)), -1i, u_input.a.x));
    var var_2 = Struct_1(firstLeadingBit(arg_1.b.x), max(vec3<i32>(-1i) * -abs(arg_1.b), ~vec3<i32>(abs(0i), -13142i, ~(-2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.c)) * arg_1.c)))), vec3<bool>(arg_2.d.x, arg_0, _wgslsmith_f_op_f32(trunc(var_0.c)) != _wgslsmith_f_op_f32(-890f * 1000f)));
    return arg_2.c;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> vec4<u32> {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let var_0 = Struct_2(u_input.c, -77119i, u_input.c, any(arg_1.wwy), Struct_1(-15945i >> (countOneBits(u_input.c.x) % 32u), u_input.a, _wgslsmith_f_op_f32(func_3(!arg_1.x & (true | arg_1.x), Struct_1(51967i, vec3<i32>(-2513i, u_input.a.x, u_input.a.x), 654f, !vec3<bool>(false, arg_1.x, false)), Struct_1(~u_input.a.x, abs(vec3<i32>(19098i, 63262i, 2147483647i)), -795f, select(vec3<bool>(arg_1.x, true, false), arg_1.xyx, false)), arg_1.x)), select(vec3<bool>(all(vec2<bool>(true, false)), true, any(vec3<bool>(true, arg_1.x, false))), select(arg_1.yyz, !vec3<bool>(arg_1.x, arg_1.x, false), !arg_1.wxz), all(select(arg_1, vec4<bool>(false, arg_1.x, true, arg_1.x), arg_1)))));
    global2 = global1.x;
    return u_input.c;
}

fn func_1() -> Struct_2 {
    return Struct_2(func_2(_wgslsmith_f_op_f32(-422f * 535f), vec4<bool>(false, all(vec3<bool>(true, true, true)), false, select(true, true, true))), i32(-1i) * -91038i, vec4<u32>(46540u, ~(~func_2(global1.x, vec4<bool>(true, true, false, true)).x), ~4294967295u, ~(~u_input.b)), false, Struct_1(~countOneBits(u_input.a.x) << ((max(35993u, 8201u) >> (u_input.c.x % 32u)) % 32u), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(u_input.a.x, -1i, u_input.a.x)), -_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(41479i, u_input.a.x, -33387i)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 4294967295u), u_input.c.zyz) >= ~10566u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a.x;
    let var_0 = vec3<i32>(-2147483647i, abs(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.zz)), -1i);
    let var_1 = func_1();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 291f, -1519f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(905f, global1.x, 372f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, var_1.e.c, var_1.e.c)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.e.c)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-790f * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1802f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(-289f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1236f, var_1.e.c, 724f)) * vec3<f32>(global1.x, var_1.e.c, var_1.e.c)))) - vec3<f32>(_wgslsmith_div_f32(global1.x, var_1.e.c), _wgslsmith_f_op_f32(-global1.x), global1.x)));
    let var_3 = Struct_1(1i, abs(vec3<i32>(~u_input.a.x, abs(69020i), countOneBits(var_0.x)) | abs(abs(var_1.e.b))), 930f, vec3<bool>(var_1.d, true, var_1.e.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

