struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 48111u;

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(vec4<u32>(126u, 4294967295u, 0u, 1u)), true, vec4<f32>(-785f, 233f, -1000f, 1000f), Struct_2(Struct_1(vec4<u32>(4294967295u, 45664u, 0u, 27691u)), vec2<i32>(29971i, 34487i), Struct_1(vec4<u32>(1430u, 30137u, 22802u, 0u)), 14040i)), Struct_3(Struct_1(vec4<u32>(46266u, 0u, 278u, 8309u)), false, vec4<f32>(-289f, 865f, 1275f, -691f), Struct_2(Struct_1(vec4<u32>(4294967295u, 36780u, 31178u, 28653u)), vec2<i32>(-45075i, -5403i), Struct_1(vec4<u32>(0u, 0u, 1u, 30566u)), 52745i)), Struct_3(Struct_1(vec4<u32>(0u, 0u, 1u, 1u)), true, vec4<f32>(230f, 593f, -2017f, 310f), Struct_2(Struct_1(vec4<u32>(0u, 116049u, 1u, 20594u)), vec2<i32>(-3676i, 2970i), Struct_1(vec4<u32>(9509u, 1u, 4294967295u, 48382u)), i32(-2147483648))), Struct_3(Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u)), true, vec4<f32>(647f, -289f, -1354f, 608f), Struct_2(Struct_1(vec4<u32>(435u, 86550u, 0u, 21959u)), vec2<i32>(1i, 2147483647i), Struct_1(vec4<u32>(5587u, 16624u, 4294967295u, 1900u)), 2147483647i)), Struct_3(Struct_1(vec4<u32>(1u, 47651u, 28424u, 45448u)), false, vec4<f32>(-832f, 283f, -1806f, -354f), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 37739u, 1739u)), vec2<i32>(5290i, 1i), Struct_1(vec4<u32>(92568u, 1u, 6234u, 70680u)), 15822i)), Struct_3(Struct_1(vec4<u32>(0u, 51309u, 22458u, 4294967295u)), true, vec4<f32>(701f, -833f, -158f, 405f), Struct_2(Struct_1(vec4<u32>(42284u, 0u, 0u, 6426u)), vec2<i32>(2147483647i, 11665i), Struct_1(vec4<u32>(31836u, 0u, 53949u, 42669u)), 307i)), Struct_3(Struct_1(vec4<u32>(1u, 11206u, 4294967295u, 1u)), true, vec4<f32>(-2095f, 929f, 852f, -357f), Struct_2(Struct_1(vec4<u32>(13635u, 16994u, 4294967295u, 1437u)), vec2<i32>(2147483647i, -28284i), Struct_1(vec4<u32>(1u, 70645u, 69603u, 619u)), i32(-2147483648))), Struct_3(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 22197u)), false, vec4<f32>(-1000f, 1238f, -1696f, 236f), Struct_2(Struct_1(vec4<u32>(0u, 1u, 41275u, 4294967295u)), vec2<i32>(1i, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)), 0i)), Struct_3(Struct_1(vec4<u32>(32079u, 166u, 20550u, 4294967295u)), true, vec4<f32>(305f, -476f, 566f, 610f), Struct_2(Struct_1(vec4<u32>(18493u, 11408u, 11648u, 4294967295u)), vec2<i32>(-1i, -5430i), Struct_1(vec4<u32>(0u, 1u, 0u, 0u)), -58865i)), Struct_3(Struct_1(vec4<u32>(4294967295u, 69548u, 3379u, 1u)), false, vec4<f32>(-1164f, 1000f, -1446f, 797f), Struct_2(Struct_1(vec4<u32>(1u, 65643u, 65373u, 1u)), vec2<i32>(31870i, -1i), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 0u)), 36689i)), Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 50250u, 0u)), false, vec4<f32>(-337f, -565f, 723f, 1770f), Struct_2(Struct_1(vec4<u32>(1u, 34513u, 0u, 1u)), vec2<i32>(2147483647i, -111369i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 15655u, 4294967295u)), -1i)), Struct_3(Struct_1(vec4<u32>(64612u, 38735u, 73590u, 39838u)), false, vec4<f32>(-1153f, 922f, 849f, -1375f), Struct_2(Struct_1(vec4<u32>(10642u, 1u, 3631u, 28900u)), vec2<i32>(16397i, i32(-2147483648)), Struct_1(vec4<u32>(1u, 0u, 0u, 40049u)), 41357i)), Struct_3(Struct_1(vec4<u32>(36056u, 1u, 38212u, 0u)), false, vec4<f32>(-369f, 850f, -1106f, -1000f), Struct_2(Struct_1(vec4<u32>(62440u, 2998u, 1u, 64420u)), vec2<i32>(0i, 2147483647i), Struct_1(vec4<u32>(70511u, 733u, 68634u, 32447u)), -47803i)), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 22404u, 4294967295u)), false, vec4<f32>(137f, 553f, 425f, -635f), Struct_2(Struct_1(vec4<u32>(4294967295u, 20584u, 6748u, 4294967295u)), vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec4<u32>(15946u, 8529u, 22574u, 4294967295u)), -1i)), Struct_3(Struct_1(vec4<u32>(19405u, 39664u, 1u, 4294967295u)), true, vec4<f32>(133f, 224f, 333f, 2108f), Struct_2(Struct_1(vec4<u32>(175u, 0u, 1u, 56817u)), vec2<i32>(0i, -39029i), Struct_1(vec4<u32>(64735u, 4294967295u, 4294967295u, 25156u)), 0i)), Struct_3(Struct_1(vec4<u32>(60073u, 29164u, 1u, 0u)), false, vec4<f32>(1000f, 289f, -1000f, 1531f), Struct_2(Struct_1(vec4<u32>(22435u, 0u, 1u, 4294967295u)), vec2<i32>(-1795i, -1i), Struct_1(vec4<u32>(66051u, 77348u, 7072u, 1u)), -1i)), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), true, vec4<f32>(1812f, -779f, -628f, -395f), Struct_2(Struct_1(vec4<u32>(34672u, 23910u, 29366u, 37222u)), vec2<i32>(0i, -34290i), Struct_1(vec4<u32>(15049u, 1003u, 67133u, 1u)), 0i)), Struct_3(Struct_1(vec4<u32>(61385u, 0u, 0u, 77232u)), false, vec4<f32>(-447f, 2040f, 1110f, -329f), Struct_2(Struct_1(vec4<u32>(4294967295u, 3275u, 75229u, 50185u)), vec2<i32>(i32(-2147483648), -1i), Struct_1(vec4<u32>(18745u, 1u, 4294967295u, 0u)), 0i)), Struct_3(Struct_1(vec4<u32>(97029u, 0u, 35585u, 60601u)), false, vec4<f32>(-278f, 1256f, 280f, -739f), Struct_2(Struct_1(vec4<u32>(58572u, 22398u, 16834u, 0u)), vec2<i32>(2147483647i, 4853i), Struct_1(vec4<u32>(4294967295u, 22001u, 4294967295u, 1u)), 0i)), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 30762u)), true, vec4<f32>(970f, -2786f, 191f, 1718f), Struct_2(Struct_1(vec4<u32>(54360u, 16648u, 12363u, 35473u)), vec2<i32>(0i, 15976i), Struct_1(vec4<u32>(0u, 66732u, 2441u, 97460u)), -1i)), Struct_3(Struct_1(vec4<u32>(4294967295u, 4039u, 40446u, 7127u)), false, vec4<f32>(-2030f, 190f, -1000f, 401f), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 80005u, 1u)), vec2<i32>(-8972i, 635i), Struct_1(vec4<u32>(0u, 79102u, 69611u, 2553u)), -4473i)), Struct_3(Struct_1(vec4<u32>(1648u, 0u, 11718u, 1u)), false, vec4<f32>(-274f, 1133f, -233f, -153f), Struct_2(Struct_1(vec4<u32>(20938u, 71618u, 39543u, 16697u)), vec2<i32>(2147483647i, 5226i), Struct_1(vec4<u32>(4294967295u, 40742u, 1u, 1u)), 47429i)), Struct_3(Struct_1(vec4<u32>(10539u, 1297u, 0u, 6435u)), true, vec4<f32>(-578f, 459f, 904f, -317f), Struct_2(Struct_1(vec4<u32>(75175u, 0u, 68748u, 1u)), vec2<i32>(56158i, i32(-2147483648)), Struct_1(vec4<u32>(59848u, 1u, 41129u, 4294967295u)), 1i)), Struct_3(Struct_1(vec4<u32>(50843u, 1u, 4294967295u, 3548u)), false, vec4<f32>(289f, -1844f, -2263f, -1495f), Struct_2(Struct_1(vec4<u32>(4294967295u, 71443u, 0u, 4294967295u)), vec2<i32>(-7124i, 0i), Struct_1(vec4<u32>(2080u, 16029u, 1u, 1u)), -36676i)), Struct_3(Struct_1(vec4<u32>(27879u, 13958u, 4294967295u, 1u)), true, vec4<f32>(-1289f, 1176f, 995f, -249f), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 86056u)), vec2<i32>(0i, 1i), Struct_1(vec4<u32>(0u, 41559u, 74807u, 32139u)), 2147483647i)), Struct_3(Struct_1(vec4<u32>(1u, 1u, 4692u, 1u)), false, vec4<f32>(528f, 421f, 1729f, 503f), Struct_2(Struct_1(vec4<u32>(4294967295u, 3852u, 1u, 4294967295u)), vec2<i32>(0i, 1i), Struct_1(vec4<u32>(0u, 0u, 8491u, 0u)), 2147483647i)));

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_4, 29>;

