struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(4294967295u, 46081u, 4294967295u, 4294967295u), vec4<u32>(0u, 18025u, 0u, 15362u), vec4<u32>(1u, 90175u, 0u, 0u), vec4<u32>(10587u, 4294967295u, 1u, 35043u), vec4<u32>(11277u, 1u, 23707u, 114680u));

var<private> global3: array<vec4<u32>, 29>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<u32>, 5>();
    let var_0 = 19197u;
    let var_1 = Struct_1(-59452i, _wgslsmith_f_op_f32(f32(-1f) * -539f), -43096i, !all(vec4<bool>(true, false, false, false)) || false);
    return Struct_2(true);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, true, false)), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)))), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(func_1().a, any(vec4<bool>(false, false, false, true)), false, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), true)), vec4<bool>(func_1().a, func_1().a, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_5(vec2<bool>(true, _wgslsmith_f_op_f32(select(-661f, arg_0.x, -32345i < u_input.d)) <= arg_0.x), u_input.d, abs(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)] ^ vec4<u32>(0u, 1u, u_input.c, u_input.b.x), global3[_wgslsmith_index_u32(60488u, 29u)] & vec4<u32>(u_input.b.x, 0u, u_input.b.x, 82620u)), select(~global2[_wgslsmith_index_u32(122369u, 5u)], vec4<u32>(u_input.c, 70004u, u_input.c, u_input.c), var_0))));
    global3 = array<vec4<u32>, 29>();
    global3 = array<vec4<u32>, 29>();
    var var_2 = vec3<bool>(var_0.x, var_0.x, arg_1.x >= ~u_input.d);
    return arg_0.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-449f, _wgslsmith_f_op_f32(round(-1123f)), arg_0.x, arg_1.c.b), arg_0, _wgslsmith_f_op_f32(floor(-958f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<f32>(arg_1.c.b, arg_0.x, 207f, arg_0.x), vec2<i32>(u_input.d, -19096i))))) - _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_div_f32(arg_1.c.b, 1088f))))));
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(813f)))) >= var_0.x);
    global3 = array<vec4<u32>, 29>();
    let var_2 = vec4<f32>(arg_1.c.b, var_0.x, -987f, -420f);
    let var_3 = !(!select(!(!vec2<bool>(false, arg_1.c.d)), vec2<bool>(true, true), !(!arg_1.b.zw)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f) * -268f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b) + var_2.x), arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.x, 1308f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-682f, 326f, 107f, 711f)))), Struct_3(func_1(), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), Struct_1(-1i, -718f, -20090i, true), u_input.c), countOneBits(-19047i) & (8347i ^ u_input.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-640f, -1000f, 1366f, -131f) * vec4<f32>(217f, -1488f, -252f, -373f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(264f, 1302f, -687f, -401f) + vec4<f32>(1000f, 192f, 1260f, -745f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(400f, 2313f, -431f, -262f) + vec4<f32>(-2229f, 180f, 1076f, 231f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(406f, 1608f, -1000f, 1341f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, -291f, 451f, -1040f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, 1000f, 1000f, 812f)))));
    var var_1 = u_input.d;
    var var_2 = Struct_4(Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -1i, global0[_wgslsmith_index_u32(1u, 24u)]), vec3<i32>(-25420i, 3697i, global0[_wgslsmith_index_u32(40908u, 24u)])), vec3<i32>(-15824i, global0[_wgslsmith_index_u32(45781u, 24u)], u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f)) - _wgslsmith_f_op_f32(step(-404f, var_0.x))), reverseBits(abs(abs(2147483647i))), false), abs(abs(vec3<i32>(u_input.d, -2147483647i, -40023i) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.c) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 56380u, u_input.a.x), ~vec3<u32>(u_input.c, 4294967295u, 4294967295u)) % vec3<u32>(32u))), func_1(), vec4<bool>(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), true, true));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-(~var_2.b.zz), countOneBits(vec2<i32>(var_2.a.a, u_input.d)) << (min(u_input.b, vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u))), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(700f, 603f))))) * var_0.x), _wgslsmith_dot_vec2_i32(~(-(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -1i))), vec2<i32>(-24987i, ~(i32(-1i) * -25021i))), !var_2.d.x);
    global0 = array<i32, 24>();
    var_2 = Struct_4(Struct_1(22609i, 1534f, global0[_wgslsmith_index_u32((1u | u_input.b.x) << (u_input.c % 32u), 24u)], var_2.d.x), var_2.b, var_2.c, !vec4<bool>(_wgslsmith_f_op_f32(sign(-364f)) > var_0.x, !var_3.d, var_2.a.d, any(vec3<bool>(var_3.d, var_2.d.x, false))));
    let var_4 = ~var_2.b.yz;
    var var_5 = var_2.c.a;
    var_1 = min(global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~92896u, u_input.a.x) | ~1u), 24u)], _wgslsmith_dot_vec3_i32(~(~vec3<i32>(24736i, -39409i, -1i)), -vec3<i32>(u_input.d, -5839i, _wgslsmith_add_i32(-1i, -8712i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(546f, var_0.x, 1000f, 239f) - vec4<f32>(1452f, -246f, var_0.x, var_3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1199f, var_0.x, var_3.b, var_3.b)))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-442f, -1179f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-375f - var_3.b)), _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(var_0 + var_0))))), ~u_input.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(var_3.b, 287f, any(vec4<bool>(false, var_3.d, var_3.d, var_2.d.x)))), var_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1107f - var_2.a.b) - var_3.b), _wgslsmith_f_op_f32(sign(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -2045f))))), global3[_wgslsmith_index_u32(37835u, 29u)]);
}

