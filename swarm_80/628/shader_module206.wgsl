struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75982u;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(19385u, 46380u, vec3<f32>(-2636f, 1120f, -777f)), Struct_1(1u, 1u, vec3<f32>(1162f, 157f, 273f)), Struct_1(1u, 0u, vec3<f32>(531f, 1215f, 1305f)), Struct_1(4294967295u, 151799u, vec3<f32>(-956f, 403f, -293f)), Struct_1(29110u, 15397u, vec3<f32>(-1390f, -353f, -1000f)), Struct_1(4294967295u, 9149u, vec3<f32>(-1000f, -1436f, -1960f)), Struct_1(28594u, 68217u, vec3<f32>(771f, 587f, -597f)), Struct_1(1u, 1u, vec3<f32>(-1740f, 434f, 1000f)), Struct_1(31390u, 1u, vec3<f32>(-1000f, -1366f, -1538f)), Struct_1(4294967295u, 22398u, vec3<f32>(712f, -942f, -399f)), Struct_1(9756u, 4294967295u, vec3<f32>(883f, 213f, -653f)), Struct_1(1u, 10404u, vec3<f32>(-551f, 839f, -2097f)));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(18732u, 4294967295u, vec3<f32>(-1095f, 577f, 1000f)), Struct_1(1u, 4294967295u, vec3<f32>(691f, 612f, 566f)), Struct_1(0u, 0u, vec3<f32>(-247f, -940f, 2611f)), Struct_1(4294967295u, 109454u, vec3<f32>(2007f, -112f, 191f)), Struct_1(21690u, 1u, vec3<f32>(644f, 1914f, -1000f)), Struct_1(24028u, 0u, vec3<f32>(682f, 569f, 825f)), Struct_1(1u, 1u, vec3<f32>(2908f, 657f, 223f)), Struct_1(10279u, 46192u, vec3<f32>(-1000f, 1096f, -853f)), Struct_1(4294967295u, 67628u, vec3<f32>(183f, 626f, -696f)), Struct_1(0u, 0u, vec3<f32>(1229f, -1085f, 200f)), Struct_1(0u, 4294967295u, vec3<f32>(324f, -1221f, -337f)), Struct_1(1282u, 78434u, vec3<f32>(141f, 276f, 1824f)), Struct_1(0u, 0u, vec3<f32>(151f, 1371f, 344f)), Struct_1(34313u, 70646u, vec3<f32>(227f, -114f, 1808f)), Struct_1(4294967295u, 83840u, vec3<f32>(1000f, -1000f, -1649f)), Struct_1(4294967295u, 25278u, vec3<f32>(853f, 861f, -857f)), Struct_1(16074u, 43365u, vec3<f32>(369f, -1429f, 325f)), Struct_1(31187u, 0u, vec3<f32>(-1000f, -1684f, -175f)), Struct_1(1u, 30621u, vec3<f32>(133f, 1436f, 748f)), Struct_1(0u, 26517u, vec3<f32>(681f, 510f, -524f)), Struct_1(13093u, 4294967295u, vec3<f32>(1000f, 1008f, 852f)), Struct_1(1u, 1u, vec3<f32>(-651f, -1325f, 1645f)), Struct_1(66368u, 4294967295u, vec3<f32>(281f, -160f, -370f)), Struct_1(4294967295u, 20350u, vec3<f32>(-1199f, 1113f, -1471f)), Struct_1(4294967295u, 12435u, vec3<f32>(1000f, 679f, 732f)), Struct_1(0u, 4294967295u, vec3<f32>(1081f, -954f, -334f)), Struct_1(4294967295u, 33170u, vec3<f32>(316f, -1441f, 222f)), Struct_1(4294967295u, 36947u, vec3<f32>(302f, -664f, 823f)), Struct_1(547u, 4294967295u, vec3<f32>(-509f, -585f, -846f)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> f32 {
    global2 = array<Struct_1, 29>();
    var var_0 = countOneBits(vec3<i32>(-1i << (0u % 32u), ~(-10699i), u_input.b | (countOneBits(arg_0) >> (_wgslsmith_clamp_u32(u_input.a, u_input.a, 88943u) % 32u))));
    let var_1 = ~var_0.x;
    global1 = array<Struct_1, 12>();
    let var_2 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), false, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, false), true), true & any(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1527f, 621f) - _wgslsmith_f_op_f32(f32(-1f) * -680f)), -604f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-612f)), -1119f));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.c.x)))) + _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(func_3(-12098i))), arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) + _wgslsmith_f_op_f32(arg_1.c.x + -1000f)) - _wgslsmith_f_op_f32(trunc(155f)))));
    let var_1 = arg_1.c.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c - vec3<f32>(var_1, 1041f, var_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(406f, 1000f, -515f), var_0.zzw))))), var_0.yxw));
    var var_3 = !(!all(arg_2));
    var var_4 = Struct_1(arg_1.a, ~(~arg_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(arg_1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 196f, -1409f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.c, arg_1.c)))));
    return u_input.b << (_wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u))), firstLeadingBit(countOneBits(max(vec4<u32>(arg_1.a, 0u, arg_1.b, 32329u), vec4<u32>(var_4.b, arg_1.a, 0u, 0u))))) % 32u);
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    global0 = 27115u & arg_0.x;
    let var_0 = min(~1u, 4294967295u);
    var var_1 = Struct_1(0u, 70805u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-222f, 111f, -118f), vec3<f32>(-633f, -161f, -262f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2016f, -733f, -538f) * vec3<f32>(-209f, 1191f, -1000f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(296f, -1878f, 1742f), vec3<f32>(280f, 710f, -222f))), vec3<f32>(-372f, -845f, -1687f)))))));
    let var_2 = -countOneBits(-vec4<i32>(select(u_input.e.x, 45404i, true), -6984i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -1i, -9138i), vec4<i32>(u_input.d, 0i, -3479i, 25536i)), func_2(u_input.e, Struct_1(u_input.c, u_input.a, vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x)), vec2<bool>(true, false))));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(firstLeadingBit(-u_input.d)), min(_wgslsmith_sub_i32(u_input.e.x, abs(-2147483647i)), abs(u_input.b | -33314i)), var_2.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(countOneBits(-38725i), 1i, 2147483647i), ~_wgslsmith_add_i32(56147i, var_2.x))), var_2, vec4<i32>(u_input.b, -2147483647i, 1i, 1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec3<f32> {
    var var_0 = arg_2;
    var var_1 = false;
    var var_2 = arg_2;
    var_2 = global2[_wgslsmith_index_u32(u_input.c, 29u)];
    var var_3 = Struct_1(4294967295u, select(57039u, reverseBits(~1u), true & all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(select(var_2.c, arg_2.c, vec3<bool>(select(true, true, true), true, var_0.c.x >= arg_2.c.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-318f)), -408f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-407f)), _wgslsmith_f_op_f32(880f + 654f)))) * vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c.x))), 1710f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c | _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, 0u), u_input.a), 63468u, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(269f, 271f)) - -470f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-209f)), 1000f), -539f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b, u_input.e.x, -4125i), vec4<i32>(u_input.e.x, 22590i, u_input.d, -5323i))), ~func_1(vec3<u32>(u_input.c, 1u, var_0.a))), -1225f, global1[_wgslsmith_index_u32(~1u, 12u)], _wgslsmith_sub_u32(~4294967295u, var_0.a))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.c, 29u)];
    global2 = array<Struct_1, 29>();
    var var_3 = Struct_1(_wgslsmith_mod_u32(abs(var_2.b), ~(~countOneBits(var_0.b))), _wgslsmith_mod_u32(~min(1u, min(1u, 4294967295u)), ~13057u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_2.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))));
    global2 = array<Struct_1, 29>();
    let var_4 = global1[_wgslsmith_index_u32(16128u, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_4.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x + 698f)), _wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(min(var_1.x, var_4.c.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(trunc(-195f)), var_1.x, -495f)))), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(var_0.a, var_4.a, u_input.a, 0u)), vec4<u32>(_wgslsmith_add_u32(countOneBits(var_3.a), firstLeadingBit(u_input.c)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a, var_4.a, u_input.a), min(vec3<u32>(u_input.a, var_0.a, 44802u), vec3<u32>(4294967295u, 0u, var_2.b))), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, 0u, var_2.a), vec3<u32>(55368u, u_input.c, 66194u) >> (vec3<u32>(u_input.c, 1u, var_3.a) % vec3<u32>(32u))))), u_input.e.yz);
}

