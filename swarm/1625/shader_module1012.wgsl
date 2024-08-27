struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(2065u, 4294967295u, 40107u, 1u, 4294967295u, 1u);

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = 15791i;
    return ~_wgslsmith_sub_u32(0u, ~arg_1.a.x);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_2(vec3<u32>(~u_input.d.x, _wgslsmith_mod_u32(79253u, ~1030u), (~25466u << (min(global0[_wgslsmith_index_u32(15844u, 6u)], u_input.c) % 32u)) >> (~(~4294967295u) % 32u)));
    global0 = array<u32, 6>();
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(2288f - _wgslsmith_f_op_f32(-arg_1.x)), 340f);
    let var_3 = u_input.a;
    return arg_3.x;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = vec4<f32>(arg_0, -269f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), 720f), arg_3.x);
    var var_1 = !(!vec3<bool>(true, all(!vec3<bool>(arg_2.d.x, true, arg_2.d.x)), all(vec2<bool>(arg_2.d.x, true))));
    let var_2 = vec3<i32>(-22823i, _wgslsmith_sub_i32(-1i, 75014i), abs(arg_2.a));
    var var_3 = Struct_1(arg_2.a, _wgslsmith_sub_u32(1u >> (~_wgslsmith_add_u32(arg_1, arg_2.c.x) % 32u), firstTrailingBit(~(~arg_1))), u_input.d.ywy ^ abs(min(vec3<u32>(arg_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.b, 6u)], 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_add_vec3_u32(u_input.d.wzz, u_input.d.wwz))), vec2<bool>(var_1.x, arg_2.c.x > func_2(_wgslsmith_f_op_f32(func_3(arg_2.c.zz, var_0.zzz, arg_2, vec4<f32>(1245f, arg_0, arg_3.x, var_0.x))), Struct_2(u_input.d.zxx), Struct_1(var_2.x, u_input.c, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], arg_1, 0u), vec2<bool>(true, false)), arg_2)));
    global1 = array<Struct_1, 18>();
    return Struct_2(u_input.d.yxz);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = func_4(-1000f, ~func_2(1f, Struct_2(vec3<u32>(1u, 4294967295u, arg_0.a.x)), global1[_wgslsmith_index_u32(1u, 18u)], Struct_1(u_input.a.x, abs(global0[_wgslsmith_index_u32(arg_1.a.x, 6u)]), _wgslsmith_add_vec3_u32(u_input.d.wxw, vec3<u32>(arg_0.a.x, global0[_wgslsmith_index_u32(arg_0.a.x, 6u)], global0[_wgslsmith_index_u32(70740u, 6u)])), !vec2<bool>(arg_2, arg_2))), global1[_wgslsmith_index_u32(~(4294967295u & (_wgslsmith_clamp_u32(1u, 44643u, 1u) & u_input.c)), 18u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(reverseBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(arg_0.a.x, 6u)])), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1352f, 114f, 2692f), vec3<f32>(638f, 1465f, 509f))), global1[_wgslsmith_index_u32(abs(arg_0.a.x), 18u)], _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-488f, -241f, -421f, 609f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(409f, 711f))))));
    let var_1 = Struct_1(u_input.a.x >> (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_2(301f, Struct_2(vec3<u32>(arg_1.a.x, 0u, 58133u)), global1[_wgslsmith_index_u32(arg_0.a.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_dot_vec2_u32(var_0.a.xz, vec2<u32>(arg_0.a.x, arg_0.a.x)) ^ 81174u), 6u)] % 32u), ~0u, ~var_0.a, !select(!select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, false), true), select(vec2<bool>(false, true), !vec2<bool>(true, arg_2), arg_2), false));
    var var_2 = -17199i;
    var var_3 = ~u_input.a;
    var var_4 = _wgslsmith_div_f32(-495f, -528f);
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i, 1u | ~_wgslsmith_sub_u32(u_input.d.x & global0[_wgslsmith_index_u32(0u, 6u)], u_input.d.x), select(u_input.d.ywy, vec3<u32>(~countOneBits(18226u), max(4294967295u << (global0[_wgslsmith_index_u32(1u, 6u)] % 32u), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)])), ~1u ^ _wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.d.wx)), false), vec2<bool>(true, true));
    global0 = array<u32, 6>();
    let var_1 = Struct_2(u_input.d.wzz);
    let var_2 = select(vec4<bool>(select(u_input.c <= u_input.c, 0u <= func_1(var_1, var_1, var_0.d.x), false), false, var_0.d.x, var_0.a < u_input.b), select(vec4<bool>(any(!var_0.d), true, false, (-1i != u_input.b) | var_0.d.x), vec4<bool>(true, _wgslsmith_f_op_f32(select(-1287f, -160f, true)) >= _wgslsmith_f_op_f32(trunc(108f)), any(select(vec3<bool>(var_0.d.x, var_0.d.x, false), vec3<bool>(var_0.d.x, false, true), vec3<bool>(false, var_0.d.x, var_0.d.x))), true), vec4<bool>(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true), vec4<bool>(false, true, var_0.d.x, var_0.d.x))), true, all(select(vec4<bool>(false, false, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), true)))), vec4<bool>(var_0.d.x, ~u_input.d.x > firstLeadingBit(var_0.c.x), any(vec2<bool>(var_0.d.x | var_0.d.x, false)), true));
    var var_3 = ~(~var_1.a.yx << (~(~(~vec2<u32>(4294967295u, 17762u))) % vec2<u32>(32u)));
    var var_4 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.a.yz, u_input.a.yy)), u_input.a.zy, false), u_input.a.ww, vec2<i32>(~(-var_0.a), ~2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-898f, -1299f))))));
}

