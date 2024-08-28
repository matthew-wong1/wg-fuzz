struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-97713i, -55359i), vec2<i32>(-17289i, 20756i), vec2<i32>(-1i, -15585i), vec2<i32>(1i, 22121i), vec2<i32>(-1i, 63474i), vec2<i32>(-1i, 2147483647i), vec2<i32>(25089i, 54970i), vec2<i32>(2147483647i, -8522i), vec2<i32>(23990i, 1i), vec2<i32>(2096i, 0i), vec2<i32>(0i, -1i), vec2<i32>(12696i, -9092i), vec2<i32>(-19482i, 1i), vec2<i32>(0i, 0i), vec2<i32>(14i, 0i), vec2<i32>(-17567i, -10752i), vec2<i32>(2147483647i, -52150i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(42001i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 15478i), vec2<i32>(-2147i, -1i), vec2<i32>(i32(-2147483648), 491i), vec2<i32>(-16988i, -45345i), vec2<i32>(74i, 36877i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-27119i, 30867i), vec2<i32>(5304i, i32(-2147483648)), vec2<i32>(-6186i, -1i), vec2<i32>(39209i, 0i));

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<f32>(-2148f, -1447f, -635f)), Struct_2(vec3<f32>(2140f, 844f, 242f)), Struct_2(vec3<f32>(-834f, 522f, 1000f)), Struct_2(vec3<f32>(-472f, 2220f, 2365f)), Struct_2(vec3<f32>(487f, 602f, 1983f)), Struct_2(vec3<f32>(1356f, -1291f, 415f)), Struct_2(vec3<f32>(-972f, -1332f, -764f)), Struct_2(vec3<f32>(-1609f, 519f, 2604f)), Struct_2(vec3<f32>(-568f, 727f, -438f)), Struct_2(vec3<f32>(2198f, 158f, -413f)), Struct_2(vec3<f32>(939f, -437f, 205f)), Struct_2(vec3<f32>(2537f, -1257f, -2180f)), Struct_2(vec3<f32>(-166f, -711f, 1000f)), Struct_2(vec3<f32>(114f, -582f, -1000f)), Struct_2(vec3<f32>(-675f, 1352f, 1401f)), Struct_2(vec3<f32>(-317f, 1069f, 822f)), Struct_2(vec3<f32>(-184f, -432f, -872f)), Struct_2(vec3<f32>(-138f, -1129f, 1139f)), Struct_2(vec3<f32>(-814f, -1937f, 1498f)), Struct_2(vec3<f32>(-464f, -207f, 1877f)), Struct_2(vec3<f32>(-574f, 557f, -736f)), Struct_2(vec3<f32>(787f, -1443f, 2387f)), Struct_2(vec3<f32>(2543f, -2744f, -128f)), Struct_2(vec3<f32>(-1467f, 629f, 630f)), Struct_2(vec3<f32>(420f, -120f, 1000f)), Struct_2(vec3<f32>(149f, 1000f, -1001f)), Struct_2(vec3<f32>(491f, 505f, 212f)), Struct_2(vec3<f32>(-581f, -1125f, 1457f)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    var var_0 = !(!vec3<bool>(all(select(vec4<bool>(arg_0.a.e.x, arg_0.a.e.x, true, arg_0.a.e.x), vec4<bool>(true, false, true, arg_0.a.e.x), vec4<bool>(arg_0.a.e.x, arg_0.a.e.x, false, arg_0.a.e.x))), false, !arg_0.a.e.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(363f + arg_1.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -1497f)), arg_1.x, !(~arg_0.a.d != _wgslsmith_clamp_i32(1i, -27285i, arg_0.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1.x)))), _wgslsmith_f_op_f32(step(187f, _wgslsmith_f_op_f32(-936f + arg_1.x))));
    var_0 = vec3<bool>(arg_0.a.e.x, any(!(!vec4<bool>(true, var_0.x, true, false))), _wgslsmith_f_op_f32(trunc(arg_1.x)) > -690f);
    var var_2 = var_1.www;
    var var_3 = true;
    return any(!select(select(vec4<bool>(false, var_0.x, arg_0.a.e.x, var_0.x), vec4<bool>(var_0.x, false, false, true), true), vec4<bool>(true, false, var_0.x, all(vec3<bool>(true, true, arg_0.a.e.x))), vec4<bool>(any(vec2<bool>(var_0.x, arg_0.a.e.x)), 1u >= arg_0.b, var_0.x, arg_0.a.e.x || arg_0.a.e.x)));
}

