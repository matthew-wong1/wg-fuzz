struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
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

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(12233i, -26323i, i32(-2147483648)), vec3<i32>(-3785i, 0i, -7952i), vec3<i32>(1i, i32(-2147483648), 10227i), vec3<i32>(4198i, 1i, -5623i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(37638i, 1i, 21691i), vec3<i32>(-2926i, 0i, 15138i), vec3<i32>(1i, -68612i, 1i), vec3<i32>(22139i, 0i, 1i), vec3<i32>(0i, 3677i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, -13672i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(2147483647i, 35405i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(2147483647i, 0i, 24469i), vec3<i32>(47864i, 28904i, 29593i), vec3<i32>(-1i, -41209i, 0i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(1i, -1i, -33021i), vec3<i32>(-59325i, 13144i, -1i), vec3<i32>(-16187i, 2147483647i, -19172i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(0i, -21423i, -32919i), vec3<i32>(-1i, 1i, -1328i), vec3<i32>(23862i, 31531i, -1475i), vec3<i32>(-1i, 18937i, i32(-2147483648)));

var<private> global1: array<Struct_2, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, 709f, -206f, -1184f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(215f, -2683f, -1000f, -299f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-513f, -1431f, -519f, 468f) * vec4<f32>(200f, -1272f, 1398f, 596f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1342f, -487f, 1189f, -535f) + vec4<f32>(-1000f, -807f, 1000f, 138f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - var_0.x)), -766f));
    global0 = array<vec3<i32>, 28>();
    var var_2 = 1000f;
    var_2 = var_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_1.x)))))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec2<i32>) -> f32 {
    var var_0 = arg_1.a.yyw;
    var var_1 = arg_1.c;
    let var_2 = arg_1.c.a.b;
    var var_3 = vec2<f32>(1663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2081f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1048f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-792f + -334f), _wgslsmith_f_op_f32(545f * _wgslsmith_div_f32(1081f, 579f))))));
    var var_4 = 8746u;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(2147483647i)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2142f) * arg_1.c.a.a.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_4(~firstTrailingBit(~(vec4<u32>(u_input.c, 1581u, 1u, u_input.c) << (vec4<u32>(1u, u_input.c, 70616u, 45204u) % vec4<u32>(32u)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_div_i32(u_input.e.x, -48637i) & -1i, -u_input.a), ~vec3<i32>(-6598i, _wgslsmith_dot_vec3_i32(u_input.b.xwy, vec3<i32>(u_input.d, u_input.b.x, 1i)), 1i)), Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 78086u) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, 12986u), ~vec4<u32>(1u, u_input.c, 47747u, u_input.c)), 18u)], u_input.c, vec2<bool>(arg_1, !(!arg_1))), true && all(vec3<bool>(arg_2.x, arg_1, arg_1)));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.zz))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.c, _wgslsmith_f_op_f32(f32(-1f) * -254f)));
    let var_2 = -(~u_input.b);
    var var_3 = 1u;
    return Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(var_1.x, Struct_4(var_0.a, vec3<i32>(-1i, var_2.x, -45029i), var_0.c, false), u_input.e.zz)), _wgslsmith_f_op_f32(sign(-854f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1652f * 497f) + -1897f), 581f), var_0.c.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-664f, 469f, var_0.d)))) - 358f), var_0.c.a.b.a.xww), ~countOneBits(0u), var_0.c.c);
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(134f, Struct_4(vec4<u32>(0u, u_input.c, u_input.c, 38486u), u_input.b.zzz, Struct_3(Struct_2(vec3<f32>(-539f, 1370f, 389f), Struct_1(vec4<bool>(true, true, true, false)), 1571f, vec3<bool>(false, true, false)), u_input.c, vec2<bool>(true, false)), true), vec2<i32>(u_input.b.x, u_input.b.x))) * -528f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f + -1020f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-790f, _wgslsmith_f_op_f32(2488f - 956f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-186f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1633f)))), !(u_input.d >= _wgslsmith_dot_vec3_i32(-global0[_wgslsmith_index_u32(u_input.c, 28u)], countOneBits(vec3<i32>(u_input.d, u_input.e.x, u_input.b.x)))), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), false), vec2<bool>(true, any(vec2<bool>(true, true)))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true & all(vec4<bool>(false, true, false, true))), any(vec4<bool>(true, true, true, true))));
    global1 = array<Struct_2, 18>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(var_0.a.c + var_0.a.c), _wgslsmith_f_op_f32(round(var_0.a.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, var_0.a.a.x, 540f, var_0.a.a.x) * _wgslsmith_div_vec4_f32(vec4<f32>(1394f, 638f, var_0.a.a.x, -1737f), vec4<f32>(var_0.a.a.x, 724f, 1074f, var_0.a.a.x))))) * _wgslsmith_div_vec4_f32(vec4<f32>(344f, _wgslsmith_f_op_f32(min(-309f, _wgslsmith_f_op_f32(-var_0.a.c))), -553f, _wgslsmith_f_op_f32(f32(-1f) * -1453f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 1491f, -2250f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(round(1358f)), -451f, _wgslsmith_f_op_f32(f32(-1f) * -1242f), _wgslsmith_f_op_f32(step(1000f, -191f))))));
    var var_2 = u_input.b.xxx;
    let var_3 = true == var_0.c.x;
    return Struct_4(vec4<u32>(var_0.b, 33026u, _wgslsmith_div_u32(25558u, ~1u), _wgslsmith_add_u32(u_input.c, 3973u)), select(u_input.b.zyx, vec3<i32>(u_input.d ^ -1i, min(u_input.e.x, u_input.b.x), reverseBits(25230i)), select(var_0.a.b.a.xzy, var_0.a.d, !(false | var_3))), func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(abs(405f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.c - var_0.a.c), _wgslsmith_f_op_f32(var_0.a.c + 520f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.c + var_0.a.c))), _wgslsmith_f_op_f32(-687f + 967f)), var_0.a.d.x, vec2<bool>(var_0.c.x, !var_0.a.d.x && true)), true);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> Struct_5 {
    var var_0 = -1691f;
    let var_1 = 1u;
    var_0 = -1417f;
    var var_2 = u_input.b.zw | u_input.b.yy;
    var_2 = u_input.e.yy;
    return Struct_5(arg_0.c.a, func_1(), ~firstLeadingBit(var_2.x), func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1939f, arg_2.a.x, arg_2.c, 1654f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1081f, arg_0.c.a.c, -1430f, arg_2.a.x) + vec4<f32>(-757f, 627f, arg_0.c.a.c, 361f))))), all(!(!vec2<bool>(arg_1, arg_2.d.x))), select(vec2<bool>(arg_0.d, false), vec2<bool>(true, false), func_1().c.a.b.a.yz)).a, Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0.c.a.a), arg_2.b, 1000f, !(!vec3<bool>(true, false, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 18u)];
    var var_1 = func_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))) != -2126f, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(var_0.a.x, var_0.a.x, 973f))) - _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.c, var_0.a.x, var_0.a.x))), var_0.b, -350f, !var_0.b.a.yxy));
    let var_2 = var_1.b;
    let var_3 = func_5(var_1.b, all(func_5(Struct_4(vec4<u32>(0u, 0u, var_1.b.a.x, var_2.a.x) | var_2.a, var_1.b.b, Struct_3(var_1.d, u_input.c, vec2<bool>(true, var_2.d)), true), var_2.c.c.x, Struct_2(_wgslsmith_f_op_vec3_f32(var_2.c.a.a - var_2.c.a.a), var_0.b, _wgslsmith_f_op_f32(-453f * 439f), !vec3<bool>(false, false, var_0.d.x))).b.c.a.b.a), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-589f, var_2.c.a.a.x, 281f, -1105f) + vec4<f32>(-843f, var_0.c, var_1.a.c, 1820f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.x, var_1.a.c, var_1.d.a.x, -358f) - vec4<f32>(var_1.e.c, -986f, var_2.c.a.a.x, var_1.b.c.a.c)))), true, vec2<bool>(true, var_0.b.a.x)).a).b.c.a.b;
    let var_4 = vec4<u32>(~u_input.c, ~(select(48521u, 550u, true) >> (4294967295u % 32u)), _wgslsmith_div_u32(~(~var_2.c.b) & abs(u_input.c ^ var_2.a.x), reverseBits(var_1.b.c.b)), var_1.b.a.x >> (var_2.c.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

