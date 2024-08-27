struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22>;

var<private> global1: Struct_5 = Struct_5(-4696i, Struct_1(i32(-2147483648), vec2<bool>(false, true), vec2<bool>(false, false), vec2<u32>(7649u, 0u), i32(-2147483648)));

var<private> global2: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(i32(-2147483648), Struct_1(2147483647i, vec2<bool>(true, false), vec2<bool>(false, true), vec2<u32>(4852u, 0u), 0i)), Struct_5(-48424i, Struct_1(1i, vec2<bool>(true, true), vec2<bool>(false, true), vec2<u32>(4294967295u, 4294967295u), -48669i)), Struct_5(0i, Struct_1(2147483647i, vec2<bool>(true, true), vec2<bool>(false, true), vec2<u32>(6977u, 1u), -1i)), Struct_5(33938i, Struct_1(-1i, vec2<bool>(true, false), vec2<bool>(false, false), vec2<u32>(17317u, 228u), 18396i)), Struct_5(2147483647i, Struct_1(62546i, vec2<bool>(true, true), vec2<bool>(false, true), vec2<u32>(0u, 4294967295u), 1i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = global2[_wgslsmith_index_u32(1u, 5u)];
    var var_0 = _wgslsmith_dot_vec3_i32(-(-(~vec3<i32>(global1.b.e, global1.b.a, 34718i)) >> (_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 0u)), firstLeadingBit(vec3<u32>(7847u, 2008u, 1u)), ~vec3<u32>(4763u, 0u, u_input.c)) % vec3<u32>(32u))), ~vec3<i32>(global1.a, -27124i, _wgslsmith_add_i32(u_input.a, abs(28684i))));
    let var_1 = Struct_5(23859i, Struct_1(global1.a, vec2<bool>(global1.b.b.x, global1.b.c.x), select(global1.b.c, vec2<bool>(true, !global1.b.c.x), select(true, all(vec3<bool>(true, global1.b.b.x, global1.b.b.x)), global1.b.b.x & global1.b.b.x)), ~select(vec2<u32>(0u, 71491u), vec2<u32>(0u, 0u), global1.b.c) & _wgslsmith_add_vec2_u32(global1.b.d << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(12784u, u_input.c)), global1.b.a));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1567f)), _wgslsmith_f_op_f32(1846f * -708f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1369f)) - _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(1981f - -299f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(418f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -815f), -2147f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-101f, 1000f)))), -467f)));
    let var_3 = vec2<u32>(~global1.b.d.x, ~(~u_input.c));
    return 4385i;
}

fn func_2(arg_0: f32) -> vec2<i32> {
    let var_0 = global0[_wgslsmith_index_u32(49777u, 22u)];
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, abs(0u)), select(_wgslsmith_clamp_vec2_u32(global1.b.d, vec2<u32>(u_input.c, 23578u), global1.b.d), global1.b.d, select(global1.b.c, vec2<bool>(global1.b.c.x, true), global1.b.c))), 47702u);
    var var_2 = global1.b.b;
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-41586i), max(42367i, u_input.a), i32(-1i) * -1i, u_input.a | -2147483647i), vec4<i32>(abs(global1.b.a), 0i, global1.a, 38299i << (global1.b.d.x % 32u))), ~(~_wgslsmith_mod_i32(u_input.b, 2043i)), 1i), max(vec4<i32>(abs(global1.a >> (u_input.c % 32u)), _wgslsmith_add_i32(min(global1.b.a, 12281i), ~13274i), global1.b.a | min(global1.a, 2147483647i), ~(~(-23089i))), vec4<i32>(u_input.a, reverseBits(~u_input.a), firstLeadingBit(15031i) ^ _wgslsmith_div_i32(-12039i, u_input.a), global1.a)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(800f, 734f, -1269f) - vec3<f32>(var_0.x, 808f, 902f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -149f, var_0.x), vec3<f32>(-377f, 308f, 610f))), vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(sign(-1713f)), -321f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_0, arg_0) - vec3<f32>(arg_0, var_0.x, arg_0)))))));
    return vec2<i32>(abs(global1.a), select(var_3.x, func_3(), var_2.x));
}

