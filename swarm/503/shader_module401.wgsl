struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-122f, -849f, 1000f), vec3<f32>(-467f, 1000f, -799f), vec3<f32>(404f, 966f, 910f), vec3<f32>(1354f, 1739f, 1691f), vec3<f32>(-1236f, -240f, -221f), vec3<f32>(143f, 1038f, 769f), vec3<f32>(-425f, -178f, -614f));

var<private> global1: array<u32, 11> = array<u32, 11>(65082u, 8915u, 22131u, 17118u, 0u, 1u, 0u, 27626u, 0u, 1u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24229u, 11u)], 11u)]), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)]) << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~43689u, 11u)], 11u)], 11u)] % 32u)), 28281u, true), 11u)], Struct_1(true, !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1204f) - -701f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f - -987f)), _wgslsmith_f_op_f32(f32(-1f) * -154f))), true, Struct_1(true, !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(193f, 169f, 172f, -1491f) + vec4<f32>(-179f, -128f, -1270f, 2179f)))));
    global0 = array<vec3<f32>, 7>();
    var var_1 = var_0.d.c.zx;
    var var_2 = var_0.b.b.x;
    global0 = array<vec3<f32>, 7>();
    return select(var_0.d.b, !var_0.d.b, false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> i32 {
    global1 = array<u32, 11>();
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(~(-4022i), ~4917i, 0i), -min(-(vec3<i32>(-1i, -2147483647i, 6809i) ^ vec3<i32>(0i, 36510i, u_input.a)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(2147483647i, u_input.a, u_input.a)), -vec3<i32>(u_input.a, -32753i, -2147483647i))));
    var var_1 = -6807i;
    global1 = array<u32, 11>();
    var var_2 = arg_1.d.c;
    return _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, -2147483647i, -19810i), -var_0.x), i32(-1i) * -20028i, arg_2), 0i);
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<f32>, 7>();
    let var_0 = vec2<i32>(-(~_wgslsmith_mult_i32(1i >> (1u % 32u), _wgslsmith_div_i32(13149i, u_input.a))), func_4(Struct_1(0u >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], func_3(), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1194f, -1523f, -1000f, 633f)))), Struct_2(41136u, Struct_1(false, vec3<bool>(true, true, true), vec4<f32>(-1129f, -950f, 1516f, -1000f)), true, Struct_1(false, vec3<bool>(true, true, true), vec4<f32>(295f, 1338f, -635f, 1341f))), false) >> (_wgslsmith_sub_u32(reverseBits(35952u), countOneBits(4294967295u & global1[_wgslsmith_index_u32(1u, 11u)])) % 32u));
    var var_1 = _wgslsmith_mult_vec4_i32(~(-abs(vec4<i32>(u_input.a, 1i, -2147483647i, var_0.x) | vec4<i32>(var_0.x, u_input.a, u_input.a, -1i))), ~select((vec4<i32>(u_input.a, var_0.x, var_0.x, u_input.a) | vec4<i32>(-1i, 8550i, var_0.x, var_0.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(24951u, 1u, 1u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(40955u, 11u)], 18092u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60099u, 11u)], 11u)], 11u)], 11u)], 11u)])) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.x, 0i, var_0.x), vec4<i32>(-1i, var_0.x, u_input.a, -1i)) ^ max(vec4<i32>(u_input.a, 98703i, -2147483647i, u_input.a), vec4<i32>(-18637i, var_0.x, var_0.x, var_0.x)), true));
    var_1 = ~vec4<i32>(-var_1.x, (2147483647i ^ _wgslsmith_div_i32(-22449i, var_1.x)) | u_input.a, firstLeadingBit(select(var_1.x, 1i, select(false, true, true))), _wgslsmith_sub_i32(var_0.x, abs(-1i)) & -47262i);
    var var_2 = Struct_2(~(~1u), Struct_1(true, func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, 834f, 1009f, 128f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1306f, -979f, -1000f, -1752f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-805f, 1519f, 843f, -1101f)))))), false, Struct_1(any(select(func_3(), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false))), vec3<bool>(true, false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, _wgslsmith_f_op_f32(sign(186f)), _wgslsmith_f_op_f32(f32(-1f) * -1188f), -1243f))));
    return Struct_2(36980u, var_2.b, true, var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~19823i >= u_input.a;
    global0 = array<vec3<f32>, 7>();
    var var_1 = Struct_3(arg_0.b.c.x, _wgslsmith_f_op_f32(round(arg_0.b.c.x)), ~arg_0.a);
    var var_2 = vec3<bool>(_wgslsmith_div_u32(~arg_0.a << ((global1[_wgslsmith_index_u32(24258u, 11u)] >> (49609u % 32u)) % 32u), _wgslsmith_div_u32(var_1.c, _wgslsmith_mult_u32(var_1.c, global1[_wgslsmith_index_u32(53661u, 11u)]))) <= func_2().a, func_2().d.b.x, arg_0.b.a);
    var var_3 = arg_0.b.a;
    return func_2();
}

fn func_1() -> StorageBuffer {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1473f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1000f))), _wgslsmith_div_f32(-358f, _wgslsmith_f_op_f32(step(-125f, 295f))))));
    let var_1 = func_5(func_2(), Struct_1(true, func_2().d.b, _wgslsmith_f_op_vec4_f32(max(func_2().b.c, vec4<f32>(_wgslsmith_f_op_f32(675f - var_0.x), -1776f, var_0.x, 2432f)))));
    var var_2 = countOneBits(~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(27290u, var_1.a, 1u, 26219u), vec4<u32>(var_1.a, var_1.a, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27300u, 11u)], 11u)])), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), var_1.a, 13569u) & vec4<u32>(10999u, 4294967295u & global1[_wgslsmith_index_u32(0u, 11u)], ~global1[_wgslsmith_index_u32(var_1.a, 11u)], ~global1[_wgslsmith_index_u32(30409u, 11u)])));
    return StorageBuffer(var_1.d.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-694f, -1360f)))), 485f)), _wgslsmith_div_f32(1461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -683f) + _wgslsmith_f_op_f32(step(-378f, 981f)))), ~global1[_wgslsmith_index_u32(~(~(~global1[_wgslsmith_index_u32(33983u, 11u)])), 11u)]);
    let x = u_input.a;
    s_output = func_1();
}

