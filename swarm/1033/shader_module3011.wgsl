struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(54140u, 84358u, 19220u, 4294967295u), vec4<u32>(0u, 15539u, 1328u, 26391u), vec4<u32>(4294967295u, 80314u, 45608u, 35055u), vec4<u32>(0u, 12740u, 715u, 1u), vec4<u32>(15705u, 4294967295u, 4294967295u, 76958u), vec4<u32>(0u, 59539u, 0u, 4294967295u), vec4<u32>(0u, 7655u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 34278u, 1u), vec4<u32>(4294967295u, 4294967295u, 6610u, 34400u), vec4<u32>(10272u, 44184u, 30857u, 4294967295u), vec4<u32>(1u, 0u, 21311u, 0u), vec4<u32>(30163u, 3477u, 4294967295u, 4294967295u), vec4<u32>(0u, 47223u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 15616u, 39665u), vec4<u32>(62210u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 55222u, 0u, 101862u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 83727u), vec4<u32>(4294967295u, 1u, 16334u, 14493u), vec4<u32>(11454u, 14828u, 1u, 0u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(10597u, 1u, 52126u, 4294967295u), vec4<u32>(54923u, 53628u, 36485u, 37446u), vec4<u32>(1u, 0u, 6840u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 45119u), vec4<u32>(4294967295u, 77149u, 32891u, 1u), vec4<u32>(1u, 4294967295u, 17275u, 104855u), vec4<u32>(0u, 17672u, 1u, 27215u));

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(true, vec2<f32>(-660f, 322f), vec4<i32>(-1i, 0i, 2147483647i, 31910i), Struct_1(-7787i, 14964u, vec3<i32>(-59023i, -1i, 1i)), vec4<i32>(0i, -42209i, -13995i, 0i)), Struct_3(false, vec2<f32>(1089f, -541f), vec4<i32>(2147483647i, 1i, 2147483647i, 38885i), Struct_1(-37335i, 0u, vec3<i32>(-11078i, 2147483647i, -94530i)), vec4<i32>(0i, 0i, -7898i, 2147483647i)), Struct_3(false, vec2<f32>(-153f, -797f), vec4<i32>(24205i, -41833i, 1i, 0i), Struct_1(-23338i, 4294967295u, vec3<i32>(-24368i, 58811i, 38825i)), vec4<i32>(2147483647i, -21685i, 20705i, 50637i)), Struct_3(false, vec2<f32>(1472f, 811f), vec4<i32>(27591i, -47805i, 2147483647i, -36313i), Struct_1(-19990i, 1u, vec3<i32>(2147483647i, 43404i, i32(-2147483648))), vec4<i32>(1i, 0i, 2147483647i, -37551i)), Struct_3(true, vec2<f32>(-831f, 1000f), vec4<i32>(71842i, 38962i, 2147483647i, 1i), Struct_1(1i, 1u, vec3<i32>(-743i, 22257i, 21530i)), vec4<i32>(0i, 13978i, -34913i, 2147483647i)), Struct_3(false, vec2<f32>(-669f, -1386f), vec4<i32>(i32(-2147483648), -29643i, i32(-2147483648), 0i), Struct_1(-18980i, 4294967295u, vec3<i32>(-1i, -72492i, 1i)), vec4<i32>(1065i, 5009i, 0i, 2147483647i)), Struct_3(false, vec2<f32>(1399f, 707f), vec4<i32>(26517i, -1i, 14226i, -23521i), Struct_1(-13787i, 1u, vec3<i32>(-1i, 0i, -63298i)), vec4<i32>(24377i, -3413i, -70i, 75528i)), Struct_3(false, vec2<f32>(473f, -612f), vec4<i32>(-1i, 1i, -3931i, 2147483647i), Struct_1(-1i, 0u, vec3<i32>(-48580i, -27276i, 0i)), vec4<i32>(2147483647i, 1i, i32(-2147483648), 20443i)));

var<private> global2: array<Struct_3, 5>;

var<private> global3: vec3<bool>;

