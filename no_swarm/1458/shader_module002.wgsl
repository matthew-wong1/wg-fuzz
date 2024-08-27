struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(0u, 2147483647i, Struct_2(vec4<i32>(i32(-2147483648), 0i, 16121i, i32(-2147483648))), 24527u), Struct_3(80986u, -17091i, Struct_2(vec4<i32>(1i, -1i, 23496i, 12368i)), 7723u), Struct_3(69281u, 22367i, Struct_2(vec4<i32>(-1i, i32(-2147483648), 0i, -17742i)), 1u), Struct_3(1061u, 2147483647i, Struct_2(vec4<i32>(1i, 2147483647i, 2147483647i, -18990i)), 26385u));

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(4294967295u, 21323i, Struct_2(vec4<i32>(-37190i, i32(-2147483648), 34447i, -1i)), 93310u), Struct_3(4294967295u, 23952i, Struct_2(vec4<i32>(-11449i, -9035i, 71478i, -12408i)), 0u), Struct_3(2736u, 8223i, Struct_2(vec4<i32>(i32(-2147483648), 1i, -1i, 27530i)), 1u), Struct_3(34473u, 0i, Struct_2(vec4<i32>(5594i, 12918i, 10841i, 1i)), 120093u), Struct_3(1u, 0i, Struct_2(vec4<i32>(2147483647i, -1i, 0i, 8152i)), 28401u), Struct_3(4294967295u, 37951i, Struct_2(vec4<i32>(-41270i, 32416i, 1i, -66963i)), 1u), Struct_3(12516u, -29992i, Struct_2(vec4<i32>(26200i, 1i, -1i, 36214i)), 4294967295u), Struct_3(1u, 1i, Struct_2(vec4<i32>(-1i, 8187i, 2147483647i, 302i)), 4294967295u), Struct_3(1468u, 1i, Struct_2(vec4<i32>(0i, 17676i, 32080i, 31655i)), 57459u), Struct_3(52185u, -30834i, Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i)), 8857u), Struct_3(0u, i32(-2147483648), Struct_2(vec4<i32>(-1i, 1i, 6807i, 2147483647i)), 4294967295u), Struct_3(0u, 0i, Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 10349i, -12346i)), 4294967295u), Struct_3(0u, i32(-2147483648), Struct_2(vec4<i32>(885i, 0i, -3000i, 1i)), 4294967295u), Struct_3(0u, i32(-2147483648), Struct_2(vec4<i32>(1i, 1i, -35794i, 8902i)), 4294967295u), Struct_3(14259u, -48028i, Struct_2(vec4<i32>(-595i, i32(-2147483648), 30122i, 40620i)), 4294967295u), Struct_3(4294967295u, 38908i, Struct_2(vec4<i32>(-50612i, 44729i, -11056i, 3807i)), 67672u), Struct_3(6258u, -37347i, Struct_2(vec4<i32>(-12329i, -19180i, 2147483647i, 2933i)), 1u), Struct_3(1u, 42931i, Struct_2(vec4<i32>(1i, 52i, -214i, 1i)), 7069u), Struct_3(0u, 15464i, Struct_2(vec4<i32>(23572i, 1i, -32778i, -1i)), 0u), Struct_3(40548u, 0i, Struct_2(vec4<i32>(36383i, -1i, 65507i, -1i)), 7129u), Struct_3(81274u, 2147483647i, Struct_2(vec4<i32>(2147483647i, 55678i, -31763i, 2147483647i)), 50154u), Struct_3(106505u, 37268i, Struct_2(vec4<i32>(0i, 2147483647i, 1i, 0i)), 53728u), Struct_3(0u, -37340i, Struct_2(vec4<i32>(102136i, -24672i, -1i, -15158i)), 0u), Struct_3(24292u, 47803i, Struct_2(vec4<i32>(2147483647i, -8503i, 5523i, i32(-2147483648))), 30081u), Struct_3(22784u, 2147483647i, Struct_2(vec4<i32>(0i, -5307i, -1i, 2147483647i)), 22592u), Struct_3(4294967295u, -4418i, Struct_2(vec4<i32>(2147483647i, -46216i, 0i, 0i)), 48021u), Struct_3(0u, 2147483647i, Struct_2(vec4<i32>(1i, i32(-2147483648), -41070i, 2147483647i)), 0u), Struct_3(29189u, 1i, Struct_2(vec4<i32>(0i, 1i, 49902i, 4998i)), 29094u), Struct_3(9967u, -29533i, Struct_2(vec4<i32>(-21862i, 0i, 15917i, 2147483647i)), 1u), Struct_3(13724u, 0i, Struct_2(vec4<i32>(21253i, 2147483647i, i32(-2147483648), 1i)), 0u), Struct_3(2184u, -1i, Struct_2(vec4<i32>(-17895i, 61453i, -1i, 32585i)), 8287u));

var<private> global2: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false));

