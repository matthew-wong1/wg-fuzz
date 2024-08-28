struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global2: Struct_1 = Struct_1(1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(88518u);
    var var_2 = select(vec2<i32>(-1i) * -(~vec2<i32>(37234i, -28232i) << (reverseBits(vec2<u32>(var_1.a, u_input.b.x)) % vec2<u32>(32u))), abs(vec2<i32>(~(~(-41808i)), arg_0 | u_input.a)), all(select(vec3<bool>(arg_1, false, true), !vec3<bool>(arg_2.x, true, arg_2.x), !arg_2.x)) & (!all(vec3<bool>(arg_1, false, arg_1)) & arg_2.x));
    global2 = Struct_1(1u);
    let var_3 = !select(select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), global1[_wgslsmith_index_u32(global2.a | u_input.c.x, 26u)]), vec2<bool>(true, arg_2.x & true), arg_2), vec2<bool>(true, false), !vec2<bool>(any(vec4<bool>(true, arg_2.x, true, true)), true));
    return abs(_wgslsmith_mult_u32(reverseBits(abs(global2.a)), 4294967295u)) >> (~firstLeadingBit(~24646u) % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = -269f;
    let var_1 = Struct_2(!select(vec3<bool>(arg_0.b, arg_0.b, true), !select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, false, true), vec3<bool>(arg_0.b, true, true)), arg_0.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-474f, -982f, 621f, 301f))))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-623f - -594f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1294f, 521f)) - _wgslsmith_f_op_f32(-981f + 1627f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-790f, -128f), _wgslsmith_f_op_f32(max(1272f, -1200f))))))), Struct_1(_wgslsmith_clamp_u32(28105u, ~arg_1, u_input.b.x)), global0[_wgslsmith_index_u32((func_3(arg_0.a, true, global1[_wgslsmith_index_u32(select(1089u, 17506u, arg_0.b), 26u)]) | 5042u) ^ 1u, 18u)]);
    let var_2 = var_1;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(reverseBits(abs(u_input.a)), -2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, arg_2.x, 1093u), _wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(var_2.e.a, u_input.b.x, 1u, global2.a)) & _wgslsmith_add_vec4_u32(arg_2, vec4<u32>(980u, global2.a, 0u, arg_1))) % 32u), 8506i);
    var var_4 = Struct_1(abs(arg_2.x | _wgslsmith_add_u32(0u, ~14884u)));
    return firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a ^ -1i, abs(u_input.a)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-40001i, u_input.a)))), _wgslsmith_add_i32(0i ^ max(u_input.a, u_input.a), _wgslsmith_add_i32(0i, 28508i >> (u_input.b.x % 32u))), min(u_input.a, 1i) & ~u_input.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_3 {
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<bool>, 26>();
    let var_0 = Struct_1(0u);
    global0 = array<Struct_1, 18>();
    global2 = var_0;
    return Struct_3(-max(-56349i, u_input.a), false, Struct_1(3797u), var_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = func_4(u_input.b.zzy, func_2(Struct_3(-37226i, false, global0[_wgslsmith_index_u32(~global2.a, 18u)], global0[_wgslsmith_index_u32(arg_1, 18u)]), abs(select(0u, 4294967295u, false)), vec4<u32>(11754u, 1u, 4294967295u, arg_1)) ^ func_2(Struct_3(~u_input.a, true, global0[_wgslsmith_index_u32(~4294967295u, 18u)], global0[_wgslsmith_index_u32(0u | u_input.c.x, 18u)]), abs(arg_1 ^ u_input.c.x), _wgslsmith_div_vec4_u32(u_input.c, ~vec4<u32>(11960u, u_input.c.x, u_input.c.x, u_input.b.x))), u_input.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(858f, -1000f, -522f, -211f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 540f, 228f, -652f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(481f, 1229f, 1517f, 332f))))))));
    var var_1 = Struct_3(_wgslsmith_div_i32(i32(-1i) * -1i, u_input.a), any(vec4<bool>(false, var_0.b, true & var_0.b, var_0.b)), var_0.d, var_0.d);
    let var_2 = func_4(~abs(countOneBits(u_input.b.zyy) ^ abs(vec3<u32>(107235u, arg_0.x, 4294967295u))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a >> (arg_1 % 32u), var_0.a, _wgslsmith_mult_i32(var_1.a, var_0.a)) | select(_wgslsmith_mod_vec3_i32(vec3<i32>(-71801i, var_0.a, var_0.a), vec3<i32>(var_1.a, -31575i, 1i)), vec3<i32>(-1i, 37071i, 63399i) << (vec3<u32>(arg_1, 74117u, arg_0.x) % vec3<u32>(32u)), !vec3<bool>(var_1.b, var_1.b, var_1.b)), max(vec3<i32>(u_input.a, -1i, _wgslsmith_div_i32(var_1.a, u_input.a)), vec3<i32>(var_1.a, -44875i, _wgslsmith_clamp_i32(0i, -21402i, -28501i)))), var_1.a << (~(~4294967295u) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-806f + -422f))), 1069f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) + -954f)))).d;
    var var_3 = var_0;
    let var_4 = Struct_1(~(~((10972u | arg_1) >> (u_input.b.x % 32u))));
    return Struct_2(select(select(vec3<bool>(any(vec3<bool>(false, var_3.b, false)), true, true), select(!vec3<bool>(false, var_0.b, var_0.b), select(vec3<bool>(var_1.b, true, true), vec3<bool>(false, var_3.b, true), true), !var_3.b), vec3<bool>(true, false, var_3.a >= 1i)), select(select(select(vec3<bool>(true, var_0.b, false), vec3<bool>(true, true, var_3.b), vec3<bool>(var_0.b, var_1.b, var_1.b)), vec3<bool>(true, var_0.b, false), any(vec3<bool>(false, false, var_0.b))), vec3<bool>(false, false, true), !vec3<bool>(true, var_1.b, var_1.b)), !select(select(vec3<bool>(true, var_3.b, var_1.b), vec3<bool>(true, var_0.b, var_1.b), vec3<bool>(true, false, var_0.b)), select(vec3<bool>(var_1.b, var_3.b, var_1.b), vec3<bool>(var_0.b, true, false), vec3<bool>(false, false, true)), any(vec4<bool>(true, var_3.b, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(601f - -1500f), -1000f, _wgslsmith_f_op_f32(-736f - 381f), -279f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-986f, 639f, 1222f, 198f) - vec4<f32>(2049f, 241f, -2045f, -1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(541f, -1361f, 754f, 905f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(372f * 1000f), _wgslsmith_f_op_f32(-566f + -332f), _wgslsmith_f_op_f32(select(-481f, -202f, true))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(578f, -651f, -265f)))))))), func_4(u_input.b.xwx, -(vec3<i32>(var_0.a, -1i, u_input.a) & ~vec3<i32>(-27551i, 1i, 0i)), var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, 891f, -107f, -1079f)) + vec4<f32>(1f, 1f, 1f, 1f))).d, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.c.a, _wgslsmith_mult_u32(firstTrailingBit(~1u), var_2.a)), 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -336f, -259f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(555f, -1000f, 1843f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(655f + -1000f) * _wgslsmith_f_op_f32(floor(1212f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2094f)) * _wgslsmith_f_op_f32(f32(-1f) * -332f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-534f - 410f) + _wgslsmith_f_op_f32(-1623f + 145f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1038f, -876f)) - _wgslsmith_f_op_f32(f32(-1f) * -1408f))), 1f));
    var var_1 = func_1(vec3<u32>(_wgslsmith_div_u32((global2.a >> (u_input.c.x % 32u)) ^ u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1441u), vec2<u32>(0u, 13033u)) >> (1u % 32u)), select(abs(~u_input.c.x), ~(~global2.a), select(2147483647i <= u_input.a, true, any(vec4<bool>(true, false, false, false)))), 16276u), firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, global2.a)));
    global0 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-269f);
}

