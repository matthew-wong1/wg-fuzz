struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(0i, 1678f), Struct_4(-42803i, -1000f), Struct_4(45609i, -1502f), Struct_4(72358i, 821f), Struct_4(0i, -1970f));

var<private> global1: array<vec2<f32>, 21>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f + arg_0.b.x) - arg_0.b.x))) - _wgslsmith_f_op_f32(min(arg_0.b.x, 1167f))), _wgslsmith_f_op_f32(abs(arg_0.b.x)), _wgslsmith_f_op_f32(ceil(-1591f)), _wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(abs(672f)))))));
    return arg_0.a;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(Struct_3(func_3(Struct_3(firstTrailingBit(34676i), global1[_wgslsmith_index_u32(min(16104u, u_input.a.x), 21u)]), vec3<bool>(false, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(191f, 685f) - global1[_wgslsmith_index_u32(1u, 21u)])) + vec2<f32>(-1000f, _wgslsmith_div_f32(-2078f, -2295f)))), vec3<bool>(true, !(1145u > u_input.c.x) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-447f + -1392f) - _wgslsmith_f_op_f32(137f - 1286f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(484f, -201f, true)))));
    var var_1 = Struct_2(Struct_1(45767u, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, 1189f, -463f, var_0.a.b.x) - vec4<f32>(-1533f, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x))) - vec4<f32>(1218f, _wgslsmith_f_op_f32(ceil(var_0.a.b.x)), -278f, _wgslsmith_f_op_f32(-var_0.a.b.x)))), Struct_1(4294967295u, !var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x), _wgslsmith_f_op_f32(round(var_0.a.b.x)), -731f, var_0.a.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) + _wgslsmith_f_op_f32(round(var_0.a.b.x))), var_0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1099f))), Struct_1(~max(1u, u_input.c.x >> (0u % 32u)), select(var_0.b, vec3<bool>(var_0.b.x, !var_0.b.x, !var_0.b.x), any(vec3<bool>(var_0.b.x, false, var_0.b.x)) || var_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, 1846f)))))), var_0.a.b.x);
    let var_2 = var_1.c;
    var var_3 = ~(~vec4<u32>(var_1.d.a >> (u_input.c.x % 32u), ~0u, 53396u, 1u << (u_input.c.x % 32u)) | _wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 0u, u_input.c.x, u_input.a.x)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_1.b.a, u_input.a.x, 36381u, 5694u)), firstLeadingBit(vec4<u32>(1731u, 1u, u_input.a.x, var_1.a.a)))));
    var var_4 = firstTrailingBit(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.d.a, 4294967295u), ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x)));
    return Struct_2(var_1.b, Struct_1(reverseBits(_wgslsmith_add_u32(var_1.b.a >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 6694u, 20672u, 4294967295u), vec4<u32>(11891u, var_3.x, u_input.c.x, 1u)))), vec3<bool>(select(any(var_0.b.xz), false || var_0.b.x, true), all(var_0.b), var_1.d.a != _wgslsmith_mult_u32(1u, var_1.a.a)), _wgslsmith_f_op_vec4_f32(-var_1.d.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.c.www)))), Struct_1(abs(~3863u), vec3<bool>(1i >= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d, -65207i), vec3<i32>(0i, 2147483647i, var_0.a.a)), true, !all(vec2<bool>(true, var_1.b.b.x))), _wgslsmith_f_op_vec4_f32(-var_1.d.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(551f * var_1.d.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -525f))));
}

fn func_1() -> vec2<u32> {
    let var_0 = -vec3<i32>(u_input.d, ~reverseBits(u_input.b.x), ~(~u_input.b.x)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, -10214i, -4162i & u_input.d)), vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(-72559i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.d, -1i)), u_input.b.x));
    var var_1 = -1i;
    var var_2 = func_2();
    let var_3 = true;
    var var_4 = var_2.d.a | _wgslsmith_mod_u32(23638u, 4294967295u ^ (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) << (u_input.c.x % 32u)));
    return u_input.c.xz;
}

