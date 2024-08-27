struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-2922i, -449i, -4804i, 0i), vec4<i32>(-1i, -39497i, -1i, 9758i), vec4<i32>(-30209i, -1202i, 56176i, 12531i), vec4<i32>(31164i, 0i, 0i, 1i), vec4<i32>(11598i, 431i, 2147483647i, -8495i), vec4<i32>(1i, -21618i, 20556i, -19568i), vec4<i32>(39974i, 0i, -1i, 4487i), vec4<i32>(0i, -1i, -62391i, 0i), vec4<i32>(-12391i, -16578i, i32(-2147483648), i32(-2147483648)), vec4<i32>(28740i, 3134i, 1i, i32(-2147483648)), vec4<i32>(-1i, 14681i, 9131i, i32(-2147483648)), vec4<i32>(-56279i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(-41864i, 76531i, 14186i, 15349i), vec4<i32>(-1i, 0i, 41253i, 41894i), vec4<i32>(0i, 11199i, -10251i, -17585i), vec4<i32>(-1i, -488i, 2147483647i, 2147483647i), vec4<i32>(17626i, -22235i, -10596i, 13492i), vec4<i32>(-7974i, i32(-2147483648), i32(-2147483648), 8976i), vec4<i32>(10338i, -35032i, 1i, i32(-2147483648)), vec4<i32>(38838i, 61464i, 0i, 2147483647i), vec4<i32>(14286i, i32(-2147483648), 1322i, 2147483647i), vec4<i32>(1i, -53035i, -10843i, 1i), vec4<i32>(40419i, 2147483647i, 0i, -1i), vec4<i32>(0i, 1i, i32(-2147483648), -27158i), vec4<i32>(-69208i, 100997i, 0i, i32(-2147483648)), vec4<i32>(-25685i, -24688i, -32462i, 19989i), vec4<i32>(-1i, -44665i, -1i, -51093i));

var<private> global1: array<Struct_4, 15>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(u_input.a, -13688i, u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1490f, 1615f, 366f), vec3<f32>(-992f, -1150f, 699f), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 160f, 117f), vec3<f32>(-984f, 1608f, 1345f), false)) + vec3<f32>(-175f, -2125f, 435f))))));
    var var_2 = Struct_1(-1000f, u_input.c.zyz ^ vec3<u32>(_wgslsmith_div_u32(u_input.c.x >> (4294967295u % 32u), u_input.c.x), u_input.b, 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))))), 45957u, true);
    global0 = array<vec4<i32>, 27>();
    let var_3 = 1000f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0, 0u, max(select(3776u, u_input.c.x, true), 1u) | _wgslsmith_clamp_u32(u_input.c.x, ~22624u, _wgslsmith_div_u32(4294967295u, u_input.c.x))), vec3<u32>(u_input.b, abs(0u), 1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), -763f, -145f, _wgslsmith_f_op_f32(f32(-1f) * -168f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec4<f32>(_wgslsmith_f_op_f32(898f - -1070f), -2212f, _wgslsmith_f_op_f32(-283f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1195f, -369f), -1681f))), _wgslsmith_f_op_f32(-1101f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1583f)))), all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), false))));
    var var_3 = Struct_2(Struct_1(-703f, _wgslsmith_div_vec3_u32(select(abs(vec3<u32>(9389u, 1u, var_1.x)), vec3<u32>(arg_0, 52963u, arg_0), true), vec3<u32>(1u, 17137u, u_input.b | u_input.c.x)), var_2.x, _wgslsmith_sub_u32(arg_0, u_input.b ^ u_input.c.x) | 4294967295u, !(!any(vec2<bool>(true, true)))), countOneBits(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (~firstLeadingBit(u_input.c.wzx) % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1, var_1), 32231u), u_input.c.x, var_1.x));
    var var_4 = Struct_4(-1192f, var_3.a.e, !var_3.a.e, true || var_3.a.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))));
    return Struct_3(var_3.a, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, arg_0), _wgslsmith_mult_vec2_u32(var_1.zz, vec2<u32>(4294967295u, 21599u))), u_input.c.xx), min(_wgslsmith_mult_u32(~29904u, 73973u ^ arg_0), _wgslsmith_div_u32(~0u, u_input.c.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1969f) - _wgslsmith_f_op_f32(floor(-739f))), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_3.c.x, 4294967295u, arg_0), u_input.c.wyw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.e)) + _wgslsmith_f_op_f32(-var_2.x)), reverseBits(21127u), 832f == _wgslsmith_f_op_f32(-var_2.x)), countOneBits(vec3<i32>(i32(-1i) * -78864i, _wgslsmith_sub_i32(2147483647i, u_input.a), abs(var_3.b.x))), u_input.c.yyy), u_input.c.yx);
}

fn func_1() -> vec3<f32> {
    let var_0 = func_2(u_input.c.x);
    var var_1 = var_0.c.b.x;
    let var_2 = Struct_3(var_0.c.a, vec2<u32>(_wgslsmith_mod_u32(4294967295u | u_input.b, _wgslsmith_add_u32(u_input.c.x, ~1u)), 51345u), var_0.c, var_0.c.a.b.zx >> (select(u_input.c.zy, _wgslsmith_clamp_vec2_u32(~vec2<u32>(47305u, 4827u), vec2<u32>(var_0.d.x, var_0.c.c.x), u_input.c.zw), select(vec2<bool>(false, var_0.c.a.e), vec2<bool>(true, true), 65946u >= u_input.c.x)) % vec2<u32>(32u)));
    var_1 = _wgslsmith_clamp_i32(var_0.c.b.x, select(func_2(abs(u_input.b)).c.b.x, 3844i, all(vec3<bool>(true, true, var_0.a.e))), var_0.c.b.x);
    var_1 = -6395i;
    return vec3<f32>(457f, var_2.c.a.a, _wgslsmith_f_op_f32(select(func_2(abs(_wgslsmith_dot_vec3_u32(var_0.c.a.b, u_input.c.xxw))).c.a.a, _wgslsmith_f_op_f32(func_2(var_2.c.c.x).c.a.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) - func_2(var_0.d.x).c.a.c)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1000f, -208f), _wgslsmith_f_op_f32(-483f + 896f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-566f, 349f)))) - vec2<f32>(1366f, _wgslsmith_f_op_f32(floor(1706f))))));
    global0 = array<vec4<i32>, 27>();
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1193f, var_1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(687f, var_1.x, -547f), vec3<f32>(var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(func_1())))));
    var var_4 = Struct_5(Struct_3(func_2(~u_input.c.x >> (firstTrailingBit(1u) % 32u)).a, ~vec2<u32>(u_input.b, var_2.x), func_2(_wgslsmith_mod_u32(4294967295u, func_2(1u).d.x)).c, ~(~var_2.xz)), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 23052u, 1u << (0u % 32u)), ~vec3<u32>(24316u, 4294967295u, var_2.x))), vec2<bool>(!any(vec2<bool>(true, true)), true));
    var_4 = Struct_5(Struct_3(var_4.b.a, ~func_2(min(var_4.b.b.x, var_2.x)).c.a.b.xx, func_2(func_2(~19104u).a.d).c, var_2.xw), var_4.b, var_4.c);
    var_4 = Struct_5(Struct_3(var_4.b.c.a, ~select(var_2.zx, min(vec2<u32>(u_input.b, var_2.x), vec2<u32>(1u, 1u)), true), var_4.a.c, u_input.c.wz), var_4.a, var_4.c);
    var_1 = _wgslsmith_f_op_vec2_f32(-var_3.yz);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

