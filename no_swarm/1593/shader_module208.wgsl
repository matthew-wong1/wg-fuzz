struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_sub_i32(arg_2, firstLeadingBit(-1i));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(~(-2147483647i), abs(u_input.c ^ arg_0.b) | ~9000i, _wgslsmith_clamp_i32(2335i, i32(-1i) * -2147483647i, max(~2147483647i, 35211i)), _wgslsmith_clamp_i32(select(arg_0.b & arg_0.b, ~(-56068i), arg_0.a.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-54113i, arg_2, -2147483647i, arg_0.b), max(vec4<i32>(arg_2, u_input.c, arg_0.b, arg_0.b), vec4<i32>(arg_0.b, -11341i, 0i, arg_2))), -u_input.a.x & _wgslsmith_add_i32(25196i, arg_2))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, arg_2, -11407i, arg_0.b) | vec4<i32>(-7661i, 0i, arg_2, -23020i)), firstLeadingBit(countOneBits(~vec4<i32>(u_input.a.x, arg_0.b, u_input.c, arg_2)))));
    var_1 = -_wgslsmith_add_vec4_i32(vec4<i32>(75293i, min(2147483647i << (u_input.d % 32u), -1i), -28531i, 1i), select(vec4<i32>(8144i, arg_0.b ^ 2291i, ~2147483647i, arg_2), ~(-vec4<i32>(-2147483647i, arg_2, arg_0.b, var_1.x)), select(!vec4<bool>(false, false, arg_0.a.a.x, arg_0.a.a.x), !vec4<bool>(false, arg_0.a.a.x, arg_0.a.a.x, true), arg_0.a.c.x >= arg_0.a.d)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-126f, 171f))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.c.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_0.a.d))), select(select(arg_0.a.a, select(arg_0.a.a, vec2<bool>(arg_0.a.a.x, false), arg_0.a.a.x), false), select(vec2<bool>(arg_0.a.a.x, arg_0.a.a.x), !arg_0.a.a, false | arg_0.a.a.x), arg_0.a.a))));
    return 1000f;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<bool>(true, true), -432f, vec3<f32>(-1371f, -1251f, 889f), 586f), u_input.a.x), 880f, -1i)) > _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<bool>(true, false), 2620f, vec3<f32>(1801f, 1650f, -503f), -295f), 0i), -175f, u_input.a.x))), _wgslsmith_f_op_f32(select(1802f, 1f, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1051f, 914f, -479f) + vec3<f32>(-1372f, 733f, -1081f))))), -288f), 1i);
    var var_1 = ~vec3<i32>(firstTrailingBit(0i), -((-34222i & u_input.a.x) & (u_input.a.x ^ var_0.b)), ~_wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_mult_i32(u_input.c, 33464i)));
    var_0 = Struct_2(Struct_1(select(var_0.a.a, select(!var_0.a.a, vec2<bool>(false, true), false || var_0.a.a.x), select(vec2<bool>(var_0.a.a.x, false), select(var_0.a.a, vec2<bool>(true, var_0.a.a.x), vec2<bool>(var_0.a.a.x, var_0.a.a.x)), u_input.b < 35048u)), _wgslsmith_f_op_f32(var_0.a.d + -1000f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f)), var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1252f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f - _wgslsmith_f_op_f32(-var_0.a.b)))), countOneBits(select(-reverseBits(var_0.b), _wgslsmith_mod_i32(var_0.b, i32(-1i) * -28002i), false)));
    var_0 = Struct_2(var_0.a, abs(-var_0.b) & -45854i);
    let var_2 = _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(var_1.yy, -vec2<i32>(var_0.b, 7752i)), vec2<i32>(1i, _wgslsmith_mult_i32(var_0.b, 14058i)));
    return select(u_input.a, u_input.a, true);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), false), 756f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, -1135f, arg_0.x)), arg_0.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, func_2()), _wgslsmith_sub_i32(firstTrailingBit(-14919i), _wgslsmith_mod_i32(u_input.c, 2147483647i)))));
    var_0 = Struct_3(var_0.a);
    let var_1 = _wgslsmith_f_op_f32(min(-416f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f * arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(-var_0.a.a.d))) - var_0.a.a.d))));
    var_0 = Struct_3(var_0.a);
    var var_2 = var_0.a.b | _wgslsmith_mult_i32(-57434i, -reverseBits(abs(u_input.c)));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, u_input.d)), select(~vec2<u32>(u_input.b, u_input.b), min(vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, u_input.b)), select(vec2<bool>(true, true), vec2<bool>(var_0.a.a.a.x, var_0.a.a.a.x), var_0.a.a.a))), abs(~firstLeadingBit(vec2<u32>(u_input.b, 80708u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~min(-_wgslsmith_div_vec4_i32(vec4<i32>(6125i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, -44014i)), vec4<i32>(select(u_input.c, u_input.c, false), ~u_input.a.x, -1i, 1i)));
    var_0 = vec4<i32>(i32(-1i) * -2147483647i, u_input.c ^ var_0.x, ~firstTrailingBit(-20817i), ~var_0.x);
    let var_1 = 13911u;
    var var_2 = _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(21391u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.d, 0u, 10604u, 31866u), vec4<u32>(0u, 30689u, u_input.b, var_1)) >> (vec4<u32>(func_1(vec4<f32>(1000f, -1196f, 1000f, -594f)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 1u), vec2<u32>(21258u, 49821u)), 0u, ~4294967295u) % vec4<u32>(32u))), select(select(reverseBits(vec4<u32>(var_1, 0u, 55559u, 0u)), vec4<u32>(u_input.d, var_1, 29414u, u_input.d), any(vec2<bool>(true, true))), vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(39940u, 1u, 48884u), vec3<u32>(u_input.d, var_1, var_1)), _wgslsmith_dot_vec4_u32(vec4<u32>(1805u, u_input.b, 1u, 22450u), vec4<u32>(26056u, u_input.b, var_1, 1u)), u_input.b), select(true, true, all(vec4<bool>(false, false, true, true)))) | _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(40456u, 4294967295u, var_1, 39827u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_1, 51072u, 4421u, var_1)), vec4<u32>(4294967295u, u_input.d, 1u, 67474u) | vec4<u32>(u_input.b, u_input.d, var_1, 32324u))));
    var_2 = var_1;
    var var_3 = ~(~1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(-2147483647i, select(~var_0.x, u_input.a.x, any(vec2<bool>(true, false))))), vec3<u32>(_wgslsmith_div_u32(var_1, firstTrailingBit(~1u)), u_input.d, 143856u), ~abs(_wgslsmith_mod_u32(1848u ^ var_1, u_input.d)), vec4<i32>(min(_wgslsmith_add_i32(40517i, func_2().x), countOneBits(var_0.x & -20198i)), 1i, firstTrailingBit(11803i), -_wgslsmith_mult_i32(-10805i, 1i)), _wgslsmith_mult_u32(82265u, ~abs(u_input.b)));
}

