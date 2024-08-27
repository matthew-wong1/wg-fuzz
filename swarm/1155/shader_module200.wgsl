struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    global0 = array<bool, 17>();
    let var_0 = false;
    global0 = array<bool, 17>();
    let var_1 = vec3<u32>(65877u, 0u, ~(~_wgslsmith_add_u32(u_input.a, 69579u))) & vec3<u32>(0u, _wgslsmith_mult_u32(u_input.c.x, ~1u), u_input.b);
    global0 = array<bool, 17>();
    return _wgslsmith_f_op_f32(f32(-1f) * -821f);
}

fn func_2() -> u32 {
    global0 = array<bool, 17>();
    var var_0 = Struct_4(Struct_2(_wgslsmith_add_vec4_u32(~(~vec4<u32>(62868u, 1u, 1u, u_input.c.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(11449u, 92755u, 395u, u_input.d), vec4<u32>(u_input.c.x, u_input.d, 4294967295u, u_input.d)), vec4<u32>(0u, u_input.b, u_input.b, 37713u))), ~vec2<i32>(6175i, 33708i) << (_wgslsmith_div_vec2_u32(~u_input.c.zy, ~u_input.c.yx) % vec2<u32>(32u)), vec2<bool>(global0[_wgslsmith_index_u32(~(~u_input.c.x), 17u)], true), -1274f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(569f)) * _wgslsmith_f_op_f32(func_3(Struct_3(global0[_wgslsmith_index_u32(8701u, 17u)], -830f), vec4<f32>(1554f, -1000f, 1357f, 113f), Struct_3(global0[_wgslsmith_index_u32(0u, 17u)], 2000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))))), ~(vec3<u32>(~u_input.d, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(44480u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, 1u, 4294967295u, 1u))) >> (~_wgslsmith_add_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u))));
    global0 = array<bool, 17>();
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_div_i32(13576i, var_0.a.b.x), var_0.a.b.x, -50229i | var_0.a.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.x, -26520i, var_0.a.b.x), vec3<i32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(6894i, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x) << (var_0.a.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, var_0.a.b.x, var_0.a.b.x), vec4<i32>(var_0.a.b.x, -2147483647i, var_0.a.b.x, 17449i)), select(vec4<bool>(false, var_0.a.c.x, true, global0[_wgslsmith_index_u32(var_0.a.a.x, 17u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)], var_0.a.c.x, true), var_0.a.c.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(76518i, var_0.a.b.x, var_0.a.b.x, -46181i), vec4<i32>(75024i, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)))), _wgslsmith_add_vec4_i32(~abs(firstTrailingBit(vec4<i32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, -2147483647i))), countOneBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(19892i, 1i, var_0.a.b.x, 1i), vec4<i32>(15851i, -2147483647i, -82537i, 0i), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(6002i, 45968i, 0i, 32096i), vec4<i32>(-2147483647i, var_0.a.b.x, 24531i, -1i), vec4<i32>(-1i, 2147483647i, var_0.a.b.x, var_0.a.b.x))))), max(vec4<i32>(1i, min(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(var_0.a.b.x, var_0.a.b.x, 47729i))), var_0.a.b.x, 0i), vec4<i32>(~firstTrailingBit(var_0.a.b.x), 53013i, ~var_0.a.b.x, ~var_0.a.b.x)));
    var_0 = Struct_4(Struct_2(var_0.a.a >> (countOneBits(var_0.a.a) % vec4<u32>(32u)), min(var_0.a.b, var_1.yy | ~vec2<i32>(var_0.a.b.x, var_1.x)), !var_0.a.c, -567f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) - var_0.a.d)), u_input.c >> (firstTrailingBit(vec3<u32>(~8068u, 8247u, 1u)) % vec3<u32>(32u)));
    return _wgslsmith_add_u32(~0u, ~var_0.c.x);
}