var<private> global3: vec2<i32> = vec2<i32>(11091i, -26987i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(vec4<i32>(-global3.x, 2147483647i, firstLeadingBit(-2273i), _wgslsmith_mult_i32(abs(6073i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3.x, 42287i, -36216i), vec4<i32>(global3.x, 0i, 2147483647i, 20924i)))));
    let var_1 = arg_1;
    let var_2 = ~vec2<u32>(46933u, abs(u_input.c));
    var var_3 = ~abs(reverseBits(32029u));
    let var_4 = var_0.a.x;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, var_1.a.x, arg_1.a.x) * vec4<f32>(-1000f, arg_1.a.x, var_1.a.x, -264f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(735f, arg_1.a.x, 1248f, 758f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, arg_1.a.x, var_1.a.x, var_1.a.x) - vec4<f32>(-642f, var_1.a.x, arg_1.a.x, 295f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(475f, arg_1.a.x, var_1.a.x, 159f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 705f, var_1.a.x, -1022f) - vec4<f32>(-136f, 1000f, -367f, 317f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: f32) -> vec3<f32> {
    var var_0 = Struct_2(vec4<i32>(1i, arg_0.a.x, _wgslsmith_add_i32(30247i, _wgslsmith_div_i32(global3.x, -1i)), _wgslsmith_mod_i32(~global3.x & -4352i, ~global3.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1065f, arg_3, -752f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, 679f, 235f) + vec4<f32>(arg_3, 167f, 1384f, -515f))))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_3, 380f, true)), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-1000f - -1838f), _wgslsmith_f_op_f32(step(1437f, arg_3)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1140f, -433f, _wgslsmith_f_op_f32(var_1.x - -2156f), _wgslsmith_f_op_f32(-arg_3))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_2, Struct_1(vec3<f32>(-877f, arg_3, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-var_1))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(799f, _wgslsmith_f_op_f32(-arg_3))), -540f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(-1983f, arg_3)))), _wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-856f)) * -796f), var_1.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(425f)) - _wgslsmith_f_op_f32(exp2(var_1.x))))));
    var_3 = var_2;
    return var_2.zyz;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32) -> vec3<f32> {
    global2 = array<vec4<bool>, 31>();
    let var_0 = _wgslsmith_f_op_f32(abs(391f));
    var var_1 = !vec4<bool>(false, -1i == _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -28212i), vec2<i32>(-21086i, global3.x))), !(all(vec3<bool>(true, true, false)) || true), all(vec2<bool>(true, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec4<i32>(1i, -24841i, 1i, arg_1)), var_1.wwz, var_1.wy, var_0)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_0, -517f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -772f), var_0, _wgslsmith_f_op_f32(abs(-540f)))))));
    global1 = array<Struct_3, 31>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)) - 751f)), 974f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -330f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = ~14681u;
    var var_1 = arg_0.a;
    global3 = vec2<i32>(arg_0.a.x, firstTrailingBit(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -36530i, arg_0.a.x), vec3<i32>(-32194i, -1i, 2147483647i)), 1i)));
    var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.a, vec4<i32>(2147483647i, 1i, -5014i, 2147483647i) >> (u_input.b % vec4<u32>(32u)), arg_0.a) << (u_input.b % vec4<u32>(32u)), vec4<i32>(global3.x, reverseBits(-global3.x), countOneBits(_wgslsmith_clamp_i32(-17384i, 0i, -1i)), -2147483647i) ^ ~(~(~vec4<i32>(var_1.x, var_1.x, var_1.x, 1i))), vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(arg_0.a.xyw, vec3<i32>(10953i, arg_0.a.x, -2147483647i)), var_1.x), i32(-1i) * -(~(-39641i)), -5949i, firstLeadingBit(var_1.x)));
    let var_2 = arg_1.x;
    return Struct_2(select(arg_0.a, ~arg_0.a, arg_0.a.x >= global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2((_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global3.x, -2147483647i), vec4<i32>(-2147483647i, global3.x, 10810i, global3.x)) >> (min(u_input.a, vec4<u32>(u_input.c, 0u, 0u, u_input.b.x)) % vec4<u32>(32u))) | ~_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, 9763i, -1i, -15284i), vec4<i32>(-2147483647i, 2147483647i, global3.x, 36950i))), vec3<f32>(_wgslsmith_f_op_f32(step(-373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2385f))))), 192f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1491f + _wgslsmith_f_op_f32(853f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1677f), all(vec2<bool>(false, false)) || false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(global3.x, global3.x, u_input.a.x)))));
    global0 = array<Struct_3, 4>();
    let var_1 = select(!(!vec2<bool>(true, all(vec3<bool>(true, false, false)))), vec2<bool>(true, all(global2[_wgslsmith_index_u32(u_input.b.x, 31u)])), true);
    var var_2 = select(vec3<bool>(false, select(!all(vec3<bool>(false, var_1.x, var_1.x)), global3.x != _wgslsmith_add_i32(global3.x, 41701i), true), true && all(!vec2<bool>(var_1.x, true))), vec3<bool>(true, ~(global3.x >> (46691u % 32u)) <= var_0.a.x, any(vec3<bool>(true, var_0.a.x < var_0.a.x, true))), ~(-global3.x) <= (global3.x >> (u_input.a.x % 32u)));
    var var_3 = global0[_wgslsmith_index_u32(~u_input.e.x, 4u)];
    var_2 = vec3<bool>(var_2.x, !all(vec3<bool>(true, any(vec2<bool>(var_1.x, var_1.x)), var_2.x)), true);
    let var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(!vec2<bool>(false, var_2.x), Struct_1(vec3<f32>(-723f, 202f, 1510f)))).x), -1834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f))));
    var var_5 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.zz, u_input.a.xx), select(u_input.b.yx, ~vec2<u32>(~var_3.a, u_input.a.x), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, _wgslsmith_f_op_f32(min(var_4.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.x), var_4.a.x))), var_3.c.a.x);
}

