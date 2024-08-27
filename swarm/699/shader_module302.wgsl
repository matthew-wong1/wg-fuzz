struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = abs(arg_0.c.x);
    var var_1 = arg_0.b;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(514f)), -511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + arg_0.b.a.x)), -302f));
    var_1 = arg_0.b;
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(805f - arg_0.b.a.x), _wgslsmith_f_op_f32(var_1.a.x * arg_0.b.a.x), _wgslsmith_f_op_f32(-332f - -469f)))));
    return !select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, true), select(false, false, false), true, any(vec4<bool>(false, false, true, true))), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, 1904f <= var_2.a.x, true)), select(true != any(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true)), true));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_1.a);
    var var_1 = !(!(!all(func_3(Struct_2(u_input.b.x, arg_1, vec4<u32>(u_input.d.x, 12914u, 17831u, 0u))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-arg_1.a);
    let var_2 = 75798u;
    let var_3 = Struct_2(7338i, Struct_1(arg_1.a), _wgslsmith_div_vec4_u32(firstTrailingBit(~u_input.d), vec4<u32>(1u, 1u, 1u, 1u)) << (countOneBits(~_wgslsmith_add_vec4_u32(u_input.d, u_input.d)) % vec4<u32>(32u)));
    return var_3.a | 8292i;
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.b.x);
    var var_1 = u_input.a;
    let var_2 = u_input.b.x;
    let var_3 = !vec2<bool>(858f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-762f)))), (func_2(-29128i, Struct_1(vec4<f32>(198f, -134f, 1280f, -1245f)), 1000f) >> (_wgslsmith_div_u32(var_1.x, 18076u) % 32u)) != var_2);
    let var_4 = ~var_1.zz;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -469f), -766f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(f32(-1f) * -1053f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1330f * -2003f)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec4<u32>(u_input.c, ~25120u, ~(~arg_0.x), 4294967295u);
    var var_1 = func_3(arg_1).xzz;
    let var_2 = vec4<u32>(min(73305u, ~abs(~103868u)), 4294967295u << (~arg_1.c.x % 32u), 24349u, arg_0.x);
    let var_3 = u_input.b | u_input.b;
    let var_4 = arg_1.b;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~_wgslsmith_clamp_vec2_u32(~u_input.d.yw, u_input.a.zy, u_input.a.zz), Struct_2(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(26601i, -u_input.b.x, ~u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.wy, -u_input.b.wy)), func_1(), u_input.d));
    let var_1 = u_input.a.x;
    var var_2 = all(select(!vec3<bool>(true, true, select(false, false, true)), !func_3(Struct_2(var_0.a, var_0.b, u_input.d)).xwy, func_3(Struct_2(0i, var_0.b, _wgslsmith_clamp_vec4_u32(var_0.c, vec4<u32>(var_1, u_input.a.x, 0u, 7859u), vec4<u32>(66651u, var_0.c.x, u_input.c, u_input.a.x)))).zxz));
    let var_3 = var_0.b.a;
    var var_4 = var_0.a;
    let var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

