struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 69735u, 0u, 1u), vec4<u32>(4294967295u, 41111u, 55052u, 1u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(45545u, 56721u, 25234u, 68475u), vec4<u32>(21963u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 25813u, 6099u), vec4<u32>(6680u, 110720u, 1u, 0u), vec4<u32>(4294967295u, 19100u, 10863u, 40769u), vec4<u32>(99670u, 6871u, 50426u, 1u), vec4<u32>(0u, 81194u, 0u, 0u), vec4<u32>(29865u, 56862u, 6004u, 1u), vec4<u32>(36576u, 10656u, 0u, 115310u), vec4<u32>(33353u, 11524u, 70888u, 1u), vec4<u32>(49038u, 1u, 28792u, 38627u), vec4<u32>(0u, 4294967295u, 33081u, 1u), vec4<u32>(23087u, 0u, 4294967295u, 150969u), vec4<u32>(15983u, 4294967295u, 73728u, 29236u), vec4<u32>(1u, 41923u, 4294967295u, 51013u), vec4<u32>(21609u, 0u, 126116u, 1u), vec4<u32>(7696u, 4294967295u, 49381u, 47806u), vec4<u32>(4294967295u, 0u, 5162u, 4294967295u), vec4<u32>(0u, 57282u, 1u, 53917u), vec4<u32>(3159u, 35054u, 23114u, 4294967295u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    var var_0 = arg_1.a.a;
    var var_1 = !arg_1.a.d.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1373f), _wgslsmith_div_f32(arg_1.a.b, arg_1.a.b))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.b, arg_1.a.b, -358f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b, arg_1.a.b, arg_1.a.b)), true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, -1451f, arg_1.a.b) + vec3<f32>(arg_1.a.b, 2378f, -255f)))), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.b, -728f, -1186f), vec3<f32>(-815f, arg_1.a.b, 347f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b, arg_1.a.b, -837f) - vec3<f32>(arg_1.a.b, arg_1.a.b, arg_1.a.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b, -493f, 960f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_2.xz, _wgslsmith_f_op_vec2_f32(round(var_2.xx)), false))));
    let var_4 = true;
    return ~abs(arg_0.x);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<vec4<u32>, 24>();
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_2.x)), u_input.b.x, vec2<bool>(true, true)));
    var var_1 = var_0;
    global0 = array<vec4<u32>, 24>();
    let var_2 = Struct_2(var_0.a);
    return Struct_2(Struct_1(true & all(select(vec3<bool>(true, var_0.a.a, false), vec3<bool>(var_2.a.a, var_2.a.a, var_2.a.d.x), vec3<bool>(var_2.a.d.x, var_0.a.a, false))), -410f, func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(38815i, var_1.a.c), u_input.b), var_2, _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, arg_0, 4604u) << (vec3<u32>(arg_0, arg_0, 75230u) % vec3<u32>(32u)))), vec2<bool>(var_1.a.a, var_1.a.d.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = func_2(28963u, arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.b, 709f, -850f), vec3<f32>(513f, 505f, arg_1.a.b)))))));
    var_0 = func_2(1u, -179f, vec3<f32>(-264f, arg_1.a.b, 1485f));
    let var_1 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~arg_0.c, -arg_1.a.c), max(2147483647i, max(arg_0.c, arg_1.a.c)))), 38372i, arg_1.a.c, var_0.a.c);
    let var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(529f - -1241f)))) >= var_0.a.b);
    var_0 = Struct_2(arg_0);
    return arg_1.a.a == any(vec4<bool>(arg_1.a.d.x, !all(vec2<bool>(false, arg_0.d.x)), all(func_2(15582u, 1515f, vec3<f32>(arg_0.b, arg_0.b, arg_1.a.b)).a.d), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<vec4<u32>, 24>();
    let var_0 = Struct_2(Struct_1(true, arg_1.a.b, reverseBits(arg_1.a.c), vec2<bool>(true, arg_1.a.d.x | arg_1.a.a)));
    global0 = array<vec4<u32>, 24>();
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(-682f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.b)) + _wgslsmith_f_op_f32(-arg_1.a.b)))), -30294i, vec2<bool>(all(func_2(0u, _wgslsmith_div_f32(-1390f, 535f), vec3<f32>(var_0.a.b, arg_1.a.b, 436f)).a.d), !func_2(_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_f_op_f32(-997f * arg_1.a.b), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.b, -236f, arg_1.a.b), vec3<f32>(var_0.a.b, 429f, var_0.a.b)))).a.d.x));
    var var_2 = min(select(vec3<u32>(_wgslsmith_mod_u32(1u, 1u), 1u, firstTrailingBit(90644u)), vec3<u32>(1u, 1u, 1u), arg_0), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(22951u, 1u, 0u), vec3<u32>(1u, 55148u, 4294967295u)), firstLeadingBit(vec3<u32>(4294967295u, 91954u, 50686u)), arg_0), ~abs(vec3<u32>(0u, 20666u, 18386u)), vec3<u32>(1u, 1u, 1u)), abs(~min(vec3<u32>(0u, 100667u, 4294967295u), vec3<u32>(30442u, 21852u, 0u)))));
    return func_2(var_2.x, _wgslsmith_div_f32(func_2(var_2.x, arg_1.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, 1339f, var_0.a.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-259f, var_1.b, 1088f)))).a.b, _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b, 783f, var_1.b), vec3<f32>(var_0.a.b, var_1.b, -694f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!vec3<bool>(false, func_1(Struct_1(false, -245f, u_input.a, vec2<bool>(false, true)), Struct_2(Struct_1(true, -1627f, 0i, vec2<bool>(true, false)))), true), vec3<bool>(true, select(true, func_1(Struct_1(false, 1979f, u_input.a, vec2<bool>(true, true)), Struct_2(Struct_1(false, 2377f, -22020i, vec2<bool>(false, false)))), true), true), select(vec3<bool>(true, any(vec3<bool>(true, false, true)), true), vec3<bool>(u_input.b.x >= -1i, true, false), vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true))), Struct_2(func_2(max(_wgslsmith_dot_vec3_u32(vec3<u32>(12862u, 58226u, 62474u), vec3<u32>(4294967295u, 1u, 53715u)), 1u), _wgslsmith_f_op_f32(1043f * 696f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-618f, -515f, -502f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-644f, -367f, -1000f)))).a));
    let var_1 = 15492u;
    global0 = array<vec4<u32>, 24>();
    let var_2 = 1u;
    global0 = array<vec4<u32>, 24>();
    var var_3 = Struct_2(func_4(vec3<bool>(true && !var_0.a.a, var_0.a.a, any(vec2<bool>(true, false))), var_0).a);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(296f, _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -171f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -34772i, -14622i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_3.a.c, var_0.a.c) << (vec3<u32>(var_1, 0u, var_2) % vec3<u32>(32u)), select(vec3<i32>(-19686i, -48740i, var_3.a.c), vec3<i32>(-1i, var_3.a.c, var_3.a.c), vec3<bool>(true, false, var_0.a.a))), -(vec3<i32>(-359i, -1i, 13775i) >> (vec3<u32>(1u, 4294967295u, var_1) % vec3<u32>(32u))))), firstTrailingBit(_wgslsmith_mod_vec2_u32(select(vec2<u32>(var_2, var_1), vec2<u32>(25610u, var_2), false) >> (abs(vec2<u32>(1u, 0u)) % vec2<u32>(32u)), vec2<u32>(12021u, var_2) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 5130u), vec2<u32>(var_1, 15857u), vec2<u32>(var_1, var_2)))), countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, -17644i, var_3.a.c), vec4<i32>(u_input.a, u_input.b.x, 0i, -26443i)), vec4<i32>(-2147483647i, -42340i, u_input.a, -2147483647i)) << (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_2, var_2, var_1), global0[_wgslsmith_index_u32(59201u, 24u)]), ~vec4<u32>(var_2, var_1, 0u, var_1)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-361f, var_3.a.b)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.b, -1000f), vec2<f32>(var_0.a.b, 322f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.b, 769f))))), global0[_wgslsmith_index_u32(56481u, 24u)]);
}

