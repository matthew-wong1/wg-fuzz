struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true));

var<private> global2: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(false));

var<private> global3: array<f32, 12> = array<f32, 12>(851f, -2328f, -873f, 1396f, 893f, -166f, 821f, 385f, 1000f, -554f, -623f, 577f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = true;
    var var_1 = select(arg_3, !(!select(select(vec2<bool>(arg_1.b, false), arg_3, arg_3.x), arg_3, true)), vec2<bool>(all(!vec2<bool>(var_0, arg_3.x)), true));
    global0 = u_input.d << (_wgslsmith_mult_u32(abs((arg_1.c.x ^ 1u) ^ (arg_1.c.x | arg_1.c.x)), 0u) % 32u);
    global0 = -65653i;
    global2 = array<Struct_5, 16>();
    return ~(~(~vec4<u32>(4294967295u, arg_2, 53369u, 4294967295u)) & vec4<u32>(arg_1.c.x, 4294967295u, ~1u, 1u));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    let var_0 = Struct_3(firstLeadingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.zww, vec3<u32>(arg_2.a, 62117u, 28037u)), ~arg_1.yww)), firstLeadingBit(arg_2.b), -arg_2.d.x, select(arg_2.d, ~(-(arg_2.b.zz ^ arg_2.d)), all(select(arg_0, select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x)), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))));
    var var_1 = 236f;
    let var_2 = _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(~(1u << (1u % 32u)), var_0.a)), 12u)], global3[_wgslsmith_index_u32(1u, 12u)], arg_0.x));
    var var_3 = vec2<bool>(true, arg_0.x);
    let var_4 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(59216u, 12u)], var_2, global3[_wgslsmith_index_u32(39858u, 12u)]) + vec3<f32>(var_2, -2227f, var_2)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1111f, -284f, global3[_wgslsmith_index_u32(15534u, 12u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(arg_1.x, 12u)], -812f, 1000f)))), arg_0.x, vec2<u32>(6677u, countOneBits(4294967295u))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_0.a, 12u)], _wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.a, 12u)])), _wgslsmith_div_vec3_f32(vec3<f32>(409f, -876f, 587f), vec3<f32>(var_2, -1108f, var_2))), var_3.x, ~(vec2<u32>(u_input.e, 4294967295u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(4294967295u, 0u), arg_1.wy))), 29965u, Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(644f, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_0.a, 12u)])), _wgslsmith_f_op_f32(max(420f, -1000f))))), false, vec2<u32>(var_0.a, arg_1.x)));
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    global3 = array<f32, 12>();
    let var_0 = Struct_4(Struct_1(arg_0.a.a, func_4(vec4<bool>(u_input.b == u_input.a, arg_0.a.c.x > u_input.e, arg_0.b.b | false, !arg_0.c.b), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(735f, arg_0.c.a.x, 279f, arg_0.a.a.x)), arg_0.c, 0u, vec2<bool>(arg_0.c.b, true)), Struct_3(firstLeadingBit(u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-10604i, 4471i, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d)), reverseBits(0i), vec2<i32>(-8521i, -1i) ^ vec2<i32>(u_input.d, u_input.d))), arg_0.b.c), arg_0.c, 8942u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.b.c.x, 12u)], 292f, -228f) + vec3<f32>(arg_1, 1422f, 342f)), _wgslsmith_f_op_vec3_f32(arg_0.c.a * vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 12u)], 139f, global3[_wgslsmith_index_u32(u_input.e, 12u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1000f))), arg_0.b.b, min(vec2<u32>(49751u, ~u_input.e), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, arg_0.a.c.x), _wgslsmith_sub_vec2_u32(vec2<u32>(53880u, 4294967295u), arg_0.a.c)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.a)) - arg_0.b.a), select(any(select(vec3<bool>(true, arg_0.b.b, var_0.d.b), vec3<bool>(var_0.d.b, var_0.d.b, arg_0.a.b), var_0.a.b)), var_0.d.b || var_0.a.b, all(vec4<bool>(true, false, var_0.a.b, var_0.b.b))), _wgslsmith_mod_vec2_u32(var_0.b.c, arg_0.c.c)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.a - arg_0.c.a) * _wgslsmith_f_op_vec3_f32(-arg_0.b.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.b.a)), _wgslsmith_f_op_vec3_f32(var_0.b.a - vec3<f32>(arg_0.c.a.x, arg_1, var_0.b.a.x))))), !arg_0.b.b, abs(arg_0.b.c) ^ _wgslsmith_mult_vec2_u32(var_0.d.c << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)), reverseBits(vec2<u32>(4701u, 81600u)))), var_0.d);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, global3[_wgslsmith_index_u32(var_0.d.c.x, 12u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), arg_1) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(42960u, 12u)], -1223f))), vec2<bool>(true, true))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.d.a.x - _wgslsmith_f_op_f32(-arg_1)), -564f));
    let var_3 = firstTrailingBit(u_input.d);
    return reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, 0i), vec2<i32>(u_input.d, u_input.d)), -abs(vec2<i32>(var_3, var_3)), vec2<i32>(~var_3 | (var_3 << (28843u % 32u)), ~(~(-27540i)))));
}

