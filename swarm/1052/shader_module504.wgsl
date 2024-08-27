struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 1i);

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(-19772i), Struct_2(1i), Struct_2(0i), Struct_2(41114i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(16156i), Struct_2(0i), Struct_2(-21395i), Struct_2(0i), Struct_2(1i), Struct_2(-1i), Struct_2(17307i), Struct_2(-81107i), Struct_2(17738i), Struct_2(0i), Struct_2(-24602i), Struct_2(i32(-2147483648)), Struct_2(33711i), Struct_2(-32161i), Struct_2(2147483647i), Struct_2(12026i));

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(670i, 36823i, 63695i, 70893i), vec4<i32>(0i, 2747i, 0i, -8901i), vec4<i32>(-12545i, -35662i, 17670i, 0i), vec4<i32>(2147483647i, 38682i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 0i, 0i, -1i), vec4<i32>(-1i, i32(-2147483648), -11287i, -37054i), vec4<i32>(-44711i, 10171i, 23475i, 1i), vec4<i32>(-14218i, -39094i, i32(-2147483648), 0i), vec4<i32>(22691i, 15107i, -45769i, 19119i), vec4<i32>(57290i, 2147483647i, 5039i, i32(-2147483648)), vec4<i32>(-54077i, -34537i, 6569i, -17880i), vec4<i32>(20339i, -18260i, 1i, 128i), vec4<i32>(i32(-2147483648), -1i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i), vec4<i32>(2147483647i, 11736i, i32(-2147483648), -8223i), vec4<i32>(0i, 1i, -18422i, 1i), vec4<i32>(-14247i, 2147483647i, -1i, -10938i), vec4<i32>(-1i, -12632i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 51665i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 7427i, -23325i, -5491i), vec4<i32>(-42453i, 87263i, 30864i, 4090i), vec4<i32>(-23680i, 3025i, 22793i, -1i), vec4<i32>(-1i, 0i, -16238i, 0i), vec4<i32>(2147483647i, 64716i, 25834i, -1i), vec4<i32>(1i, 28666i, 1i, -11089i), vec4<i32>(17127i, 2147483647i, -40921i, 0i), vec4<i32>(0i, 2147483647i, 16656i, 36374i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-1i, -11137i, 0i, 3751i), vec4<i32>(-1i, 2147483647i, -28891i, 32963i), vec4<i32>(1i, 41625i, -30628i, 1i), vec4<i32>(-18731i, -48837i, i32(-2147483648), -8691i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    let var_0 = ~_wgslsmith_sub_u32(15913u, min(4294967295u, 1u) << (_wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_mod_vec3_u32(u_input.d.yxw, u_input.d.wwz)) % 32u));
    let var_1 = ~firstLeadingBit(u_input.d.yy);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-441f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -786f))) - _wgslsmith_f_op_f32(f32(-1f) * -515f)))), -2293f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-391f)))), 904f))), _wgslsmith_f_op_f32(-578f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f + 970f)))));
    var var_3 = var_2.x <= var_2.x;
    let var_4 = Struct_1(arg_0);
    return global2.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    return (!global3.x && any(vec3<bool>(true, !global3.x, false))) | false;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-959f, _wgslsmith_f_op_f32(f32(-1f) * -796f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f * 295f)))));
    let var_1 = global2.a;
    global1 = array<Struct_2, 25>();
    var var_2 = !(true && func_4(~(~vec2<u32>(u_input.d.x, u_input.d.x)), Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-868f, var_0))), -2007f, vec3<i32>(-1i, 25886i, 1i)), Struct_1(func_3(u_input.b, global1[_wgslsmith_index_u32(u_input.d.x, 25u)], vec3<u32>(u_input.e, u_input.d.x, u_input.d.x), u_input.a.x)), Struct_3(vec2<f32>(var_0, 1468f), -358f, ~u_input.a.zzx)));
    var var_3 = reverseBits(u_input.d.x & 19740u);
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), -629f) + vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(891f))))), var_0, -vec3<i32>(global2.a, -firstTrailingBit(-2147483647i), firstLeadingBit(reverseBits(global0.x))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-377f + 1753f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(f32(-1f) * -157f))))), arg_0.b, arg_0.c);
    let var_1 = _wgslsmith_mult_vec4_i32(global4[_wgslsmith_index_u32(0u, 32u)], max(vec4<i32>(arg_2.a, arg_0.c.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(3663i, -2147483647i), -3540i), abs(arg_2.a)), vec4<i32>(abs(-59324i & global0.x), -_wgslsmith_mod_i32(global0.x, -1i), global2.a, 0i)));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_i32(func_2().c.yy, -vec2<i32>(-2147483647i, 3659i) ^ arg_0.c.yz));
    var var_3 = vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-971f, _wgslsmith_div_f32(533f, 943f)) * -303f), !all(vec2<bool>(global3.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-100f, _wgslsmith_f_op_f32(f32(-1f) * -694f)), arg_0.a.x, any(!vec3<bool>(arg_1, true, global3.x)))) + arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1889f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1628f, var_0.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-456f, _wgslsmith_f_op_f32(-arg_0.b)))));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), _wgslsmith_mod_u32(countOneBits(4294967295u), u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.d.x), ~u_input.d.zxx)), ~u_input.d), u_input.e);
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.e, 25u)];
    var var_1 = 12220u;
    let var_2 = !select(select(!select(vec4<bool>(global3.x, false, true, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(false, global3.x, true, false)), select(!vec4<bool>(global3.x, global3.x, global3.x, false), !vec4<bool>(global3.x, global3.x, true, true), false), true), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(global3.x, false, global3.x, global3.x), global3.x), select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, false, false), vec4<bool>(global3.x, false, false, false)), !vec4<bool>(true, global3.x, true, false)), !select(!vec4<bool>(false, true, global3.x, global3.x), !vec4<bool>(global3.x, false, global3.x, global3.x), true));
    var var_3 = func_5(func_2(), select(global3.x, false, true), Struct_2(_wgslsmith_div_i32(~global0.x, func_3(14677i, global1[_wgslsmith_index_u32(u_input.e, 25u)], vec3<u32>(108782u, 4123u, u_input.e), arg_0.a)) << (select(u_input.e, u_input.e, false & var_2.x) % 32u)));
    global1 = array<Struct_2, 25>();
    return ~arg_1.c << (((abs(~u_input.d.wxw) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(44543u, 4294967295u, u_input.d.x), vec3<u32>(4290u, u_input.d.x, 22776u), u_input.d.yyw)) & abs(~(vec3<u32>(u_input.e, u_input.e, u_input.e) >> (u_input.d.xzw % vec3<u32>(32u))))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.wy;
    var var_0 = -616f;
    global4 = array<vec4<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_i32(~global0.x, global2.a) ^ min(u_input.b, global0.x)), u_input.d.zx, countOneBits(func_1(Struct_1(-18310i), Struct_3(vec2<f32>(456f, 678f), 429f, -vec3<i32>(-2147483647i, -1i, global0.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, 1006f))))))));
}

