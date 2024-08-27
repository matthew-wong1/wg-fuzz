struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec3<f32>(-863f, -248f, -1000f), Struct_3(Struct_2(280f, 670f), Struct_2(-282f, 1524f)), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec4<u32>(0u, 0u, 0u, 7239u)), Struct_4(vec3<f32>(-1418f, 327f, -1259f), Struct_3(Struct_2(1250f, -1443f), Struct_2(-360f, -920f)), vec3<i32>(i32(-2147483648), 12020i, -1i), vec4<u32>(1u, 85452u, 4294967295u, 4294967295u)), Struct_4(vec3<f32>(231f, -438f, 1000f), Struct_3(Struct_2(-666f, -102f), Struct_2(-1121f, -195f)), vec3<i32>(i32(-2147483648), 23616i, -25040i), vec4<u32>(46147u, 1u, 1u, 0u)), Struct_4(vec3<f32>(974f, -999f, 967f), Struct_3(Struct_2(2291f, -779f), Struct_2(-821f, -1475f)), vec3<i32>(i32(-2147483648), 62824i, 1i), vec4<u32>(1u, 0u, 0u, 0u)), Struct_4(vec3<f32>(-956f, 1512f, 599f), Struct_3(Struct_2(-530f, 400f), Struct_2(995f, 1104f)), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<u32>(0u, 1u, 54475u, 34599u)), Struct_4(vec3<f32>(-678f, -241f, 702f), Struct_3(Struct_2(-257f, -243f), Struct_2(1404f, -1000f)), vec3<i32>(i32(-2147483648), i32(-2147483648), 16373i), vec4<u32>(107989u, 0u, 0u, 77882u)), Struct_4(vec3<f32>(-858f, 1183f, -1565f), Struct_3(Struct_2(688f, -107f), Struct_2(619f, 1429f)), vec3<i32>(-59339i, -13660i, 1i), vec4<u32>(40331u, 15959u, 15581u, 25347u)), Struct_4(vec3<f32>(386f, 1000f, -140f), Struct_3(Struct_2(-176f, 799f), Struct_2(-605f, -544f)), vec3<i32>(0i, 1i, 0i), vec4<u32>(14135u, 35666u, 76477u, 31002u)), Struct_4(vec3<f32>(1113f, -338f, 504f), Struct_3(Struct_2(-664f, 604f), Struct_2(-730f, 336f)), vec3<i32>(-1i, 2147483647i, -46085i), vec4<u32>(5124u, 56735u, 25036u, 4294967295u)), Struct_4(vec3<f32>(2087f, 268f, -629f), Struct_3(Struct_2(-1733f, -528f), Struct_2(-134f, 1000f)), vec3<i32>(6455i, 0i, 19141i), vec4<u32>(98584u, 45999u, 109683u, 30909u)), Struct_4(vec3<f32>(-1728f, -924f, 817f), Struct_3(Struct_2(-958f, 437f), Struct_2(-1552f, 1200f)), vec3<i32>(714i, -29392i, i32(-2147483648)), vec4<u32>(88013u, 38985u, 1406u, 34483u)), Struct_4(vec3<f32>(1781f, 954f, 324f), Struct_3(Struct_2(-1306f, 646f), Struct_2(-174f, -1117f)), vec3<i32>(2494i, 0i, -37194i), vec4<u32>(1u, 90775u, 71535u, 29064u)), Struct_4(vec3<f32>(-151f, -1000f, 1053f), Struct_3(Struct_2(176f, 338f), Struct_2(-333f, 841f)), vec3<i32>(33228i, -32794i, 2147483647i), vec4<u32>(44397u, 4294967295u, 57667u, 4367u)), Struct_4(vec3<f32>(-1253f, -241f, 859f), Struct_3(Struct_2(-1000f, 1647f), Struct_2(1763f, 1263f)), vec3<i32>(11132i, 29508i, 15779i), vec4<u32>(29528u, 3211u, 109265u, 49837u)), Struct_4(vec3<f32>(1117f, 1523f, 325f), Struct_3(Struct_2(-1147f, -1837f), Struct_2(959f, 504f)), vec3<i32>(-53344i, 48496i, -14250i), vec4<u32>(0u, 52564u, 21983u, 1u)), Struct_4(vec3<f32>(140f, -679f, -179f), Struct_3(Struct_2(822f, 1000f), Struct_2(-1767f, 2064f)), vec3<i32>(i32(-2147483648), -17173i, -45201i), vec4<u32>(0u, 84709u, 49850u, 15661u)), Struct_4(vec3<f32>(-2213f, -1000f, 331f), Struct_3(Struct_2(-779f, 2180f), Struct_2(1493f, -1171f)), vec3<i32>(18064i, -21029i, 0i), vec4<u32>(96490u, 4294967295u, 4294967295u, 0u)), Struct_4(vec3<f32>(1536f, 163f, -1466f), Struct_3(Struct_2(-1005f, -1222f), Struct_2(1819f, -1463f)), vec3<i32>(-28852i, -31285i, 55474i), vec4<u32>(4294967295u, 43162u, 1u, 4294967295u)), Struct_4(vec3<f32>(-328f, 1594f, 197f), Struct_3(Struct_2(-179f, -228f), Struct_2(-1478f, -1074f)), vec3<i32>(-1i, -1i, -1i), vec4<u32>(12290u, 60451u, 59145u, 1u)), Struct_4(vec3<f32>(1580f, -1394f, 297f), Struct_3(Struct_2(-267f, 323f), Struct_2(-1298f, -617f)), vec3<i32>(0i, -74395i, -35250i), vec4<u32>(89771u, 17860u, 4294967295u, 34504u)), Struct_4(vec3<f32>(1000f, -347f, -1000f), Struct_3(Struct_2(-412f, 1212f), Struct_2(1307f, 1000f)), vec3<i32>(-35149i, 0i, -39312i), vec4<u32>(11522u, 12320u, 1u, 38559u)), Struct_4(vec3<f32>(809f, 893f, -486f), Struct_3(Struct_2(847f, -627f), Struct_2(-865f, -1229f)), vec3<i32>(-41800i, i32(-2147483648), 1i), vec4<u32>(40210u, 4294967295u, 0u, 4294967295u)), Struct_4(vec3<f32>(401f, -1189f, 1625f), Struct_3(Struct_2(120f, -177f), Struct_2(-1569f, -727f)), vec3<i32>(-18523i, i32(-2147483648), i32(-2147483648)), vec4<u32>(41936u, 0u, 1u, 1u)));

