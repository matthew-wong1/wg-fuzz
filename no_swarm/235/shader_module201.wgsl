struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<u32>(15901u, 0u, 19953u)), Struct_3(vec3<u32>(67107u, 1u, 1742u)), Struct_3(vec3<u32>(1u, 1u, 4294967295u)), Struct_3(vec3<u32>(14552u, 847u, 1u)), Struct_3(vec3<u32>(74604u, 28692u, 4294967295u)), Struct_3(vec3<u32>(1u, 11156u, 15512u)), Struct_3(vec3<u32>(55433u, 4294967295u, 14022u)), Struct_3(vec3<u32>(0u, 179u, 72759u)), Struct_3(vec3<u32>(24100u, 110094u, 81140u)), Struct_3(vec3<u32>(1u, 15698u, 81982u)), Struct_3(vec3<u32>(1u, 37550u, 0u)), Struct_3(vec3<u32>(18623u, 41200u, 1u)), Struct_3(vec3<u32>(11413u, 1u, 66984u)), Struct_3(vec3<u32>(33032u, 0u, 0u)), Struct_3(vec3<u32>(1u, 25730u, 17508u)), Struct_3(vec3<u32>(0u, 1u, 4294967295u)), Struct_3(vec3<u32>(0u, 0u, 55637u)), Struct_3(vec3<u32>(19811u, 26415u, 1u)), Struct_3(vec3<u32>(59205u, 5465u, 3829u)), Struct_3(vec3<u32>(14870u, 61095u, 34496u)), Struct_3(vec3<u32>(51058u, 6084u, 1u)), Struct_3(vec3<u32>(0u, 59061u, 69941u)));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<u32>(31422u, 53388u, 85871u), vec3<u32>(0u, 28001u, 1u), Struct_1(vec2<i32>(-23236i, 0i), vec3<i32>(0i, 38818i, 2147483647i), vec3<i32>(0i, -1i, 7777i), vec2<u32>(4294967295u, 1u), vec2<f32>(-819f, 1953f)), vec3<i32>(2147483647i, 59223i, 17359i)), Struct_2(vec3<u32>(4294967295u, 1u, 51518u), vec3<u32>(59203u, 4294967295u, 0u), Struct_1(vec2<i32>(20375i, -1i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(-3942i, 2147483647i, 0i), vec2<u32>(45728u, 86880u), vec2<f32>(692f, 1142f)), vec3<i32>(2147483647i, 27536i, -2479i)), Struct_2(vec3<u32>(1u, 1u, 1u), vec3<u32>(31337u, 50376u, 0u), Struct_1(vec2<i32>(0i, -45404i), vec3<i32>(i32(-2147483648), 0i, -5472i), vec3<i32>(9577i, -1i, 2147483647i), vec2<u32>(0u, 13632u), vec2<f32>(-1027f, -1085f)), vec3<i32>(4766i, 2147483647i, -1i)), Struct_2(vec3<u32>(1u, 4294967295u, 89880u), vec3<u32>(28957u, 4294967295u, 25202u), Struct_1(vec2<i32>(6413i, -18283i), vec3<i32>(-32226i, 1509i, 2147483647i), vec3<i32>(-9181i, -1i, -4132i), vec2<u32>(3019u, 101997u), vec2<f32>(-1122f, 1000f)), vec3<i32>(0i, 2147483647i, -1i)), Struct_2(vec3<u32>(4294967295u, 26353u, 4294967295u), vec3<u32>(0u, 1u, 1u), Struct_1(vec2<i32>(0i, 0i), vec3<i32>(2147483647i, 1i, 20653i), vec3<i32>(15561i, 1i, -19907i), vec2<u32>(74193u, 44654u), vec2<f32>(-1234f, -1000f)), vec3<i32>(-7223i, 24612i, 45512i)), Struct_2(vec3<u32>(1u, 17868u, 0u), vec3<u32>(4294967295u, 4294967295u, 26016u), Struct_1(vec2<i32>(-46260i, -8060i), vec3<i32>(-1i, -21352i, 1i), vec3<i32>(59709i, 13904i, -1i), vec2<u32>(50730u, 4294967295u), vec2<f32>(1035f, 1605f)), vec3<i32>(i32(-2147483648), 5277i, -24807i)), Struct_2(vec3<u32>(0u, 0u, 3447u), vec3<u32>(4294967295u, 28617u, 0u), Struct_1(vec2<i32>(33930i, 0i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(11573i, -1i, 2147483647i), vec2<u32>(35895u, 1u), vec2<f32>(1000f, -733f)), vec3<i32>(-40433i, 2147483647i, -1i)), Struct_2(vec3<u32>(53327u, 4294967295u, 803u), vec3<u32>(72782u, 4294967295u, 48165u), Struct_1(vec2<i32>(i32(-2147483648), 36369i), vec3<i32>(27991i, 25153i, -12139i), vec3<i32>(-1i, 1i, 1i), vec2<u32>(25546u, 26812u), vec2<f32>(-499f, -1500f)), vec3<i32>(-1i, -33655i, -71891i)), Struct_2(vec3<u32>(47628u, 32370u, 44116u), vec3<u32>(27805u, 50798u, 1u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(-36490i, 56308i, i32(-2147483648)), vec3<i32>(13053i, 17155i, 1i), vec2<u32>(1u, 24255u), vec2<f32>(306f, -2385f)), vec3<i32>(-1i, 0i, -1i)), Struct_2(vec3<u32>(0u, 0u, 1u), vec3<u32>(43953u, 24607u, 119861u), Struct_1(vec2<i32>(-5699i, i32(-2147483648)), vec3<i32>(-1i, 25295i, 29440i), vec3<i32>(-5045i, -14788i, -19442i), vec2<u32>(0u, 1u), vec2<f32>(-1000f, 876f)), vec3<i32>(1i, 14583i, -1i)), Struct_2(vec3<u32>(12619u, 4294967295u, 19181u), vec3<u32>(81134u, 42677u, 1u), Struct_1(vec2<i32>(12825i, -23786i), vec3<i32>(-20580i, 24619i, 2147483647i), vec3<i32>(0i, 0i, i32(-2147483648)), vec2<u32>(2890u, 47290u), vec2<f32>(-1362f, 152f)), vec3<i32>(2816i, 0i, -9555i)), Struct_2(vec3<u32>(4294967295u, 33731u, 49725u), vec3<u32>(10409u, 52377u, 4294967295u), Struct_1(vec2<i32>(-37747i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 20256i), vec3<i32>(0i, i32(-2147483648), -11470i), vec2<u32>(4000u, 56204u), vec2<f32>(-361f, -908f)), vec3<i32>(1i, -1i, 47120i)), Struct_2(vec3<u32>(46106u, 11760u, 60868u), vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec2<i32>(0i, 1i), vec3<i32>(1i, 0i, 1i), vec3<i32>(3714i, 6592i, 7648i), vec2<u32>(0u, 0u), vec2<f32>(169f, 983f)), vec3<i32>(-1i, -1i, -17696i)), Struct_2(vec3<u32>(0u, 0u, 23909u), vec3<u32>(41366u, 4294967295u, 10353u), Struct_1(vec2<i32>(-13698i, -28791i), vec3<i32>(14370i, 2147483647i, 14081i), vec3<i32>(1i, -38787i, 0i), vec2<u32>(4294967295u, 10713u), vec2<f32>(687f, -558f)), vec3<i32>(1i, -5315i, -26192i)), Struct_2(vec3<u32>(33737u, 56839u, 4294967295u), vec3<u32>(6504u, 4294967295u, 56457u), Struct_1(vec2<i32>(60756i, -13049i), vec3<i32>(0i, 19625i, -48430i), vec3<i32>(15357i, i32(-2147483648), 13062i), vec2<u32>(4294967295u, 50120u), vec2<f32>(1000f, 581f)), vec3<i32>(-3403i, 1i, -1i)), Struct_2(vec3<u32>(1u, 46150u, 131339u), vec3<u32>(1u, 67909u, 32443u), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<i32>(-1i, -19986i, i32(-2147483648)), vec3<i32>(-20842i, 2147483647i, 2147483647i), vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1528f, 1669f)), vec3<i32>(-1i, -24800i, i32(-2147483648))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = Struct_2(~(_wgslsmith_div_vec3_u32(~u_input.b.zzy, ~u_input.d.zwx) | _wgslsmith_div_vec3_u32(u_input.b.zxz, vec3<u32>(17133u, u_input.d.x, 63824u))), u_input.b.xzz, Struct_1(vec2<i32>(~1i, ~u_input.c), firstTrailingBit(abs(vec3<i32>(u_input.c, -2147483647i, u_input.c) << (vec3<u32>(17870u, 1u, u_input.a) % vec3<u32>(32u)))), vec3<i32>(u_input.c, reverseBits(-2147483647i), _wgslsmith_div_i32(u_input.c, -36823i)) << (~(~vec3<u32>(u_input.d.x, u_input.b.x, 0u)) % vec3<u32>(32u)), u_input.d.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, -1368f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1659f, -1193f))))), -vec3<i32>(-23577i, ~(~(-50078i)), ~reverseBits(u_input.c)));
    return _wgslsmith_f_op_f32(-var_0.c.e.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-244f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(550f)), _wgslsmith_f_op_f32(floor(-824f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) + arg_1)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 - 345f), _wgslsmith_f_op_f32(-671f + 506f), _wgslsmith_f_op_f32(exp2(arg_1))), vec3<f32>(-648f, _wgslsmith_f_op_f32(func_3()), arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 175f, 1000f) * vec3<f32>(-2179f, arg_1, arg_1))))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    global0 = array<Struct_3, 22>();
    global1 = array<Struct_2, 16>();
    global0 = array<Struct_3, 22>();
    global1 = array<Struct_2, 16>();
    return 625u ^ select(u_input.a, max(~59651u << (_wgslsmith_mod_u32(39583u, 1u) % 32u), _wgslsmith_div_u32(u_input.a, u_input.d.x) | countOneBits(u_input.b.x)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))));
}

