struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec3<i32>, 7>;

var<private> global2: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global3: array<i32, 27> = array<i32, 27>(14131i, 16091i, 33877i, 24173i, 41493i, i32(-2147483648), -39245i, 0i, -49026i, -1i, i32(-2147483648), 1i, -22088i, -24586i, i32(-2147483648), 0i, 50432i, i32(-2147483648), 1i, -37936i, 43258i, 0i, i32(-2147483648), -14564i, -3876i, i32(-2147483648), -1i);

var<private> global4: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(vec2<i32>(-1i, -45798i), vec3<bool>(false, false, false), Struct_3(3866i, Struct_1(vec4<i32>(1i, -4933i, 2147483647i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648))))), Struct_5(vec2<i32>(0i, 2147483647i), vec3<bool>(false, false, true), Struct_3(-53013i, Struct_1(vec4<i32>(-30345i, i32(-2147483648), 0i, 44101i), vec2<i32>(-9588i, 2147483647i)))), Struct_5(vec2<i32>(26190i, -1i), vec3<bool>(false, false, false), Struct_3(1i, Struct_1(vec4<i32>(1i, -13651i, -16774i, i32(-2147483648)), vec2<i32>(-1i, -7110i)))), Struct_5(vec2<i32>(-27470i, i32(-2147483648)), vec3<bool>(false, true, true), Struct_3(-29481i, Struct_1(vec4<i32>(-1i, 0i, -9367i, 613i), vec2<i32>(-24503i, -1037i)))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> bool {
    var var_0 = u_input.d.x << (arg_3 % 32u);
    var var_1 = vec2<f32>(349f, arg_1);
    return global0[_wgslsmith_index_u32(~u_input.d.x, 18u)];
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: vec4<bool>) -> u32 {
    var var_0 = Struct_2(true, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mult_u32(~73404u, u_input.a), select(4294967295u, u_input.a, true) ^ u_input.d.x, u_input.d.x), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(4294967295u, 26684u, u_input.a, 89671u) & vec4<u32>(u_input.a, 14053u, u_input.d.x, 62263u)), ~(~vec4<u32>(0u, 0u, 41764u, 37234u)), vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 1u), _wgslsmith_add_u32(u_input.a, 4294967295u), 1u, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), ~(u_input.d.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 16242u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 124975u)) % 32u)), all(arg_2));
    let var_1 = 20560u;
    var_0 = Struct_2(!global0[_wgslsmith_index_u32(u_input.a, 18u)], select(var_0.b, reverseBits(vec4<u32>(countOneBits(54312u), ~u_input.a, ~56827u, _wgslsmith_dot_vec4_u32(var_0.b, var_0.b))), vec4<bool>((910f >= var_0.c.x) || true, true, all(vec2<bool>(arg_1.b.x, true)), !(true | global0[_wgslsmith_index_u32(var_0.b.x, 18u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-165f, var_0.c.x), var_0.c)))), max(_wgslsmith_sub_u32(~var_1, 30121u), 1336u) | _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.d, var_0.b.x, 216u)), vec3<u32>(_wgslsmith_div_u32(u_input.d.x, 30239u), 0u, ~1u)), true);
    global2 = array<vec2<bool>, 16>();
    global1 = array<vec3<i32>, 7>();
    return _wgslsmith_dot_vec4_u32(~var_0.b, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), ~27828u), abs(abs(u_input.a)), ~1u, 8500u), ~vec4<u32>(var_0.d, 1u, _wgslsmith_sub_u32(98303u, var_1), countOneBits(11032u))));
}

fn func_2() -> f32 {
    global2 = array<vec2<bool>, 16>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_div_f32(-1445f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1891f) * _wgslsmith_f_op_f32(-1152f - 1000f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), 477f, !global0[_wgslsmith_index_u32(u_input.d.x, 18u)])))));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(abs(u_input.d) << (u_input.d % vec2<u32>(32u)), ~(~u_input.d))), 4u)];
    var var_3 = -global3[_wgslsmith_index_u32(u_input.d.x, 27u)] << ((95473u | func_3(vec2<i32>(-1i) * -var_2.a, Struct_5(vec2<i32>(global3[_wgslsmith_index_u32(57525u, 27u)], 0i), var_2.b, var_2.c), select(select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<bool>(false, false, false, var_2.b.x), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 18u)], true, var_2.b.x)), vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], var_2.b.x, var_2.b.x)))) % 32u);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_5, 4>();
    let var_0 = ~(vec3<i32>((30141i | u_input.c) ^ -1i, ~_wgslsmith_sub_i32(-33273i, u_input.e), -(14422i >> (1u % 32u))) ^ -vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.c), ~(-44549i), 1i));
    global0 = array<bool, 18>();
    let var_1 = vec4<bool>(!func_1(var_0.x, _wgslsmith_f_op_f32(-1071f + _wgslsmith_f_op_f32(1546f - 434f)), vec2<bool>(!global0[_wgslsmith_index_u32(41884u, 18u)], !global0[_wgslsmith_index_u32(11530u, 18u)]), firstTrailingBit(u_input.a)), false, any(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 18u)], 633i > var_0.x)), !(!(!global0[_wgslsmith_index_u32(u_input.a, 18u)]) | !global0[_wgslsmith_index_u32(u_input.d.x, 18u)]));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1657f);
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-638f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-148f, 1299f, var_1.x)))), _wgslsmith_f_op_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-613f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-516f)))), -294f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(4294967295u, 0u)), u_input.d), ~((u_input.d | u_input.d) << (abs(u_input.d) % vec2<u32>(32u)))), u_input.d.x ^ u_input.a);
}

