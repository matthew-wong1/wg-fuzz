struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<u32>(14178u, 17473u), Struct_1(5908i, 533f, 37159u), Struct_2(Struct_1(-12180i, 381f, 23339u), 151f), 0u, vec4<u32>(0u, 4294967295u, 53534u, 0u)), Struct_3(vec2<u32>(4294967295u, 1u), Struct_1(-1i, 135f, 0u), Struct_2(Struct_1(50265i, 716f, 0u), -324f), 0u, vec4<u32>(47063u, 0u, 6504u, 92454u)), Struct_3(vec2<u32>(4294967295u, 4294967295u), Struct_1(91137i, -1312f, 54363u), Struct_2(Struct_1(-42300i, 287f, 12470u), 118f), 41248u, vec4<u32>(23960u, 4294967295u, 16793u, 23233u)), Struct_3(vec2<u32>(75931u, 2015u), Struct_1(53001i, -1023f, 4294967295u), Struct_2(Struct_1(-6745i, 248f, 50926u), -349f), 32877u, vec4<u32>(0u, 37131u, 71454u, 4294967295u)), Struct_3(vec2<u32>(1901u, 4294967295u), Struct_1(1i, 1000f, 0u), Struct_2(Struct_1(-57355i, 476f, 97017u), 1109f), 80266u, vec4<u32>(0u, 29637u, 4585u, 4294967295u)), Struct_3(vec2<u32>(44554u, 76200u), Struct_1(-3084i, -813f, 27461u), Struct_2(Struct_1(0i, -1209f, 1u), 777f), 53754u, vec4<u32>(39875u, 0u, 1u, 4294967295u)), Struct_3(vec2<u32>(36156u, 1u), Struct_1(2147483647i, -158f, 1u), Struct_2(Struct_1(0i, 928f, 125317u), 813f), 1u, vec4<u32>(31321u, 4294967295u, 0u, 8576u)), Struct_3(vec2<u32>(4294967295u, 37999u), Struct_1(-40712i, -771f, 1u), Struct_2(Struct_1(2147483647i, -133f, 3484u), -1159f), 52848u, vec4<u32>(86721u, 1u, 0u, 9536u)), Struct_3(vec2<u32>(44442u, 45310u), Struct_1(-39502i, 977f, 38811u), Struct_2(Struct_1(0i, -699f, 0u), -513f), 4294967295u, vec4<u32>(0u, 6490u, 13758u, 0u)), Struct_3(vec2<u32>(0u, 4294967295u), Struct_1(21683i, 410f, 4294967295u), Struct_2(Struct_1(i32(-2147483648), 1530f, 4294967295u), -465f), 0u, vec4<u32>(98466u, 59348u, 47147u, 0u)), Struct_3(vec2<u32>(35931u, 53514u), Struct_1(-29639i, -218f, 10332u), Struct_2(Struct_1(-1i, -611f, 0u), -318f), 1u, vec4<u32>(3684u, 6151u, 76955u, 1u)), Struct_3(vec2<u32>(5025u, 50143u), Struct_1(-11700i, -1451f, 1u), Struct_2(Struct_1(-25616i, -557f, 1u), -1198f), 0u, vec4<u32>(0u, 1u, 4294967295u, 0u)), Struct_3(vec2<u32>(22120u, 59123u), Struct_1(2895i, 475f, 33397u), Struct_2(Struct_1(0i, -507f, 0u), -570f), 0u, vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_3(vec2<u32>(15976u, 4294967295u), Struct_1(1i, 1933f, 58403u), Struct_2(Struct_1(68996i, -175f, 36955u), -423f), 0u, vec4<u32>(25136u, 27884u, 81512u, 9229u)), Struct_3(vec2<u32>(4294967295u, 33472u), Struct_1(-47260i, 291f, 39584u), Struct_2(Struct_1(36147i, 843f, 4294967295u), 1493f), 1646u, vec4<u32>(11045u, 11567u, 1u, 33918u)), Struct_3(vec2<u32>(6611u, 29821u), Struct_1(15745i, -200f, 14600u), Struct_2(Struct_1(5097i, -1877f, 21368u), 997f), 23018u, vec4<u32>(32733u, 35202u, 33228u, 75008u)), Struct_3(vec2<u32>(0u, 0u), Struct_1(21410i, 1616f, 17444u), Struct_2(Struct_1(-46441i, -1308f, 74064u), 957f), 4294967295u, vec4<u32>(6758u, 1u, 80298u, 17689u)), Struct_3(vec2<u32>(0u, 1u), Struct_1(-29976i, -739f, 54293u), Struct_2(Struct_1(-13836i, 255f, 78148u), -1119f), 4294967295u, vec4<u32>(26991u, 0u, 4294967295u, 48354u)));

