struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-1338f, 706f), vec2<f32>(-1460f, 1000f), vec2<f32>(-876f, -473f), vec2<f32>(159f, -628f), vec2<f32>(-1856f, -1123f), vec2<f32>(2156f, 1084f), vec2<f32>(628f, -2081f), vec2<f32>(-376f, -2233f), vec2<f32>(402f, -626f), vec2<f32>(-778f, 1000f), vec2<f32>(272f, 495f), vec2<f32>(445f, 1601f), vec2<f32>(1344f, 229f), vec2<f32>(-682f, -1043f), vec2<f32>(-327f, 372f), vec2<f32>(-318f, -1171f), vec2<f32>(862f, -1000f), vec2<f32>(-857f, 354f), vec2<f32>(-614f, -762f), vec2<f32>(-131f, -904f), vec2<f32>(-695f, -140f));

var<private> global1: array<vec3<bool>, 17>;

var<private> global2: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(0u, 0u, 1u, 14568u), vec4<u32>(9975u, 29668u, 31448u, 0u), vec4<u32>(4294967295u, 7360u, 78661u, 1u), vec4<u32>(4294967295u, 54394u, 4294967295u, 0u), vec4<u32>(1u, 28351u, 1u, 45258u), vec4<u32>(92821u, 1u, 34157u, 71020u), vec4<u32>(1u, 42404u, 108308u, 0u), vec4<u32>(1u, 26972u, 5030u, 1u), vec4<u32>(0u, 19916u, 18353u, 0u), vec4<u32>(1u, 13842u, 4770u, 52104u), vec4<u32>(17537u, 36991u, 1u, 32162u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(2051u, 17274u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 21102u, 76197u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(49731u, 51343u, 4294967295u, 22555u), vec4<u32>(4294967295u, 76680u, 4294967295u, 52947u), vec4<u32>(4294967295u, 7821u, 1u, 39101u), vec4<u32>(20142u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 33808u, 4294967295u, 6390u), vec4<u32>(0u, 56441u, 33129u, 50299u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(1u, 16370u, 23940u, 1u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(22489u, 109673u, 25052u, 1u), vec4<u32>(77945u, 43020u, 1u, 4294967295u));

var<private> global3: array<vec2<i32>, 5>;

var<private> global4: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-693f, 854f, vec2<bool>(true, false)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    global3 = array<vec2<i32>, 5>();
    let var_0 = Struct_4(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.b, 17898u, u_input.b, 4294967295u), ~vec4<u32>(19094u, 11153u, 6128u, u_input.c.x), u_input.c.x > 94228u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~_wgslsmith_dot_vec3_u32(u_input.c.wwz, vec3<u32>(u_input.c.x, 1045u, 119809u))), 26u)]), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.xw, u_input.c.xx) & vec2<u32>(41486u, 0u), u_input.c.ww), 21u)]), 1u);
    global3 = array<vec2<i32>, 5>();
    global2 = array<vec4<u32>, 26>();
    global0 = array<vec2<f32>, 21>();
    return ~1u;
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = 4294967295u;
    global0 = array<vec2<f32>, 21>();
    global4 = array<Struct_1, 1>();
    global3 = array<vec2<i32>, 5>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(340f - arg_0.b.x)))) + -2559f));
    return 4294967295u;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_2(arg_0.x, ~vec4<i32>(u_input.a, u_input.a, _wgslsmith_div_i32(reverseBits(-12046i), -u_input.a), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.e.x, u_input.a, 2147483647i, u_input.d)), vec4<i32>(-2688i, u_input.e.x, 28948i, u_input.a))), reverseBits(u_input.c.x), global4[_wgslsmith_index_u32(u_input.c.x, 1u)]);
    return firstLeadingBit(_wgslsmith_sub_u32(1u, var_0.c));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = u_input.e.x;
    global0 = array<vec2<f32>, 21>();
    let var_1 = true;
    global1 = array<vec3<bool>, 17>();
    global0 = array<vec2<f32>, 21>();
    return Struct_3(Struct_1(-466f, arg_3.a, vec2<bool>(false, !(-1623f >= arg_3.b))), vec4<u32>(~u_input.b, func_4(vec3<bool>(true, true, true), true, Struct_4(vec4<u32>(46022u, arg_2.x, 14529u, 0u), vec2<f32>(-1773f, -771f), func_3(Struct_4(global2[_wgslsmith_index_u32(arg_2.x, 26u)], vec2<f32>(1925f, arg_3.a), 0u))), Struct_4(countOneBits(vec4<u32>(23373u, 0u, u_input.c.x, u_input.c.x)), global0[_wgslsmith_index_u32(min(1u, u_input.c.x), 21u)], ~7605u)), 24445u, 4734u), abs(i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(~83322i, -global3[_wgslsmith_index_u32(func_1(), 5u)], ~_wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 80151u)), vec4<u32>(4294967295u | u_input.c.x, 1u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), ~677u)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(15065u, _wgslsmith_add_u32(u_input.b, u_input.c.x)), 1u)]);
    let var_1 = func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i & var_0.c, u_input.a | 1i, min(var_0.c, var_0.c)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-41916i, var_0.c, 0i, var_0.c), vec4<i32>(5432i, 30062i, 2147483647i, -4864i)), -1i, u_input.d)), 8283i), vec2<i32>(var_0.c << (func_4(vec3<bool>(false, var_0.a.c.x, false), true, Struct_4(var_0.b, global0[_wgslsmith_index_u32(1u, 21u)], 0u), Struct_4(vec4<u32>(50894u, 2218u, var_0.b.x, var_0.b.x), vec2<f32>(421f, 681f), u_input.c.x)) % 32u), u_input.a), u_input.c << (_wgslsmith_add_vec4_u32((vec4<u32>(4294967295u, 5747u, 1u, var_0.b.x) ^ global2[_wgslsmith_index_u32(58706u, 26u)]) >> (vec4<u32>(4294967295u, 0u, 1u, 34071u) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.b.x, 54339u, 1u), vec4<u32>(u_input.b, u_input.b, u_input.c.x, var_0.b.x))) % vec4<u32>(32u)), global4[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(var_0.b.x, var_0.b.x)) >> (1u % 32u), 1u)]);
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(trunc(1411f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-380f + -1285f), _wgslsmith_f_op_f32(121f - _wgslsmith_div_f32(2113f, -520f)))), var_0.a.c), firstTrailingBit(vec4<u32>(26429u ^ var_1.b.x, min(var_1.b.x, 29581u) << (min(var_0.b.x, u_input.c.x) % 32u), abs(u_input.c.x), ~u_input.b)), ~_wgslsmith_div_i32(17618i, -31909i));
    var var_2 = max(firstLeadingBit(~_wgslsmith_dot_vec3_u32(var_1.b.yzx, vec3<u32>(var_0.b.x, u_input.c.x, u_input.c.x))), min(~var_1.b.x, countOneBits(var_0.b.x)));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.b + var_1.a.b), 513f, var_1.a.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.a, var_1.a.a, var_1.a.b), vec3<f32>(var_1.a.b, var_1.a.a, var_0.a.a))) + vec3<f32>(513f, 547f, 377f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, 1493f, var_0.a.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) * 414f)), -1011f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~_wgslsmith_add_u32(var_1.b.x, u_input.c.x)), u_input.b, select(max(7457u, var_1.b.x ^ u_input.b), firstTrailingBit(_wgslsmith_div_u32(1u, 18562u)), true), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, var_0.b.x), ~89326u) | _wgslsmith_clamp_u32(firstTrailingBit(1u), ~var_1.b.x, func_3(Struct_4(var_1.b, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 11984u)))));
}