fn func_2() -> u32 {
    var var_0 = all(select(vec4<bool>(false, true, all(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, true))), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, u_input.e <= u_input.a, true, any(vec4<bool>(true, true, false, false))), vec4<bool>(true, func_3(Struct_3(Struct_1(41858i, 137u, vec4<u32>(u_input.c.x, 4294967295u, u_input.e, u_input.c.x), -35556i, vec2<bool>(false, false)), 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec4<f32>(1792f, -366f, -164f, -1011f)), true, true))));
    var var_1 = -1769f;
    let var_2 = i32(-1i) * -1i;
    var var_3 = Struct_1(var_2, ~_wgslsmith_clamp_u32(u_input.c.x, 1u, 12136u >> (0u % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e | 1u, _wgslsmith_mult_u32(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.b), vec3<u32>(48983u, 34751u, u_input.e))), firstTrailingBit(u_input.c.x), 1u), vec4<u32>(_wgslsmith_mod_u32(0u, reverseBits(1u)), 1u, u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 18136u, u_input.a), vec4<u32>(u_input.e, 0u, 4294967295u, u_input.a)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-40791i, -1i, var_2, var_2), firstTrailingBit(vec4<i32>(-17086i, var_2, var_2, var_2))), -1i) | var_2, vec2<bool>(any(vec3<bool>(false, all(vec4<bool>(true, false, true, false)), true)), any(vec3<bool>(true, true, true))));
    var var_4 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1267f, 178f, -442f)) * vec3<f32>(-1482f, 228f, -1000f)), vec3<f32>(-447f, _wgslsmith_f_op_f32(f32(-1f) * -671f), 524f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-255f, _wgslsmith_f_op_f32(f32(-1f) * -431f), -1241f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), 488f, _wgslsmith_f_op_f32(f32(-1f) * -265f)), var_3.e.x))));
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = array<vec2<i32>, 32>();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a << (u_input.c.x % 32u), select(arg_2.d, arg_2.d, true)) & vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d, arg_2.d), global0[_wgslsmith_index_u32(u_input.a, 32u)])), -vec2<i32>(2147483647i, 10879i)) >> ((1u & func_2()) % 32u);
    let var_1 = -1939f;
    var var_2 = global1[_wgslsmith_index_u32(~firstTrailingBit(~arg_2.c.x << (14912u % 32u)) >> (_wgslsmith_add_u32(~(~1u), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.c.x & 12082u, min(98186u, arg_2.b)), 1u)) % 32u), 28u)];
    let var_3 = arg_2;
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(max(1u, 1u), 28u)];
    global1 = array<Struct_2, 28>();
    var_0 = Struct_2(var_0.a);
    global0 = array<vec2<i32>, 32>();
    var var_1 = _wgslsmith_f_op_f32(820f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-818f))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1039f)))))));
    let var_2 = 16520i;
    global1 = array<Struct_2, 28>();
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(470u, 49274u, u_input.a, u_input.d), ~vec4<u32>(u_input.c.x, 9627u, u_input.b, 4294967295u)), vec4<u32>(~u_input.a, ~4294967295u, 1u << (0u % 32u), u_input.c.x << (u_input.b % 32u))), u_input.d, u_input.d) | select(select((vec3<u32>(4294967295u, u_input.d, 24711u) >> (vec3<u32>(u_input.b, 0u, u_input.a) % vec3<u32>(32u))) << (countOneBits(vec3<u32>(u_input.e, u_input.d, 4294967295u)) % vec3<u32>(32u)), ~max(vec3<u32>(1u, u_input.b, 70989u), vec3<u32>(u_input.b, 0u, u_input.e)), vec3<bool>(false, true, any(vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(39826u, u_input.a, u_input.e)), reverseBits(vec3<u32>(0u, u_input.e, u_input.c.x))), ~vec3<u32>(u_input.b, 1u, 0u) | ~vec3<u32>(4294967295u, 4294967295u, 4294967295u)), any(vec4<bool>(true, true, true, true)));
    var_3 = ~vec3<u32>(1u, 0u, ~15903u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25366u, u_input.b, 4717u, 1u) >> (vec4<u32>(var_3.x, u_input.d, var_3.x, u_input.d) % vec4<u32>(32u)), vec4<u32>(11046u, 3128u, u_input.a, 10795u)), u_input.a, ~firstTrailingBit(u_input.b), 0u), var_2 ^ ~(-2147483647i), vec2<i32>(var_2, func_1(var_0.a.x, var_0.a.zx, Struct_1(_wgslsmith_clamp_i32(var_2, 0i, -1i), 4294967295u, vec4<u32>(u_input.e, 34060u, var_3.x, u_input.c.x), var_2, select(vec2<bool>(false, false), vec2<bool>(false, false), true)), 29659u > _wgslsmith_div_u32(u_input.d, 19694u))), ~(var_3.yz | vec2<u32>(var_3.x, 4294967295u)), firstLeadingBit(var_2) & ~countOneBits(var_2));
}

