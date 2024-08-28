struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<u32, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(firstTrailingBit(90547u) ^ 4294967295u), global1[_wgslsmith_index_u32(abs(reverseBits(u_input.d)), 20u)]), 20u)]), 24u)];
    global0 = array<Struct_1, 24>();
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(firstTrailingBit(~vec4<i32>(2147483647i, var_0, u_input.b.x, -2147483647i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, u_input.c.x, 1i), -u_input.b), -(~vec4<i32>(-81540i, u_input.b.x, u_input.a.x, var_0)) >> (var_1.a % vec4<u32>(32u))), -vec4<i32>(-1370i, abs(1i), reverseBits(_wgslsmith_mult_i32(var_0, u_input.b.x)), abs(0i)));
    let var_3 = u_input.a.x;
    return reverseBits(_wgslsmith_sub_u32(u_input.d, abs(~global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 20u)])));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    var var_0 = arg_1.yy;
    var var_1 = vec2<bool>((countOneBits(u_input.b.x) > ~(~u_input.a.x)) || true, false);
    var var_2 = ~(~(~_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(arg_1.x, 20u)])) & ~_wgslsmith_mult_u32(firstTrailingBit(arg_1.x), global1[_wgslsmith_index_u32(~u_input.d, 20u)]));
    var var_3 = select(u_input.c, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(max(u_input.c, vec3<i32>(-1i, -40397i, -2147483647i)), u_input.c), u_input.c), !vec3<bool>(0i == u_input.c.x, arg_0, true)) ^ ~_wgslsmith_clamp_vec3_i32(u_input.b.wyw, vec3<i32>(1i, -u_input.c.x, -2147483647i), _wgslsmith_sub_vec3_i32(~u_input.b.zww, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 76220i, -8911i), u_input.c)));
    let var_4 = vec4<u32>(~(~u_input.d), var_0.x, firstTrailingBit(_wgslsmith_div_u32(81763u >> (abs(u_input.d) % 32u), _wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(5788u, 23322u)) | min(arg_1.x, 1u))), ~1u);
    return abs(~0i);
}

fn func_2() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(1u | ~(7535u & countOneBits(0u << (global1[_wgslsmith_index_u32(4294967295u, 20u)] % 32u))), 24u)];
    let var_1 = -_wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.c.x, countOneBits(~_wgslsmith_add_i32(u_input.a.x, u_input.b.x)));
    let var_2 = func_4(false, vec3<u32>(29795u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(39659u, 40336u, 39615u), func_3()), firstLeadingBit(u_input.d), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(min(22389u, var_0.a.x), 20u)], 68123u)), ~0u));
    global0 = array<Struct_1, 24>();
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(6544u, 77518u, u_input.d), 1u << (global1[_wgslsmith_index_u32(0u, 20u)] % 32u)), 13365u, ~global1[_wgslsmith_index_u32(var_0.a.x & global1[_wgslsmith_index_u32(var_0.a.x, 20u)], 20u)], ~global1[_wgslsmith_index_u32(var_0.a.x, 20u)] ^ u_input.d), ~vec4<u32>(~global1[_wgslsmith_index_u32(81709u, 20u)], ~12424u, u_input.d, ~0u)), var_0.a.x);
    return Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(~89762u), 24u)], any(select(vec4<bool>(all(vec4<bool>(true, false, false, true)), true, all(vec3<bool>(false, true, false)), true), vec4<bool>(all(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, false)), all(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1206f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1047f - 903f))), select(true, true, any(vec3<bool>(false, true, true))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + -477f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(479f, -623f)), _wgslsmith_f_op_f32(f32(-1f) * -622f)))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f) * _wgslsmith_f_op_f32(f32(-1f) * -1210f));
    var var_1 = arg_2;
    global1 = array<u32, 20>();
    global0 = array<Struct_1, 24>();
    let var_2 = arg_2;
    return Struct_1(min(vec4<u32>(global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(var_1.a.a.x, 1u, arg_2.a.a.x)), 20u)], u_input.d, _wgslsmith_add_u32(111595u, 1u), func_2().a.a.x), arg_3.a.a));
}

fn func_1() -> vec2<i32> {
    var var_0 = func_5(func_2(), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(false, false))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true), Struct_2(Struct_1(countOneBits(countOneBits(vec4<u32>(u_input.d, 12342u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53701u, 20u)], 20u)])))), select(any(vec2<bool>(true, true)), _wgslsmith_sub_i32(-19302i, u_input.b.x) == -1i, true), 1084f), func_2());
    global1 = array<u32, 20>();
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(var_0.a, countOneBits(vec4<u32>(~global1[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_mod_u32(1u, var_0.a.x), _wgslsmith_sub_u32(1u, u_input.d), 12018u))));
    global1 = array<u32, 20>();
    return -vec2<i32>(u_input.c.x, u_input.a.x) << (~vec2<u32>(var_1.a.x, 1u >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, global1[_wgslsmith_index_u32(var_0.a.x, 20u)]), var_0.a.wxw), 20u)] % 32u)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~abs(~vec4<u32>(6297u, u_input.d, u_input.d, global1[_wgslsmith_index_u32(u_input.d, 20u)]))));
    var var_1 = (-(~(u_input.a.x | u_input.a.x)) | _wgslsmith_dot_vec2_i32(~(vec2<i32>(-35972i, u_input.a.x) ^ u_input.c.zz), func_1())) ^ (firstLeadingBit(-u_input.a.x) & u_input.c.x);
    var_1 = abs(_wgslsmith_div_i32(-24336i << (global1[_wgslsmith_index_u32(1u, 20u)] % 32u), min(~func_1().x, 0i >> (~u_input.d % 32u))));
    var_0 = func_2().a;
    var var_2 = !any(vec3<bool>(true, true, all(vec4<bool>(false, false, false, true)))) || true;
    let var_3 = Struct_1(vec4<u32>(10778u, global1[_wgslsmith_index_u32(reverseBits(~(74507u >> (u_input.d % 32u))), 20u)], 33685u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~22051u, 20u)], 13752u)));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(42611u >> (u_input.d % 32u)), u_input.d), 2174u)), 24u)];
    var_2 = false;
    let var_5 = Struct_2(Struct_1(firstTrailingBit(var_4.a)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(true, false, false))), 857f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~_wgslsmith_dot_vec4_u32(var_4.a, ~select(vec4<u32>(var_4.a.x, var_0.a.x, 31431u, 30838u), vec4<u32>(26949u, var_3.a.x, global1[_wgslsmith_index_u32(var_5.a.a.x, 20u)], var_5.a.a.x), vec4<bool>(var_5.b, var_5.b, false, false))));
}