fn func_1() -> u32 {
    global0 = array<vec2<f32>, 22>();
    var var_0 = Struct_2(-_wgslsmith_sub_vec2_i32(vec2<i32>(~global1.b.e, _wgslsmith_mult_i32(global1.b.e, -2147483647i)), ~func_2(1198f)), ~vec3<u32>(u_input.d, global1.b.d.x, u_input.d), global1.b.b.x);
    var var_1 = Struct_4(_wgslsmith_mod_i32(20092i, 20444i));
    var var_2 = abs(~reverseBits(countOneBits(vec2<u32>(global1.b.d.x, u_input.c))));
    var var_3 = Struct_5(_wgslsmith_div_i32(-44038i, var_0.a.x >> (~_wgslsmith_add_u32(var_2.x, 1873u) % 32u)), Struct_1(u_input.a, !vec2<bool>(any(global1.b.b), !global1.b.b.x), select(!select(global1.b.b, global1.b.c, false), vec2<bool>(false, any(vec4<bool>(var_0.c, global1.b.b.x, var_0.c, global1.b.c.x))), vec2<bool>(any(global1.b.c), var_0.a.x <= var_1.a)), ~global1.b.d, min(_wgslsmith_mult_i32(~global1.a, select(1i, -23857i, var_0.c)), var_0.a.x)));
    return 55222u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(~func_1(), 5u)];
    global1 = global2[_wgslsmith_index_u32(firstLeadingBit(global1.b.d.x), 5u)];
    var var_0 = !(!(!select(select(vec3<bool>(global1.b.c.x, global1.b.b.x, false), vec3<bool>(true, global1.b.c.x, false), vec3<bool>(global1.b.c.x, false, true)), select(vec3<bool>(global1.b.c.x, true, false), vec3<bool>(global1.b.c.x, global1.b.b.x, true), true), select(vec3<bool>(true, true, true), vec3<bool>(global1.b.c.x, true, global1.b.c.x), vec3<bool>(false, global1.b.c.x, global1.b.c.x)))));
    var var_1 = Struct_3(Struct_2(~(~vec2<i32>(-18356i, -2147483647i)), vec3<u32>(func_1(), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(10012u, 1u, 37529u, u_input.c), vec4<u32>(global1.b.d.x, global1.b.d.x, 1u, global1.b.d.x), vec4<u32>(global1.b.d.x, 54923u, global1.b.d.x, u_input.d)), vec4<u32>(global1.b.d.x, global1.b.d.x, 51647u, u_input.c)), global1.b.d.x >> (0u % 32u)), global1.b.b.x), global1.b, 34803i);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-612f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), 1643f), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(133f - -445f), _wgslsmith_f_op_f32(392f * 1434f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(670f, 951f, -1033f) * _wgslsmith_div_vec3_f32(vec3<f32>(-277f, -1477f, 101f), vec3<f32>(1068f, 1000f, -498f)))), (_wgslsmith_mod_i32(var_1.c, 27293i) >= firstLeadingBit(global1.b.e)) & var_0.x)), vec3<f32>(-773f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-373f * 577f), _wgslsmith_f_op_f32(f32(-1f) * -1044f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1102f * -232f))) + 1625f))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-34389i, u_input.a, u_input.b, 2147483647i)), vec4<i32>(2147483647i, 12386i, u_input.a, 2147483647i)), 1i, ~countOneBits(18387i), ~6747i), ~_wgslsmith_div_vec4_i32(-(~vec4<i32>(global1.b.e, -20830i, var_1.a.a.x, global1.b.e)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, -66532i, var_1.b.e) & vec4<i32>(8517i, -1i, global1.a, 2147483647i), countOneBits(vec4<i32>(1i, var_1.b.e, 0i, u_input.a)), firstTrailingBit(vec4<i32>(global1.b.a, 46235i, var_1.c, -2147483647i)))), ~42521u, -455f);
}

