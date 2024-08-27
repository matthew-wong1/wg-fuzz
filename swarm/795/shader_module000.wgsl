struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(28286u, 1u, 3907u, 51654u), vec4<u32>(0u, 36544u, 24552u, 1u), vec4<u32>(38359u, 0u, 0u, 1u), vec4<u32>(36146u, 47293u, 0u, 90708u), vec4<u32>(1u, 50087u, 37859u, 1u), vec4<u32>(1u, 4294967295u, 63038u, 1u), vec4<u32>(9590u, 78540u, 33956u, 1u), vec4<u32>(0u, 4294967295u, 27085u, 17978u), vec4<u32>(0u, 20128u, 4294967295u, 14469u), vec4<u32>(0u, 4294967295u, 43357u, 59657u), vec4<u32>(42301u, 18627u, 1u, 0u), vec4<u32>(0u, 24479u, 0u, 66541u), vec4<u32>(51789u, 90087u, 1u, 2334u), vec4<u32>(28012u, 1u, 30867u, 29082u), vec4<u32>(5735u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 51226u), vec4<u32>(13147u, 4294967295u, 9734u, 1u));

var<private> global2: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-674f, -1787f, 1000f), vec3<f32>(-1000f, 373f, -301f), vec3<f32>(-259f, 248f, -1219f), vec3<f32>(139f, -587f, -305f), vec3<f32>(287f, -1407f, -651f), vec3<f32>(-1728f, 319f, 1506f), vec3<f32>(-1492f, -318f, -996f), vec3<f32>(1070f, -100f, -949f), vec3<f32>(-616f, -541f, 2708f), vec3<f32>(1000f, 236f, 1213f), vec3<f32>(-483f, -335f, 2507f), vec3<f32>(796f, -286f, 212f));

var<private> global3: array<Struct_4, 4>;

var<private> global4: array<Struct_4, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global2 = array<vec3<f32>, 12>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(~(u_input.c >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d, 19381u), abs(47637u)) % 32u)), 12u)] - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -456f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(553f)))))));
    let var_2 = 4294967295u;
    global0 = array<Struct_3, 7>();
    return -u_input.e.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    var var_0 = Struct_1(u_input.e.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1506f - 1058f)), -1000f))), 1u, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    global2 = array<vec3<f32>, 12>();
    var var_1 = max((vec4<i32>(-1i) * -vec4<i32>(var_0.a, -2147483647i, var_0.a, 4421i)) >> (~vec4<u32>(19602u & arg_0.x, var_0.c, min(69180u, arg_1), _wgslsmith_mult_u32(arg_0.x, 53284u)) % vec4<u32>(32u)), vec4<i32>(reverseBits(u_input.a.x), -u_input.a.x, var_0.a, ~u_input.a.x) & -vec4<i32>(0i, -57004i, min(-13990i, var_0.a), select(-2147483647i, -23604i, false)));
    var var_2 = Struct_2(var_0.b.x);
    global3 = array<Struct_4, 4>();
    return -20925i;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<Struct_3, 7>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) + _wgslsmith_f_op_f32(-arg_2))));
    let var_1 = 15790u;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, reverseBits(vec3<i32>(-1i, 71091i, u_input.e.x))), firstTrailingBit(0i), _wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(u_input.e.x) | func_2(arg_1.zz), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 1i, -27454i, u_input.a.x) << (global1[_wgslsmith_index_u32(4294967295u, 17u)] % vec4<u32>(32u)), vec4<i32>(u_input.b, 0i, u_input.b, u_input.e.x) << (vec4<u32>(1709u, var_1, arg_3, var_1) % vec4<u32>(32u)))), 0i));
    var var_3 = _wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, -func_3(vec3<u32>(0u, 4294967295u, 49518u), var_1), -7486i), firstTrailingBit(u_input.a)));
    return ~var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~_wgslsmith_mult_u32(func_1(true, vec4<f32>(1000f, -246f, 666f, -1000f), 180f, 15960u), _wgslsmith_mult_u32(u_input.d, 33304u)) ^ 0u, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c | 3825u, ~u_input.d, 98455u), 4445u));
    global0 = array<Struct_3, 7>();
    global3 = array<Struct_4, 4>();
    global3 = array<Struct_4, 4>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(min(_wgslsmith_div_u32(u_input.c, 72131u) ^ (var_0.x | u_input.c), var_0.x), 0u), 4294967295u), 4u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(362f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -294f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(-(u_input.e.x ^ var_1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.b, -1i), vec3<i32>(1i, 45280i, var_1.b) >> (var_1.a.yww % vec3<u32>(32u))), u_input.b, _wgslsmith_mod_i32(countOneBits(2147483647i), 26365i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2104f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1214f, -214f)), select(u_input.d, 4294967295u, true) >= _wgslsmith_dot_vec4_u32(var_1.a, global1[_wgslsmith_index_u32(1u, 17u)])))), reverseBits(~countOneBits(2147483647i)), countOneBits(~(~0u)) >> (~var_0.x % 32u));
}

