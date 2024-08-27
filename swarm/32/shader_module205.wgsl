struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 19764u), -52406i, 665f, vec2<i32>(1i, 2147483647i)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(519u, 11966u, 22024u), -15475i, -542f, vec2<i32>(2147483647i, 1i))), Struct_2(Struct_1(vec3<u32>(26444u, 0u, 1u), 2147483647i, -1801f, vec2<i32>(12265i, 1i)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 11407i, 864f, vec2<i32>(16198i, -21725i))), Struct_2(Struct_1(vec3<u32>(24792u, 105035u, 1u), 7274i, -2176f, vec2<i32>(-1i, i32(-2147483648))), vec3<bool>(false, true, false), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 0i, -1000f, vec2<i32>(-33039i, -50323i))), Struct_2(Struct_1(vec3<u32>(37666u, 0u, 1u), 1i, -2672f, vec2<i32>(0i, -1i)), vec3<bool>(true, true, true), Struct_1(vec3<u32>(26141u, 0u, 0u), 14712i, 183f, vec2<i32>(-74078i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 51837u), -1i, -1218f, vec2<i32>(19938i, 0i)), vec3<bool>(true, true, true), Struct_1(vec3<u32>(4294967295u, 1u, 83289u), 17915i, -1878f, vec2<i32>(i32(-2147483648), -4918i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 26716u, 7835u), 29752i, -1490f, vec2<i32>(6131i, 2147483647i)), vec3<bool>(false, false, false), Struct_1(vec3<u32>(11383u, 0u, 57043u), -23118i, 1000f, vec2<i32>(58446i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(0u, 1u, 4294967295u), -29488i, 465f, vec2<i32>(2234i, 447i)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(39412u, 91995u, 0u), 0i, -164f, vec2<i32>(2679i, 0i))), Struct_2(Struct_1(vec3<u32>(1394u, 0u, 9063u), i32(-2147483648), 809f, vec2<i32>(2147483647i, -10245i)), vec3<bool>(true, true, true), Struct_1(vec3<u32>(11460u, 1u, 24795u), 1i, 1243f, vec2<i32>(15390i, -1i))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 3832u), -32436i, 480f, vec2<i32>(2147483647i, -1256i)), vec3<bool>(false, false, false), Struct_1(vec3<u32>(15513u, 8023u, 25082u), -1i, -191f, vec2<i32>(i32(-2147483648), -25718i))), Struct_2(Struct_1(vec3<u32>(69750u, 56458u, 7935u), i32(-2147483648), 1609f, vec2<i32>(-1i, 1i)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(8686u, 51480u, 4294967295u), 10577i, -2809f, vec2<i32>(1i, 46006i))), Struct_2(Struct_1(vec3<u32>(62152u, 0u, 39914u), -1i, -418f, vec2<i32>(1i, 0i)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(325u, 0u, 71913u), -41110i, -482f, vec2<i32>(9275i, 27098i))), Struct_2(Struct_1(vec3<u32>(43265u, 97616u, 4294967295u), 0i, -562f, vec2<i32>(38820i, -47147i)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 34489u, 1u), -12014i, -1000f, vec2<i32>(1256i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(40008u, 44682u, 4294967295u), 1i, -193f, vec2<i32>(-1i, 24667i)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(4294967295u, 39954u, 0u), 1i, 435f, vec2<i32>(1i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(0u, 1317u, 4294967295u), -22057i, 554f, vec2<i32>(0i, -9460i)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(1u, 0u, 91460u), -2369i, 1372f, vec2<i32>(1i, 71459i))), Struct_2(Struct_1(vec3<u32>(60339u, 4294967295u, 1u), 0i, -776f, vec2<i32>(1i, -1i)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(41065u, 23167u, 9680u), i32(-2147483648), -943f, vec2<i32>(2147483647i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 7835u, 37993u), -50324i, 1826f, vec2<i32>(-1i, -11612i)), vec3<bool>(true, true, false), Struct_1(vec3<u32>(1u, 9511u, 49774u), 17390i, -475f, vec2<i32>(26965i, -14583i))), Struct_2(Struct_1(vec3<u32>(35761u, 0u, 0u), 2147483647i, 616f, vec2<i32>(2147483647i, 0i)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(44555u, 0u, 1u), 63510i, 960f, vec2<i32>(28442i, 17526i))), Struct_2(Struct_1(vec3<u32>(13995u, 4294967295u, 4294967295u), -55957i, 1080f, vec2<i32>(i32(-2147483648), 0i)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(29870u, 1u, 63255u), 2147483647i, 789f, vec2<i32>(-1i, 1i))), Struct_2(Struct_1(vec3<u32>(22692u, 0u, 4294967295u), 8297i, 1051f, vec2<i32>(0i, -1534i)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 33564u, 70697u), -30329i, 516f, vec2<i32>(25035i, 1i))), Struct_2(Struct_1(vec3<u32>(0u, 0u, 0u), -1i, -1191f, vec2<i32>(13196i, 21926i)), vec3<bool>(false, true, true), Struct_1(vec3<u32>(25800u, 0u, 4294967295u), -67953i, -1214f, vec2<i32>(10873i, 0i))), Struct_2(Struct_1(vec3<u32>(1u, 1u, 4294967295u), -16411i, -498f, vec2<i32>(-14170i, 4708i)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(50808u, 930u, 4659u), 14353i, 1570f, vec2<i32>(-8815i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(0u, 20360u, 4294967295u), 1i, 2117f, vec2<i32>(i32(-2147483648), 1i)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(1u, 50083u, 1u), 0i, 284f, vec2<i32>(2147483647i, -24026i))), Struct_2(Struct_1(vec3<u32>(1u, 532u, 31545u), 58269i, 574f, vec2<i32>(-11294i, -1i)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 0i, -208f, vec2<i32>(-1i, -1i))), Struct_2(Struct_1(vec3<u32>(0u, 0u, 34423u), -90732i, -1000f, vec2<i32>(2147483647i, i32(-2147483648))), vec3<bool>(false, false, false), Struct_1(vec3<u32>(12924u, 13933u, 4294967295u), -278i, -1053f, vec2<i32>(2147483647i, 21812i))), Struct_2(Struct_1(vec3<u32>(55240u, 62248u, 11544u), i32(-2147483648), -258f, vec2<i32>(-3792i, 43474i)), vec3<bool>(true, true, false), Struct_1(vec3<u32>(4294967295u, 54826u, 97443u), 0i, -1000f, vec2<i32>(-36959i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 39348u), -22073i, 295f, vec2<i32>(0i, 1i)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(38987u, 39129u, 3750u), -39911i, -100f, vec2<i32>(2147483647i, -36413i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), i32(-2147483648), 740f, vec2<i32>(i32(-2147483648), 96615i)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(1u, 1u, 25881u), -1i, 1360f, vec2<i32>(8147i, 1i))), Struct_2(Struct_1(vec3<u32>(35794u, 1u, 53232u), -18034i, -217f, vec2<i32>(2147483647i, -26318i)), vec3<bool>(false, false, true), Struct_1(vec3<u32>(13445u, 1u, 1u), 1i, -771f, vec2<i32>(0i, 1i))));

