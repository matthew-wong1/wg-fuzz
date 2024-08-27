struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(2147483647i, vec4<bool>(false, true, false, false)), Struct_1(3348i, vec4<bool>(false, true, true, false)), Struct_1(4003i, vec4<bool>(true, true, false, true)), Struct_1(0i, vec4<bool>(true, true, false, false)), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, true)), Struct_1(i32(-2147483648), vec4<bool>(false, true, true, false)), Struct_1(2147483647i, vec4<bool>(true, false, true, true)), Struct_1(-42i, vec4<bool>(true, false, true, true)), Struct_1(2147483647i, vec4<bool>(false, true, true, false)), Struct_1(i32(-2147483648), vec4<bool>(false, false, true, false)), Struct_1(-1i, vec4<bool>(false, false, false, false)), Struct_1(-28171i, vec4<bool>(true, true, true, false)), Struct_1(2147483647i, vec4<bool>(false, true, false, false)), Struct_1(-2400i, vec4<bool>(false, true, false, false)), Struct_1(0i, vec4<bool>(true, true, true, false)), Struct_1(-15102i, vec4<bool>(false, true, true, true)), Struct_1(-6569i, vec4<bool>(true, false, false, false)));

var<private> global2: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global3: array<vec3<f32>, 31>;

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(select(~u_input.b, u_input.b, true), 17u)];
    var var_1 = _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x))));
    var var_2 = firstTrailingBit(select(~max(~29157i, u_input.a), ~(~u_input.a ^ _wgslsmith_add_i32(-2147483647i, u_input.a)), false));
    global1 = array<Struct_1, 17>();
    var_2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.a, -199i, 12788i) & vec4<i32>(var_0.a, -39075i, -19083i, -1i), firstTrailingBit(vec4<i32>(2147483647i, var_0.a, u_input.a, -12482i))) ^ var_0.a, var_0.a), 1i);
    return vec4<bool>(all(select(!select(arg_2.zz, vec2<bool>(arg_1, arg_1), global2[_wgslsmith_index_u32(arg_0.x, 9u)]), !select(vec2<bool>(false, false), vec2<bool>(arg_2.x, true), vec2<bool>(false, false)), _wgslsmith_f_op_f32(abs(2430f)) <= arg_3.x)), any(select(arg_2, vec3<bool>(false, true, var_0.b.x & arg_2.x), false)), ~_wgslsmith_sub_i32(abs(u_input.a), -2147483647i) < firstTrailingBit(-13482i), true);
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_1, 17>();
    let var_0 = select(!func_3(vec4<u32>(22695u, ~22239u, firstLeadingBit(u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.b)), ~55755u < ~u_input.b, vec3<bool>(false, true, arg_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 679f, 1396f))) + _wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(u_input.b, 31u)])))).xy, select(global2[_wgslsmith_index_u32(~max(131973u, 26008u), 9u)], arg_0.b.xx, select(vec2<bool>(true, arg_0.b.x & arg_0.b.x), select(select(arg_0.b.wx, vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.yw), select(arg_0.b.yz, arg_0.b.xx, arg_0.b.xz), true), !(!vec2<bool>(arg_0.b.x, false)))), vec2<bool>(false, !(countOneBits(2586i) <= ~arg_0.a)));
    var var_1 = _wgslsmith_f_op_f32(-860f * 1479f);
    var var_2 = arg_0.a;
    var var_3 = reverseBits(u_input.b) > ~1u;
    return 1633f;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1441f, -222f) + _wgslsmith_f_op_f32(max(606f, 2056f))), _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(495f, 1521f))))));
    let var_0 = u_input.b;
    global2 = array<vec2<bool>, 9>();
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_4(Struct_1(max(u_input.a >> (var_0 % 32u), _wgslsmith_mult_i32(u_input.a, 34129i)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), func_3(vec4<u32>(u_input.b, u_input.b, 0u, 0u), false, vec3<bool>(true, true, false), global3[_wgslsmith_index_u32(47392u, 31u)])))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-606f, -540f)), _wgslsmith_f_op_f32(-435f - 1205f), 265f, _wgslsmith_f_op_f32(step(761f, -402f)))))));
    return Struct_1(u_input.a & _wgslsmith_mod_i32(-48688i, ~u_input.a), !select(vec4<bool>(func_3(vec4<u32>(u_input.b, 1u, var_0, 0u), true, vec3<bool>(true, false, false), vec3<f32>(var_1.x, 1334f, 690f)).x, false, any(global2[_wgslsmith_index_u32(var_0, 9u)]), false), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, ~abs(min(4294967295u, 44155u))), vec2<u32>(_wgslsmith_mod_u32(arg_1.x ^ abs(56332u), 11893u), 47203u << (u_input.b % 32u)));
    let var_2 = select(func_3(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.b, 72935u, 21243u) << (vec4<u32>(arg_1.x, 1071u, var_1.x, 47228u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_1.x, 9631u, var_1.x, u_input.b), vec4<u32>(1u, 4294967295u, 4294967295u, var_1.x), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, true)), vec4<u32>(u_input.b, 19097u, 67598u, u_input.b))), all(vec3<bool>(arg_2.a == 3067i, -47330i <= u_input.a, arg_2.b.x)), func_3(~select(vec4<u32>(u_input.b, u_input.b, arg_1.x, var_1.x), vec4<u32>(arg_1.x, 74918u, 0u, 4294967295u), vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.b.x)), (arg_0 < -1000f) | true, !arg_2.b.ywy, vec3<f32>(-136f, var_0.x, -610f)).wwz, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1228f, arg_0))))).wz, arg_2.b.zy, any(vec2<bool>(arg_2.b.x, true)));
    global3 = array<vec3<f32>, 31>();
    let var_3 = arg_1;
    return max(_wgslsmith_sub_i32(arg_2.a, _wgslsmith_add_i32(-1i, 17429i)) >> (countOneBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 0u), var_1.x, 1u)) % 32u), 54265i);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(func_5(arg_1.x, abs(vec3<u32>(4294967295u, 14944u, 6870u)) ^ ~vec3<u32>(u_input.b, u_input.b, u_input.b), func_2()), -56993i), max(-2252i, _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, var_0.a)), i32(-1i) * -2147483647i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1412f, _wgslsmith_div_f32(arg_1.x, arg_1.x))))));
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-41698i, u_input.a & 6039i);
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_clamp_i32(-(~func_1(global1[_wgslsmith_index_u32(1u, 17u)], vec3<f32>(-439f, -1208f, 1000f), Struct_1(u_input.a, vec4<bool>(false, false, var_1, false)), 14662i)), var_0.x, _wgslsmith_mod_i32(abs(42383i) ^ func_5(-1027f, vec3<u32>(1u, u_input.b, 61137u), global1[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_mult_i32(u_input.a, firstLeadingBit(u_input.a)))), vec4<bool>(false, var_1, !all(global2[_wgslsmith_index_u32(~u_input.b, 9u)]), var_1));
    var var_3 = -558f;
    global3 = array<vec3<f32>, 31>();
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-843f, 549f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2079f, _wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(-1811f - -1376f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstLeadingBit(-8963i));
}

