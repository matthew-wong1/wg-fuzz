struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    return all(vec4<bool>(!select(true, true, all(vec3<bool>(true, false, false))), false | all(vec4<bool>(false, false, false, true)), firstTrailingBit(~55596u) == ~(~4294967295u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -24266i, u_input.a.x), u_input.a) >= _wgslsmith_mod_i32(-u_input.a.x, 2147483647i)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(func_3(), true, all(vec3<bool>(false, true, true))), vec4<bool>(!all(vec2<bool>(true, true)), true, all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))), any(vec2<bool>(true, true))), u_input.a.x, false);
    let var_1 = var_0;
    var var_2 = var_0.a.x;
    var_2 = firstLeadingBit(abs(~_wgslsmith_mod_u32(~3312u, 28618u)));
    var var_3 = true;
    return vec3<bool>(all(var_0.c), var_0.c.x, true);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(vec4<u32>(68342u, 1u, 4294967295u, (_wgslsmith_mod_u32(arg_0, arg_0) >> (_wgslsmith_mod_u32(arg_0, arg_0) % 32u)) & ((1u ^ arg_2.a.x) ^ (arg_0 ^ arg_2.a.x))), func_2(), select(select(!select(vec4<bool>(false, false, false, arg_2.c.x), vec4<bool>(true, false, false, arg_2.c.x), vec4<bool>(false, arg_2.c.x, arg_2.b.x, true)), select(arg_2.c, !vec4<bool>(false, arg_2.c.x, false, arg_2.e), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.e)), true), arg_2.c, arg_2.b.x), 0i, false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1)))));
    let var_2 = arg_2;
    var var_3 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a.x, 43963u), arg_2.a.yw), vec2<u32>(arg_0, 0u)), 4294967295u, arg_2.a.x, arg_2.a.x), func_2(), vec4<bool>(var_0.e || true, var_2.e, select(!any(var_2.c), var_2.a.x < 0u, true), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(min(var_1, -244f))) > 473f), 29705i, _wgslsmith_sub_i32(countOneBits(~2147483647i), _wgslsmith_dot_vec2_i32(u_input.a.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.wz, u_input.a.xw))) > 2147483647i);
    var var_4 = vec2<u32>(arg_0, arg_0);
    return select(arg_2.b, var_3.c.zxw, all(!(!select(vec2<bool>(var_3.c.x, false), var_2.c.ww, var_0.b.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(min(vec4<u32>(0u, 41608u, 0u, 16425u), vec4<u32>(1u, 1u, 1u, 1u))) & _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(0u, 78358u, 0u, 1u))), ~firstTrailingBit(vec4<u32>(36510u, 64167u, 0u, 4294967295u))), select(select(func_1(firstLeadingBit(58464u), -1543f, Struct_1(vec4<u32>(0u, 11367u, 0u, 0u), vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), u_input.a.x, false)), vec3<bool>(true, true, true), true | func_1(7347u, 766f, Struct_1(vec4<u32>(1u, 0u, 6688u, 39121u), vec3<bool>(true, false, true), vec4<bool>(false, true, false, false), 1i, true)).x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !func_2()), select(vec3<bool>(true, true, true), !func_2(), false)), vec4<bool>(func_2().x != false, true, true, !(u_input.a.x >= -19021i) || true), 7598i, !func_3());
    var var_1 = Struct_1(var_0.a, select(var_0.c.wzz, var_0.b, !(!var_0.b)), var_0.c, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(23471i, var_0.d)), u_input.a.xy), var_0.b.x);
    var var_2 = Struct_1(var_1.a | (abs(_wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(var_1.a.x, var_1.a.x, 105303u, 1u))) | ~vec4<u32>(116511u, 79764u, var_1.a.x, 11784u)), !(!vec3<bool>(func_2().x, any(var_1.b), all(var_0.b))), vec4<bool>(false, all(vec3<bool>(func_1(var_1.a.x, -1156f, Struct_1(vec4<u32>(var_0.a.x, var_0.a.x, var_1.a.x, var_0.a.x), vec3<bool>(var_1.e, var_0.b.x, true), var_1.c, var_0.d, false)).x, var_0.c.x & var_0.e, any(var_1.b))), true, true), ~_wgslsmith_add_i32(0i, ~(1i | u_input.a.x)), false);
    var var_3 = vec4<f32>(344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -842f))), -1454f, var_1.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -200f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2396f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(711f)))))));
    var_2 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(32851u, 0u, var_2.a.x, var_1.a.x), var_1.a, true) ^ _wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(4294967295u, var_1.a.x, var_0.a.x, var_0.a.x), vec4<u32>(45224u, 1u, var_0.a.x, var_0.a.x)), abs(var_1.a), var_2.a), ~firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, var_0.a.x, 4294967295u, 1u)))), !vec3<bool>(true, !(var_2.b.x && false), true), !select(var_1.c, !(!vec4<bool>(true, true, var_2.e, true)), var_2.c), 19967i, !func_2().x);
    var var_4 = ~firstTrailingBit(vec3<u32>(~0u, 0u, 30086u));
    let var_5 = _wgslsmith_sub_vec3_u32(abs(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a.x, var_2.a.x, var_4.x), vec3<u32>(3249u, 6768u, 4294967295u), var_0.a.zww))) ^ var_2.a.wwx, ~firstTrailingBit(var_0.a.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xwy, abs(u_input.a.wxw), _wgslsmith_sub_vec2_u32(~(~reverseBits(vec2<u32>(1u, 39251u))), var_2.a.zx));
}

