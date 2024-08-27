struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(8238i, 2147483647i);

var<private> global1: array<u32, 4>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = ~vec4<i32>(-2147483647i, min(-2147483647i, _wgslsmith_div_i32(~(-39070i), -43050i << (0u % 32u))), u_input.a, reverseBits(-2147483647i) >> (global1[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.c)), 4u)] % 32u));
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(1i, -2147483647i), u_input.a), vec2<i32>(-26529i, 1i), var_0.yz);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -497f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(815f, -2238f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(arg_0 + arg_0)))), Struct_1(_wgslsmith_f_op_f32(1684f * 1753f), vec2<u32>(reverseBits(~4294967295u), ~global1[_wgslsmith_index_u32(1u, 4u)]), -284f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(1167f + 874f)))), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(0u, 1u)), abs(select(vec2<u32>(global1[_wgslsmith_index_u32(5326u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), vec2<u32>(23516u, u_input.c), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f))));
    global1 = array<u32, 4>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.a.x)))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(151f, 1085f)))));
    return _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-arg_0));
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = Struct_1(1003f, vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.b), firstTrailingBit(57563u)), reverseBits(u_input.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_1)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1))))), vec2<u32>(global1[_wgslsmith_index_u32(4212u, 4u)], (u_input.d | (9400u | global1[_wgslsmith_index_u32(89560u, 4u)])) & firstTrailingBit(_wgslsmith_sub_u32(61667u, u_input.c))), -483f);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, 560f)) - var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(291f, arg_1))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(step(1662f, arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 1023f) - vec2<f32>(618f, -1658f)), vec2<f32>(var_0.c, -455f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -180f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1116f, var_0.c))), !vec2<bool>(true, arg_0))))))));
    var_0 = Struct_1(-1407f, ~min(var_0.b, _wgslsmith_div_vec2_u32(var_0.b, var_0.b) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(var_0.c, -420f)))) + _wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(-var_0.c))))));
    let var_2 = Struct_3(max(_wgslsmith_mod_u32(0u >> (1u % 32u), _wgslsmith_mod_u32(~61032u, _wgslsmith_sub_u32(var_0.b.x, 0u))), abs((var_0.b.x << (2666u % 32u)) << (1u % 32u))), Struct_2(_wgslsmith_div_vec2_f32(var_1, vec2<f32>(_wgslsmith_div_f32(-767f, -1000f), -1253f)), Struct_1(var_1.x, var_0.b, arg_1), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(374f)) - var_1.x), vec2<u32>(min(100355u, u_input.c), _wgslsmith_mult_u32(11835u, var_0.b.x)), -552f)));
    return u_input.d;
}

fn func_1() -> f32 {
    var var_0 = ~abs(vec4<u32>(global1[_wgslsmith_index_u32(func_2(true, 1f), 4u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)] << (u_input.c % 32u), _wgslsmith_mult_u32(u_input.b, 52985u), 4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)]), vec3<u32>(25895u, global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(0u, 4u)])), 82239u), select(62782u, 1u, true)));
    var var_1 = 1000f;
    let var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-9275i, global0.x, u_input.a, u_input.a), ~vec4<i32>(-13753i, 0i, 1i, u_input.a)), global0.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.x), ~vec2<i32>(2147483647i, -1723i)), (u_input.a >> (4294967295u % 32u)) | -2147483647i, ~firstLeadingBit(global0.x)) & max(min(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(global0.x, u_input.a, 17805i) & vec3<i32>(u_input.a, u_input.a, u_input.a)), (vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(0i, 1i, 45451i)) | _wgslsmith_add_vec3_i32(vec3<i32>(-1i, global0.x, -20021i), vec3<i32>(12030i, 10050i, 9467i))));
    global0 = vec2<i32>(global0.x, -9547i);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(389f, 145f)), vec2<f32>(240f, _wgslsmith_f_op_f32(max(144f, 576f)))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1416f, 578f))), _wgslsmith_f_op_f32(f32(-1f) * -477f)), vec2<u32>(~_wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(10200u, var_0.x, u_input.c), vec3<u32>(0u, 4294967295u, 8543u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-382f + _wgslsmith_div_f32(-1822f, -791f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1900f)) - _wgslsmith_div_f32(1557f, -501f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -907f)))), select(vec2<u32>(abs(u_input.b), u_input.b), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 577u), var_0.ww), var_0.zz | var_0.yy), vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(1160f))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-128f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.c.c * _wgslsmith_f_op_f32(-var_3.b.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    let var_0 = Struct_1(_wgslsmith_div_f32(-1283f, -1898f), abs(~(~vec2<u32>(53055u, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-530f, 272f)), _wgslsmith_f_op_f32(func_1()))) - -1133f));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1496f, var_0.c), vec2<f32>(var_0.a, -1059f), true)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1111f, 1741f), vec2<f32>(var_0.a, -1507f), false))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-750f - 1334f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.c))))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 4294967295u), var_0.b) ^ var_0.b, select(vec2<u32>(var_0.b.x, var_0.b.x), var_0.b, vec2<bool>(true, true)) & ~var_0.b), var_0.a), Struct_1(_wgslsmith_f_op_f32(min(var_0.c, var_0.c)), _wgslsmith_mod_vec2_u32(~select(var_0.b, vec2<u32>(global1[_wgslsmith_index_u32(1u, 4u)], 64067u), false), var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(var_0.c)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1329f, var_0.c))))), Struct_1(-1000f, max(~var_0.b, vec2<u32>(685u, 13210u)) | select(abs(vec2<u32>(9653u, u_input.b)), ~vec2<u32>(global1[_wgslsmith_index_u32(var_0.b.x, 4u)], 53343u), vec2<bool>(true, true)), 1608f), Struct_1(1939f, _wgslsmith_sub_vec2_u32(var_0.b, _wgslsmith_div_vec2_u32(var_1.b.b, var_1.c.b)), 688f));
    let var_3 = firstLeadingBit(countOneBits(select(_wgslsmith_add_u32(42726u, global1[_wgslsmith_index_u32(u_input.c, 4u)]), 0u, any(vec3<bool>(false, false, false))))) < (_wgslsmith_div_u32(u_input.d, 25599u | ~var_0.b.x) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(1u), 1447u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(51987u), var_0.b.x), 4u)]) % 32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(716f, 755f, var_1.a.x, var_1.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c, -935f, 1000f, var_0.a))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.a), 513f, -262f, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, -927f, _wgslsmith_f_op_f32(ceil(var_1.c.a)), _wgslsmith_f_op_f32(step(604f, var_2.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 1200f))))));
}

