struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-1282f, Struct_1(vec4<f32>(-459f, 569f, 1000f, -1055f), vec2<u32>(21978u, 66765u))), Struct_3(-637f, Struct_1(vec4<f32>(-1529f, 1334f, 718f, 299f), vec2<u32>(0u, 25566u))), Struct_3(-814f, Struct_1(vec4<f32>(1336f, 255f, 449f, -1504f), vec2<u32>(4294967295u, 20419u))), Struct_3(-1499f, Struct_1(vec4<f32>(-408f, 208f, -871f, -743f), vec2<u32>(1u, 0u))), Struct_3(-1513f, Struct_1(vec4<f32>(346f, -2022f, -269f, 751f), vec2<u32>(0u, 0u))), Struct_3(1007f, Struct_1(vec4<f32>(1325f, -482f, 1106f, -793f), vec2<u32>(74335u, 26045u))), Struct_3(838f, Struct_1(vec4<f32>(887f, -125f, 1228f, 175f), vec2<u32>(11052u, 13407u))), Struct_3(-603f, Struct_1(vec4<f32>(145f, 1192f, -703f, -334f), vec2<u32>(0u, 4294967295u))), Struct_3(1498f, Struct_1(vec4<f32>(-1147f, -2399f, 710f, -139f), vec2<u32>(1u, 58519u))), Struct_3(-202f, Struct_1(vec4<f32>(-1000f, 1632f, 546f, -1477f), vec2<u32>(0u, 1u))), Struct_3(1604f, Struct_1(vec4<f32>(-788f, 541f, 407f, 1273f), vec2<u32>(59166u, 7011u))), Struct_3(897f, Struct_1(vec4<f32>(1000f, 391f, 636f, 554f), vec2<u32>(59117u, 80627u))), Struct_3(-1802f, Struct_1(vec4<f32>(231f, 1032f, 235f, -2151f), vec2<u32>(4294967295u, 4294967295u))), Struct_3(309f, Struct_1(vec4<f32>(-184f, -211f, 860f, -431f), vec2<u32>(31807u, 1u))), Struct_3(-678f, Struct_1(vec4<f32>(1000f, 290f, 1364f, -2241f), vec2<u32>(4294967295u, 4294967295u))), Struct_3(371f, Struct_1(vec4<f32>(-474f, -820f, 732f, 151f), vec2<u32>(39585u, 83935u))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = -2147483647i;
    global1 = array<Struct_3, 16>();
    var var_1 = ~var_0;
    var var_2 = Struct_4(0u, ~(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, -1i, u_input.e), vec3<i32>(u_input.c, var_0, u_input.c)) >> ((vec3<u32>(u_input.a.x, 28900u, 8156u) | vec3<u32>(u_input.b, 36556u, u_input.a.x)) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-558f, 1991f, 1092f, -1302f))))) * vec4<f32>(_wgslsmith_f_op_f32(select(-878f, 154f, true)), -1000f, 1664f, _wgslsmith_f_op_f32(floor(-1362f)))), u_input.a), -284f);
    global1 = array<Struct_3, 16>();
    return var_2.c.a;
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), min(select(u_input.d, ~u_input.d, 1118f != arg_0), u_input.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -208f))));
    var var_1 = vec3<bool>(false, !(true && (_wgslsmith_add_i32(-102i, u_input.c) >= _wgslsmith_add_i32(u_input.e, -15579i))), true | any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(var_0.b.a.x)), var_0.c, _wgslsmith_f_op_f32(floor(-366f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.b.a)))))), max(firstLeadingBit(u_input.d), max(vec2<u32>(abs(u_input.a.x), u_input.b), ~(~var_0.b.b))));
    var var_3 = Struct_4(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(73257u, u_input.a.x, var_2.b.x, var_2.b.x), ~vec4<u32>(u_input.d.x, var_2.b.x, 41353u, var_2.b.x)) << (~(~1u) % 32u)), select(min(firstLeadingBit(vec3<i32>(13138i, -2147483647i, u_input.c) >> (vec3<u32>(var_2.b.x, 42062u, u_input.b) % vec3<u32>(32u))), -max(vec3<i32>(u_input.e, -16020i, -2147483647i), vec3<i32>(-40609i, -2147483647i, u_input.c))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.c, 10683i, 55590i) >> (vec3<u32>(4294967295u, 10407u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(~(-1i), u_input.e, u_input.e)), vec3<bool>(!(!var_1.x), var_1.x, any(vec3<bool>(true, true, true)))), var_0.b, _wgslsmith_f_op_f32(333f - var_0.c));
    var var_4 = abs(select(vec4<u32>(abs(4294967295u), var_0.b.b.x & 4294967295u, ~var_2.b.x, ~1u), vec4<u32>(~1u, u_input.d.x, 65171u, _wgslsmith_dot_vec3_u32(vec3<u32>(27514u, 85518u, u_input.b), vec3<u32>(u_input.a.x, 19978u, 4294967295u))), var_1.x) << (vec4<u32>(1u, var_2.b.x, var_3.c.b.x ^ _wgslsmith_dot_vec2_u32(var_0.b.b, vec2<u32>(777u, 4294967295u)), _wgslsmith_mod_u32(select(62676u, u_input.b, var_1.x), _wgslsmith_mod_u32(55637u, u_input.a.x))) % vec4<u32>(32u)));
    return var_1.x;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = abs(~_wgslsmith_div_vec3_i32(arg_2.b, _wgslsmith_clamp_vec3_i32(arg_0.b, vec3<i32>(1i, -2157i, 1i), vec3<i32>(-1i, -1i, -1i))));
    var var_1 = !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)));
    var var_2 = Struct_2(-840f, arg_0.c, -585f);
    let var_3 = vec4<i32>(firstLeadingBit(-arg_2.b.x), max(select(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, 2147483647i, -18484i), arg_0.b.x, abs(20677i)), ~(-1i), arg_1), ~(var_0.x << (~0u % 32u))), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, 0i, arg_2.b.x) >> (vec3<u32>(30604u, 4294967295u, 4294967295u) % vec3<u32>(32u))), arg_0.b), -10044i);
    var var_4 = Struct_4(_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(countOneBits(u_input.b), select(0u, 2951u, arg_1), ~43268u) << (~abs(0u) % 32u)), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(var_3.x, 35402i, u_input.c) << ((vec3<u32>(arg_2.a, u_input.b, var_2.b.b.x) << (vec3<u32>(u_input.a.x, arg_2.a, 22952u) % vec3<u32>(32u))) % vec3<u32>(32u))), firstTrailingBit(arg_0.b) ^ -(vec3<i32>(35178i, var_3.x, var_3.x) ^ var_3.yzy), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(-40575i, var_3.x, arg_2.b.x), arg_2.b.x, _wgslsmith_add_i32(26468i, 1i)))), arg_0.c, _wgslsmith_f_op_f32(ceil(749f)));
    return arg_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = -abs((vec4<i32>(u_input.e, u_input.e, u_input.c, u_input.e) >> (vec4<u32>(u_input.a.x, u_input.d.x, 26379u, u_input.d.x) % vec4<u32>(32u))) | ~(vec4<i32>(u_input.c, -1i, u_input.c, u_input.c) | vec4<i32>(u_input.e, u_input.e, u_input.c, u_input.e)));
    var var_1 = func_1(Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.b.x, abs(u_input.d.x), u_input.b, ~20916u), ~(~vec4<u32>(19478u, 8978u, 64661u, 6061u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.c, u_input.c), _wgslsmith_mod_i32(0i, u_input.c), ~0i), firstTrailingBit(vec3<i32>(u_input.c, -2147483647i, -10333i)) | var_0.zxy, select(var_0.yyw, vec3<i32>(u_input.e, var_0.x, var_0.x), true)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, 1043f, arg_0.b.a.x) - vec4<f32>(arg_0.c, 528f, -152f, arg_0.c)), vec2<u32>(0u, _wgslsmith_clamp_u32(u_input.b, u_input.d.x, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_1(Struct_4(68016u, vec3<i32>(-2147483647i, 2147483647i, u_input.e), arg_0.b, arg_0.b.a.x), false, Struct_4(3851u, var_0.wxy, Struct_1(arg_0.b.a, vec2<u32>(8259u, 4294967295u)), arg_0.a), arg_0.b.a.wxy).a.x, 1569f)) - arg_0.b.a.x)), arg_0.c == _wgslsmith_f_op_f32(-1186f - -1522f), Struct_4(22238u, firstTrailingBit(var_0.zwz), Struct_1(arg_0.b.a, firstTrailingBit(vec2<u32>(0u, 1u)) & ~vec2<u32>(arg_0.b.b.x, u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-1903f * arg_0.a)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.a.x, -1752f, -1533f), vec3<f32>(arg_0.a, -888f, -186f), vec3<bool>(false, true, false)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(sign(arg_0.b.a.x)), arg_0.c)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a.yww);
    let var_3 = countOneBits(-125i);
    var_2 = vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-175f, _wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(arg_0.b.a.x, var_1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -833f))), _wgslsmith_div_f32(-251f, -496f));
    return all(vec4<bool>(any(select(vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_1.x), !arg_1)), true, true, !(!(!arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 16>();
    let var_0 = any(vec2<bool>(func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -431f), func_1(Struct_4(81959u, vec3<i32>(1i, u_input.c, u_input.e), Struct_1(vec4<f32>(354f, 797f, 697f, 1179f), u_input.a), -1266f), false, Struct_4(1u, vec3<i32>(44093i, u_input.e, u_input.c), Struct_1(vec4<f32>(629f, 1000f, 573f, 818f), u_input.a), -310f), vec3<f32>(-1022f, 1741f, -393f)), -1746f), vec2<bool>(u_input.c == -407i, true)), func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -248f), func_1(Struct_4(u_input.b, vec3<i32>(-26286i, 23881i, 0i), Struct_1(vec4<f32>(1053f, -625f, -657f, -1000f), vec2<u32>(u_input.b, u_input.b)), -1192f), false, Struct_4(4294967295u, vec3<i32>(u_input.c, u_input.e, -2147483647i), Struct_1(vec4<f32>(123f, -3235f, -1000f, 318f), u_input.a), -1400f), vec3<f32>(755f, 390f, 541f)), -1962f), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), 4294967295u >= u_input.b))));
    let var_1 = firstLeadingBit(0u);
    global1 = array<Struct_3, 16>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(1000f - -880f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f + -502f) * -1110f)))), func_1(Struct_4(u_input.d.x, select(_wgslsmith_div_vec3_i32(vec3<i32>(11191i, u_input.e, 40499i), vec3<i32>(2147483647i, u_input.c, u_input.c)), max(vec3<i32>(u_input.c, u_input.e, 64741i), vec3<i32>(-2147483647i, u_input.c, 1i)), var_0), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, -1247f, -1501f, 661f)), u_input.d), -1000f), var_0, Struct_4(abs(var_1), ~(-vec3<i32>(u_input.e, u_input.e, u_input.e)), func_1(Struct_4(1u, vec3<i32>(1i, -2147483647i, u_input.c), Struct_1(vec4<f32>(-1000f, -545f, 941f, 224f), vec2<u32>(29210u, 1u)), 502f), 39921u < var_1, Struct_4(1890u, vec3<i32>(-23635i, -2147483647i, u_input.e), Struct_1(vec4<f32>(-612f, -1345f, -733f, -1409f), vec2<u32>(u_input.b, 4294967295u)), 1737f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1062f, 798f, -967f) * vec3<f32>(-189f, 1000f, -1000f))), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-670f, 1171f, -291f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(413f - -1876f) - _wgslsmith_f_op_f32(sign(202f)))))));
    var_2 = Struct_2(var_2.b.a.x, Struct_1(var_2.b.a, _wgslsmith_add_vec2_u32(~var_2.b.b, firstLeadingBit(countOneBits(vec2<u32>(var_1, 1596u))))), -1000f);
    var var_3 = var_2.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c, u_input.e | -45087i) << (var_2.b.b.x % 32u), 58177i), -(-50726i << (abs(firstTrailingBit(50367u)) % 32u)));
}

