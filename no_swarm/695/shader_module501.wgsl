struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(vec4<f32>(1000f, -426f, 414f, 1193f), -291f), Struct_5(vec4<f32>(667f, 377f, -1124f, 824f), -432f), Struct_5(vec4<f32>(-1065f, 1855f, 504f, 1214f), 1852f), Struct_5(vec4<f32>(-1062f, 791f, 853f, -1000f), -258f), Struct_5(vec4<f32>(-1555f, 352f, -1375f, -1244f), -1017f), Struct_5(vec4<f32>(1337f, -416f, 1101f, 1387f), 106f), Struct_5(vec4<f32>(-234f, -459f, -919f, 1465f), 187f), Struct_5(vec4<f32>(-373f, -280f, 649f, -1864f), -1207f), Struct_5(vec4<f32>(564f, 1617f, 1424f, -1000f), -1000f), Struct_5(vec4<f32>(-1177f, -563f, -751f, -603f), 254f), Struct_5(vec4<f32>(262f, -645f, 1090f, -142f), -413f), Struct_5(vec4<f32>(1112f, 418f, -1020f, -557f), -340f), Struct_5(vec4<f32>(342f, -912f, 148f, -882f), -485f), Struct_5(vec4<f32>(-1382f, 384f, -1249f, 2061f), 290f), Struct_5(vec4<f32>(-1989f, 870f, -1194f, -256f), 411f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = u_input.a;
    var var_1 = !select(select(vec4<bool>(true, all(vec4<bool>(arg_2.x, true, false, arg_0.a.x)), false, arg_0.d.x && arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, true), !any(vec4<bool>(false, true, true, arg_0.d.x))), select(vec4<bool>(arg_2.x & arg_2.x, false, false, true), vec4<bool>(all(vec4<bool>(arg_2.x, true, arg_0.d.x, arg_0.d.x)), arg_0.d.x, true, arg_2.x), !select(vec4<bool>(arg_0.d.x, true, false, true), vec4<bool>(arg_2.x, arg_2.x, true, false), vec4<bool>(true, true, true, false))), !(!(!vec4<bool>(arg_2.x, true, true, true))));
    var_0 = -u_input.a & countOneBits(vec2<i32>(~(~var_0.x), var_0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) + 949f)) - _wgslsmith_f_op_f32(f32(-1f) * -398f)));
    var_1 = vec4<bool>(any(!vec3<bool>(arg_2.x, all(vec4<bool>(true, var_1.x, true, true)), true & arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1225f * arg_0.b), _wgslsmith_f_op_f32(-arg_1.x))))) <= _wgslsmith_f_op_f32(arg_0.b - arg_1.x), true, var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f + 243f) * _wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(Struct_2(any(vec3<bool>(false, true, all(vec3<bool>(true, true, false)))), Struct_1(vec3<bool>(true, all(vec3<bool>(true, false, false)), true), _wgslsmith_f_op_f32(f32(-1f) * -1306f), select(vec3<u32>(2205u, 4294967295u, 1u), ~vec3<u32>(1u, 0u, 0u), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(721f)) + _wgslsmith_f_op_f32(min(1678f, -631f))), 113f, _wgslsmith_f_op_f32(floor(-199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, true), -870f, vec3<u32>(4294967295u, 46791u, 47201u), vec2<bool>(false, false)), vec3<f32>(1229f, 311f, -846f), vec3<bool>(true, true, true))))), vec3<i32>(~firstLeadingBit(-3896i), 17611i, ~countOneBits(u_input.a.x))), Struct_1(vec3<bool>(true && any(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-123f, _wgslsmith_f_op_f32(1000f * -191f))))), vec3<u32>(1u, 1u, 1u), select(vec2<bool>(true, all(vec3<bool>(false, false, true))), vec2<bool>(true, false), true)));
    return _wgslsmith_f_op_f32(floor(var_0.a.b.b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    global0 = 24333i;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(select(100f, arg_1.b, true))), arg_1.b, arg_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-529f)), arg_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2884f, arg_1.b, arg_1.b, -665f) * vec4<f32>(-876f, arg_1.b, 184f, -119f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<f32>(254f, 491f, -622f, 852f), vec4<bool>(false, true, true, arg_1.d.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1398f, -236f, 1000f, 1483f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2440f, 1228f, arg_1.b, arg_1.b))))) - vec4<f32>(_wgslsmith_f_op_f32(func_2()), -2181f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1154f + 1429f))), _wgslsmith_f_op_f32(f32(-1f) * -1106f))), vec4<bool>(arg_1.a.x, _wgslsmith_f_op_f32(trunc(1f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(759f)) * _wgslsmith_f_op_f32(func_2())), any(select(select(arg_1.a.yz, arg_1.d, vec2<bool>(arg_1.d.x, false)), select(arg_1.a.yx, arg_1.d, arg_1.a.x), select(vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.a.zx, vec2<bool>(arg_1.d.x, arg_1.a.x)))), all(!arg_1.a))));
    var var_1 = ~_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(arg_1.c, arg_1.c)), 1u);
    let var_2 = Struct_2(false, Struct_1(arg_1.a, _wgslsmith_f_op_f32(var_0.x + 684f), ~(arg_1.c ^ countOneBits(vec3<u32>(4294967295u, 35743u, arg_1.c.x))), vec2<bool>(firstLeadingBit(arg_1.c.x) <= _wgslsmith_div_u32(0u, 57727u), arg_1.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -510f, -109f, 134f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, 534f, var_0.x, arg_1.b)))))))), vec3<i32>(arg_0, 26439i, u_input.a.x) << (vec3<u32>(arg_1.c.x, abs(85386u), ~(arg_1.c.x >> (31686u % 32u))) % vec3<u32>(32u)));
    let var_3 = (all(vec2<bool>(any(var_2.b.a), arg_1.d.x)) == (-180f >= _wgslsmith_f_op_f32(-var_2.b.b))) | true;
    return select(vec4<bool>(var_2.b.d.x, all(!select(vec2<bool>(false, var_3), var_2.b.a.yz, arg_1.d.x)), ~(-28835i) >= _wgslsmith_dot_vec3_i32(var_2.d, var_2.d), !(~var_2.b.c.x != firstLeadingBit(1u))), vec4<bool>(false, all(arg_1.a.yz), var_3, false), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(any(vec3<bool>(false, true, false)), true, true, false), func_1(1i, Struct_1(vec3<bool>(true, true, true), -253f, ~vec3<u32>(4294967295u, 0u, 1u), vec2<bool>(true, true))), all(func_1(reverseBits(u_input.a.x), Struct_1(vec3<bool>(true, true, false), 1602f, vec3<u32>(36322u, 58847u, 30062u), vec2<bool>(false, false))).yz)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, false, false)))), all(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false)));
    global1 = array<Struct_5, 15>();
    var var_1 = Struct_2(var_0.x, Struct_1(select(vec3<bool>(true, all(vec3<bool>(true, true, false)), true), !select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), func_1(-1i, Struct_1(vec3<bool>(var_0.x, var_0.x, true), -1481f, vec3<u32>(46976u, 34498u, 3048u), vec2<bool>(var_0.x, var_0.x))).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-279f, -939f))))), vec3<u32>(1u, 1u, 1u), !vec2<bool>(var_0.x, !var_0.x)), vec4<f32>(-1160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -689f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(609f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) * 493f))), -_wgslsmith_sub_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.a.x, -5098i, u_input.a.x)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(-13581i, u_input.a.x, u_input.a.x))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-788f - _wgslsmith_f_op_f32(-494f + var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.c.x, var_1.b.b)), _wgslsmith_f_op_f32(max(-569f, 1598f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, -1000f))) + _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x)));
    var var_3 = Struct_2(!var_0.x, var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)), -vec3<i32>((u_input.a.x & u_input.a.x) | u_input.a.x, countOneBits(447i), u_input.a.x));
    var var_4 = Struct_1(!(!var_1.b.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2027f))))), ~_wgslsmith_clamp_vec3_u32(~var_3.b.c, _wgslsmith_mod_vec3_u32(var_3.b.c, vec3<u32>(var_1.b.c.x, var_1.b.c.x, var_1.b.c.x)), _wgslsmith_mult_vec3_u32(var_1.b.c, vec3<u32>(var_3.b.c.x, var_3.b.c.x, var_3.b.c.x))) & min(firstLeadingBit(vec3<u32>(4294967295u, 119255u, 4294967295u)), min(~vec3<u32>(var_1.b.c.x, 4294967295u, var_3.b.c.x), vec3<u32>(var_3.b.c.x, 2179u, var_1.b.c.x))), !(!vec2<bool>(var_1.a, !var_1.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.wz, var_1.b.b, 53448u, ~(~_wgslsmith_div_i32(0i, var_1.d.x)) | max(i32(-1i) * -2147483647i, -22156i));
}

