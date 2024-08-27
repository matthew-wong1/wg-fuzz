struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec2<u32>(4544u, 73u));

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<f32, 19>;

var<private> global3: vec2<i32> = vec2<i32>(10889i, 0i);

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    var var_0 = !(arg_2 > abs(1u));
    global3 = ~(-abs(~vec2<i32>(arg_1.a, global0.a)));
    var var_1 = vec4<bool>(true, -452f > _wgslsmith_f_op_f32(step(-956f, _wgslsmith_f_op_f32(ceil(742f)))), false, !(!(true != all(vec3<bool>(false, true, false)))));
    var var_2 = Struct_2(Struct_1(~(-min(global0.a, -35102i)), select(select(arg_1.b << (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(arg_1.b, arg_0), any(vec3<bool>(var_1.x, true, true))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 52355u), arg_0), var_1.x)), global0.b.x, _wgslsmith_f_op_vec2_f32(min(arg_3.xx, arg_3.yx)));
    global2 = array<f32, 19>();
    return global2[_wgslsmith_index_u32(~0u, 19u)];
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = -313f;
    var var_1 = 4294967295u;
    var var_2 = vec4<bool>(false, _wgslsmith_f_op_f32(1333f + -743f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2534f, _wgslsmith_f_op_f32(ceil(-477f)), false))), all(select(vec4<bool>(true, true, global0.b.x != 48459u, -8840i > global0.a), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2, arg_0.a, global0.b.x, vec3<f32>(arg_0.c.x, global2[_wgslsmith_index_u32(arg_0.b, 19u)], arg_0.c.x))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 19u)])))));
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(9980u, 19u)], 1492f, global2[_wgslsmith_index_u32(var_3, 19u)]))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, -1671f) - vec3<f32>(1000f, arg_0.c.x, arg_0.c.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(821f, 414f, arg_0.c.x) - vec3<f32>(-548f, -1000f, 1122f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1476f, arg_0.c.x) - vec3<f32>(-1134f, 437f, 1000f))) + vec3<f32>(_wgslsmith_div_f32(-458f, arg_0.c.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(54024u, 19u)] * 1000f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 1u), vec3<u32>(global0.b.x, arg_2.x, 12199u)), 19u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(236f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(44369u, 19u)], arg_0.c.x) * -848f), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-868f * global2[_wgslsmith_index_u32(global0.b.x, 19u)]), var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c.x, global2[_wgslsmith_index_u32(43856u, 19u)], -507f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1293f, global2[_wgslsmith_index_u32(arg_2.x, 19u)], arg_0.c.x) * vec3<f32>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(47099u, 19u)], arg_0.c.x)))))));
    return _wgslsmith_mult_u32(arg_2.x, max(15139u, (arg_0.a.b.x & 1u) | ~_wgslsmith_mod_u32(var_3, 20564u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(reverseBits(global0.a), -3481i), vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.b.x, arg_1.b.x, 43172u), ~vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), firstLeadingBit(func_2(Struct_2(Struct_1(-1i, vec2<u32>(0u, arg_1.b.x)), 4294967295u, vec2<f32>(global2[_wgslsmith_index_u32(global0.b.x, 19u)], -416f)), vec2<i32>(u_input.b, u_input.b), global0.b)) | _wgslsmith_clamp_u32(arg_1.b.x, ~4294967295u, 1u)));
    var var_1 = Struct_2(var_0, _wgslsmith_dot_vec3_u32(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1.b.x), vec3<u32>(global0.b.x, 4624u, 4068u)), ~vec3<u32>(arg_1.b.x, var_0.b.x, 4294967295u), arg_2), vec3<u32>(_wgslsmith_div_u32(arg_1.b.x & var_0.b.x, firstLeadingBit(global0.b.x)), 1u, _wgslsmith_clamp_u32(69777u, ~arg_1.b.x, 4294967295u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.b.x, 19u)]), -140f)))));
    var_1 = Struct_2(var_0, ~0u, var_1.c);
    let var_2 = 1u;
    global4 = global2[_wgslsmith_index_u32(0u, 19u)];
    return func_2(Struct_2(var_1.a, min(~var_1.a.b.x ^ reverseBits(arg_1.b.x), max(func_2(Struct_2(Struct_1(-2147483647i, vec2<u32>(arg_1.b.x, 24569u)), var_2, vec2<f32>(var_1.c.x, var_1.c.x)), arg_0.yy, vec2<u32>(var_1.b, 8394u)), _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(0u, 1u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(21769i, 35498i), vec2<i32>(-5627i, 52234i), vec2<i32>(global0.a, arg_0.x)), vec2<i32>(arg_3, arg_1.a)) & arg_0.yy, -firstLeadingBit(arg_0.xx)), vec2<u32>(~abs(var_2), 0u) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 76210u, global0.b.x), vec3<u32>(global0.b.x, 56796u, 0u)) & arg_1.b.x, arg_1.b.x) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~min(max(_wgslsmith_mod_i32(-25280i, -2147483647i), global0.a), ~global3.x), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_1(vec3<i32>(17204i, u_input.b, u_input.a), Struct_1(0i, vec2<u32>(4294967295u, 0u)), vec3<bool>(true, true, true), 2147483647i), 19u)] - global2[_wgslsmith_index_u32(global0.b.x, 19u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u >> (global0.b.x % 32u), 19u)])) * global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b.x, ~global0.b.x), 19u)]))), -global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2[_wgslsmith_index_u32(global0.b.x, 19u)], 528f, 970f) + vec4<f32>(global2[_wgslsmith_index_u32(11744u, 19u)], global2[_wgslsmith_index_u32(global0.b.x, 19u)], global2[_wgslsmith_index_u32(93u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global0.b.x, 19u)], global2[_wgslsmith_index_u32(38492u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global0.b.x, 19u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(2706f, 688f, -1334f, global2[_wgslsmith_index_u32(76926u, 19u)]) - vec4<f32>(global2[_wgslsmith_index_u32(global0.b.x, 19u)], -185f, 1062f, global2[_wgslsmith_index_u32(4294967295u, 19u)])), vec4<bool>(true, true, true, true))))));
}