var<private> global4: array<Struct_3, 26>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> i32 {
    return u_input.a.x | (_wgslsmith_clamp_i32(-35324i, -28216i, 4237i) << (4294967295u % 32u));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = -690f;
    let var_1 = Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(min(~vec4<u32>(arg_0.x, u_input.b, 106513u, 126743u), arg_0), vec4<u32>(~u_input.b, ~14735u, 43492u >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0.x), vec2<u32>(u_input.b, arg_0.x))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1818f, global2.x, 328f, global2.x)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, global2.x, global2.x))))))), Struct_2(Struct_1(vec4<u32>(_wgslsmith_add_u32(0u, 3808u), 0u, arg_0.x, ~62211u)), select(firstLeadingBit(u_input.a.zx), u_input.a.xx << (arg_0.zy % vec2<u32>(32u)), true) ^ vec2<i32>(firstTrailingBit(u_input.a.x), u_input.a.x), Struct_1((vec4<u32>(arg_0.x, 0u, 1u, u_input.b) << (arg_0 % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(116402u, 1u, arg_0.x, arg_0.x)) % vec4<u32>(32u))), 0i));
    let var_2 = !select(var_1.b, var_1.b, var_1.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f - -725f) + -1147f))), var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.x, -2223f, all(vec2<bool>(true, var_2))))))));
    var var_4 = Struct_2(var_1.a, var_1.d.b, var_1.d.c, abs(~u_input.a.x));
    return select(select(!(!vec4<bool>(true, false, var_1.b, true)), vec4<bool>(all(vec2<bool>(var_1.b, var_2)), !(var_2 || var_2), !(!var_2), all(select(vec3<bool>(false, false, var_2), vec3<bool>(var_1.b, var_1.b, true), true))), vec4<bool>(!var_2, var_2, true, true)), !vec4<bool>(true, !select(var_2, false, var_1.b), !var_2, all(vec3<bool>(var_2, var_2, false))), -2147483647i <= (func_2() & 43634i));
}

fn func_1() -> bool {
    let var_0 = ~u_input.b;
    global2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1764f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x)))))));
    var var_1 = ~(~(~var_0));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-min(i32(-1i) * -1i, firstLeadingBit(88457i)), 2147483647i), _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x, func_2() << (62351u % 32u), u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1414f))), 1427f, global2.x)));
    return !any(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), func_3(vec4<u32>(var_0, u_input.b, var_0, var_0))), !func_3(vec4<u32>(var_0, 5625u, 0u, u_input.b)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec2<bool>(!(-(~u_input.a.x) == countOneBits(2147483647i)), func_1());
    global0 = 0u;
    let var_2 = global3[_wgslsmith_index_u32(~u_input.b, 29u)];
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(-var_2.e));
    var var_3 = Struct_4(countOneBits(~abs(-36315i)), ~var_2.c, abs(~var_2.c), abs(~vec2<i32>(i32(-1i) * -40049i, ~(-65555i))), _wgslsmith_f_op_f32(161f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-var_2.e)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 738f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global2.x, -1493f)), _wgslsmith_f_op_f32(round(761f)), false | var_1.x))), _wgslsmith_mod_u32(55719u, var_3.c) >= var_2.c)));
}

