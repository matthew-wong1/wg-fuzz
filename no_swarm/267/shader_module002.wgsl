struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -1536f, 116f);

var<private> global1: array<u32, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(u_input.d, 1u), ~vec4<i32>(u_input.c.x, -u_input.a, u_input.a, firstTrailingBit(u_input.a)) & -(u_input.c | (vec4<i32>(8089i, u_input.a, 1i, u_input.b.x) & vec4<i32>(u_input.b.x, -26723i, u_input.a, u_input.b.x))), vec2<i32>(abs(u_input.b.x), abs(1i)), vec3<i32>(-13543i, _wgslsmith_mod_i32(~select(-8109i, 12501i, true), u_input.b.x >> (_wgslsmith_mod_u32(98265u, 41571u) % 32u)), ~1i));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1711f, global0.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-791f + -944f))))));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 465f, _wgslsmith_f_op_f32(-1528f * global0.x)))))));
    var var_1 = vec3<bool>(select(true, ((i32(-1i) * -1i) & u_input.a) == firstLeadingBit(0i), all(vec3<bool>(true, true, true))), false, true);
    let var_2 = global0.xz;
    return global0.x;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = arg_3;
    let var_1 = global0.x;
    let var_2 = ~firstLeadingBit(~arg_1.c.a);
    global1 = array<u32, 21>();
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(-2272f, -295f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f) - _wgslsmith_f_op_f32(select(global0.x, global0.x, arg_0)))), _wgslsmith_f_op_f32(func_3()))), global0.x));
    return arg_1.a.x;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> vec2<i32> {
    var var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.d, 21u)], 1u), countOneBits(~(~vec2<u32>(18846u, 4294967295u))));
    let var_1 = select(vec4<i32>(reverseBits(-_wgslsmith_div_i32(-33538i, arg_1.x)), _wgslsmith_div_i32(-_wgslsmith_mult_i32(arg_1.x, arg_1.x), -u_input.b.x << (25983u % 32u)), _wgslsmith_add_i32(-2147483647i, ~arg_1.x), -abs(1i)), _wgslsmith_add_vec4_i32(min(vec4<i32>(arg_1.x, arg_1.x, u_input.c.x, 1i), firstTrailingBit(u_input.c) ^ _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-21146i, 0i, arg_1.x, u_input.c.x))), vec4<i32>(1i, u_input.a, _wgslsmith_sub_i32(-32548i, arg_1.x) | ~1i, _wgslsmith_sub_i32(~0i, _wgslsmith_add_i32(-1i, arg_1.x)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec3<bool>(false, false, false)), var_0.x > var_0.x, all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true)), vec4<bool>(!all(vec4<bool>(false, false, false, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true)), false, true), any(vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), true, true))));
    var var_2 = min(firstLeadingBit(abs(arg_1.x)), _wgslsmith_mult_i32(countOneBits(-(~u_input.c.x)), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mult_i32(-arg_1.x, -31559i))));
    let var_3 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)] & 38916u, countOneBits(22851u), _wgslsmith_mod_u32(8401u, 1u)), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.d, 21u)], ~u_input.d)), select(abs(select(vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 21u)], var_0.x), vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 21u)], 1u), true)), vec2<u32>(55614u >> (var_0.x % 32u), 0u ^ u_input.d), vec2<bool>(true, true)));
    var_2 = 7636i;
    return ~u_input.c.xx;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0.wyy;
    var var_1 = Struct_1(68937u, reverseBits(u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -select(vec2<i32>(-33383i, arg_2), u_input.b, false), func_4(_wgslsmith_f_op_f32(func_2(!arg_1.c, Struct_3(vec4<f32>(1021f, var_0.x, var_0.x, arg_0.x), Struct_1(arg_3, vec4<i32>(u_input.a, arg_1.a, arg_1.a, arg_1.a), u_input.c.zw, u_input.c.wyx), arg_1, vec2<u32>(18678u, global1[_wgslsmith_index_u32(39077u, 21u)])), Struct_2(-2147483647i, true, arg_1.b), true & arg_1.b)), ~firstLeadingBit(u_input.c.xx))), u_input.c.xyw);
    global1 = array<u32, 21>();
    let var_2 = arg_1.c;
    let var_3 = countOneBits(_wgslsmith_div_vec2_i32((abs(var_1.d.yy) << (min(vec2<u32>(var_1.a, 0u), vec2<u32>(0u, 55635u)) % vec2<u32>(32u))) | -vec2<i32>(14780i, 0i), ~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, arg_1.a), vec2<i32>(u_input.a, -1i))));
    return Struct_1(u_input.d | arg_3, select(var_1.b, u_input.c, select(select(select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, var_2, arg_1.b, false), false), vec4<bool>(false, var_2, var_2, false), false), !vec4<bool>(false, var_2, true, arg_1.c), false)), max(u_input.b, vec2<i32>(abs(u_input.b.x), func_4(554f, max(u_input.b, u_input.b)).x)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~var_1.d, vec3<i32>(u_input.b.x & 26230i, var_3.x | arg_2, var_3.x & arg_2)), -vec3<i32>(var_1.d.x, 1i, -28802i)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    let var_0 = select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~arg_3, ~arg_3), ~vec4<u32>(~arg_3.x, arg_0.a >> (0u % 32u), abs(32302u), 69342u)), _wgslsmith_sub_vec4_u32(~abs(arg_3), arg_3), all(arg_2.zx));
    global1 = array<u32, 21>();
    global1 = array<u32, 21>();
    global1 = array<u32, 21>();
    let var_1 = arg_0.d;
    return u_input.d;
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec3<bool> {
    return vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-522f - global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_3()))), any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, false);
    var var_1 = func_6(-vec4<i32>(16496i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.a), ~u_input.c.yyy), 18488i, u_input.a), countOneBits(vec4<u32>(63007u, _wgslsmith_div_u32(4294967295u, u_input.d), firstLeadingBit(1u), func_5(func_1(vec4<f32>(global0.x, global0.x, global0.x, 1281f), Struct_2(-44989i, var_0.x, false), u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43102u, 21u)], 21u)]), global0.x, vec3<bool>(var_0.x, var_0.x, true), vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25771u, 21u)], 21u)], 4952u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c & (firstTrailingBit(u_input.c) & firstTrailingBit(countOneBits(u_input.c))), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(77572u, 21u)])), select(vec2<u32>(1u, u_input.d), firstLeadingBit(vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 21u)])), all(vec2<bool>(false, false)))) >> (vec2<u32>(67131u, 4294967295u) % vec2<u32>(32u)), vec3<f32>(301f, global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-908f)), 1130f, !var_1.x)), global0.x))), _wgslsmith_f_op_vec2_f32(global0.yx + _wgslsmith_f_op_vec2_f32(floor(global0.xx))), 1i);
}

