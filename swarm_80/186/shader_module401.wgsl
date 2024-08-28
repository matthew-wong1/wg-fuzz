struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17>;

var<private> global1: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_1(832f, -761f, false, 29272u, false), vec4<u32>(54428u, 7882u, 1u, 1u), vec2<bool>(false, false), true, Struct_1(896f, -150f, false, 1u, true)), Struct_4(Struct_1(612f, 839f, true, 4294967295u, true), vec4<u32>(60092u, 10769u, 12269u, 50584u), vec2<bool>(true, false), true, Struct_1(1000f, 1718f, true, 4294967295u, false)), Struct_4(Struct_1(-603f, 268f, false, 4294967295u, true), vec4<u32>(41377u, 1u, 44592u, 57150u), vec2<bool>(false, false), false, Struct_1(740f, 153f, false, 17060u, false)), Struct_4(Struct_1(126f, 893f, true, 4294967295u, true), vec4<u32>(61118u, 1u, 0u, 0u), vec2<bool>(true, true), true, Struct_1(1564f, -744f, true, 55890u, true)), Struct_4(Struct_1(1440f, -1602f, true, 1u, true), vec4<u32>(33106u, 4294967295u, 4294967295u, 8032u), vec2<bool>(true, false), true, Struct_1(1616f, 614f, false, 4739u, true)), Struct_4(Struct_1(1051f, -1367f, false, 0u, false), vec4<u32>(67585u, 109444u, 65327u, 1u), vec2<bool>(false, true), true, Struct_1(1049f, 792f, false, 49112u, false)), Struct_4(Struct_1(1300f, 222f, true, 4294967295u, false), vec4<u32>(53444u, 0u, 49225u, 1u), vec2<bool>(false, true), true, Struct_1(1664f, 1193f, false, 83362u, false)), Struct_4(Struct_1(-1193f, -1449f, false, 19171u, true), vec4<u32>(59290u, 0u, 3956u, 0u), vec2<bool>(true, false), true, Struct_1(2813f, 653f, true, 76245u, false)), Struct_4(Struct_1(1732f, -1442f, true, 0u, true), vec4<u32>(16775u, 0u, 8965u, 0u), vec2<bool>(false, false), false, Struct_1(-930f, -1000f, false, 30551u, false)), Struct_4(Struct_1(-317f, -500f, true, 0u, false), vec4<u32>(0u, 39020u, 38255u, 0u), vec2<bool>(false, false), true, Struct_1(-634f, -732f, false, 48120u, true)), Struct_4(Struct_1(-1418f, -251f, true, 0u, false), vec4<u32>(10090u, 93641u, 1u, 1u), vec2<bool>(false, true), true, Struct_1(1381f, -567f, true, 27276u, false)), Struct_4(Struct_1(232f, 123f, false, 4294967295u, true), vec4<u32>(4294967295u, 1u, 0u, 76307u), vec2<bool>(true, true), true, Struct_1(-1311f, -1221f, true, 4294967295u, true)), Struct_4(Struct_1(597f, 196f, false, 4294967295u, false), vec4<u32>(4294967295u, 0u, 1u, 0u), vec2<bool>(false, true), false, Struct_1(-1000f, -420f, true, 0u, false)), Struct_4(Struct_1(1479f, -757f, true, 0u, true), vec4<u32>(4294967295u, 14032u, 146149u, 25139u), vec2<bool>(false, true), false, Struct_1(-971f, 2963f, false, 4294967295u, false)), Struct_4(Struct_1(-1246f, -436f, true, 1889u, false), vec4<u32>(0u, 4294967295u, 1106u, 23145u), vec2<bool>(false, false), true, Struct_1(703f, -626f, true, 11619u, false)), Struct_4(Struct_1(520f, 428f, false, 1u, false), vec4<u32>(15301u, 42574u, 35512u, 20157u), vec2<bool>(true, false), true, Struct_1(-1113f, 342f, false, 1u, true)), Struct_4(Struct_1(824f, 394f, false, 4294967295u, false), vec4<u32>(74780u, 6495u, 53538u, 5939u), vec2<bool>(false, true), true, Struct_1(2359f, -758f, false, 1u, false)), Struct_4(Struct_1(-1245f, 677f, true, 881u, false), vec4<u32>(73913u, 124339u, 0u, 11217u), vec2<bool>(true, true), true, Struct_1(-979f, 338f, true, 20005u, false)), Struct_4(Struct_1(132f, -285f, true, 33730u, false), vec4<u32>(40212u, 7489u, 6945u, 0u), vec2<bool>(true, true), false, Struct_1(1174f, -204f, true, 37098u, true)), Struct_4(Struct_1(-513f, -121f, true, 10949u, true), vec4<u32>(26335u, 34292u, 0u, 26820u), vec2<bool>(true, false), true, Struct_1(-2102f, 1578f, false, 85485u, false)), Struct_4(Struct_1(-723f, -988f, true, 28603u, false), vec4<u32>(40966u, 4294967295u, 25077u, 9080u), vec2<bool>(false, true), false, Struct_1(-628f, 2112f, true, 1u, true)), Struct_4(Struct_1(149f, 2182f, false, 0u, false), vec4<u32>(1u, 75765u, 1u, 0u), vec2<bool>(false, true), false, Struct_1(1063f, -1635f, true, 18490u, true)), Struct_4(Struct_1(891f, -1000f, true, 73310u, false), vec4<u32>(13084u, 0u, 92304u, 0u), vec2<bool>(false, false), true, Struct_1(1024f, 1126f, false, 100u, true)), Struct_4(Struct_1(-222f, 1700f, false, 4294967295u, true), vec4<u32>(14689u, 1u, 41618u, 41748u), vec2<bool>(true, true), false, Struct_1(-1940f, -1545f, false, 0u, true)), Struct_4(Struct_1(-189f, 860f, true, 39308u, false), vec4<u32>(21255u, 4294967295u, 4294967295u, 1u), vec2<bool>(false, true), false, Struct_1(1174f, -1025f, true, 1u, true)), Struct_4(Struct_1(-1000f, 1000f, false, 1u, true), vec4<u32>(1u, 32278u, 69740u, 27636u), vec2<bool>(true, false), false, Struct_1(325f, 314f, true, 0u, true)), Struct_4(Struct_1(-504f, 404f, false, 4294967295u, false), vec4<u32>(1u, 4294967295u, 1u, 28352u), vec2<bool>(true, false), false, Struct_1(569f, -1999f, false, 22128u, false)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = vec4<u32>(~0u, ~arg_1, ~_wgslsmith_mod_u32(arg_1, 1u), abs(u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 2545u, u_input.a.x, 1u), u_input.a) % 32u)));
    let var_1 = true || (true & !any(!global0[_wgslsmith_index_u32(18494u, 17u)]));
    var var_2 = Struct_3(Struct_2(arg_3.a), !(all(!vec2<bool>(var_1, false)) != var_1), ~(~var_0.yzz));
    var_2 = Struct_3(var_2.a, -1638f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1836f + arg_3.a.x))) + var_2.a.a.x), var_0.xwx);
    var_2 = Struct_3(Struct_2(var_2.a.a), true, _wgslsmith_sub_vec3_u32(var_2.c, (firstTrailingBit(vec3<u32>(10583u, 366u, arg_1)) & var_2.c) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, var_0.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(11461u, 84912u, 5853u), var_2.c)) % vec3<u32>(32u))));
    return vec3<bool>(var_1, false, var_2.b);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> f32 {
    var var_0 = -_wgslsmith_clamp_i32(1i, select(56361i, 1i, true), -1i) | 0i;
    global1 = array<Struct_4, 27>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-506f, -1147f, arg_0, arg_0) * vec4<f32>(-1482f, -1077f, -3337f, arg_0)))))), all(func_3(vec3<f32>(_wgslsmith_f_op_f32(-1355f - 546f), _wgslsmith_f_op_f32(536f + arg_0), arg_0), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-400f, -775f))), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -345f, -133f, 1569f), vec4<f32>(1210f, arg_0, -1000f, 833f), false)))).zx), u_input.a.xxy);
    global0 = array<vec3<bool>, 17>();
    var var_2 = all(select(!(!(!vec4<bool>(var_1.b, arg_1.x, arg_1.x, arg_2))), !select(vec4<bool>(true, arg_2, arg_1.x, true), !vec4<bool>(arg_1.x, arg_2, arg_2, true), true), true | !arg_1.x));
    return arg_0;
}