fn func_4(arg_0: vec2<u32>) -> Struct_5 {
    global0 = array<Struct_4, 5>();
    let var_0 = _wgslsmith_add_u32(~func_2().a.a, ~u_input.a.x);
    let var_1 = ~u_input.d;
    let var_2 = Struct_5(Struct_3(-19297i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42851u, 21330u, var_0), vec3<u32>(14103u, arg_0.x, 0u)), 21u)] + _wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(arg_0.x, 21u)]))) + vec2<f32>(_wgslsmith_f_op_f32(round(-739f)), _wgslsmith_f_op_f32(trunc(1000f))))), !select(func_2().b.b, func_2().a.b, vec3<bool>(select(true, true, false), true, true)));
    var var_3 = ~max(abs(select(~vec4<u32>(u_input.a.x, 9683u, u_input.c.x, 45966u), vec4<u32>(var_0, 70251u, 4294967295u, 1u) & vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true)), abs(~vec4<u32>(117232u, arg_0.x, u_input.c.x, u_input.a.x)) | vec4<u32>(func_1().x, ~arg_0.x, arg_0.x, var_0));
    return Struct_5(Struct_3(_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, ~var_2.a.a), _wgslsmith_clamp_i32(var_1, i32(-1i) * -37783i, 17692i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(4294967295u, 21u)]))), vec2<f32>(_wgslsmith_f_op_f32(step(var_2.a.b.x, -542f)), 1000f)))), select(var_2.b, vec3<bool>(all(select(vec4<bool>(true, false, var_2.b.x, false), vec4<bool>(true, false, true, var_2.b.x), true)), true, false), !select(var_2.b, func_2().b.b, all(vec3<bool>(true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2602f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1220f, 492f)));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, ~(~u_input.a.x))), u_input.a.x, u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c << ((vec3<u32>(1u, 61507u, u_input.c.x) & vec3<u32>(0u, 19911u, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), ~(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) >> (u_input.c % vec3<u32>(32u)))));
    var var_2 = func_4(_wgslsmith_add_vec2_u32(~firstTrailingBit(func_1()), vec2<u32>(min(~12620u, 97401u), var_1.x >> (~var_1.x % 32u))));
    var var_3 = i32(-1i) * -max(u_input.d ^ var_2.a.a, ~countOneBits(u_input.d));
    var var_4 = Struct_1(max(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, var_1.x, u_input.c.x)) & (u_input.c.x << (func_1().x % 32u)), _wgslsmith_sub_u32(var_1.x, ~u_input.c.x)), select(func_2().b.b, var_2.b, var_2.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b.x, var_2.a.b.x, -669f, var_2.a.b.x) * vec4<f32>(var_2.a.b.x, -580f, var_2.a.b.x, -609f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1563f, var_2.a.b.x, var_2.a.b.x, -489f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(205f, var_2.a.b.x, var_2.a.b.x, var_2.a.b.x), vec4<f32>(208f, var_2.a.b.x, 436f, var_2.a.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.b.x, 2408f, 1292f, -864f), vec4<f32>(var_2.a.b.x, -1287f, var_2.a.b.x, var_2.a.b.x), vec4<bool>(true, true, var_2.b.x, false))))), all(func_4(vec2<u32>(1u, 24453u)).b))) + vec4<f32>(-931f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1260f)) * _wgslsmith_f_op_f32(var_2.a.b.x - 1450f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.b.x)) * _wgslsmith_f_op_f32(-955f * var_2.a.b.x)), _wgslsmith_f_op_f32(floor(-795f)))));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(0u, u_input.a.x, abs(~var_4.a)), abs(~(~_wgslsmith_add_vec3_i32(vec3<i32>(var_2.a.a, var_2.a.a, u_input.b.x), vec3<i32>(9412i, var_2.a.a, var_2.a.a)))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2074f * var_5.e)) + 545f), var_2.a.b);
}