var<private> global3: array<Struct_2, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> f32 {
    global2 = array<Struct_4, 23>();
    global0 = array<i32, 14>();
    var var_0 = abs(4294967295u) >= global1.x;
    let var_1 = ~(-vec4<i32>(global4.e.x, _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(13341u, 14u)], i32(-1i) * -2147483647i), _wgslsmith_add_i32(-8233i, _wgslsmith_div_i32(u_input.e, 22814i)), -reverseBits(-2147483647i)));
    let var_2 = 1f;
    return _wgslsmith_f_op_f32(f32(-1f) * -345f);
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global3 = array<Struct_2, 16>();
    global2 = array<Struct_4, 23>();
    var var_0 = arg_0.a;
    let var_1 = 1080f;
    var var_2 = 39049i;
    return arg_0.b.a;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.a);
    return Struct_2(426f, 187f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1098f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) * 1699f), -1732f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, 235f, 253f))), vec3<f32>(1388f, _wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(func_1())))), Struct_3(func_3(global4.d.xx, func_2(Struct_4(vec3<f32>(448f, 1752f, 1762f), Struct_3(global3[_wgslsmith_index_u32(40555u, 16u)], global3[_wgslsmith_index_u32(30091u, 16u)]), u_input.d.xzw, vec4<u32>(u_input.a, 19069u, global4.c, u_input.a))), global0[_wgslsmith_index_u32(max(u_input.a, ~global4.d.x), 14u)]), func_3(~(~global4.d.xy), global3[_wgslsmith_index_u32(countOneBits(1u), 16u)], ~u_input.d.x | 2147483647i)), vec3<i32>(global0[_wgslsmith_index_u32(global1.x, 14u)], -global4.a.x, 3391i), vec4<u32>(~(~(~u_input.a)), _wgslsmith_mod_u32(global1.x, ~u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.x), vec2<u32>(global1.x, 32102u)) % 32u)), reverseBits(~(u_input.a & 0u)), abs(global4.d.x)));
    global2 = array<Struct_4, 23>();
    let var_1 = Struct_5(select(select(select(vec2<bool>(true, global4.b), !vec2<bool>(true, global4.b), any(vec4<bool>(true, global4.b, false, false))), vec2<bool>(global4.b, all(vec3<bool>(global4.b, true, false))), !select(vec2<bool>(global4.b, global4.b), vec2<bool>(true, global4.b), global4.b)), !select(!vec2<bool>(global4.b, global4.b), select(vec2<bool>(true, false), vec2<bool>(global4.b, global4.b), false), select(vec2<bool>(global4.b, false), vec2<bool>(global4.b, global4.b), global4.b)), !select(vec2<bool>(false, false), !vec2<bool>(global4.b, false), !global4.b)));
    global4 = Struct_1(u_input.d.yx, var_1.a.x, u_input.a, vec3<u32>(_wgslsmith_dot_vec2_u32(global4.d.xy, vec2<u32>(~var_0.d.x, global4.c)), ~(~12087u), 1u), u_input.d);
    let var_2 = _wgslsmith_f_op_f32(trunc(var_0.b.b.b));
    let var_3 = global4.e.xx;
    let var_4 = !var_1.a;
    var var_5 = Struct_3(func_3(~vec2<u32>(global4.c, ~var_0.d.x), global3[_wgslsmith_index_u32(1u, 16u)], reverseBits(0i)), global3[_wgslsmith_index_u32(0u, 16u)]);
    let var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec2_i32(~global4.e.xz, vec2<i32>(u_input.c, var_3.x))), ~vec4<u32>(0u, global4.c, ~var_0.d.x, abs(var_0.d.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(var_0.d.zy, var_0.d.wx << (vec2<u32>(global4.d.x, var_0.d.x) % vec2<u32>(32u))), 1u), 14u)], var_0.a.xx);
}