var<private> global1: array<Struct_5, 21>;

var<private> global2: i32;

var<private> global3: vec2<u32> = vec2<u32>(14958u, 7420u);

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = abs(~(abs(~vec4<u32>(778u, global3.x, 0u, 26051u)) ^ vec4<u32>(global3.x, u_input.a.x | 4294967295u, 0u, global3.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1336f - -228f) - 1626f) * _wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f * 1284f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1323f * 1256f) - -441f), 512f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(sign(296f))), 687f), 490f, -730f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(828f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1939f, 117f))), 1315f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(580f, var_1.x))), var_1.x, var_1.x));
    let var_3 = (~(~var_0.wwz) | (var_0.ywz << ((var_0.zyz & ~vec3<u32>(u_input.e, global3.x, global3.x)) % vec3<u32>(32u)))) >> (var_0.wyz % vec3<u32>(32u));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.x, -673f, 1320f) + vec4<f32>(var_2.x, var_1.x, var_1.x, 1666f)))) - vec4<f32>(805f, 800f, var_1.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1109f, 1000f, var_2.x), vec4<f32>(-2247f, var_1.x, -365f, -2425f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(var_2.x + var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)) + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x * 983f))) - var_1.x), _wgslsmith_f_op_f32(var_2.x + 780f)));
    return _wgslsmith_f_op_f32(var_2.x - 1245f);
}

fn func_2() -> Struct_2 {
    var var_0 = 1i;
    let var_1 = global3.x;
    global2 = -(~1i >> (~4294967295u % 32u));
    global4 = vec3<i32>(global4.x, abs(-2263i), global4.x);
    global0 = array<Struct_3, 18>();
    return Struct_2(Struct_1(16820i, 1000f, _wgslsmith_add_u32(global3.x, global3.x)), _wgslsmith_f_op_f32(func_3()));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    var var_0 = -2147483647i;
    var var_1 = false;
    let var_2 = ~global4.yx;
    let var_3 = true;
    let var_4 = func_2();
    return vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), ~33815u, u_input.e), abs(_wgslsmith_add_vec3_u32(vec3<u32>(global3.x, 1u, global3.x), vec3<u32>(u_input.a.x, u_input.a.x, 128809u)))) << (0u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 0u, 17054u), ~vec3<u32>(var_4.a.c, var_4.a.c, arg_0.c)), countOneBits((vec3<u32>(13988u, var_4.a.c, 38279u) >> (vec3<u32>(25447u, u_input.a.x, var_4.a.c) % vec3<u32>(32u))) | (vec3<u32>(global3.x, arg_0.c, 1u) ^ vec3<u32>(u_input.e, global3.x, 139321u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(36043u, u_input.e), u_input.a, select(_wgslsmith_add_vec2_u32(func_1(Struct_1(global4.x, -370f, 1u), -7024i) & u_input.a, u_input.a), min(~vec2<u32>(4294967295u, u_input.a.x), u_input.a), true));
    let var_0 = select(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !all(vec3<bool>(true, false, false))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true)), any(vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -2984f) == _wgslsmith_f_op_f32(step(1000f, 557f)), true)));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(~(~global4.x) >> (~_wgslsmith_mult_u32(95520u, 19937u) % 32u), global4.x ^ (i32(-1i) * -u_input.c.x), _wgslsmith_clamp_i32(firstLeadingBit(global4.x ^ u_input.b.x), -_wgslsmith_mult_i32(global4.x, u_input.b.x), global4.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2325f + 459f)) + _wgslsmith_f_op_f32(f32(-1f) * -201f)))), u_input.a.x);
    let var_2 = ~(vec3<u32>(~(~var_1.c), ~var_1.c << (1u % 32u), 23343u) | _wgslsmith_add_vec3_u32(vec3<u32>(var_1.c, ~27673u, 1u), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 5545u, var_1.c), ~vec3<u32>(global3.x, global3.x, 4294967295u))));
    var var_3 = u_input.b;
    var var_4 = u_input.c.yx;
    var var_5 = -1467f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, var_1.b, -546f, -1633f), vec4<f32>(var_1.b, var_1.b, var_1.b, 692f), vec4<bool>(var_0.x, true, false, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(618f, var_1.b, var_1.b, var_1.b)))))))), (1i ^ ~select(var_3.x, 51365i, false)) << (u_input.a.x % 32u), reverseBits(_wgslsmith_sub_vec2_i32(var_3.xw, vec2<i32>(var_4.x, var_1.a))) & countOneBits(global4.xy), var_2.zy, countOneBits(vec3<u32>(u_input.d, select(37879u, 0u, false), global3.x | 4294967295u)) | ~var_2);
}

