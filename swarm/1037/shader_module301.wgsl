struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(0u, 2091u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 14264u, 4294967295u)), Struct_1(vec3<u32>(18087u, 1762u, 4294967295u)), Struct_1(vec3<u32>(90797u, 0u, 19082u)), Struct_1(vec3<u32>(9051u, 45750u, 77369u)), Struct_1(vec3<u32>(83231u, 1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(0u, 0u, 28657u)), Struct_1(vec3<u32>(31255u, 0u, 1u)), Struct_1(vec3<u32>(0u, 28154u, 84386u)), Struct_1(vec3<u32>(4294967295u, 1u, 25399u)), Struct_1(vec3<u32>(0u, 4294967295u, 41428u)), Struct_1(vec3<u32>(60211u, 4294967295u, 4294967295u)));

var<private> global1: bool = false;

var<private> global2: array<i32, 5> = array<i32, 5>(25211i, 2147483647i, 50491i, -12948i, 22143i);

var<private> global3: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(i32(-2147483648), 6066i, -26508i), vec3<i32>(-23480i, 2147483647i, -46782i), vec3<i32>(26545i, 2147483647i, 28585i), vec3<i32>(1i, -15900i, 2147483647i), vec3<i32>(3171i, 17802i, 17226i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-39817i, 0i, 31694i), vec3<i32>(2147483647i, -50341i, 36624i), vec3<i32>(-11108i, -10509i, 1i), vec3<i32>(2147483647i, 55153i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(-23175i, 0i, -32285i), vec3<i32>(-1i, 0i, -16130i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a.x, 44837u)), select(vec2<u32>(0u, 4294967295u), max(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.c, 27313u)), arg_0)), vec2<u32>(~(~u_input.c), 0u | ~u_input.a.x)), ~u_input.a.x, u_input.c << (~(~1u) % 32u));
    var var_1 = ~51916u;
    global3 = array<vec3<i32>, 15>();
    var var_2 = !(!all(select(select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(false, false, arg_0.x, false), true), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(true, arg_0.x, arg_0.x, true)), select(vec4<bool>(false, arg_0.x, false, true), vec4<bool>(true, arg_0.x, false, arg_0.x), arg_0.x))));
    global3 = array<vec3<i32>, 15>();
    return 0u;
}

fn func_2() -> vec4<u32> {
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(~1u | _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 54969u)), 5u)], ~22419i);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) - _wgslsmith_f_op_f32(f32(-1f) * -2374f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1113f * -939f)))))));
    global0 = array<Struct_1, 14>();
    var var_2 = 1980u & u_input.c;
    return _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(u_input.c, 20554u)), 15850u, u_input.a.x, func_3(vec2<bool>(true, true), -1552f)), firstLeadingBit(~firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 75173u, u_input.c)))), _wgslsmith_div_vec4_u32(~(~(vec4<u32>(u_input.a.x, u_input.c, 1u, 13273u) ^ vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c))), select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), select(vec4<u32>(1u, u_input.a.x, 15093u, u_input.c), vec4<u32>(47117u, u_input.c, 103856u, u_input.c), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.c, u_input.a.x, 4294967295u), ~vec4<u32>(u_input.a.x, 36901u, u_input.c, 59212u))));
}

fn func_1() -> Struct_4 {
    var var_0 = reverseBits(func_2());
    let var_1 = select(vec4<i32>(16095i, -(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, 0u, 0u), 5u)] ^ _wgslsmith_sub_i32(-1i, u_input.b.x)), abs(-25746i), ~(~0i)), vec4<i32>(~global2[_wgslsmith_index_u32(~575u, 5u)], 1i, abs(global2[_wgslsmith_index_u32(~var_0.x, 5u)]), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 5u)] & global2[_wgslsmith_index_u32(u_input.a.x, 5u)], _wgslsmith_sub_i32(1i, -28071i))) | firstTrailingBit(~select(vec4<i32>(u_input.b.x, u_input.b.x, -29577i, u_input.b.x), vec4<i32>(-38155i, 1i, u_input.b.x, 0i), false)), vec4<bool>(false, false, all(vec3<bool>(true, true, true)), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(847f, -1000f) + vec2<f32>(-1000f, -205f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1199f, 895f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2533f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-412f, 126f)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(171f, 532f)), -445f))))));
    global3 = array<vec3<i32>, 15>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2) - var_2))) - var_2);
    return Struct_4(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), select(vec3<bool>(true, select(false, false, true), true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<bool>(any(vec4<bool>(select(true, false, false), true, true, true)), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !((-28091i < u_input.b.x) | true)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -1025f, 3483f, -843f)) + vec4<f32>(259f, -1143f, -380f, 1140f))))), ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(0i, -11266i)), u_input.b));
    global3 = array<vec3<i32>, 15>();
    var_0 = func_1();
    let var_2 = 829f;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, 1000f, _wgslsmith_f_op_f32(-var_2), var_1.a.x)))));
    var_0 = func_1();
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, 50322u), ~vec4<u32>(u_input.a.x, 28747u, 12814u, 17851u)) & (_wgslsmith_mod_vec4_u32(vec4<u32>(1487u, u_input.a.x, 1u, 1u), vec4<u32>(u_input.a.x, u_input.c, 34284u, 49765u)) | ~vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x)), ~min(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.c, u_input.c, 43600u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 3909u, 4294967295u, 4294967295u), vec4<u32>(20894u, u_input.a.x, u_input.a.x, 51286u)))), min(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(12773u, 1u, u_input.a.x) ^ vec3<u32>(u_input.c, u_input.a.x, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(112988u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), reverseBits(vec3<u32>(125938u, 0u, 0u))), vec3<u32>(8398u, ~1u, ~u_input.c)), countOneBits(vec3<u32>(35876u, 1u, u_input.c ^ u_input.a.x))), u_input.a.x);
}

