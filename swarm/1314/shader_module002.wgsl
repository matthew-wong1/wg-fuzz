struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<bool>(false, false, false, false), Struct_1(27398u, vec4<u32>(7770u, 60629u, 49441u, 19115u), vec4<bool>(true, false, true, true)), vec4<f32>(519f, -1000f, 244f, -230f), Struct_1(0u, vec4<u32>(1u, 6098u, 26786u, 4294967295u), vec4<bool>(false, false, false, false)), Struct_1(0u, vec4<u32>(4294967295u, 0u, 26203u, 4294967295u), vec4<bool>(true, true, false, true))), Struct_2(vec4<bool>(true, false, false, true), Struct_1(32861u, vec4<u32>(12500u, 22611u, 3543u, 1u), vec4<bool>(false, false, false, false)), vec4<f32>(1355f, 775f, -1156f, -1061f), Struct_1(22894u, vec4<u32>(1u, 32812u, 88112u, 83459u), vec4<bool>(false, false, true, true)), Struct_1(23953u, vec4<u32>(0u, 126046u, 4294967295u, 0u), vec4<bool>(true, true, true, false))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(1u, vec4<u32>(29971u, 33803u, 82347u, 0u), vec4<bool>(true, false, true, false)), vec4<f32>(-2205f, 252f, -2095f, 416f), Struct_1(1u, vec4<u32>(0u, 42800u, 0u, 1u), vec4<bool>(true, false, false, true)), Struct_1(21410u, vec4<u32>(1u, 1u, 61684u, 0u), vec4<bool>(false, false, true, false))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(48966u, vec4<u32>(1u, 31899u, 4294967295u, 33148u), vec4<bool>(false, true, false, false)), vec4<f32>(278f, -536f, 1000f, -931f), Struct_1(80751u, vec4<u32>(17930u, 1u, 4294967295u, 31467u), vec4<bool>(false, false, false, true)), Struct_1(1u, vec4<u32>(125676u, 4294967295u, 51866u, 61459u), vec4<bool>(true, true, true, true))), Struct_2(vec4<bool>(false, false, false, false), Struct_1(31103u, vec4<u32>(28728u, 0u, 78214u, 4294967295u), vec4<bool>(true, false, true, false)), vec4<f32>(-138f, 625f, 775f, -1972f), Struct_1(1u, vec4<u32>(231u, 43884u, 373u, 0u), vec4<bool>(false, false, false, true)), Struct_1(0u, vec4<u32>(4294967295u, 71644u, 0u, 65509u), vec4<bool>(false, false, false, true))), Struct_2(vec4<bool>(true, true, false, true), Struct_1(4294967295u, vec4<u32>(1u, 1u, 63116u, 0u), vec4<bool>(false, false, true, false)), vec4<f32>(-924f, -520f, 2924f, 1247f), Struct_1(19152u, vec4<u32>(77567u, 65283u, 22565u, 1u), vec4<bool>(true, true, true, true)), Struct_1(1u, vec4<u32>(4294967295u, 89976u, 42252u, 1u), vec4<bool>(true, false, true, true))), Struct_2(vec4<bool>(false, false, true, true), Struct_1(0u, vec4<u32>(6277u, 20746u, 1u, 0u), vec4<bool>(false, true, false, true)), vec4<f32>(-318f, -546f, 1968f, 265f), Struct_1(0u, vec4<u32>(51191u, 21324u, 43558u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_1(60070u, vec4<u32>(4294967295u, 3711u, 25022u, 64343u), vec4<bool>(true, true, false, true))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(4294967295u, vec4<u32>(39951u, 13227u, 0u, 61574u), vec4<bool>(true, true, false, true)), vec4<f32>(1032f, 1000f, -865f, 382f), Struct_1(53427u, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<bool>(true, true, false, false)), Struct_1(47902u, vec4<u32>(140648u, 68564u, 4294967295u, 31373u), vec4<bool>(false, false, false, true))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(4294967295u, vec4<u32>(0u, 12441u, 16858u, 4294967295u), vec4<bool>(true, false, true, false)), vec4<f32>(-1906f, 531f, 544f, -1796f), Struct_1(24892u, vec4<u32>(13195u, 0u, 31606u, 1u), vec4<bool>(false, true, true, false)), Struct_1(1u, vec4<u32>(10287u, 107636u, 1u, 4294967295u), vec4<bool>(false, true, true, true))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(5127u, vec4<u32>(1u, 36182u, 11442u, 1u), vec4<bool>(true, false, true, true)), vec4<f32>(-799f, -940f, 1245f, 967f), Struct_1(0u, vec4<u32>(61242u, 57978u, 33476u, 50719u), vec4<bool>(false, true, true, false)), Struct_1(1u, vec4<u32>(0u, 13826u, 16798u, 1u), vec4<bool>(true, false, true, false))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(4294967295u, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<bool>(true, false, false, true)), vec4<f32>(-151f, -661f, 188f, -1000f), Struct_1(1u, vec4<u32>(13684u, 0u, 4294967295u, 34217u), vec4<bool>(false, false, true, false)), Struct_1(19917u, vec4<u32>(65997u, 0u, 60966u, 4075u), vec4<bool>(true, false, true, true))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(65928u, vec4<u32>(46133u, 0u, 18504u, 1u), vec4<bool>(false, false, true, true)), vec4<f32>(-1000f, -623f, 959f, -297f), Struct_1(0u, vec4<u32>(83090u, 6128u, 35840u, 31494u), vec4<bool>(true, true, true, false)), Struct_1(25471u, vec4<u32>(4294967295u, 0u, 69253u, 84941u), vec4<bool>(false, false, false, true))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(39133u, vec4<u32>(4294967295u, 0u, 13755u, 36042u), vec4<bool>(false, false, false, false)), vec4<f32>(937f, 1000f, 860f, 2193f), Struct_1(1u, vec4<u32>(39654u, 0u, 15942u, 14553u), vec4<bool>(true, true, false, false)), Struct_1(23173u, vec4<u32>(4294967295u, 18411u, 0u, 1u), vec4<bool>(true, true, true, false))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(0u, vec4<u32>(92520u, 100081u, 1u, 5747u), vec4<bool>(false, true, true, false)), vec4<f32>(-594f, 863f, 179f, 992f), Struct_1(19857u, vec4<u32>(27585u, 34371u, 1u, 91489u), vec4<bool>(true, true, false, true)), Struct_1(1u, vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<bool>(true, true, false, false))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(4294967295u, vec4<u32>(4294967295u, 32115u, 4294967295u, 11984u), vec4<bool>(true, true, true, true)), vec4<f32>(633f, -501f, -1881f, 994f), Struct_1(14025u, vec4<u32>(29145u, 28264u, 0u, 33138u), vec4<bool>(true, true, true, false)), Struct_1(0u, vec4<u32>(1u, 3671u, 120490u, 1u), vec4<bool>(false, true, true, true))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(4294967295u, vec4<u32>(1u, 9971u, 0u, 20043u), vec4<bool>(true, true, true, true)), vec4<f32>(-1272f, -529f, 1259f, -439f), Struct_1(4294967295u, vec4<u32>(7791u, 63349u, 7748u, 16390u), vec4<bool>(false, false, false, false)), Struct_1(98122u, vec4<u32>(27790u, 23856u, 51699u, 0u), vec4<bool>(false, true, true, false))));

var<private> global2: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false));

