struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_4) -> bool {
    global0 = (~38981u | u_input.b) != u_input.b;
    global0 = arg_2.c.x;
    global0 = true;
    global0 = false;
    var var_0 = 33590u;
    return ((u_input.c ^ 1i) <= u_input.d) | any(vec3<bool>(true, !(!arg_2.e.d), all(vec3<bool>(false, true, false))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> i32 {
    global0 = any(select(select(vec3<bool>(all(vec2<bool>(true, false)), false, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), false), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true))));
    global0 = firstLeadingBit(arg_3.x) == -(~(-5356i));
    global0 = true;
    var var_0 = ~arg_0.b.x;
    var var_1 = firstLeadingBit(8849u ^ (_wgslsmith_div_u32(arg_2, u_input.a) | ~4294967295u)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 30694u), vec2<u32>(u_input.a, max(0u, 1185u))), 1u);
    return ~(~arg_3.x) & countOneBits(1i);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = true || !all(vec2<bool>(true, true));
    let var_0 = Struct_2(~0u, 0u, Struct_1(0i, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, arg_0), u_input.a), 1u, u_input.e), u_input.b >= (reverseBits(arg_0) >> (u_input.b % 32u))), Struct_1(i32(-1i) * -2147483647i, vec4<bool>(true, true, true, true), abs(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 26645u), _wgslsmith_add_u32(1u, 1u))), all(vec2<bool>(true, true))), Struct_1(firstLeadingBit(func_3(Struct_3(u_input.c, vec3<i32>(-89051i, -2147483647i, u_input.d)), -207f, 0u, vec2<i32>(90243i, u_input.c))), select(vec4<bool>(true, false, arg_0 == 71417u, true), vec4<bool>(true, true, true, true), true), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0, 21129u, 4294967295u), vec3<u32>(u_input.e, 1u, 3587u) >> (vec3<u32>(56065u, 4294967295u, 0u) % vec3<u32>(32u))), ~select(vec3<u32>(u_input.e, arg_0, arg_0), vec3<u32>(0u, 4294967295u, 1u), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-3654f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 600f) + _wgslsmith_f_op_f32(153f - -969f))));
    global0 = false;
    let var_1 = Struct_3(reverseBits(_wgslsmith_clamp_i32(~(-35591i), select(var_0.c.a, var_0.e.a, false) >> (71889u % 32u), _wgslsmith_clamp_i32(-42682i, 1i, -2147483647i))), vec3<i32>(-48835i, -reverseBits(0i), -23425i));
    var var_2 = _wgslsmith_clamp_i32(max(max(~(-2147483647i), var_1.a << (1u % 32u)), ~(var_1.b.x << (arg_0 % 32u))) | _wgslsmith_div_i32(firstTrailingBit(var_0.c.a), _wgslsmith_sub_i32(min(1i, 1i), 28743i)), ~(~var_0.e.a), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~(var_1.b ^ var_1.b), _wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.c, var_0.d.a, -12047i), vec3<i32>(var_0.d.a, -1i, 1i)), _wgslsmith_div_vec3_i32(var_1.b, vec3<i32>(-11731i, u_input.c, var_0.d.a)))), _wgslsmith_sub_i32(abs(u_input.c) ^ 55825i, var_0.c.a)));
    return Struct_1(~(~(~var_0.d.a)), var_0.c.b, var_0.e.c, func_1(var_0.e.b.xzy, _wgslsmith_dot_vec2_i32(abs(var_1.b.zx << (vec2<u32>(1u, 58930u) % vec2<u32>(32u))), var_1.b.zy), Struct_4(min(select(vec4<u32>(4402u, u_input.a, 0u, u_input.a), vec4<u32>(var_0.d.c, var_0.a, 1u, var_0.b), vec4<bool>(false, false, false, var_0.e.b.x)), ~vec4<u32>(arg_0, var_0.e.c, 71551u, u_input.e)), 0u, select(vec2<bool>(true, var_0.c.d), var_0.c.b.xy, var_0.d.b.yz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(25098u, u_input.b)), Struct_1(u_input.c, select(var_0.d.b, vec4<bool>(var_0.e.d, false, true, var_0.d.d), var_0.e.b), select(arg_0, u_input.a, true), true))));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(405f * -1384f), -1422f, arg_0.b.x)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_div_f32(var_0, var_0), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-847f + var_0) - -1016f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, 1235f, var_0, 107f) + vec4<f32>(var_0, var_0, 956f, var_0)), vec4<f32>(var_0, 338f, var_0, 297f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1583f, -319f, var_0, 515f)))), vec4<bool>(any(!arg_0.b.wyx), true, all(vec3<bool>(arg_0.b.x, arg_0.d, arg_0.d)), !(!arg_0.d)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1908f - -456f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * -1830f), _wgslsmith_f_op_f32(step(var_0, 1239f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(abs(-2408f)), var_0, 398f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0, var_0, 503f) * vec4<f32>(var_0, var_0, -1000f, var_0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, -587f, var_0, -1169f))))), func_2(u_input.b).b)));
    var var_2 = vec3<u32>(~58341u, ~34036u, arg_0.c);
    var var_3 = reverseBits(max(countOneBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 38159u), var_2.xx))), ~var_2.x));
    var_2 = firstLeadingBit(vec3<u32>(54914u, firstTrailingBit(~u_input.b), 61902u)) ^ _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.e & 4294967295u, u_input.b, ~1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.yz, vec2<u32>(arg_0.c, 4294967295u)), ~arg_0.c, firstTrailingBit(39259u)) << (vec3<u32>(arg_0.c, 24871u, arg_0.c) % vec3<u32>(32u)));
    return true;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_u32(~u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(1u >> (u_input.e % 32u), 4294967295u, ~u_input.a) >> (select(_wgslsmith_mult_vec3_u32(vec3<u32>(16614u, u_input.e, 1u), vec3<u32>(u_input.b, u_input.e, 61666u)), vec3<u32>(63674u, u_input.b, u_input.a), any(vec3<bool>(false, false, false))) % vec3<u32>(32u)), ~select(vec3<u32>(4294967295u, u_input.a, 0u), select(vec3<u32>(1u, 0u, 26654u), vec3<u32>(1u, u_input.e, 42137u), arg_1), !arg_3)), u_input.a);
    var_0 = u_input.e;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1487f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(877f, 481f) * 679f)), -1022f) - vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-360f, _wgslsmith_f_op_f32(f32(-1f) * -1363f))));
    var var_2 = ~(~(~(~(~vec3<u32>(1u, u_input.e, u_input.b)))));
    var var_3 = arg_3.yx;
    return vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 1i, arg_2, 43053i), vec4<i32>(2147483647i, -1390i, 2147483647i, 2147483647i)), -16146i, _wgslsmith_dot_vec4_i32(vec4<i32>(-28416i, arg_2, 0i, -1i), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c))), vec3<i32>(-2022i, u_input.c, 47090i)), u_input.c, _wgslsmith_mod_i32(arg_2, 38090i >> (_wgslsmith_dot_vec2_u32(var_2.xz, vec2<u32>(42151u, 4087u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~(-1i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(true, false))), vec4<bool>(false, all(vec4<bool>(true, false, true, false)), true, true)), select(select(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.e), vec3<u32>(1u, 0u, u_input.b)), 1u, true), 35882u, true), max(31292u, u_input.b << (u_input.b % 32u)), true), any(vec3<bool>(func_1(vec3<bool>(true, true, true), -1i, Struct_4(vec4<u32>(u_input.e, u_input.b, 52018u, u_input.b), u_input.e, vec2<bool>(true, true), vec2<u32>(22982u, u_input.a), Struct_1(1i, vec4<bool>(false, true, true, true), u_input.a, true))), false, true)));
    let var_1 = Struct_3(_wgslsmith_sub_i32(0i, 2147483647i), func_5(true, var_0.d, -22371i, select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.d, false, false), select(var_0.b.wyz, vec3<bool>(true, var_0.d, var_0.d), var_0.d)), var_0.b.xyz, func_4(func_2(u_input.a)))));
    global0 = any(var_0.b.wwx);
    let var_2 = _wgslsmith_add_i32(countOneBits(select(1i, 0i, var_0.b.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_1.b.zx, var_1.b.xx), i32(-1i) * -2147483647i));
    var var_3 = true;
    let var_4 = select(!(!select(var_0.b.yy, var_0.b.ww, var_0.b.x)), var_0.b.zz, var_0.b.yz);
    var var_5 = vec4<i32>(52060i, select(-1i << (~(~u_input.a) % 32u), 1i, var_4.x), -1i, -(72771i ^ var_0.a));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

