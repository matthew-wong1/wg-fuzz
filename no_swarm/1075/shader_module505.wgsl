struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_3(-1482f);
    let var_1 = u_input.a.x;
    var var_2 = -386f;
    let var_3 = select(vec2<bool>(select(!any(vec3<bool>(true, true, false)), true, false), !all(vec2<bool>(true, true)) && true), vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_4 = _wgslsmith_mod_u32(19912u, _wgslsmith_mod_u32(u_input.a.x, ~min(var_1, 28106u))) << (0u % 32u);
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec3<bool>(true, true, select(true, any(vec3<bool>(true, true, false)), true)), vec3<bool>(all(vec4<bool>(true, true, true, true)) == (false & all(vec4<bool>(false, false, false, true))), func_3(1921f), true), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), any(vec3<bool>(true, false, false)))));
    var var_1 = false;
    var_1 = true;
    var var_2 = u_input.a.xwz;
    var var_3 = true;
    return Struct_1(~(abs(1i) << (firstTrailingBit(_wgslsmith_sub_u32(var_2.x, var_2.x)) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(5782i, -2147483647i)), all(vec3<bool>(!any(vec2<bool>(true, true)), false, func_3(-1204f) && var_0.x)), !(!(!var_0.zx)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(594f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-101f, -596f)) + _wgslsmith_f_op_f32(round(2101f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(190f + 2872f)))) + _wgslsmith_f_op_f32(563f - 255f)));
    let var_1 = vec3<u32>(~_wgslsmith_add_u32(~abs(arg_1.x), 1u), arg_1.x, arg_1.x);
    let var_2 = Struct_4(arg_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(f32(-1f) * -166f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 621f, var_0, var_0) - vec4<f32>(683f, 552f, 207f, var_0))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, var_0, var_0, var_0))))));
    var var_4 = var_3.wwx;
    return var_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(func_4(func_2(), ~vec4<u32>(u_input.a.x, abs(u_input.a.x), ~u_input.a.x, 4294967295u)));
    let var_1 = ~(~1u) & u_input.a.x;
    var var_2 = 1000f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(865f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(2013f, 1555f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2004f)), -240f)), _wgslsmith_f_op_f32(sign(1204f))) * vec4<f32>(_wgslsmith_f_op_f32(-407f - -167f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + 236f))), _wgslsmith_f_op_f32(336f - _wgslsmith_f_op_f32(f32(-1f) * -526f)), -245f)));
    var var_4 = var_0.a.c;
    return func_4(var_0.a, vec4<u32>(_wgslsmith_mod_u32(max(u_input.a.x, 0u & u_input.b.x), 14142u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 1u, var_1, var_1)), ~var_1, 0u), ~var_1), 4294967295u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1882f), -401f), -1000f);
    var var_1 = 0u;
    var var_2 = func_1();
    var var_3 = _wgslsmith_dot_vec4_u32(abs(u_input.a), u_input.a);
    let var_4 = abs(u_input.a.x);
    var var_5 = func_4(func_2(), u_input.a);
    let var_6 = Struct_2(Struct_1(~(~1i), var_2.a, all(select(vec3<bool>(var_5.d.x, false, true), vec3<bool>(true, var_2.d.x, var_5.c), false)) | var_2.c, var_2.d), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_5.b, -18489i, 0i, var_2.b), vec4<i32>(1i, var_2.b, var_2.b, -66305i)) << (0u % 32u), _wgslsmith_div_i32(var_2.b, var_2.a), var_5.b, 925i), ~((vec4<i32>(var_5.b, -1i, var_5.b, 38400i) & vec4<i32>(var_2.a, var_5.b, -1i, var_5.a)) >> (vec4<u32>(40076u, u_input.a.x, var_4, 7915u) % vec4<u32>(32u)))));
    var_3 = ~var_4;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, abs(u_input.a.x))));
}