fn func_1() -> bool {
    var var_0 = Struct_2(max(select(vec4<u32>(1u, 1u, ~1u, 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.a, 59182u), vec4<u32>(1u, 1u, u_input.c.x, u_input.b), vec4<u32>(0u, 1u, u_input.d, 4294967295u)), vec4<bool>(true, true, true, true)), min(vec4<u32>(func_2(), 1u, ~0u, u_input.c.x), abs(vec4<u32>(50027u, 1u, 39189u, 0u) ^ vec4<u32>(1u, u_input.d, u_input.c.x, 18369u)))), _wgslsmith_sub_vec2_i32(max(_wgslsmith_mod_vec2_i32(vec2<i32>(14843i, 2147483647i), vec2<i32>(1i, 1i)), abs(vec2<i32>(0i, -8447i))), ~select(~vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 26969i), true)), !select(vec2<bool>(true, false), vec2<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], true, global0[_wgslsmith_index_u32(0u, 17u)]))), select(false, global0[_wgslsmith_index_u32(16819u, 17u)], true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1647f * 2403f), -411f)) * 1625f) - -392f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1456f, -356f, -234f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d, var_0.d, 1516f), vec3<f32>(var_0.d, var_0.d, var_0.d), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1193f, var_0.d, var_0.d)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(f32(-1f) * -176f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1120f, var_0.d, _wgslsmith_f_op_f32(min(var_0.d, -158f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_0.d, var_0.d), vec3<f32>(-631f, var_0.d, var_0.d), true)))))));
    let var_2 = Struct_2(~vec4<u32>(min(0u, ~var_0.a.x), 4294967295u, u_input.d | var_0.a.x, ~1u), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(21585i, var_0.b.x, -1i, -27872i)), ~vec4<i32>(var_0.b.x, 0i, -2147483647i, var_0.b.x)), -var_0.b.x), var_0.b, vec2<i32>(_wgslsmith_div_i32(-5436i, var_0.b.x), ~(~(-18080i)))), vec2<bool>(all(var_0.c), any(select(select(vec4<bool>(false, true, true, var_0.c.x), vec4<bool>(true, false, var_0.c.x, false), var_0.c.x), !vec4<bool>(var_0.c.x, false, global0[_wgslsmith_index_u32(1414u, 17u)], var_0.c.x), true))), var_1.x);
    var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1479f - var_2.d)))), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(var_1.x, var_2.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f + var_2.d) + _wgslsmith_f_op_f32(var_1.x - -416f))))), var_0.c.x));
    global0 = array<bool, 17>();
    return any(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(~(~var_0.a.x), 17u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 17u)], true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(9486u, 17u)], true, true), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(24360u, 17u)]))), min(4294967295u, u_input.a) == 4294967295u)) != all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 17u)], true, false), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a, 17u)])), select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], true, true, true), true)), vec4<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 17u)], true)), !global0[_wgslsmith_index_u32(u_input.a, 17u)], true || global0[_wgslsmith_index_u32(u_input.c.x, 17u)], select(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)])), vec4<bool>(global0[_wgslsmith_index_u32(1u, 17u)], true, global0[_wgslsmith_index_u32(24825u, 17u)] & true, func_1())));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    let var_1 = vec2<i32>(reverseBits(-(-52173i >> ((u_input.a | u_input.a) % 32u))), -(~((13661i << (u_input.a % 32u)) & countOneBits(21448i))));
    var_0 = func_1();
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-var_1.x, _wgslsmith_mult_i32(var_1.x, var_1.x | min(var_1.x, var_1.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 19431i, 44962i, 0i), vec4<i32>(var_1.x, var_1.x, -32201i, 0i)) | -_wgslsmith_clamp_i32(-3819i, -1i, var_1.x), select(var_1.x, var_1.x & ~var_1.x, true)), vec4<i32>(firstTrailingBit(~_wgslsmith_mod_i32(var_1.x, var_1.x)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, -23401i, var_1.x) ^ -67014i, _wgslsmith_div_i32(var_1.x, var_1.x), var_1.x >> (func_2() % 32u)), -21383i, var_1.x));
    global0 = array<bool, 17>();
    var var_3 = Struct_4(Struct_2(max(_wgslsmith_add_vec4_u32(~vec4<u32>(32859u, 6375u, u_input.c.x, u_input.b), ~vec4<u32>(1u, 4294967295u, 7704u, u_input.a)), ~vec4<u32>(u_input.d, u_input.d, 13729u, u_input.c.x)), var_2.zw, !vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b, 17u)], true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f + 902f) - _wgslsmith_f_op_f32(1897f + 2602f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -749f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_3(true, _wgslsmith_f_op_f32(-1000f + -251f)), vec4<f32>(-331f, -655f, _wgslsmith_f_op_f32(1009f + -1122f), _wgslsmith_f_op_f32(f32(-1f) * -1850f)), Struct_3(global0[_wgslsmith_index_u32(41297u, 17u)] | false, _wgslsmith_f_op_f32(f32(-1f) * -237f)))))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c << (countOneBits(u_input.c) % vec3<u32>(32u)), ~u_input.c), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.a.a.x, 0u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(57608u, 1579u), u_input.c.x, firstLeadingBit(1u), var_3.c.x), var_3.a.a), abs(func_2()) >> (14186u % 32u), ~u_input.c.x), 0i, vec3<i32>(max(var_1.x, _wgslsmith_clamp_i32(~var_3.a.b.x, 1i, 1i)), _wgslsmith_div_i32(_wgslsmith_add_i32(var_1.x, -2147483647i) >> (reverseBits(0u) % 32u), firstLeadingBit(var_1.x)), (i32(-1i) * -var_1.x) & _wgslsmith_mod_i32(89122i << (1u % 32u), -var_3.a.b.x)));
}