fn func_1() -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(~firstTrailingBit(~u_input.b.yyz), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 750u, u_input.a), u_input.b.wzx)), ~min(~u_input.d.xwz, reverseBits(vec3<u32>(u_input.d.x, u_input.a, 20976u))) & u_input.b.xzy), 22u)];
    global0 = array<Struct_3, 22>();
    global1 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_mult_u32(~u_input.a & max(26618u, u_input.b.x), reverseBits(func_2(select(vec2<i32>(-1i, 1i), vec2<i32>(u_input.c, u_input.c), true), _wgslsmith_div_f32(-564f, 482f))) & u_input.d.x);
    var var_2 = any(vec2<bool>(any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), select(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), false, false)));
    return Struct_3(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1005f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(1697f + -1118f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-548f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(3039f, -707f))) * 1f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(-1050f)), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-1214f - -871f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(f32(-1f) * -694f))))), -749f);
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, -121f, 319f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(765f, -412f, -474f)) - vec3<f32>(1000f, 754f, -1000f)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, false)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(746f + -1000f)), _wgslsmith_f_op_f32(max(1f, -1000f)), 2228f)), -430f, vec2<i32>(2147483647i, -(~(-17866i) << (~var_0.a.x % 32u))), (u_input.c >> (~4294967295u % 32u)) ^ u_input.c);
}