var<private> global1: vec3<u32>;

var<private> global2: u32;

var<private> global3: Struct_4 = Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u), -20233i, -168f, vec2<i32>(0i, 0i)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 60956u, 46332u), 17950i, 990f, vec2<i32>(-80106i, 3646i))), true);

var<private> global4: u32 = 35363u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_5) -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~select(_wgslsmith_dot_vec2_u32(arg_2.c.a.xx, global3.a.a.a.xx), arg_3.c.a.a.a.x & arg_2.c.a.x, all(arg_3.c.a.b.yz)), _wgslsmith_dot_vec3_u32(vec3<u32>(54154u, select(4294967295u, 8710u, arg_2.b.x), ~global3.a.a.a.x), vec3<u32>(global3.a.c.a.x >> (25372u % 32u), arg_1.a.x, 4294967295u)), ~max(global1.x, u_input.a.x)), ~abs(min(~u_input.a.zxz, arg_3.b.a.a)));
    return vec4<bool>(any(!(!select(vec2<bool>(arg_2.b.x, global3.a.b.x), global3.a.b.yz, true))), arg_3.c.a.b.x, true, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> bool {
    global4 = abs(~(~_wgslsmith_sub_u32(15172u, global3.a.a.a.x << (0u % 32u))));
    let var_0 = global3.a.c;
    let var_1 = min(abs(~(-vec4<i32>(-1i, 0i, var_0.b, 0i))), ~(-u_input.e)) ^ -u_input.e;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c, -225f)), _wgslsmith_f_op_f32(-627f - var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -730f))), vec3<f32>(global3.a.a.c, var_0.c, var_0.c), vec3<bool>(_wgslsmith_f_op_f32(var_0.c + -1342f) < -1502f, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.c.c, -979f)), Struct_1(vec3<u32>(global3.a.a.a.x, 1u, 0u), 4661i, -1000f, var_1.wy), global3.a, Struct_5(-1000f, global3.a, Struct_3(global3.a, global3.a.b), 2147483647i, 1u)).x, false)))));
    global4 = var_0.a.x;
    return false;
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(0u, 28u)], (arg_0.a.a.a.x >> (~(~arg_0.a.a.a.x) % 32u)) <= u_input.a.x);
    var var_1 = func_4(!select(func_3(vec2<f32>(2124f, global3.a.c.c), global3.a.a, Struct_2(Struct_1(u_input.a.xxy, -26253i, -1225f, global3.a.a.d), vec3<bool>(false, false, false), var_0.a.c), Struct_5(-1404f, Struct_2(Struct_1(vec3<u32>(66456u, arg_0.a.c.a.x, global3.a.a.a.x), global3.a.c.d.x, arg_0.a.a.c, arg_0.a.c.d), vec3<bool>(true, true, var_0.a.b.x), Struct_1(var_0.a.c.a, global3.a.c.b, var_0.a.a.c, var_0.a.c.d)), Struct_3(Struct_2(Struct_1(u_input.a.www, 23634i, arg_0.a.a.c, var_0.a.c.d), arg_0.a.b, Struct_1(global3.a.c.a, global3.a.c.b, -223f, u_input.e.zy)), vec3<bool>(arg_0.b.x, true, false)), -49359i, arg_0.a.a.a.x)), vec4<bool>(true, false, true, all(vec2<bool>(true, global3.a.b.x))), select(!vec4<bool>(arg_0.a.b.x, false, var_0.a.b.x, false), !vec4<bool>(arg_0.a.b.x, false, true, var_0.a.b.x), all(arg_0.b))), vec2<u32>(44733u, firstTrailingBit(max(12866u, 5217u)) | 14202u));
    var var_2 = var_0.a.c.a.xy;
    return vec2<bool>(true, true);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = -u_input.e;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c.c))), Struct_2(global3.a.c, !(!(!global3.a.b)), arg_1), Struct_3(Struct_2(Struct_1(select(global3.a.a.a, vec3<u32>(0u, 1u, global3.a.a.a.x), global3.b), 2147483647i, _wgslsmith_f_op_f32(global3.a.a.c + arg_1.c), max(vec2<i32>(2147483647i, 11957i), vec2<i32>(global3.a.a.d.x, u_input.d))), !global3.a.b, arg_1), vec3<bool>(all(func_3(vec2<f32>(1001f, 1028f), arg_1, Struct_2(arg_1, vec3<bool>(global3.b, false, true), arg_1), Struct_5(262f, Struct_2(arg_1, vec3<bool>(global3.a.b.x, global3.a.b.x, global3.b), arg_1), Struct_3(Struct_2(Struct_1(vec3<u32>(17375u, 4294967295u, 1u), -37226i, global3.a.a.c, var_0.yx), vec3<bool>(arg_0.x, false, arg_0.x), arg_1), global3.a.b), -7263i, 33629u)).zxz), !global3.a.b.x, arg_0.x)), _wgslsmith_add_i32(-1i, arg_1.b << (abs(~0u) % 32u)), _wgslsmith_add_u32(1u, reverseBits(firstLeadingBit(countOneBits(0u)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -628f), 1143f, _wgslsmith_f_op_f32(min(-448f, _wgslsmith_f_op_f32(trunc(global3.a.c.c)))));
    let var_3 = vec2<i32>(-global3.a.c.b ^ (i32(-1i) * -(global3.a.c.b << (4294967295u % 32u))), firstTrailingBit(global3.a.a.d.x));
    var var_4 = select(vec3<bool>(!global3.a.b.x, var_1.b.b.x, false), var_1.c.a.b, global3.a.b);
    return var_4.x;
}

