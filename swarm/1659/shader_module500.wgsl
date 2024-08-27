struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: Struct_1;

var<private> global3: array<bool, 12> = array<bool, 12>(false, false, true, true, true, true, false, false, true, true, false, false);

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(Struct_1(vec3<u32>(32676u, 0u, 0u), 29976u, vec2<u32>(4294967295u, 42134u)), vec2<f32>(1000f, -113f), Struct_1(vec3<u32>(4294967295u, 47208u, 43109u), 0u, vec2<u32>(8210u, 20526u)), vec2<u32>(51487u, 3884u), 42707u), Struct_2(Struct_1(vec3<u32>(4294967295u, 42917u, 1u), 68045u, vec2<u32>(17604u, 1u)), vec2<f32>(242f, -543f), Struct_1(vec3<u32>(24800u, 4294967295u, 0u), 1u, vec2<u32>(0u, 47527u)), vec2<u32>(29895u, 1u), 4294967295u), vec3<i32>(-1365i, -1i, 12005i), -797f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 61075u, 4294967295u), 1u, vec2<u32>(19253u, 1u)), vec2<f32>(2514f, -1000f), Struct_1(vec3<u32>(4294967295u, 0u, 45483u), 48514u, vec2<u32>(0u, 25126u)), vec2<u32>(0u, 0u), 4294967295u), Struct_2(Struct_1(vec3<u32>(0u, 20058u, 30328u), 1u, vec2<u32>(116797u, 4294967295u)), vec2<f32>(-1000f, -655f), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 0u, vec2<u32>(0u, 0u)), vec2<u32>(4294967295u, 4294967295u), 1u), vec3<i32>(-9691i, i32(-2147483648), 2147483647i), -1424f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), 0u, vec2<u32>(18184u, 1u)), vec2<f32>(673f, 317f), Struct_1(vec3<u32>(1u, 3626u, 0u), 47171u, vec2<u32>(4294967295u, 51280u)), vec2<u32>(0u, 19041u), 4294967295u), Struct_2(Struct_1(vec3<u32>(54715u, 1u, 19042u), 28096u, vec2<u32>(23101u, 30792u)), vec2<f32>(-344f, 1049f), Struct_1(vec3<u32>(22645u, 48821u, 7910u), 0u, vec2<u32>(3788u, 4294967295u)), vec2<u32>(0u, 1u), 1u), vec3<i32>(6037i, 58783i, 2147483647i), -1703f), Struct_3(Struct_2(Struct_1(vec3<u32>(36553u, 22803u, 1u), 17925u, vec2<u32>(480u, 4294967295u)), vec2<f32>(527f, -230f), Struct_1(vec3<u32>(1u, 1u, 18280u), 61134u, vec2<u32>(36340u, 1u)), vec2<u32>(46007u, 4294967295u), 147826u), Struct_2(Struct_1(vec3<u32>(0u, 1u, 1u), 4294967295u, vec2<u32>(23067u, 4294967295u)), vec2<f32>(-195f, 434f), Struct_1(vec3<u32>(29656u, 34690u, 1u), 1u, vec2<u32>(8986u, 0u)), vec2<u32>(4294967295u, 7099u), 6059u), vec3<i32>(-34377i, -1i, -11274i), -1727f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 70043u), 97819u, vec2<u32>(44266u, 1u)), vec2<f32>(-1453f, -970f), Struct_1(vec3<u32>(1u, 0u, 5116u), 8192u, vec2<u32>(1u, 0u)), vec2<u32>(7468u, 1u), 314u), Struct_2(Struct_1(vec3<u32>(4294967295u, 59551u, 25088u), 41661u, vec2<u32>(0u, 1u)), vec2<f32>(-377f, 1000f), Struct_1(vec3<u32>(3935u, 1u, 120129u), 0u, vec2<u32>(4294967295u, 40351u)), vec2<u32>(106821u, 1597u), 0u), vec3<i32>(-41687i, -1i, 34817i), -1375f), Struct_3(Struct_2(Struct_1(vec3<u32>(34499u, 9049u, 0u), 0u, vec2<u32>(27668u, 1u)), vec2<f32>(182f, 1506f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 71480u), 0u, vec2<u32>(0u, 21871u)), vec2<u32>(0u, 4294967295u), 93014u), Struct_2(Struct_1(vec3<u32>(16578u, 0u, 17207u), 1u, vec2<u32>(15132u, 4294967295u)), vec2<f32>(466f, 158f), Struct_1(vec3<u32>(6010u, 64678u, 30048u), 76878u, vec2<u32>(1u, 1u)), vec2<u32>(69564u, 16712u), 54693u), vec3<i32>(-1i, 8240i, i32(-2147483648)), 775f), Struct_3(Struct_2(Struct_1(vec3<u32>(54141u, 32595u, 11436u), 1u, vec2<u32>(4294967295u, 74817u)), vec2<f32>(2399f, 875f), Struct_1(vec3<u32>(61721u, 34976u, 0u), 8295u, vec2<u32>(0u, 16844u)), vec2<u32>(44534u, 1u), 1u), Struct_2(Struct_1(vec3<u32>(86312u, 4294967295u, 1u), 15241u, vec2<u32>(18150u, 4294967295u)), vec2<f32>(635f, -1144f), Struct_1(vec3<u32>(0u, 41677u, 4294967295u), 64963u, vec2<u32>(4294967295u, 38444u)), vec2<u32>(52949u, 4294967295u), 0u), vec3<i32>(28231i, 1i, 1i), -2733f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 11304u, 12855u), 17781u, vec2<u32>(35678u, 4294967295u)), vec2<f32>(-1000f, -1031f), Struct_1(vec3<u32>(944u, 0u, 126424u), 5579u, vec2<u32>(1u, 21713u)), vec2<u32>(1u, 1u), 4294967295u), Struct_2(Struct_1(vec3<u32>(75292u, 48124u, 1u), 1191u, vec2<u32>(4668u, 1u)), vec2<f32>(-854f, 361f), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 1u, vec2<u32>(49185u, 0u)), vec2<u32>(4294967295u, 4294967295u), 20743u), vec3<i32>(91773i, 2147483647i, 0i), 320f), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u), 0u, vec2<u32>(4294967295u, 4294967295u)), vec2<f32>(-635f, 1000f), Struct_1(vec3<u32>(0u, 1u, 0u), 0u, vec2<u32>(102395u, 52509u)), vec2<u32>(0u, 1u), 0u), Struct_2(Struct_1(vec3<u32>(1u, 0u, 4294967295u), 0u, vec2<u32>(44016u, 1u)), vec2<f32>(-201f, -786f), Struct_1(vec3<u32>(9070u, 57011u, 1u), 0u, vec2<u32>(70286u, 1u)), vec2<u32>(4600u, 46106u), 80436u), vec3<i32>(3652i, 0i, 1i), -147f), Struct_3(Struct_2(Struct_1(vec3<u32>(37899u, 1340u, 63513u), 0u, vec2<u32>(19469u, 1u)), vec2<f32>(-1198f, -1164f), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), 1u, vec2<u32>(263u, 3139u)), vec2<u32>(1u, 0u), 155u), Struct_2(Struct_1(vec3<u32>(1u, 1u, 4294967295u), 1u, vec2<u32>(29404u, 60064u)), vec2<f32>(103f, -1444f), Struct_1(vec3<u32>(0u, 1u, 0u), 1u, vec2<u32>(6305u, 33599u)), vec2<u32>(91717u, 1u), 3405u), vec3<i32>(0i, -20963i, 18202i), -1229f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 95093u, 55498u), 40876u, vec2<u32>(4294967295u, 0u)), vec2<f32>(1572f, -2083f), Struct_1(vec3<u32>(1u, 26698u, 16022u), 48617u, vec2<u32>(69357u, 4294967295u)), vec2<u32>(1u, 40514u), 1u), Struct_2(Struct_1(vec3<u32>(19418u, 1u, 32693u), 91621u, vec2<u32>(86496u, 8301u)), vec2<f32>(1536f, -1873f), Struct_1(vec3<u32>(26366u, 11883u, 36299u), 7331u, vec2<u32>(1u, 10957u)), vec2<u32>(0u, 0u), 1u), vec3<i32>(13957i, -30620i, -30786i), 171f), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 40840u), 65748u, vec2<u32>(70972u, 70412u)), vec2<f32>(266f, -480f), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 53896u, vec2<u32>(63987u, 1u)), vec2<u32>(17847u, 0u), 36312u), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 49852u), 30540u, vec2<u32>(1u, 4240u)), vec2<f32>(373f, 1042f), Struct_1(vec3<u32>(49331u, 0u, 4810u), 1u, vec2<u32>(0u, 1u)), vec2<u32>(1u, 0u), 1u), vec3<i32>(2147483647i, -1i, 32294i), -637f), Struct_3(Struct_2(Struct_1(vec3<u32>(5363u, 18894u, 1u), 4294967295u, vec2<u32>(8926u, 1u)), vec2<f32>(1000f, 816f), Struct_1(vec3<u32>(37843u, 68710u, 0u), 53670u, vec2<u32>(4294967295u, 52019u)), vec2<u32>(1u, 5883u), 0u), Struct_2(Struct_1(vec3<u32>(4294967295u, 40080u, 36938u), 4294967295u, vec2<u32>(4260u, 1u)), vec2<f32>(384f, -2051f), Struct_1(vec3<u32>(0u, 0u, 21590u), 41465u, vec2<u32>(0u, 1u)), vec2<u32>(7937u, 1u), 4294967295u), vec3<i32>(45557i, -5472i, -1i), -236f), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 0u, 1025u), 1u, vec2<u32>(94184u, 1u)), vec2<f32>(623f, -361f), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 61709u, vec2<u32>(68104u, 63584u)), vec2<u32>(4294967295u, 0u), 2917u), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 48010u), 4294967295u, vec2<u32>(1u, 58435u)), vec2<f32>(-1157f, -1634f), Struct_1(vec3<u32>(0u, 75904u, 24242u), 79776u, vec2<u32>(19101u, 1u)), vec2<u32>(4294967295u, 1u), 56792u), vec3<i32>(2147483647i, 19521i, 2147483647i), 339f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = -reverseBits(firstTrailingBit(2147483647i)) << (firstLeadingBit(~1u) % 32u);
    let var_1 = countOneBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, -2147483647i)) >> (~global0.yy % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(vec2<i32>(21229i, 0i), vec2<i32>(1i, -2147483647i))) >> ((_wgslsmith_clamp_u32(global2.b >> (4294967295u % 32u), global0.x, global2.b) | u_input.b.x) % 32u));
    let var_2 = Struct_2(Struct_1(vec3<u32>(reverseBits(~4294967295u), 18834u, _wgslsmith_sub_u32(4294967295u, global2.c.x)), ~32683u, ~global2.a.xx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-520f, 498f, true)), arg_0)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1640f, 309f), _wgslsmith_f_op_f32(sign(arg_0)))))), Struct_1(select(vec3<u32>(global0.x, ~4294967295u, 4294967295u), vec3<u32>(~u_input.a, global2.a.x << (global2.c.x % 32u), ~0u), vec3<bool>(true, true, true)), 31836u << (~(~global0.x) % 32u), u_input.b), ~(~abs(global2.c)), 64899u);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(-arg_0))))));
    global2 = Struct_1(global2.a, 0u, vec2<u32>(1u, abs(firstTrailingBit(var_2.d.x)) >> (4537u % 32u)));
    return 24052u;
}

