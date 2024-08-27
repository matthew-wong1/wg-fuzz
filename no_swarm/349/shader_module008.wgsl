struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<bool>(false, false, true, false), 54917u, -922f, vec4<f32>(-821f, 2189f, -243f, 2030f)), Struct_1(vec4<bool>(false, true, false, true), 1u, -173f, vec4<f32>(143f, -1821f, -596f, 1234f)), Struct_1(vec4<bool>(true, false, true, false), 94138u, -1000f, vec4<f32>(821f, 994f, -757f, 138f)), Struct_1(vec4<bool>(false, false, false, false), 15182u, -2106f, vec4<f32>(1014f, -774f, 1039f, -365f)), Struct_1(vec4<bool>(false, true, false, true), 0u, -526f, vec4<f32>(1413f, -927f, -487f, 293f)), Struct_1(vec4<bool>(true, false, true, true), 0u, -1242f, vec4<f32>(757f, 670f, 1595f, -2718f)), Struct_1(vec4<bool>(true, false, true, true), 1u, -192f, vec4<f32>(2264f, 1266f, 2170f, 1972f)), Struct_1(vec4<bool>(true, true, true, true), 4294967295u, 1387f, vec4<f32>(-1505f, -828f, -851f, -1502f)), Struct_1(vec4<bool>(true, false, false, true), 61410u, 258f, vec4<f32>(1400f, 1431f, -1000f, -389f)), Struct_1(vec4<bool>(false, true, false, false), 11358u, 237f, vec4<f32>(1499f, -1402f, 1000f, 580f)), Struct_1(vec4<bool>(true, true, false, true), 29268u, 823f, vec4<f32>(-1370f, -177f, -182f, 1189f)), Struct_1(vec4<bool>(false, false, false, true), 4294967295u, 1124f, vec4<f32>(361f, 645f, -616f, 508f)), Struct_1(vec4<bool>(false, false, true, true), 13277u, -779f, vec4<f32>(616f, -544f, -1000f, -208f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = 3751u;
    let var_1 = Struct_1(select(global1.a, select(vec4<bool>(true && global1.a.x, any(vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), true, 1u < var_0), select(select(vec4<bool>(true, false, false, true), vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, false, false, true)), global1.a, vec4<bool>(global1.a.x, true, false, true)), !all(vec4<bool>(global1.a.x, true, true, false))), vec4<bool>(any(!vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x)), max(var_0, 4294967295u) < 1u, false, false)), 4294967295u, _wgslsmith_f_op_f32(round(1202f)), _wgslsmith_f_op_vec4_f32(-global1.d));
    let var_2 = var_1;
    global2 = -700f;
    let var_3 = vec4<f32>(-395f, 780f, _wgslsmith_f_op_f32(1269f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1373f)), _wgslsmith_f_op_f32(f32(-1f) * -393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-353f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f * var_2.d.x)))));
    return var_2.b ^ (~24913u & ~var_2.b);
}

fn func_2() -> Struct_1 {
    var var_0 = false | ((min(~global1.b, global1.b) ^ func_3()) != 74749u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.c)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.c)))), 1f));
    global0 = true;
    let var_2 = select(select(global1.a, global1.a, global1.a.x), global1.a, global1.a.x);
    global2 = var_1;
    return global3[_wgslsmith_index_u32(106373u, 13u)];
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-174f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -255f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(274f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c, 504f) - _wgslsmith_f_op_f32(-global1.d.x)), true))));
    global0 = select(global1.a.x, true, select(_wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(147f - global1.c)) == -165f, !(!(false & arg_3.a.x)), arg_3.a.x));
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-677f * global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -1664f)) + _wgslsmith_f_op_f32(f32(-1f) * -1295f)), -426f));
    let var_0 = func_2();
    let var_1 = any(arg_3.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.x + arg_3.d.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> u32 {
    global3 = array<Struct_1, 13>();
    global1 = arg_3;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -104f), -1225f, global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c * -947f)), 918f, _wgslsmith_f_op_f32(-639f * global1.d.x));
    var var_1 = 4294967295u;
    let var_2 = vec3<i32>(-firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -6029i), vec3<i32>(-2147483647i, arg_1, -8893i))) | (2147483647i & ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1, 2147483647i), vec3<i32>(arg_1, arg_1, arg_1))), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -arg_1, _wgslsmith_mult_i32(arg_1, arg_1), arg_1), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(global1.a.x, false, false, global1.a.x)), vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<i32>(arg_1, -12914i, arg_1, arg_1)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1), -vec2<i32>(1i, arg_1)), arg_1, firstTrailingBit(arg_1)), vec3<i32>(arg_1, -2147483647i, _wgslsmith_mult_i32(reverseBits(27989i), arg_1))));
    return ~select(67233u & _wgslsmith_add_u32(4294967295u, arg_3.b), max(4294967295u, select(global1.b, 0u, true)), any(global1.a.yzz)) & firstTrailingBit(30722u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true | global1.a.x;
    let var_0 = ~min(vec4<u32>(func_4(global1.d.wwy, -8886i, _wgslsmith_f_op_f32(func_1(global1.a.x, vec4<u32>(u_input.a.x, 1u, 0u, 55249u), -10431i, global3[_wgslsmith_index_u32(1u, 13u)])), global3[_wgslsmith_index_u32(1u, 13u)]), 1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, 72321u), u_input.a.x), 66547u), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, global1.b, 298u, u_input.a.x), vec4<u32>(global1.b, 1u, u_input.a.x, 1u)), 1u | u_input.a.x, u_input.a.x & global1.b, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, u_input.a.x)) & vec4<u32>(31675u, u_input.a.x, global1.b, global1.b)));
    global1 = Struct_1(func_2().a, ~(~(~abs(0u))), -371f, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) - -128f), _wgslsmith_f_op_f32(global1.c + -700f), global1.d.x, global1.d.x), global1.d)));
    var var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(reverseBits(max(var_0, vec4<u32>(0u, global1.b, 33844u, u_input.a.x))) & ~(var_0 & vec4<u32>(global1.b, 7840u, u_input.a.x, 13109u))), ~vec4<u32>(~global1.b, global1.b, select(61798u, _wgslsmith_add_u32(global1.b, 4294967295u), true), global1.b));
    var var_2 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(8818i, 2147483647i, -38365i, -24186i), select(vec4<i32>(-1i, 8607i, -1i, 2147483647i), vec4<i32>(-36679i, 50812i, 1i, 1i), false)), -vec4<i32>(26217i, 0i, -2147483647i, -28572i), vec4<i32>(1i, 1i, 1i, 1i) << (var_0 % vec4<u32>(32u))) | reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-41767i, 31783i), 20268i, 1i, select(2780i, 18912i, false)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, -1i), vec4<i32>(-1i, 1i, -43561i, 60141i)))));
    let var_3 = true == select(!any(global1.a), global1.a.x, global1.a.x);
    var var_4 = firstTrailingBit(var_2.www);
    let var_5 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 1u), 13u)];
    global3 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.x, ~2147483647i, _wgslsmith_clamp_i32(var_4.x, var_4.x, var_2.x | var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1104f)), _wgslsmith_f_op_f32(f32(-1f) * -2938f), _wgslsmith_f_op_f32(ceil(-144f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(-301f + global1.d.x), var_5.c, _wgslsmith_f_op_f32(-var_5.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.c, var_5.c, 1360f, 521f) - global1.d))));
}