var<private> global4: array<u32, 23> = array<u32, 23>(11319u, 0u, 97267u, 4294967295u, 49701u, 6475u, 92536u, 29109u, 45291u, 4294967295u, 4294967295u, 1u, 4294967295u, 25081u, 51789u, 28116u, 29244u, 1u, 105219u, 13216u, 0u, 46286u, 17390u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = max(~(-5652i), ~firstLeadingBit(_wgslsmith_sub_i32(u_input.b, 41026i))) >> (0u % 32u);
    var_0 = -2147483647i;
    var var_1 = Struct_2(vec4<i32>(i32(-1i) * -u_input.b, -39536i, u_input.d.x, _wgslsmith_mod_i32(~2147483647i, -(~50585i))), 1792f);
    global3 = select(vec3<bool>(global3.x, false, true), !select(!vec3<bool>(false, false, global3.x), vec3<bool>(true, true, true), select(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, true, false), global3.x), !vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, true, false))), !(!(!vec3<bool>(true, global3.x, global3.x))));
    let var_2 = abs(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(u_input.a | vec3<u32>(u_input.a.x, 4294967295u, global4[_wgslsmith_index_u32(u_input.a.x, 23u)]), ~vec3<u32>(global4[_wgslsmith_index_u32(83252u, 23u)], 0u, 4294967295u)), 1u));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-316f - var_1.b), 389f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b + var_1.b))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))))), 192f));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(426f, -1274f)), -257f))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-623f + -1912f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-375f, -1533f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-112f * 715f), _wgslsmith_f_op_f32(step(2165f, 896f))) + 1448f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 335f))));
    var var_1 = reverseBits(~reverseBits(~(30000u << (global4[_wgslsmith_index_u32(66367u, 23u)] % 32u))));
    return global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(countOneBits(4294967295u), 23u)], 23u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = Struct_4(vec4<bool>(!(_wgslsmith_f_op_f32(step(-1446f, arg_1.b)) > arg_2), false, any(select(!vec4<bool>(global3.x, arg_3, false, arg_3), select(vec4<bool>(global3.x, arg_3, false, arg_3), vec4<bool>(false, false, arg_3, global3.x), global3.x), false)), arg_3), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(arg_0.c.x, -13965i)), -vec2<i32>(arg_1.a.x, 7326i)), arg_1.a.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, func_2(arg_1.a)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.b, 35355u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 0u), vec2<u32>(arg_0.b, u_input.a.x))) & ~global4[_wgslsmith_index_u32(countOneBits(4294967295u), 23u)]), 8u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.b.x + -715f), var_0.c.b.x, true)), _wgslsmith_f_op_f32(abs(-1325f))) + vec3<f32>(var_0.c.b.x, var_0.c.b.x, -266f));
    var var_2 = var_0.c.d;
    var var_3 = Struct_1(-51414i, u_input.a.x, -vec3<i32>(countOneBits(0i), (i32(-1i) * -8892i) ^ _wgslsmith_div_i32(26219i, arg_1.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -21290i), vec2<i32>(arg_1.a.x, 2147483647i)) << (~29626u % 32u)));
    let var_4 = global2[_wgslsmith_index_u32(var_2.b, 5u)];
    return ~_wgslsmith_clamp_i32(arg_1.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a, -30963i, var_4.e.x, 0i), var_0.c.e, arg_1.a), _wgslsmith_clamp_vec4_i32(arg_1.a, var_0.c.e, var_4.e)) << (var_3.b % 32u), _wgslsmith_sub_i32(arg_0.a, _wgslsmith_clamp_i32(~var_3.a, 1i, var_2.a | -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(countOneBits(func_1(Struct_1(u_input.c, global4[_wgslsmith_index_u32(83163u, 23u)], vec3<i32>(-23485i, -12398i, u_input.b)), Struct_2(vec4<i32>(u_input.c, -1i, u_input.d.x, u_input.b), -1240f), -485f, !global3.x)), -u_input.d.x << (~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 23u)] >> (59141u % 32u), 23u)] % 32u)) | _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d >> (_wgslsmith_mod_vec2_u32(u_input.a.yx, u_input.a.zz) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.b, 28420i), u_input.d), vec2<i32>(2147483647i, -20944i))), ~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d.x, 24757i)), ~u_input.d));
    let var_1 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2336f, -2287f) + vec2<f32>(1687f, 1000f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, -1079f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1371f, -679f, -872f, 691f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(478f, -409f, 1268f, 751f), vec4<f32>(-1373f, 550f, -1127f, -492f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)), 1123f, -115f, 1000f)), 0u);
}

