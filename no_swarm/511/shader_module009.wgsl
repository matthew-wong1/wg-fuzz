struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, 2147483647i, 47109i), vec3<i32>(2247i, -1i, 29072i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(22225i, 22752i, -34284i), vec3<i32>(3983i, -30372i, 36856i));

var<private> global1: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(2872f, 1024f, -531f, -124f), vec4<f32>(1263f, -286f, -1000f, -1789f), vec4<f32>(379f, -322f, -782f, -1361f), vec4<f32>(-1000f, -2790f, 1189f, 878f), vec4<f32>(950f, -1404f, -200f, -509f), vec4<f32>(314f, 1303f, -2474f, 1889f), vec4<f32>(644f, -605f, 1114f, 135f), vec4<f32>(-798f, 132f, 298f, -1406f), vec4<f32>(-1785f, -626f, 104f, -1690f), vec4<f32>(-1516f, -394f, -187f, -2413f), vec4<f32>(1067f, 479f, -342f, 1834f), vec4<f32>(106f, 497f, 1984f, -561f), vec4<f32>(-282f, 690f, -757f, -626f), vec4<f32>(-408f, 1005f, 945f, 1533f), vec4<f32>(-1000f, 1195f, -1501f, 1106f));

var<private> global2: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(38352u, true, vec2<f32>(-500f, 1000f)), 0u, Struct_1(vec2<i32>(-27619i, 42489i)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(16292u, true, vec2<f32>(-2170f, -579f)), 1u, Struct_1(vec2<i32>(21227i, i32(-2147483648))))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(80065u, true, vec2<f32>(-1000f, -897f)), 22460u, Struct_1(vec2<i32>(46745i, -19475i)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(0u, true, vec2<f32>(-2561f, 1105f)), 34719u, Struct_1(vec2<i32>(1i, 0i)))), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(0u, true, vec2<f32>(278f, 630f)), 1528u, Struct_1(vec2<i32>(1i, 1i)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(0u, true, vec2<f32>(-1197f, -1000f)), 46901u, Struct_1(vec2<i32>(-12558i, -1i)))), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(9210u, true, vec2<f32>(993f, -924f)), 102952u, Struct_1(vec2<i32>(68520i, 40777i)))), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(4294967295u, true, vec2<f32>(210f, -662f)), 6133u, Struct_1(vec2<i32>(1i, 0i)))), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(4294967295u, true, vec2<f32>(139f, 691f)), 4294967295u, Struct_1(vec2<i32>(2147483647i, 37356i)))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_1(~vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, 0i), vec2<i32>(0i, u_input.a.x) ^ vec2<i32>(arg_3.x, u_input.b.x))));
    var var_1 = Struct_2((~arg_2.x << (u_input.c % 32u)) ^ min(arg_0, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, arg_0), arg_2.x | arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-359f, -1030f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-263f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1928f, 104f, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(827f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(175f)))))));
    global0 = array<vec3<i32>, 5>();
    var var_2 = !(!vec3<bool>(all(!vec3<bool>(var_1.b, true, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(var_1.b, var_1.b), var_1.b))));
    var_1 = Struct_2(1u, all(vec4<bool>(all(!vec3<bool>(var_1.b, false, true)), !(!var_2.x), all(vec3<bool>(true, false, var_2.x)), (var_1.a & 24410u) == select(u_input.e.x, arg_2.x, true))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-236f, var_1.c.x) + -1524f), -1517f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(666f * var_1.c.x)), _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)))));
    return _wgslsmith_f_op_f32(-var_1.c.x);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = -(~u_input.b.xz);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.zzy)));
    let var_2 = _wgslsmith_f_op_f32(ceil(arg_1.x)) < _wgslsmith_f_op_f32(f32(-1f) * -369f);
    let var_3 = _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x | var_0.x, -var_0.x) ^ _wgslsmith_mod_i32(-1i, -46924i)), u_input.a.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 + arg_1) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_2.x, -1181f, arg_2.x))), vec4<f32>(var_1.x, 367f, _wgslsmith_f_op_f32(arg_2.x - -361f), -1510f)) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(368f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.d.x, u_input.b.x, u_input.d, vec4<i32>(var_0.x, 2147483647i, u_input.b.x, var_3))) + 516f))), global1[_wgslsmith_index_u32(23617u, 15u)], true != any(select(vec3<bool>(arg_0, false, var_2), select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, arg_0, arg_0), vec3<bool>(true, arg_0, var_2)), select(vec3<bool>(true, true, var_2), vec3<bool>(false, arg_0, false), var_2)))));
    return global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(5218u, _wgslsmith_dot_vec2_u32(~u_input.d, ~u_input.e.yy))), 9u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = func_2((u_input.d.x != ~(~1u)) & true, arg_1, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-852f, 610f) + arg_1.ww) + _wgslsmith_f_op_vec2_f32(floor(arg_1.wz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.xx - vec2<f32>(1724f, -337f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1891f, arg_1.x))))));
    var_0 = func_2(all(arg_0), vec4<f32>(-320f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(trunc(2204f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(182f * var_0.a.b.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a.b.c, vec2<f32>(-663f, -629f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, -238f)))))));
    var_0 = global2[_wgslsmith_index_u32(~var_0.a.c, 9u)];
    var_0 = func_2(var_0.a.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 2616f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xy) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.b.c.x, -1509f))))))));
    let var_1 = select(!vec2<bool>(func_2(var_0.a.b.b, global1[_wgslsmith_index_u32(4963u, 15u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-233f, 404f) + arg_1.xw)).a.b.b, true), !var_0.a.a, select(countOneBits(var_0.a.b.a) >= var_0.a.c, false, max(_wgslsmith_add_u32(u_input.d.x, 1u), 4294967295u) <= u_input.c));
    return var_0.a.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    let var_0 = arg_0.a;
    var var_1 = -2147483647i;
    global0 = array<vec3<i32>, 5>();
    return func_2((false && (_wgslsmith_clamp_u32(var_0, 35067u, var_0) <= u_input.e.x)) && !arg_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.x * 2142f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-491f * 250f), _wgslsmith_f_op_f32(-arg_1.c.x)), arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1000f, 324f, 658f))))), arg_1.c).a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!((true & any(vec3<bool>(true, true, false))) & true));
    var var_1 = func_4(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(12538u, u_input.d.x, 26822u, ~u_input.d.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x), ~vec4<u32>(u_input.c, u_input.d.x, u_input.c, 4294967295u), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, u_input.c))), all(vec3<bool>(u_input.d.x < 17669u, var_0, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1261f, 1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(295f, -505f), vec2<f32>(-1473f, 767f), vec2<bool>(var_0, true))), true)))), func_1(select(vec4<bool>(var_0 | var_0, select(var_0, var_0, var_0), !var_0, true), vec4<bool>(true, any(vec3<bool>(var_0, var_0, var_0)), false, all(vec3<bool>(false, var_0, var_0))), vec4<bool>(false, var_0, any(vec4<bool>(true, var_0, false, var_0)), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-589f, 1044f, 1000f, 572f)))))));
    let var_2 = select(true, true, select(!var_0, var_0, !var_0));
    global0 = array<vec3<i32>, 5>();
    var var_3 = all(!vec2<bool>(true, all(vec2<bool>(false, false)) || func_1(vec4<bool>(false, false, true, false), vec4<f32>(1395f, 596f, 563f, 1947f)).b));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~min(-2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -463f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -390f), 420f)) - 911f)));
}

