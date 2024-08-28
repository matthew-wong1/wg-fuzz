struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(77123u, 1u, 86890u), vec3<u32>(68797u, 1u, 85407u), vec3<u32>(22696u, 4294967295u, 88579u), vec3<u32>(33245u, 0u, 4294967295u));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(1u, vec2<f32>(-1075f, 1332f), -688f, vec3<f32>(1238f, -1201f, 786f)), vec2<u32>(0u, 43718u), vec4<f32>(1000f, 544f, -1708f, -1121f), vec2<u32>(27783u, 28578u), false), Struct_2(Struct_1(1u, vec2<f32>(960f, -481f), -533f, vec3<f32>(1098f, 595f, 857f)), vec2<u32>(70039u, 0u), vec4<f32>(1204f, -942f, 1269f, 769f), vec2<u32>(0u, 4294967295u), true), Struct_2(Struct_1(89581u, vec2<f32>(-686f, -1000f), 375f, vec3<f32>(932f, 465f, 901f)), vec2<u32>(20581u, 14198u), vec4<f32>(1608f, 126f, -1227f, 305f), vec2<u32>(4294967295u, 1639u), false), Struct_2(Struct_1(0u, vec2<f32>(245f, -1043f), 1067f, vec3<f32>(-315f, -1728f, 244f)), vec2<u32>(20973u, 0u), vec4<f32>(-1208f, -1113f, 1205f, 943f), vec2<u32>(97513u, 4294967295u), false), Struct_2(Struct_1(1753u, vec2<f32>(-1083f, -742f), -2200f, vec3<f32>(291f, -330f, -780f)), vec2<u32>(5405u, 56548u), vec4<f32>(-2060f, 403f, -1000f, -813f), vec2<u32>(0u, 1u), false), Struct_2(Struct_1(0u, vec2<f32>(-1000f, -780f), -559f, vec3<f32>(-209f, -1382f, 1055f)), vec2<u32>(54324u, 13652u), vec4<f32>(798f, 792f, -473f, -544f), vec2<u32>(0u, 1u), false), Struct_2(Struct_1(4294967295u, vec2<f32>(430f, -974f), 1000f, vec3<f32>(1837f, 1000f, 265f)), vec2<u32>(1u, 0u), vec4<f32>(373f, 1500f, 1762f, -190f), vec2<u32>(4294967295u, 0u), false), Struct_2(Struct_1(0u, vec2<f32>(-745f, 781f), -1000f, vec3<f32>(-298f, -389f, 611f)), vec2<u32>(1u, 0u), vec4<f32>(283f, 728f, -140f, -341f), vec2<u32>(1u, 13029u), false), Struct_2(Struct_1(4294967295u, vec2<f32>(879f, 913f), 890f, vec3<f32>(-170f, -1479f, 232f)), vec2<u32>(91184u, 32306u), vec4<f32>(-1000f, 447f, 573f, 186f), vec2<u32>(2163u, 15166u), true), Struct_2(Struct_1(0u, vec2<f32>(-702f, -306f), -1061f, vec3<f32>(-373f, -235f, -1189f)), vec2<u32>(0u, 1u), vec4<f32>(-1102f, 399f, 456f, 817f), vec2<u32>(91362u, 1u), false), Struct_2(Struct_1(4245u, vec2<f32>(427f, 545f), -1316f, vec3<f32>(-194f, -751f, 839f)), vec2<u32>(1u, 0u), vec4<f32>(171f, 103f, 522f, -1000f), vec2<u32>(0u, 24466u), false), Struct_2(Struct_1(21588u, vec2<f32>(1000f, -915f), 400f, vec3<f32>(2185f, 275f, -614f)), vec2<u32>(49245u, 143u), vec4<f32>(-951f, 201f, 477f, -793f), vec2<u32>(31513u, 4294967295u), false), Struct_2(Struct_1(68243u, vec2<f32>(-649f, 427f), 464f, vec3<f32>(1000f, 1646f, -1000f)), vec2<u32>(4294967295u, 0u), vec4<f32>(183f, -712f, -1839f, 748f), vec2<u32>(4294967295u, 1u), false), Struct_2(Struct_1(0u, vec2<f32>(1249f, -1000f), -393f, vec3<f32>(1543f, -1394f, -1000f)), vec2<u32>(2329u, 4294967295u), vec4<f32>(-136f, 130f, 755f, 1000f), vec2<u32>(32220u, 4294967295u), false), Struct_2(Struct_1(24508u, vec2<f32>(-705f, -736f), 1000f, vec3<f32>(501f, 1523f, 1000f)), vec2<u32>(117494u, 38779u), vec4<f32>(143f, 491f, 1054f, 1495f), vec2<u32>(1u, 0u), true), Struct_2(Struct_1(0u, vec2<f32>(-264f, 498f), -1000f, vec3<f32>(-1000f, 1452f, 1315f)), vec2<u32>(93403u, 4294967295u), vec4<f32>(-577f, -1236f, -944f, 520f), vec2<u32>(88777u, 1u), false), Struct_2(Struct_1(4294967295u, vec2<f32>(946f, 552f), 423f, vec3<f32>(-670f, -626f, -534f)), vec2<u32>(13983u, 4294967295u), vec4<f32>(-1964f, 1000f, 1966f, 808f), vec2<u32>(60870u, 0u), false), Struct_2(Struct_1(25379u, vec2<f32>(-452f, -219f), -435f, vec3<f32>(306f, -1000f, 414f)), vec2<u32>(33440u, 4294967295u), vec4<f32>(-1000f, 1076f, -1000f, 501f), vec2<u32>(4294967295u, 42787u), true), Struct_2(Struct_1(0u, vec2<f32>(1444f, 893f), -1090f, vec3<f32>(-316f, 173f, 1097f)), vec2<u32>(0u, 0u), vec4<f32>(651f, 383f, 142f, -1311f), vec2<u32>(31291u, 10466u), false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<i32>) -> vec2<i32> {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(1u, u_input.b.x, u_input.b.x)), 4u)], vec3<u32>(1u, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_u32(0u, u_input.b.x, ~0u), _wgslsmith_add_u32(u_input.b.x, 6354u & u_input.b.x)) << (vec3<u32>(50525u, 1u >> (_wgslsmith_clamp_u32(u_input.b.x >> (16928u % 32u), ~u_input.b.x, max(0u, 78774u)) % 32u), 1u) % vec3<u32>(32u));
    var_0 = ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 26531u, 1u), firstLeadingBit(u_input.b.zyx))));
    var var_1 = 54182u <= ~var_0.x;
    var_0 = global1[_wgslsmith_index_u32(countOneBits(var_0.x), 4u)];
    var var_2 = global2[_wgslsmith_index_u32(var_0.x, 19u)];
    return vec2<i32>(26266i, _wgslsmith_clamp_i32(u_input.a, ~firstLeadingBit(21611i), -2147483647i)) >> (min(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), ~(var_0.yy & vec2<u32>(var_0.x, var_2.b.x))), countOneBits(u_input.b.zx)) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    let var_0 = -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a | -15984i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), ~(vec3<i32>(1i, -3955i, 9576i) >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))), vec3<i32>(-1i, -39972i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -3371i)))));
    var var_1 = vec2<bool>(!all(vec3<bool>(any(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, false, true)), true)), any(vec2<bool>(true, true)));
    var var_2 = func_3(_wgslsmith_add_vec4_i32((vec4<i32>(1i, 1i, var_0.x, 24553i) >> (vec4<u32>(u_input.b.x, 65530u, u_input.b.x, 1u) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u)), abs(vec4<i32>(u_input.a, u_input.a, -26635i, 29427i))) & select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, 53450i, var_0.x), vec4<i32>(u_input.a, u_input.a, -1i, -35612i)) & vec4<i32>(var_0.x, 28450i, -7572i, var_0.x), select(vec4<i32>(u_input.a, -63917i, u_input.a, var_0.x), vec4<i32>(u_input.a, 4534i, var_0.x, var_0.x), any(vec2<bool>(var_1.x, var_1.x))), vec4<bool>(true, true, any(vec3<bool>(var_1.x, true, var_1.x)), true)));
    var var_3 = ~1u <= (~0u ^ u_input.b.x);
    var_2 = firstTrailingBit(((_wgslsmith_sub_vec2_i32(var_0.yz, vec2<i32>(-16709i, -2147483647i)) >> (select(u_input.b.zw, vec2<u32>(12430u, u_input.b.x), vec2<bool>(true, false)) % vec2<u32>(32u))) >> (vec2<u32>(~1u, u_input.b.x) % vec2<u32>(32u))) << (reverseBits(~u_input.b.xz) % vec2<u32>(32u)));
    return global2[_wgslsmith_index_u32(~(u_input.b.x & 1u) ^ 4294967295u, 19u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_2, 31>();
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-33200i, arg_2, 11557i), vec3<i32>(arg_2, arg_3, arg_3)), vec3<i32>(-2147483647i, -2147483647i, 2147483647i))), select(reverseBits(select(vec3<i32>(-125i, arg_2, -1i), vec3<i32>(59331i, arg_3, 1i), vec3<bool>(arg_0.e, arg_1.x, arg_1.x))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, arg_3, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, -27070i, 48616i), vec3<i32>(2147483647i, arg_2, u_input.a)), vec3<i32>(arg_2, arg_3, -2147483647i)), select(vec3<bool>(false, arg_1.x, arg_1.x), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, false, true), vec3<bool>(true, arg_1.x, arg_0.e)), !vec3<bool>(false, false, arg_0.e)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-40419i << (u_input.b.x % 32u), 1i, -2147483647i >> (arg_0.a.a % 32u)), ~(-vec3<i32>(-10383i, 34693i, -14764i))), _wgslsmith_mult_i32(-(~(~(-2147483647i))), arg_3));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(773f)), _wgslsmith_f_op_f32(arg_0.c.x - 208f))), _wgslsmith_f_op_f32(-arg_0.a.c)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-281f))) * _wgslsmith_f_op_f32(min(func_2().a.d.x, arg_0.a.b.x)));
    var var_2 = arg_0.d.x;
    var_2 = u_input.b.x;
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a.a, u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 55252u), arg_0.b)), ~reverseBits(u_input.b.x)), select(vec4<u32>(u_input.b.x, u_input.b.x, 25613u, arg_0.b.x) ^ vec4<u32>(1u, arg_0.d.x, 7808u, arg_0.a.a), ~vec4<u32>(0u, 17048u, 36207u, 42472u), false) << (u_input.b % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - 548f) - arg_0.a.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x - _wgslsmith_f_op_f32(-arg_0.a.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -424f)))), -1000f, vec3<f32>(707f, -2032f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(func_2().c.x, arg_0.a.d.x))))));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global0 = array<Struct_2, 31>();
    let var_0 = select(select(vec3<bool>(any(!vec3<bool>(arg_0.x, false, arg_0.x)), true, true), !(!arg_0), !(!vec3<bool>(arg_0.x, false, true))), !arg_0, arg_0);
    let var_1 = Struct_2(func_4(func_2(), vec2<bool>(true, true), -1i, u_input.a), ~firstTrailingBit(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zz, vec2<u32>(37940u, 4294967295u)), ~vec2<u32>(1u, 1u))), vec4<f32>(1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-981f + -1050f))), _wgslsmith_f_op_f32(f32(-1f) * -791f)), vec2<u32>(u_input.b.x, u_input.b.x), true);
    global1 = array<vec3<u32>, 4>();
    global1 = array<vec3<u32>, 4>();
    return all(select(!select(select(vec4<bool>(true, var_0.x, var_1.e, var_1.e), vec4<bool>(var_1.e, var_0.x, arg_0.x, var_0.x), var_1.e), vec4<bool>(var_0.x, true, true, var_0.x), select(var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, arg_0.x, true, any(vec4<bool>(false, arg_0.x, true, arg_0.x))), vec4<bool>(true, func_2().e, false, var_1.c.x >= 1000f), !(var_1.c.x != var_1.a.b.x)), vec4<bool>(true, all(vec4<bool>(var_1.e, true, true, false)), all(!var_0.yy), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, (all(vec3<bool>(true, true, true)) | func_1(vec3<bool>(true, true, true))) || !(u_input.b.x < ~48463u), all(vec3<bool>(true, true, true)), true);
    global2 = array<Struct_2, 19>();
    global0 = array<Struct_2, 31>();
    var var_1 = true;
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_mod_u32(func_4(Struct_2(Struct_1(u_input.b.x, vec2<f32>(1186f, -639f), 1168f, vec3<f32>(-793f, -806f, -118f)), ~vec2<u32>(u_input.b.x, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(851f, 884f, 1242f, 969f) * vec4<f32>(-2348f, -574f, -1305f, -750f)), u_input.b.zx >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), u_input.b.x > 1u), var_0.yx, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a) & vec2<i32>(u_input.a, u_input.a)), ~u_input.a).a, abs(_wgslsmith_mult_u32(~u_input.b.x, 0u))), -2147483647i, 1i);
}