fn func_1() -> Struct_4 {
    let var_0 = 1i;
    var var_1 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-38894i, u_input.d), _wgslsmith_mod_i32(abs(u_input.d), 1i << (0u % 32u))), vec2<i32>(-u_input.d, 1i) ^ _wgslsmith_add_vec2_i32(func_2(Struct_2(Struct_1(vec3<f32>(1183f, global3[_wgslsmith_index_u32(7251u, 12u)], 239f), false, vec2<u32>(1u, 17355u)), Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(u_input.e, 12u)], 234f, 629f), false, vec2<u32>(u_input.c, 1u)), Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 12u)], -460f, 845f), true, vec2<u32>(u_input.c, 1u))), 867f), func_2(Struct_2(Struct_1(vec3<f32>(-2262f, global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(u_input.e, 12u)]), false, vec2<u32>(u_input.b, u_input.c)), Struct_1(vec3<f32>(1321f, -340f, 446f), true, vec2<u32>(21769u, 3440u)), Struct_1(vec3<f32>(-1000f, 910f, 990f), false, vec2<u32>(9900u, 20165u))), global3[_wgslsmith_index_u32(4294967295u, 12u)])), max(-vec2<i32>(var_0, 29638i), vec2<i32>(u_input.d, var_0)));
    global0 = _wgslsmith_dot_vec2_i32(~firstTrailingBit(countOneBits(vec2<i32>(-2147483647i, -52078i) & vec2<i32>(-21201i, u_input.d))), reverseBits(vec2<i32>(-1i, 19174i)));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(~9694u, 1u), 4294967295u, _wgslsmith_dot_vec2_u32(countOneBits(select(select(vec2<u32>(1u, 8489u), vec2<u32>(1u, 68055u), true), vec2<u32>(60786u, u_input.c) & vec2<u32>(53052u, 0u), vec2<bool>(true, false))), abs(select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, u_input.b), vec2<bool>(true, false)) | ~vec2<u32>(u_input.b, u_input.c))), 1u);
    global1 = array<Struct_5, 28>();
    return Struct_4(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(409f, -186f, global3[_wgslsmith_index_u32(var_2.x, 12u)]), vec3<f32>(global3[_wgslsmith_index_u32(var_2.x, 12u)], -1485f, 1146f), true)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(var_2.x, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<f32>(global3[_wgslsmith_index_u32(33532u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)], -546f)))), _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(28040u, 12u)], global3[_wgslsmith_index_u32(u_input.c, 12u)], -1541f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1069f, 1151f, global3[_wgslsmith_index_u32(var_2.x, 12u)])))), all(vec4<bool>(true, all(vec2<bool>(false, true)), false, true)), vec2<u32>(countOneBits(32495u), ~var_2.x) >> ((vec2<u32>(11047u, 27486u) ^ (vec2<u32>(6993u, var_2.x) << (var_2.yw % vec2<u32>(32u)))) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1389f, global3[_wgslsmith_index_u32(u_input.a, 12u)], -1610f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 12u)], -687f, global3[_wgslsmith_index_u32(var_2.x, 12u)])))), any(vec4<bool>(true, true, true, true)), ~vec2<u32>(1u, 0u)), _wgslsmith_div_u32(~var_2.x, 0u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-470f, global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)])))), !(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 12u)]) < _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 12u)])), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 13272u), vec2<u32>(u_input.a, u_input.e)), func_3(vec4<f32>(351f, 1000f, 108f, 1000f), Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(107737u, 12u)], global3[_wgslsmith_index_u32(59533u, 12u)], -342f), false, var_2.ww), ~u_input.a, vec2<bool>(true, true)).yx)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 16>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 12u)], 230f, global3[_wgslsmith_index_u32(u_input.b, 12u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, global3[_wgslsmith_index_u32(u_input.c, 12u)], -919f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-311f, 470f, -1050f), vec3<f32>(702f, -373f, -863f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3[_wgslsmith_index_u32(u_input.e, 12u)], 1412f)))) + vec3<f32>(-1837f, _wgslsmith_f_op_f32(abs(-1310f)), 202f)), true, select(~countOneBits(vec2<u32>(1u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(49862u, u_input.e) % vec2<u32>(32u)), vec2<u32>(0u, u_input.e) | vec2<u32>(13003u, u_input.a), ~vec2<u32>(39654u, 4294967295u)), true) ^ vec2<u32>(4294967295u, ~12513u));
    var var_1 = func_1();
    global2 = array<Struct_5, 16>();
    var var_2 = vec2<bool>(func_4(vec4<bool>(!var_1.d.b, !any(vec3<bool>(true, false, false)), all(vec2<bool>(var_1.a.b, var_0.b)), true), ~vec4<u32>(0u, var_0.c.x | u_input.c, var_0.c.x, var_0.c.x), Struct_3(16997u, vec3<i32>(-1i) * -vec3<i32>(u_input.d, u_input.d, u_input.d), reverseBits(2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(31598i, u_input.d)))), var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_0.c.x, _wgslsmith_add_u32(4294967295u << (u_input.b % 32u), var_0.c.x ^ var_0.c.x)), vec3<f32>(global3[_wgslsmith_index_u32(func_1().d.c.x, 12u)], global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, global3[_wgslsmith_index_u32(1u, 12u)], 1672f, -1899f) + vec4<f32>(var_0.a.x, var_0.a.x, -932f, var_0.a.x))), var_1.a, ~(~49058u), select(select(vec2<bool>(false, false), vec2<bool>(var_2.x, true), var_1.b.b), !vec2<bool>(var_2.x, false), var_1.a.b)).x, 12u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), func_1().a.a.x, _wgslsmith_clamp_u32(0u, var_0.c.x, var_1.d.c.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-582f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(80801u, 12u)]), -532f))))));
}

