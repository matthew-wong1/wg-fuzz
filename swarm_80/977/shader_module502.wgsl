struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false));

var<private> global1: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: array<bool, 4> = array<bool, 4>(false, true, false, false);

var<private> global3: array<Struct_2, 2>;

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = u_input.c;
    var var_1 = Struct_3(vec2<bool>(select(global2[_wgslsmith_index_u32(select(countOneBits(0u), min(41040u, u_input.a.x), false), 4u)], u_input.c.x == u_input.c.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 27114u, 4294967295u, 17199u)), global4.x), 4u)]), any(vec2<bool>(select(global2[_wgslsmith_index_u32(0u, 4u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), all(global1[_wgslsmith_index_u32(global4.x, 9u)])))), vec3<u32>(~4294967295u & _wgslsmith_mult_u32(global4.x, 25229u), _wgslsmith_dot_vec2_u32(vec2<u32>(80060u, 44484u), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), 4294967295u) << (vec3<u32>(global4.x, abs(_wgslsmith_add_u32(u_input.a.x, global4.x)), 27953u) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(506f - 370f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-412f + -1886f) * -141f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-741f, _wgslsmith_f_op_f32(round(-1437f))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(select(240f, -1996f, false)))))), _wgslsmith_div_f32(-1625f, -518f))));
    global3 = array<Struct_2, 2>();
    var var_3 = Struct_1(vec4<u32>(~(4294967295u << (max(4294967295u, u_input.a.x) % 32u)), ~firstLeadingBit(_wgslsmith_div_u32(1u, 1u)), abs(var_1.b.x) & 6482u, _wgslsmith_sub_u32(~156u, global4.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_f_op_f32(-194f * var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x)))))));
    return reverseBits(vec4<u32>(1u, select(global4.x, select(39150u, ~20016u, !var_1.a.x), true), u_input.a.x, max(global4.x, _wgslsmith_dot_vec4_u32(var_3.a, ~var_3.a))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec3<u32> {
    global3 = array<Struct_2, 2>();
    let var_0 = ~_wgslsmith_add_vec4_u32(~(vec4<u32>(global4.x, 0u, 3827u, 1u) | vec4<u32>(global4.x, u_input.a.x, u_input.a.x, arg_0.x)), _wgslsmith_div_vec4_u32(func_3(), ~vec4<u32>(29721u, arg_0.x, u_input.a.x, global4.x))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(arg_0.x), u_input.a.x, ~u_input.a.x ^ u_input.a.x, 0u), ~(~vec4<u32>(57146u, 4294967295u, arg_0.x, 26339u))) % vec4<u32>(32u));
    let var_1 = any(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(37628u, 4u)], false), global2[_wgslsmith_index_u32(9685u, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], true, global2[_wgslsmith_index_u32(78474u, 4u)]), false), false));
    let var_2 = Struct_1(firstTrailingBit(var_0), 658f);
    var var_3 = ~_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(2147483647i, 21845i, u_input.d, 1i)), vec4<i32>(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, 0i, u_input.c.x), vec4<i32>(-1i, 0i, u_input.c.x, u_input.d)), 1i, 36271i)));
    return vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2573u, var_0.x, global4.x, global4.x), _wgslsmith_add_vec4_u32(var_0, vec4<u32>(48433u, var_2.a.x, var_0.x, global4.x))), arg_0.x, var_0.x) | global4.x, ~var_2.a.x, firstLeadingBit(var_2.a.x));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = ~func_2(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(48u, u_input.a.x, 74146u, arg_0), vec4<u32>(global4.x, 36341u, 3024u, global4.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, u_input.a.x, arg_0, arg_0), vec4<u32>(arg_2, 30346u, 1u, arg_2), vec4<u32>(arg_2, global4.x, arg_0, arg_0))), arg_2, arg_0), _wgslsmith_f_op_vec2_f32(arg_1.zx - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_1.x), arg_1.xx, vec2<bool>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(78041u, 4u)])))))));
    var var_1 = Struct_5(global1[_wgslsmith_index_u32(arg_0, 9u)], Struct_4(Struct_1(select(~vec4<u32>(arg_2, var_0.x, global4.x, 0u), ~vec4<u32>(1u, 52747u, arg_2, arg_2), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], false, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -449f)), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, global4.x), vec2<u32>(u_input.a.x, 42187u)), ~countOneBits(4294967295u), abs(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, u_input.a.x, 17583u)))), any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 4u)], !global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(arg_2, 4u)], global2[_wgslsmith_index_u32(0u & u_input.a.x, 4u)]))), select(select(vec3<bool>(false, !global2[_wgslsmith_index_u32(10478u, 4u)], global2[_wgslsmith_index_u32(global4.x, 4u)]), !select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], false, true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 4u)]), false), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 4u)]), vec3<bool>(select(true, global2[_wgslsmith_index_u32(~0u, 4u)], false), global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(arg_0, 4u)]), !(!global2[_wgslsmith_index_u32(u_input.a.x, 4u)])));
    return global3[_wgslsmith_index_u32(global4.x, 2u)];
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec3<u32> {
    global1 = array<vec2<bool>, 9>();
    let var_0 = u_input.c.x;
    let var_1 = vec4<u32>(1u, 0u, ~(~(~arg_1.c.a.x)), 4040u);
    global2 = array<bool, 4>();
    global2 = array<bool, 4>();
    return arg_1.c.a.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(16870u, _wgslsmith_dot_vec3_u32(func_4(~22072u, func_1(4294967295u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2059f, 198f, 1861f))), _wgslsmith_clamp_u32(37773u, 22125u, u_input.a.x))), vec3<u32>(31823u, global4.x, u_input.a.x) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(6932u, 0u, u_input.a.x, global4.x), vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u)), global4.x | 1u, global4.x)));
    let var_1 = u_input.a.x ^ ~u_input.a.x;
    let var_2 = u_input.c.wy;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-691f - _wgslsmith_f_op_f32(f32(-1f) * -367f))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~vec3<u32>(var_0, 1u, 4294967295u) ^ countOneBits(vec3<u32>(4294967295u, var_1, var_1)))));
}