fn func_1(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = func_5(func_2(Struct_3(global0[_wgslsmith_index_u32(global1.x, 28u)], !select(global3.a.b, vec3<bool>(global3.a.b.x, true, arg_0.b), true))), global3.a.c);
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(~global1.x, global3.a.c.a.x, 0u), ~min(arg_0.a.c.a, ~global3.a.c.a)), reverseBits(arg_0.a.a.b) ^ (-max(u_input.e.x, u_input.b) & ~1i), arg_0.a.a.c, -arg_0.a.a.d);
    let var_2 = !arg_0.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))), arg_0.a.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1328f) + _wgslsmith_f_op_f32(322f - var_1.c))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1734f, _wgslsmith_f_op_f32(-global3.a.c.c), var_1.c, _wgslsmith_f_op_f32(round(-451f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 1000f, arg_0.a.c.c, 271f) + vec4<f32>(-482f, var_1.c, var_1.c, var_1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.c, global3.a.a.c, -157f, var_1.c))))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(120f, 1122f, -780f, arg_0.a.c.c)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.c, global3.a.c.c, -1096f, var_1.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1008f, var_1.c, var_1.c, global3.a.c.c) * vec4<f32>(-583f, 667f, -492f, 1726f))))));
    let var_4 = 2264f;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.xxy * var_3.yyz) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0.a.c.c, 1040f), vec3<f32>(-1639f, var_3.x, 139f))), var_3.zyy, global3.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(1u);
    let x = u_input.a;
    s_output = func_1(Struct_4(global3.a, global3.a.b.x));
}

