struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 11>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<f32>(-1126f, 429f), vec2<bool>(true, false), vec4<i32>(-52014i, i32(-2147483648), 1i, 35239i), 0u, 1128f), Struct_1(vec2<f32>(982f, -372f), vec2<bool>(true, true), vec4<i32>(-1i, 69089i, -68446i, -1i), 1u, -529f), Struct_1(vec2<f32>(233f, -545f), vec2<bool>(true, false), vec4<i32>(0i, -1i, 0i, 0i), 58747u, 277f), Struct_1(vec2<f32>(-367f, -2610f), vec2<bool>(true, true), vec4<i32>(54058i, 43692i, -1i, 62657i), 0u, -345f), Struct_1(vec2<f32>(-662f, -559f), vec2<bool>(false, false), vec4<i32>(2147483647i, 1i, 1i, 1i), 0u, 1165f), Struct_1(vec2<f32>(-969f, -1927f), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 0i, 0i, -20974i), 82834u, 282f), Struct_1(vec2<f32>(826f, 1933f), vec2<bool>(false, true), vec4<i32>(1i, 6162i, 62996i, -12946i), 31550u, -924f), Struct_1(vec2<f32>(-175f, -1000f), vec2<bool>(false, false), vec4<i32>(14667i, 0i, -24492i, i32(-2147483648)), 31337u, 1016f), Struct_1(vec2<f32>(667f, -171f), vec2<bool>(false, true), vec4<i32>(1i, i32(-2147483648), 34786i, -60592i), 45919u, 603f), Struct_1(vec2<f32>(339f, 322f), vec2<bool>(false, true), vec4<i32>(0i, 26358i, 32062i, 35482i), 164739u, 945f), Struct_1(vec2<f32>(-448f, 452f), vec2<bool>(true, false), vec4<i32>(47740i, 14807i, 0i, -20796i), 0u, 172f), Struct_1(vec2<f32>(-594f, -827f), vec2<bool>(false, true), vec4<i32>(2147483647i, -6351i, 28851i, 11651i), 16318u, 830f));

var<private> global3: bool = true;

var<private> global4: array<u32, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e));
    let var_1 = Struct_1(vec2<f32>(arg_1.e, -2194f), vec2<bool>((max(4294967295u, u_input.d.x) < 114634u) | false, false), vec4<i32>(abs(arg_1.c.x ^ select(-18828i, 26715i, arg_1.b.x)), _wgslsmith_clamp_i32(0i, ~(~(-3965i)), 2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_1.c.zyx, -vec3<i32>(arg_1.c.x, -72767i, u_input.c.x)), -5350i), 0i), _wgslsmith_clamp_u32(arg_1.d, u_input.d.x, _wgslsmith_div_u32(4294967295u, firstLeadingBit(~u_input.a.x))), -1000f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1279f)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.a))), vec2<bool>(var_1.b.x, !(!all(vec3<bool>(var_1.b.x, arg_1.b.x, true)))), vec4<i32>(-1i) * -abs(arg_1.c), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.a.x, arg_1.e)))))));
    let var_4 = 1u;
    return true;
}

fn func_2(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0 << (abs(~(~global4[_wgslsmith_index_u32(0u, 18u)] | global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, global4[_wgslsmith_index_u32(0u, 18u)]), 18u)])) % 32u), 12u)];
    var var_1 = abs(24345i);
    global3 = !func_3(-(~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.x, 4918i), u_input.c.xz)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(890f, 1344f) * vec2<f32>(var_0.a.x, 180f)) + var_0.a), var_0.b, vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(17197i, arg_1), 1i, -52087i), 4294967295u, -1222f), _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(8379u, 49138u)), ~17244u);
    let var_2 = select(~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(42904u, u_input.d.x), min(vec2<u32>(25122u, arg_0), u_input.d.xz)), var_0.d), countOneBits(~(u_input.a.yy | u_input.a.xy)), !select(vec2<bool>(var_0.b.x || var_0.b.x, true), select(var_0.b, vec2<bool>(true, true), true), var_0.b));
    let var_3 = u_input.b;
    return global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(abs(1u), 18u)], _wgslsmith_dot_vec2_u32(var_2, vec2<u32>(var_0.d, 50468u))), 18u)];
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = ~u_input.d;
    let var_1 = ~(~vec4<u32>(4294967295u, u_input.a.x | arg_0, u_input.a.x, ~var_0.x)) ^ vec4<u32>(u_input.d.x, arg_0, func_2(max(arg_0, arg_0), 1i), firstLeadingBit(~global4[_wgslsmith_index_u32(50668u, 18u)] & 1u));
    var var_2 = -1i;
    global4 = array<u32, 18>();
    let var_3 = true;
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-785f * -1424f) - _wgslsmith_f_op_f32(369f + -443f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -725f) - -274f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], 14494u))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(818f, -1130f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, -364f)))), vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))) & true, true != !all(vec3<bool>(true, false, true))), (u_input.c >> (((vec4<u32>(0u, u_input.a.x, 35468u, 72335u) << (vec4<u32>(56239u, 37483u, u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 18u)], 18u)]) % vec4<u32>(32u))) << (vec4<u32>(0u, 1u, global4[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))) | min(-vec4<i32>(u_input.c.x, 12563i, 18173i, u_input.c.x), select(_wgslsmith_div_vec4_i32(vec4<i32>(-17871i, u_input.b, -58568i, 2147483647i), u_input.c), u_input.c, vec4<bool>(true, true, true, true))), ~_wgslsmith_mod_u32(firstTrailingBit(~1u), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(516f)), _wgslsmith_f_op_f32(-344f * -2653f), true)) - _wgslsmith_f_op_f32(f32(-1f) * -579f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -387f), -311f)), -2478f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(12621u, u_input.a.x, 48008u | select(min(4294967295u, 1u), 0u, var_0.b.x | false), _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a) << (vec3<u32>(0u, 4294967295u, 0u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 0u, 16353u), reverseBits(u_input.a)))), var_0.d);
}