fn func_2() -> Struct_3 {
    let var_0 = ~(-19498i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1091f), 874f)), _wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-500f, func_3(vec3<f32>(1317f, 392f, 426f), 1u, 341f, Struct_2(vec4<f32>(553f, -1000f, 557f, -441f))), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f * 395f)))), true, ~26238u, !((false && (var_0 > var_0)) && true));
    let var_2 = global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 27u)];
    global0 = array<vec3<bool>, 17>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, -1800f, var_1.b))) * vec3<f32>(var_1.b, var_2.e.a, -859f)))))));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, var_1.a, -199f, var_3.x)))) * vec4<f32>(var_1.b, var_2.e.b, _wgslsmith_f_op_f32(exp2(var_1.a)), -1010f))), any(vec2<bool>(any(!var_2.c), false)), var_2.b.yyw);
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: u32) -> vec4<i32> {
    var var_0 = select(!select(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(12996u, 17u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, u_input.a.x)), u_input.a.yw), 17u)]), global0[_wgslsmith_index_u32(553u, 17u)], !any(arg_1.c));
    global1 = array<Struct_4, 27>();
    let var_1 = vec3<f32>(113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) + arg_1.e.a), arg_1.a.b);
    var var_2 = Struct_4(Struct_1(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !((false & arg_1.c.x) & true), 1u, any(vec3<bool>(false, arg_0, true)) || var_0.x), u_input.a, !select(!(!var_0.zx), !(!arg_1.c), select(vec2<bool>(var_0.x, true), vec2<bool>(arg_0, false), true)), !arg_1.d, arg_1.e);
    let var_3 = func_2();
    return -_wgslsmith_add_vec4_i32(vec4<i32>(~(-27766i), i32(-1i) * -2147483647i, 1i, ~(i32(-1i) * -32940i)), firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-62251i, 0i, 13261i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 17>();
    var var_0 = -_wgslsmith_dot_vec4_i32(~select(func_1(true, Struct_4(Struct_1(655f, 1076f, true, 7954u, false), u_input.a, vec2<bool>(false, true), true, Struct_1(147f, 660f, true, 71023u, false)), 47757u), vec4<i32>(1i, -2147483647i, -2147483647i, 0i) << (vec4<u32>(u_input.a.x, 457u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), -_wgslsmith_sub_vec4_i32(~vec4<i32>(17481i, 1i, -65690i, -17213i), _wgslsmith_add_vec4_i32(vec4<i32>(-5719i, 0i, -1i, -32633i), vec4<i32>(18940i, -14561i, 30665i, 0i))));
    var var_1 = !(!vec4<bool>(false, !all(vec2<bool>(true, true)), !any(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, true, true))));
    var var_2 = Struct_3(func_2().a, true, firstLeadingBit(abs(countOneBits(min(vec3<u32>(8993u, u_input.a.x, 0u), vec3<u32>(66312u, 74641u, u_input.a.x))))));
    var var_3 = Struct_3(var_2.a, !func_3(var_2.a.a.wyz, func_2().c.x, var_2.a.a.x, func_2().a).x, vec3<u32>(_wgslsmith_mult_u32(~0u, firstLeadingBit(var_2.c.x)), 0u >> (var_2.c.x % 32u), 0u));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.a.a.x * _wgslsmith_f_op_f32(-var_2.a.a.x)))) * var_2.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.xz, func_1(var_3.b, global1[_wgslsmith_index_u32(countOneBits(var_2.c.x >> (~var_3.c.x % 32u)), 27u)], u_input.a.x).zwy, var_4);
}

