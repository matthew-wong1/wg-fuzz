struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1605f;

var<private> global1: array<u32, 21>;

var<private> global2: array<u32, 23>;

var<private> global3: array<Struct_2, 23>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(-(~(-max(-18551i, -14059i))), -20515i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-102f, -1024f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f - 1723f)), -964f) * -700f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-291f * -2712f), 377f));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.b, ~(abs(arg_0.b) << (53306u % 32u)), 0u), arg_3.zzw | (arg_1.a.www ^ ~vec3<u32>(arg_3.x, 0u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b, 23u)], 21u)])));
    var var_1 = arg_1.a.wx;
    let var_2 = ((~(21199u ^ arg_3.x) == global1[_wgslsmith_index_u32(reverseBits(0u), 21u)]) | !(!any(vec4<bool>(true, false, true, true)))) == any(vec3<bool>(any(vec3<bool>(true, true, true)), false, true));
    global1 = array<u32, 21>();
    let var_3 = _wgslsmith_sub_i32(u_input.b, -1i);
    return -20287i;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec2<i32> {
    var var_0 = select(vec3<i32>(-52053i, -55890i, _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(arg_1, 23805i)) ^ (i32(-1i) * -u_input.b)), vec3<i32>(arg_1, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, -7522i, 2147483647i, 2147483647i), min(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), vec4<i32>(-7272i, 2147483647i, arg_1, 0i))), arg_1), true);
    global2 = array<u32, 23>();
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-28822i, arg_1, 18297i, u_input.b), vec4<i32>(-2147483647i, 2147483647i, u_input.b, arg_1) >> (vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 23u)], u_input.c, 0u, global2[_wgslsmith_index_u32(4294967295u, 23u)]) % vec4<u32>(32u)), -vec4<i32>(var_0.x, 0i, var_0.x, 22909i)) << (vec4<u32>(countOneBits(46392u), 0u, 1u, ~4294967295u) % vec4<u32>(32u)), abs(firstTrailingBit(vec4<i32>(-1i, 39706i, u_input.b, arg_1)))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~var_0.x, 47646i), arg_1, var_0.x, ~_wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.b)), vec4<i32>(-(u_input.b >> (u_input.a % 32u)), _wgslsmith_sub_i32(abs(arg_1), 0i), func_3(Struct_4(7192i, arg_0.a), Struct_1(vec4<u32>(0u, 47283u, global2[_wgslsmith_index_u32(50754u, 23u)], u_input.a)), Struct_4(22791i, 14565u), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 6013u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 21u)], 4294967295u)), _wgslsmith_sub_i32(firstTrailingBit(47929i), -2147483647i))));
    var var_2 = Struct_1(countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 67270u, 76109u, global1[_wgslsmith_index_u32(4294967295u, 21u)]), max(vec4<u32>(20180u, 4294967295u, 0u, 42552u), vec4<u32>(arg_0.a, arg_0.a, u_input.c, arg_0.a))), ~(vec4<u32>(22424u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global2[_wgslsmith_index_u32(74769u, 23u)]) << (vec4<u32>(28813u, u_input.c, 43006u, arg_0.a) % vec4<u32>(32u))))));
    global2 = array<u32, 23>();
    return -max(countOneBits(vec2<i32>(u_input.b, i32(-1i) * -1i)), select(min(var_0.xz, var_1.xy) >> (reverseBits(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), var_0.xy, select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(13923u, 23u)], global2[_wgslsmith_index_u32(48815u, 23u)]), vec3<u32>(1u, 1226u, 36981u)), 1u, ~42375u), ~(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], 34549u, 73569u) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 0u, 1u))), 21u)]), _wgslsmith_add_u32(u_input.c, _wgslsmith_sub_u32(4294967295u, 1u)), ~(~64084u) & _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~57573u, 23u)], 21u)], global2[_wgslsmith_index_u32(0u, 23u)] | 1u)), 1u);
    global3 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_dot_vec4_u32(select(var_0, ~countOneBits(firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 23u)], 47892u, global2[_wgslsmith_index_u32(1u, 23u)], 0u))), (var_0.x & abs(global2[_wgslsmith_index_u32(4294967295u, 23u)])) > u_input.c), vec4<u32>(~4294967295u, ~var_0.x, ~firstLeadingBit(var_0.x), countOneBits(var_0.x)));
    let var_2 = ~44277i;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1156f)) - _wgslsmith_f_op_f32(ceil(1200f)))), 1036f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1043f)) + _wgslsmith_f_op_f32(select(-690f, -382f, false)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)))));
    global1 = array<u32, 21>();
    var var_4 = Struct_4(-31354i, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(max(-max(func_2(Struct_3(54837u), var_4.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, var_2), vec2<i32>(2147483647i, -1i))), vec2<i32>(_wgslsmith_mult_i32(var_4.a, 1i), var_4.a >> (global2[_wgslsmith_index_u32(u_input.c, 23u)] % 32u)) ^ firstLeadingBit(-vec2<i32>(u_input.b, var_4.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_3, var_3)) + _wgslsmith_f_op_vec3_f32(var_3 - vec3<f32>(-1392f, -1511f, -1123f)))))), -_wgslsmith_add_vec4_i32(vec4<i32>(~var_2, 28329i, -1i, ~u_input.b), vec4<i32>(max(2918i, var_4.a), -u_input.b, var_2, _wgslsmith_mult_i32(1107i, -25914i))));
}