var<private> global3: f32;

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.c & -reverseBits(-4335i);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(var_0), -var_0), u_input.b.yz);
    var var_2 = global1[_wgslsmith_index_u32(abs(reverseBits(u_input.a.x)), 16u)];
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1108f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1257f + 619f)) * var_2.c.x))));
    var var_4 = var_0;
    return -801f;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 4>();
    global1 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-312f)), -156f, -468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(floor(-1264f)))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-319f, -1331f, false)), _wgslsmith_f_op_f32(func_3(Struct_1(22340u, vec4<u32>(45870u, u_input.a.x, 1u, u_input.a.x), global2[_wgslsmith_index_u32(1u, 16u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1459f)) - _wgslsmith_f_op_f32(select(1113f, -253f, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-810f, _wgslsmith_f_op_f32(f32(-1f) * -1497f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-108f)), _wgslsmith_f_op_f32(abs(1000f)), any(vec3<bool>(true, true, false)))) - -827f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(-451f))))))));
    var var_1 = Struct_1(~1u, ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(36561u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 85602u, 4294967295u, 16403u))), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 41012u)), vec3<u32>(48020u, u_input.a.x, u_input.a.x) >> (vec3<u32>(55464u, u_input.a.x, 50172u) % vec3<u32>(32u))), vec3<u32>(u_input.a.x & 65640u, u_input.a.x & u_input.a.x, u_input.a.x)), 16u)]);
    let var_2 = any(!(!(!(!vec4<bool>(var_1.c.x, true, false, true)))));
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    var var_0 = u_input.a;
    global3 = _wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(min(788f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1680f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1069f)))))));
    let var_1 = vec3<bool>(func_2(), !(true || arg_1.b.c.x), arg_1.d.c.x);
    var var_2 = -811f;
    global0 = array<Struct_1, 4>();
    return _wgslsmith_div_i32(countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -1i), abs(u_input.b))), ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 20993i, u_input.c)) == u_input.b.x, func_1(1337f, Struct_2(vec4<bool>(false, false, true, false), Struct_1(0u, vec4<u32>(u_input.a.x, u_input.a.x, 22936u, 36698u), global2[_wgslsmith_index_u32(43659u, 16u)]), vec4<f32>(285f, -108f, -700f, -248f), global0[_wgslsmith_index_u32(18382u, 4u)], Struct_1(u_input.a.x, vec4<u32>(46677u, u_input.a.x, 2301u, u_input.a.x), global2[_wgslsmith_index_u32(4294967295u, 16u)])), global4[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]) == u_input.b.x, func_2() || all(vec2<bool>(false, true)), true), !vec4<bool>(u_input.a.x > u_input.a.x, false, true, func_2()), true), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), reverseBits(vec3<u32>(1u, u_input.a.x, 85447u))), vec4<u32>(~(u_input.a.x ^ 1u), ~5518u, u_input.a.x, u_input.a.x), !(!(!global2[_wgslsmith_index_u32(u_input.a.x, 16u)]))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1003f + 835f), _wgslsmith_div_f32(351f, -727f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-374f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-545f, 544f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) * -646f)), Struct_1(4294967295u >> (u_input.a.x % 32u), reverseBits(~vec4<u32>(37591u, 4294967295u, u_input.a.x, u_input.a.x) | (vec4<u32>(u_input.a.x, u_input.a.x, 19042u, u_input.a.x) & vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), select(vec4<bool>(true, false, true, all(vec3<bool>(false, false, false))), vec4<bool>(true, true, u_input.c < u_input.b.x, any(vec3<bool>(true, true, false))), true)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x | u_input.a.x, ~u_input.a.x, 25816u)), ~(55301u << (_wgslsmith_add_u32(u_input.a.x, 35784u) % 32u))), 4u)]);
    let var_1 = firstTrailingBit(~u_input.a.x);
    let var_2 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u << (var_1 % 32u), 1u, abs(var_1), var_1 >> (4294967295u % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(13920u, 4294967295u, var_1, ~2463u)));
    var var_3 = vec2<u32>(46344u << (~var_0.d.a % 32u), u_input.a.x);
    let var_4 = var_0.d.c.zz;
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_mult_u32(13684u, ~abs(4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_3.x, 6332u, u_input.a.x), vec4<u32>(var_2.x, var_0.d.a, var_3.x, 37148u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~var_2, var_0.e.b << (vec4<u32>(var_1, 4294967295u, var_3.x, var_0.b.b.x) % vec4<u32>(32u))), vec4<u32>(~u_input.a.x, abs(var_3.x), 19561u << (var_0.d.b.x % 32u), var_1)), 16u)]), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-808f, var_0.c.x, var_0.c.x, -598f)), _wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(var_0.c.x, -606f, 644f, 1077f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(var_0.c.x, -253f, -1552f, -1175f)), var_0.c, !var_0.d.c.x)), _wgslsmith_f_op_vec4_f32(-var_0.c))))), global4[_wgslsmith_index_u32(~72672u, 5u)], Struct_1(firstTrailingBit(_wgslsmith_sub_u32(1u, 1u)), var_2, select(select(select(var_0.e.c, var_0.e.c, var_0.e.c), select(vec4<bool>(var_4.x, var_4.x, true, true), vec4<bool>(false, true, var_0.d.c.x, var_4.x), var_0.b.c), select(vec4<bool>(var_4.x, var_0.d.c.x, true, var_0.a.x), var_0.d.c, vec4<bool>(var_4.x, true, var_0.b.c.x, true))), !(!var_0.d.c), var_4.x)));
    let var_5 = ~(-4029i);
    let var_6 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.zyz, var_0.e.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, var_0.c.x, -715f, var_0.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, -1244f, -1875f, var_0.c.x))) + _wgslsmith_div_vec4_f32(var_0.c, var_0.c)), !select(var_6.c, var_0.b.c, false))))), 7748u, countOneBits(reverseBits(vec4<i32>(var_5, -25091i, -87837i, var_5)) ^ vec4<i32>(6582i, u_input.c, u_input.b.x, u_input.c)) >> (var_6.b % vec4<u32>(32u)));
}

