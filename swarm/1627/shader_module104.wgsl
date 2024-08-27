struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, -1543i, 13957i, 20800i), vec2<bool>(false, true), vec2<bool>(true, true), 33896u, 341f);

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.e, -862f, -1089f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, -1126f, global0.e)))))), select(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, global0.d, 26478u), firstTrailingBit(vec4<u32>(global0.d, u_input.a.x, 62725u, global0.d))), vec4<u32>(~88454u, min(u_input.a.x, global0.d), 2949u ^ global0.d, 30282u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(49727u, 8879u, 1u, 1u)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 109800u, u_input.c), vec4<u32>(1u, global0.d, 57546u, 4294967295u)))), global0.c.x));
    return vec3<bool>((global0.b.x & true) | false, global0.b.x, global0.c.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    global0 = arg_1;
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1305f, arg_1.e, 569f) - vec3<f32>(306f, 521f, arg_1.e)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(328f, -1568f, arg_1.e))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, 158f, -785f) * vec3<f32>(-170f, arg_1.e, global0.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.e, arg_1.e, -841f), vec3<f32>(-1194f, -397f, global0.e)))) * vec3<f32>(global0.e, _wgslsmith_f_op_f32(global0.e * global0.e), _wgslsmith_f_op_f32(-global0.e))), arg_2)), vec4<u32>(firstTrailingBit(1u), (firstTrailingBit(arg_0.x) >> (u_input.b % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, arg_0.x, 3932u) | vec3<u32>(u_input.b, global0.d, 4294967295u), select(vec3<u32>(global0.d, 0u, 0u), vec3<u32>(0u, 23308u, 4294967295u), true)), arg_1.d, ~_wgslsmith_mod_u32(~22424u, 1181u)));
    global0 = Struct_1(max(arg_1.a, global0.a), !(!arg_2.yx), select(vec2<bool>(arg_1.c.x, all(vec3<bool>(false, true, global0.c.x))), arg_1.c, select(vec2<bool>(arg_1.c.x, true), select(vec2<bool>(global0.c.x, global0.c.x), vec2<bool>(true, true), 30960u > arg_0.x), arg_1.c.x)), ~(~(~max(u_input.c, u_input.a.x))), arg_1.e);
    let var_1 = Struct_1(~vec4<i32>(0i, -2147483647i, reverseBits(global0.a.x), _wgslsmith_div_i32(global0.a.x, 0i)) << (~firstLeadingBit(var_0.b) % vec4<u32>(32u)), arg_1.b, !(!arg_2.zz), arg_1.d, 515f);
    global0 = Struct_1(~arg_1.a, arg_1.c, func_3().zz, min(122848u, 0u), 1623f);
    return arg_1.a.x;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-global0.e);
    let var_1 = vec4<i32>(global0.a.x | -_wgslsmith_mod_i32(_wgslsmith_add_i32(51020i, global0.a.x), 2147483647i), func_4(vec2<u32>(4294967295u, countOneBits(u_input.c) & ~global0.d), Struct_1(_wgslsmith_mod_vec4_i32(firstTrailingBit(global0.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.a.x, 12124i, 24296i), vec4<i32>(-23654i, 3056i, u_input.d, u_input.d))), !arg_0, !(!arg_0), ~_wgslsmith_sub_u32(global0.d, global0.d), -247f), !(!func_3())), ~(-1i), ~1i);
    let var_2 = Struct_1(firstLeadingBit(var_1), vec2<bool>(true, func_3().x), !(!(!select(arg_0, vec2<bool>(false, arg_0.x), global0.b.x))), ~global0.d, _wgslsmith_f_op_f32(797f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(-global0.e)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-375f, 305f))), -1082f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.e)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-276f * var_2.e), _wgslsmith_div_f32(global0.e, var_2.e), 153f)))), firstLeadingBit(vec4<u32>(var_2.d, u_input.b, countOneBits(18499u), ~u_input.a.x) >> (~(~vec4<u32>(u_input.a.x, u_input.c, 0u, 65281u)) % vec4<u32>(32u))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, -620f, var_3.a.x) - vec3<f32>(global0.e, var_2.e, var_2.e))) * vec3<f32>(-1506f, _wgslsmith_f_op_f32(abs(-1000f)), 120f))), _wgslsmith_mod_vec4_u32(var_3.b, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, var_3.b.x), ~4294967295u), ~(~0u), ~abs(var_2.d), 1u)));
    return u_input.d | (reverseBits(_wgslsmith_add_i32(var_2.a.x, 0i) & var_1.x) & _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2.a.x, global0.a.x), -1i));
}

fn func_1() -> u32 {
    var var_0 = global0.a.zzw;
    let var_1 = global0.a.x;
    var_0 = vec3<i32>(select(-1i, func_2(global0.c) & -var_0.x, false), -(i32(-1i) * -6855i), -firstLeadingBit(global0.a.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, -642f, 1142f) + vec3<f32>(global0.e, -290f, 2319f)))) - vec3<f32>(_wgslsmith_f_op_f32(global0.e - global0.e), _wgslsmith_div_f32(-606f, 463f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-550f + global0.e) * 1f))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0.d, u_input.c), 98764u, max(0u, u_input.a.x), global0.d), vec4<u32>(39953u, global0.d, 20028u, 21658u) ^ ~vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 6421u))));
    global1 = array<Struct_1, 27>();
    return ~(~(~_wgslsmith_dot_vec3_u32(var_2.b.xxx, ~vec3<u32>(var_2.b.x, var_2.b.x, global0.d))));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> StorageBuffer {
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 27u)];
    var var_0 = global0.c.x;
    var var_1 = _wgslsmith_mult_i32(global0.a.x, ~(-_wgslsmith_mod_i32(-global0.a.x, _wgslsmith_mult_i32(u_input.d, 5086i))));
    let var_2 = arg_1.a.x;
    var var_3 = u_input.d;
    return StorageBuffer(0i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e - var_2)), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-var_2)), global0.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1182f)), -1865f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.d, 23722u), 27u)];
    var var_1 = 0u;
    var_0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(u_input.d, var_0.a.x), abs(8505i), global0.a.x, var_0.a.x), vec2<bool>(var_0.e <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.e), var_0.e, !global0.c.x)), var_0.c.x), !(!(!(!vec2<bool>(false, var_0.c.x)))), select(var_0.d, abs(global0.d), global0.b.x || true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.e, var_0.e)), var_0.e)));
    var var_2 = ~1u;
    var_0 = global1[_wgslsmith_index_u32(1u, 27u)];
    global1 = array<Struct_1, 27>();
    let var_3 = -30635i;
    var_2 = global0.d;
    let x = u_input.a;
    s_output = func_5(func_1(), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, -481f, var_0.e)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, global0.e, -1573f) * vec3<f32>(-158f, global0.e, global0.e))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.e, -190f, -683f), vec3<f32>(global0.e, -1000f, -583f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, var_0.e, global0.e)))), ~(vec4<u32>(1u, 1u, u_input.a.x, 0u) | max(vec4<u32>(global0.d, global0.d, 1u, 1u), vec4<u32>(78026u, 1u, u_input.c, 0u)))));
}

