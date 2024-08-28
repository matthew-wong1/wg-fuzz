struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: f32;

var<private> global2: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 10u)] + 2630f)), 1000f) + -700f));
    var var_1 = abs(~0u);
    var var_2 = u_input.b.yyy;
    var var_3 = Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 10u)], 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_f_op_f32(686f - global0[_wgslsmith_index_u32(20219u, 10u)]))))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(abs(var_2.x), u_input.d), 1i, ~min(2147483647i, u_input.b.x)), vec3<i32>(max(var_2.x & var_2.x, 32260i), -var_2.x, var_2.x)), -var_2.x, Struct_2(var_0, _wgslsmith_f_op_f32(ceil(822f)), Struct_1(vec3<i32>(0i, ~(-14107i), -15468i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(62322u, 10u)], global0[_wgslsmith_index_u32(19496u, 10u)], -314f))))), ~(~countOneBits(6278u))), vec2<bool>(true, var_0));
    return _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.d.b)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.b.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.d, 10u)] + _wgslsmith_f_op_f32(arg_1.b.x - arg_2.b)), _wgslsmith_f_op_f32(903f - arg_1.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1117f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3())))), arg_1.a, ~(-39636i), arg_2, !vec2<bool>(arg_2.a, false));
    let var_1 = var_0.e;
    let var_2 = -((u_input.b.yzx ^ vec3<i32>(-9112i, 2147483647i, ~arg_2.c.a.x)) << (vec3<u32>(~1u, var_0.d.d, abs(arg_2.d) ^ ~4294967295u) % vec3<u32>(32u)));
    global1 = _wgslsmith_f_op_f32(-arg_2.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-503f, global0[_wgslsmith_index_u32(28165u, 10u)])) - _wgslsmith_f_op_f32(ceil(-2005f)))), var_0.a.x));
    return !select(!select(!vec4<bool>(true, var_0.e.x, var_0.d.a, true), !vec4<bool>(arg_2.a, var_1.x, var_1.x, var_1.x), var_1.x), vec4<bool>(false, arg_2.a, any(select(vec4<bool>(true, var_1.x, arg_2.a, var_1.x), vec4<bool>(true, true, true, var_0.e.x), vec4<bool>(true, false, var_0.e.x, true))), true), true);
}

fn func_1() -> i32 {
    var var_0 = !vec3<bool>(any(select(func_2(vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(u_input.b.xwy, vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], -498f, -800f)), Struct_2(false, -1961f, Struct_1(u_input.b.zxw, vec3<f32>(572f, -145f, -1201f)), 11928u)), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), select(select(true, false, true), true, true) | (_wgslsmith_dot_vec4_u32(vec4<u32>(34058u, u_input.c.x, u_input.a, u_input.c.x), vec4<u32>(u_input.a, u_input.c.x, u_input.a, 0u)) <= reverseBits(u_input.c.x)), all(vec2<bool>(global0[_wgslsmith_index_u32(2362u, 10u)] > -801f, u_input.d >= 11274i)));
    var_0 = vec3<bool>(all(!(!vec4<bool>(false, var_0.x, true, false))), var_0.x, false);
    var var_1 = ~_wgslsmith_mult_u32((~11444u >> (1u % 32u)) >> (u_input.a % 32u), ~49971u);
    var_1 = 0u;
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(u_input.b.zxy, ~vec3<i32>(-u_input.b.x, -u_input.b.x, -2147483647i), u_input.b.xzx), vec3<f32>(_wgslsmith_f_op_f32(abs(-980f)), _wgslsmith_f_op_f32(func_3()), -1540f));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(countOneBits(_wgslsmith_div_u32(u_input.c.x, abs(u_input.a))) | ~21261u);
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    var var_0 = Struct_1(vec3<i32>(func_1(), -1608i, _wgslsmith_dot_vec3_i32(u_input.b.ywx, ~max(vec3<i32>(41038i, -1i, -2147483647i), u_input.b.zxw))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(~(u_input.a | u_input.c.x), 10u)], _wgslsmith_f_op_f32(abs(797f))) - vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 10u)] - _wgslsmith_div_f32(-404f, global0[_wgslsmith_index_u32(4294967295u, 10u)])), global0[_wgslsmith_index_u32(~1u, 10u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 10u)]), 1044f)))));
    var var_1 = _wgslsmith_f_op_f32(626f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2262f)) * 1000f));
    var_0 = Struct_1(u_input.b.wwy ^ vec3<i32>(u_input.d, _wgslsmith_clamp_i32(reverseBits(2147483647i), _wgslsmith_add_i32(u_input.d, var_0.a.x), u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(-1i, 0i)) & u_input.d), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(u_input.a), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.zw, ~u_input.c.yw))), ~_wgslsmith_mult_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.a), u_input.c, u_input.c), ~u_input.c, true), u_input.c << ((vec4<u32>(u_input.c.x, 4294967295u, u_input.a, 0u) & vec4<u32>(u_input.c.x, u_input.a, 4294967295u, u_input.c.x)) % vec4<u32>(32u))));
}