fn func_2(arg_0: bool, arg_1: u32) -> vec2<u32> {
    var var_0 = Struct_1(vec3<u32>(~arg_1 >> (1u % 32u), 1u, ~(~(~u_input.a))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-706f + 590f) * _wgslsmith_f_op_f32(f32(-1f) * -444f))) | u_input.b.x, global0.zy);
    let var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(~reverseBits(_wgslsmith_mod_u32(6082u, 2185u)), global0.x), _wgslsmith_clamp_u32(~var_0.b, _wgslsmith_add_u32(0u, global2.c.x), u_input.a >> (global0.x % 32u)));
    global3 = array<bool, 12>();
    var_0 = Struct_1(firstLeadingBit(vec3<u32>(~(~global2.c.x), ~select(global0.x, 0u, true), countOneBits(global2.b) & _wgslsmith_div_u32(8432u, var_1))), reverseBits(1u), vec2<u32>(_wgslsmith_mult_u32(7666u, ~(~28973u)), 40803u));
    global1 = vec3<bool>(true, true, true);
    return global0.zy;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = firstLeadingBit(arg_1);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-225f)))), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(965f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-330f)) - _wgslsmith_f_op_f32(286f + arg_2.b.x))) - arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-arg_2.b.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1467f, -1283f, 764f, -306f) - vec4<f32>(arg_0.b.x, arg_0.b.x, 542f, 120f)))))));
    let var_2 = select(vec3<i32>(~(-_wgslsmith_clamp_i32(-56514i, 1i, var_0.x)), _wgslsmith_clamp_i32(var_0.x, -(~2147483647i), _wgslsmith_add_i32(0i, firstTrailingBit(2147483647i))), -1i), arg_1.zxz, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global2.c.x, 0u), arg_2.a.b) ^ ~4294967295u, u_input.a), 12u)]);
    let var_3 = global4[_wgslsmith_index_u32(~0u, 14u)];
    return vec3<bool>(global3[_wgslsmith_index_u32(13025u, 12u)], any(!(!select(vec4<bool>(global1.x, true, false, global3[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec4<bool>(global1.x, false, true, true), global1.x))), true);
}

fn func_1(arg_0: bool, arg_1: f32) -> vec3<bool> {
    global4 = array<Struct_3, 14>();
    var var_0 = 400f;
    let var_1 = true;
    let var_2 = Struct_1(global2.a, _wgslsmith_mult_u32((~u_input.a ^ _wgslsmith_sub_u32(4294967295u, u_input.a)) | 1u, global0.x), select(vec2<u32>(select(1u, _wgslsmith_mult_u32(1u, u_input.b.x), true), 0u), select(vec2<u32>(~31392u, ~global0.x), ~reverseBits(global2.c), var_1), false));
    var var_3 = var_2;
    return func_4(Struct_2(var_2, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1))), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b, global0.x, var_2.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.c.x, var_2.a.x, 25634u), vec3<u32>(23394u, global0.x, 29695u), global2.a), ~var_2.a), 1u, vec2<u32>(_wgslsmith_dot_vec2_u32(var_3.c, vec2<u32>(u_input.b.x, 0u)), ~59728u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.a.x, var_2.b), vec2<u32>(0u, 48413u), func_2(true, 17728u)) >> (vec2<u32>(var_2.a.x, global2.c.x) % vec2<u32>(32u)), select(6484u, ~4294967295u, !var_1) ^ global0.x), reverseBits(firstLeadingBit(max(vec4<i32>(2147483647i, 40071i, 0i, -5348i), vec4<i32>(-1i, -2147483647i, 11489i, -6526i)))), Struct_2(var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1))))), Struct_1(~global2.a, select(1u, 2103u ^ var_3.c.x, false), _wgslsmith_clamp_vec2_u32(~global2.a.yx, ~u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(3330u, u_input.a), global2.c))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(34079u, var_2.c.x), var_2.c), ~global0.yx) | ~_wgslsmith_mod_vec2_u32(global2.a.xy, vec2<u32>(1u, u_input.b.x)), _wgslsmith_dot_vec3_u32(~(~var_3.a), vec3<u32>(0u, _wgslsmith_add_u32(global0.x, 23331u), _wgslsmith_mod_u32(32649u, 43805u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 13558u;
    let var_1 = ~global2.a;
    let var_2 = ~(~(u_input.b & ~(~global0.xz)));
    global1 = !(!select(func_1(global3[_wgslsmith_index_u32(global2.a.x, 12u)] | global3[_wgslsmith_index_u32(3326u, 12u)], _wgslsmith_div_f32(-721f, -367f)), !(!vec3<bool>(global1.x, false, global1.x)), !select(vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(var_2.x, 12u)]), vec3<bool>(false, global1.x, false), vec3<bool>(true, false, global3[_wgslsmith_index_u32(var_0, 12u)]))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2107f + 914f), -813f, -263f, _wgslsmith_f_op_f32(-858f + 1091f))) + vec4<f32>(_wgslsmith_f_op_f32(-518f + -1185f), -207f, _wgslsmith_f_op_f32(411f * _wgslsmith_f_op_f32(-672f + -1463f)), 1482f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -350f, 1217f, -853f))))));
    let var_4 = var_3.yz;
    global2 = Struct_1(global2.a, u_input.a, vec2<u32>(func_2(false, 81323u >> (u_input.b.x % 32u)).x, global2.c.x) | (select(var_1.xz, vec2<u32>(4294967295u, 1u), global3[_wgslsmith_index_u32(global2.b, 12u)]) ^ _wgslsmith_div_vec2_u32(vec2<u32>(var_0, 53701u) << (u_input.b % vec2<u32>(32u)), var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(_wgslsmith_div_i32(-2147483647i, 8743i >> (1u % 32u))), _wgslsmith_mult_i32(1i, -1995i >> (var_2.x % 32u)) << (3557u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(ceil(-1739f))))));
}

