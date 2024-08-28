struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(23063i, vec2<u32>(18499u, 1u));

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(26734u, 1u, 27238u), vec3<u32>(2833u, 1u, 198746u), vec3<u32>(1u, 47607u, 1u), vec3<u32>(59032u, 0u, 4294967295u), vec3<u32>(4294967295u, 19168u, 1u), vec3<u32>(21000u, 27279u, 24969u), vec3<u32>(85322u, 19925u, 7765u), vec3<u32>(11760u, 4294967295u, 40265u), vec3<u32>(4294967295u, 37350u, 16825u), vec3<u32>(23219u, 0u, 1u), vec3<u32>(10137u, 0u, 1u), vec3<u32>(0u, 66052u, 4294967295u), vec3<u32>(11437u, 4294967295u, 4294967295u), vec3<u32>(12764u, 4294967295u, 8497u), vec3<u32>(3094u, 72785u, 18682u), vec3<u32>(1u, 86076u, 58417u), vec3<u32>(54475u, 62826u, 29983u), vec3<u32>(10084u, 4294967295u, 66707u));

var<private> global3: Struct_2 = Struct_2(0i, vec2<u32>(4294967295u, 4294967295u));

var<private> global4: Struct_4;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_1.a, _wgslsmith_div_vec2_u32(vec2<u32>(0u, countOneBits(1u) ^ u_input.b), vec2<u32>(~(~33448u), firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_0, global2[_wgslsmith_index_u32(1u, 18u)])))));
    global4 = Struct_4(global4.a, Struct_3(26119u, var_0, true, all(vec4<bool>(any(vec2<bool>(global4.b.e, false)), all(vec4<bool>(true, true, true, global4.e)), all(vec3<bool>(true, false, global4.e)), true)), -1i < (-29661i >> (_wgslsmith_sub_u32(1u, u_input.b) % 32u))), global3.a, true, !select(all(!vec4<bool>(true, global4.b.d, global4.d, global4.b.e)), global4.e, all(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_sub_u32((40366u | _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 1u), vec2<u32>(23685u, global0.b.x))) | (~(~global0.b.x) << (~abs(4294967295u) % 32u)), global0.b.x);
    let var_2 = Struct_3(select(~(~(global4.b.b.b.x & 0u)), ~min(global3.b.x, var_1) & (~40834u | arg_1.b.x), false), arg_1, all(!select(!vec4<bool>(global4.e, global4.d, global4.e, global4.b.c), select(vec4<bool>(true, global4.b.e, global4.d, global4.d), vec4<bool>(false, false, global4.d, global4.e), global4.d), vec4<bool>(true, global4.d, true, global4.b.d))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), global4.d), select(vec2<bool>(false, global4.d), vec2<bool>(global4.d, false), vec2<bool>(global4.d, false)), true)) && true, all(!(!(!vec4<bool>(global4.e, true, global4.b.c, false)))));
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)), global4.b, 26074i, global4.e, global4.b.e);
    return ~global4.b.a;
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = func_3(global2[_wgslsmith_index_u32(~reverseBits(0u), 18u)], global4.b.b);
    var var_1 = global4.a;
    var var_2 = Struct_3(global3.b.x, arg_0.b, arg_0.d, global4.e, true);
    var var_3 = Struct_3(1u, var_2.b, true, true, true);
    var_0 = ~var_3.a;
    return ~5380u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(34476i, _wgslsmith_mult_i32(abs(global3.a), _wgslsmith_mult_i32(-1i, 2147483647i)), -2147483647i), _wgslsmith_div_vec3_i32(max(select(vec3<i32>(u_input.c, -1i, global3.a), vec3<i32>(global0.a, global3.a, u_input.c), vec3<bool>(global4.d, global4.b.e, global4.d)), vec3<i32>(global3.a, u_input.a, u_input.a)), vec3<i32>(u_input.a, 2147483647i, 24657i) >> (vec3<u32>(global0.b.x, 1u, arg_1) % vec3<u32>(32u)))), vec3<i32>(select(_wgslsmith_add_i32(-6173i, 0i), u_input.a, global4.d & global4.b.d), -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.c, u_input.c), vec2<i32>(0i, u_input.c)), ~vec2<i32>(-1i, u_input.c))) & countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.c, 6631i), vec3<i32>(global4.c, u_input.c, -1838i)) | (vec3<i32>(21485i, -10352i, global0.a) << (vec3<u32>(15737u, global3.b.x, global3.b.x) % vec3<u32>(32u)))), vec3<bool>(true, !global4.d, all(vec3<bool>(true, true, true))));
    var_0 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(22973i, global3.a, 28417i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global3.a, 1i), vec3<i32>(-1i, global3.a, 25810i))) & firstLeadingBit(-vec3<i32>(2147483647i, 13014i, 0i)), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(37249i, 2147483647i, u_input.c), vec3<i32>(global0.a, -28313i, -28834i))), ~firstTrailingBit(vec3<i32>(2147483647i, 1i, u_input.c) | vec3<i32>(u_input.a, -2147483647i, -29100i)));
    let var_1 = global4.b.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a, global4.a)), _wgslsmith_f_op_f32(-global4.a)))));
    var var_3 = !(!(all(vec3<bool>(global4.b.d, global4.b.e, true)) || select(global4.b.d, true, false)) | ((0u >= _wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.a, u_input.b, arg_0.x, 12695u), arg_0)) || (min(global0.a, -1868i) < ~5424i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1084f - -1924f))))) - -1088f);
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<i32>(global3.a, 2147483647i, ~(~global0.a));
    var var_1 = _wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_mult_u32(526u, global3.b.x << (abs(27603u) % 32u)), _wgslsmith_mult_u32(2662u, _wgslsmith_mod_u32(u_input.b, global4.b.b.b.x) ^ ~u_input.b), firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(u_input.b), 1u)), _wgslsmith_mult_u32(func_2(Struct_3(global0.b.x, global4.b.b, global4.d, true, global4.b.c)) >> (~global4.b.a % 32u), global0.b.x >> (_wgslsmith_add_u32(global4.b.b.b.x, global0.b.x) % 32u))), global0.b.x));
    var var_2 = _wgslsmith_div_vec3_i32(firstLeadingBit(reverseBits(max(vec3<i32>(u_input.c, var_0.x, global3.a) ^ vec3<i32>(var_0.x, -11837i, 1i), abs(vec3<i32>(u_input.c, -5460i, 0i))))), -reverseBits(abs(reverseBits(vec3<i32>(u_input.c, global3.a, global3.a)))));
    var var_3 = select(~(~vec4<u32>(global0.b.x, global4.b.b.b.x, global4.b.b.b.x, global3.b.x)) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(97065u, global3.b.x, u_input.b, global0.b.x), vec4<u32>(global0.b.x, global0.b.x, global4.b.a, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 61333u, 1u, global3.b.x), vec4<u32>(u_input.b, global0.b.x, global4.b.b.b.x, 0u))), vec4<u32>(4294967295u, global4.b.b.b.x, select(global0.b.x, global4.b.a, false), global3.b.x & 33600u)) % vec4<u32>(32u)), ~select(min(abs(vec4<u32>(u_input.b, global4.b.b.b.x, u_input.b, 92185u)), max(vec4<u32>(u_input.b, 4050u, global4.b.b.b.x, u_input.b), vec4<u32>(u_input.b, global0.b.x, global4.b.a, global4.b.a))), select(reverseBits(vec4<u32>(global3.b.x, 1u, global0.b.x, 81622u)), vec4<u32>(58303u, global0.b.x, u_input.b, global4.b.a), false), !vec4<bool>(false, global4.d, global4.e, global4.b.d)), vec4<bool>(global4.d, global4.d, true, true));
    global1 = array<vec4<f32>, 22>();
    return Struct_3(_wgslsmith_mod_u32(~(reverseBits(global3.b.x) >> (~u_input.b % 32u)), 0u), global4.b.b, true, !(!all(vec2<bool>(global4.b.e, global4.b.c))) || all(vec3<bool>(all(vec3<bool>(global4.d, global4.d, global4.d)), false, !global4.b.d)), any(select(vec4<bool>(all(vec2<bool>(true, global4.b.e)), !global4.b.e, true, global4.e), !select(vec4<bool>(global4.b.e, global4.d, false, true), vec4<bool>(global4.b.c, global4.b.d, true, global4.d), vec4<bool>(global4.b.d, global4.d, global4.e, false)), all(select(vec2<bool>(global4.d, global4.b.c), vec2<bool>(false, true), global4.d)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: bool) -> vec4<bool> {
    let var_0 = min(global3.a, ~(-6460i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(291f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1170f + arg_0.a)))), any(!select(!vec3<bool>(true, arg_0.d, false), select(vec3<bool>(global4.d, false, true), vec3<bool>(global4.e, true, false), vec3<bool>(false, arg_2, false)), true)), vec4<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(min(global0.b.x, global0.b.x) & _wgslsmith_div_u32(global3.b.x, global4.b.b.b.x), ~(~3516u)), 4294967295u, ~91939u), func_1().c, _wgslsmith_f_op_f32(-global4.a));
    var var_2 = var_1.c;
    let var_3 = var_1.c.x;
    var var_4 = _wgslsmith_dot_vec4_u32(var_1.c, select(vec4<u32>(reverseBits(func_3(arg_1, Struct_2(1i, arg_1.yy))), 28067u, 44555u, select(~0u, arg_0.b.b.b.x, false)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.b.a, 1u, var_3), vec4<u32>(global4.b.b.b.x, global3.b.x, var_1.c.x, 25281u)), max(var_1.c, var_1.c), var_1.c), all(!(!vec4<bool>(arg_0.e, false, var_1.d, global4.b.c)))));
    return !(!vec4<bool>(arg_0.b.d, true, var_1.a >= _wgslsmith_f_op_f32(floor(-1016f)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_5(Struct_4(-2271f, func_1(), global0.a, global0.b.x > 4294967295u, global4.b.e), vec3<u32>(383u, 0u, global0.b.x) << (vec3<u32>(u_input.b, 114725u, global3.b.x) % vec3<u32>(32u)), !global4.b.c), !select(func_5(Struct_4(global4.a, global4.b, global3.a, global4.b.e, false), vec3<u32>(global3.b.x, u_input.b, u_input.b), select(global4.d, true, true)), select(select(vec4<bool>(global4.d, true, false, global4.e), vec4<bool>(true, false, true, false), vec4<bool>(false, global4.d, global4.b.e, true)), select(vec4<bool>(global4.d, false, global4.b.e, global4.e), vec4<bool>(false, global4.e, true, false), global4.e), func_5(Struct_4(global4.a, Struct_3(global3.b.x, Struct_2(17511i, vec2<u32>(global4.b.b.b.x, global0.b.x)), false, global4.e, global4.d), global3.a, false, false), vec3<u32>(28504u, 4294967295u, global4.b.a), global4.d).x), global4.e), vec4<bool>(true, func_5(Struct_4(global4.a, Struct_3(33020u, global4.b.b, true, global4.e, global4.e), global0.a, true, global4.e), ~vec3<u32>(u_input.b, global4.b.a, global4.b.a), all(!vec4<bool>(true, false, global4.b.e, false))).x, true, !(!global4.e)));
    let var_1 = vec2<f32>(global4.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a - -2585f) * global4.a)))));
    let var_2 = Struct_4(236f, Struct_3(u_input.b, Struct_2(-1i, vec2<u32>(~u_input.b, ~1u)), func_5(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -941f), global4.b, ~global0.a, all(var_0.yxw), var_0.x || true), select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(9347u, global3.b.x), 18u)], _wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(global4.b.a, 18u)], global2[_wgslsmith_index_u32(global3.b.x, 18u)]), vec3<bool>(var_0.x, false, global4.d)), func_1().d).x, global4.b.c, global4.b.d), global0.a << (1u % 32u), var_0.x, var_0.x);
    let var_3 = !(!vec4<bool>(any(var_0.xx), !any(var_0.wy), func_1().e, func_1().e));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a - var_2.a), -240f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_2.a)), -392f)), 401f, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_1.x, global4.a, global4.a))))), func_5(Struct_4(-316f, var_2.b, -2147483647i, var_2.d, !var_2.d), select(_wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]), ~(~vec3<u32>(4294967295u, 1u, global0.b.x)), !var_3.wxx), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.a))))), 600f));
}

