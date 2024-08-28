struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-248f, vec3<f32>(-714f, 408f, -103f)), Struct_1(939f, vec3<f32>(-2247f, 1094f, 1024f)), Struct_1(587f, vec3<f32>(-1000f, 1095f, -1154f)), Struct_1(479f, vec3<f32>(-1003f, 162f, -1173f)), Struct_1(-592f, vec3<f32>(258f, -1467f, -132f)), Struct_1(-1000f, vec3<f32>(829f, -473f, -141f)), Struct_1(-203f, vec3<f32>(-970f, 693f, -1381f)), Struct_1(753f, vec3<f32>(1412f, -521f, 1760f)), Struct_1(-107f, vec3<f32>(831f, -1000f, -1347f)));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(444f, vec3<f32>(-551f, 2948f, -630f)), Struct_1(969f, vec3<f32>(625f, 718f, 988f)), Struct_1(-1065f, vec3<f32>(-1244f, 905f, 932f)), Struct_1(-408f, vec3<f32>(766f, 136f, -179f)), Struct_1(-1189f, vec3<f32>(-450f, -1021f, -384f)), Struct_1(428f, vec3<f32>(-1440f, 338f, -1000f)), Struct_1(1337f, vec3<f32>(-1662f, 137f, -702f)), Struct_1(2053f, vec3<f32>(-470f, 1416f, 1859f)), Struct_1(2166f, vec3<f32>(2366f, -2972f, -785f)), Struct_1(-1932f, vec3<f32>(-1000f, 604f, -321f)), Struct_1(944f, vec3<f32>(-113f, -493f, 2707f)), Struct_1(-475f, vec3<f32>(-1005f, 614f, 247f)), Struct_1(1000f, vec3<f32>(677f, 363f, -1622f)), Struct_1(-1136f, vec3<f32>(-1359f, -766f, -1976f)), Struct_1(238f, vec3<f32>(-832f, 1484f, 1694f)), Struct_1(-178f, vec3<f32>(1484f, 1618f, -787f)), Struct_1(-1805f, vec3<f32>(-1738f, 794f, 1155f)), Struct_1(1000f, vec3<f32>(-1257f, -343f, 1090f)), Struct_1(108f, vec3<f32>(483f, 831f, -473f)), Struct_1(929f, vec3<f32>(585f, 1193f, 888f)), Struct_1(1000f, vec3<f32>(-458f, 929f, 648f)), Struct_1(-495f, vec3<f32>(-607f, 329f, -378f)), Struct_1(1284f, vec3<f32>(-1075f, -1000f, 630f)), Struct_1(-319f, vec3<f32>(972f, 1718f, 1142f)), Struct_1(1253f, vec3<f32>(-727f, 396f, 157f)), Struct_1(1504f, vec3<f32>(814f, -352f, 196f)), Struct_1(272f, vec3<f32>(-1099f, 2366f, -1193f)), Struct_1(-1521f, vec3<f32>(240f, 1899f, 1799f)), Struct_1(2274f, vec3<f32>(-760f, 661f, 895f)), Struct_1(-1522f, vec3<f32>(-1101f, 862f, -349f)));

var<private> global2: Struct_1;

var<private> global3: vec3<f32> = vec3<f32>(-588f, -1376f, -276f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = u_input.b.yww;
    let var_1 = ~firstTrailingBit(u_input.d.x);
    let var_2 = -var_0.x;
    var var_3 = select(!select(vec4<bool>(true, 702f == global2.b.x, false, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), true), true), vec4<bool>(!(arg_0.x > _wgslsmith_f_op_f32(sign(global2.b.x))), all(vec3<bool>(true, true, false)) & !(u_input.a != u_input.a), false, u_input.c == (~u_input.a << (max(0u, 35058u) % 32u))));
    global2 = global0[_wgslsmith_index_u32(u_input.e ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a, 1u)), vec2<u32>(60068u, ~u_input.a)), 0u), 9u)];
    return select(var_3.wy, vec2<bool>(true, all(select(!vec4<bool>(var_3.x, var_3.x, true, var_3.x), select(vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(true, true, var_3.x, var_3.x)), select(vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(true, false, var_3.x, var_3.x), vec4<bool>(false, true, var_3.x, true))))), select(select(vec2<bool>(any(vec4<bool>(false, true, var_3.x, var_3.x)), !var_3.x), vec2<bool>(false, var_3.x), true), var_3.wz, all(select(var_3.xx, !var_3.zy, !var_3.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    let var_0 = i32(-1i) * -1i;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * global2.a) - -2663f)), -203f), vec3<f32>(1605f, -314f, _wgslsmith_f_op_f32(arg_0.b.x * 882f)));
    global1 = array<Struct_1, 30>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 30u)];
    let var_3 = !select(vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), true);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1121f)))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    var var_0 = ~u_input.c;
    let var_1 = global2.a;
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 9u)];
    global1 = array<Struct_1, 30>();
    let var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(func_4(Struct_1(-446f, vec3<f32>(global2.a, global2.a, var_2.a)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(_wgslsmith_clamp_u32(var_3, 1u, var_3) ^ ~arg_0.x, u_input.c)), 30u)], select(countOneBits(~vec2<u32>(11796u, u_input.e)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 91782u), arg_0.zy) ^ ~arg_0.zx, select(func_3(global2.b.yy), func_3(vec2<f32>(1208f, arg_1)), any(vec4<bool>(true, true, true, true)))) >> ((vec2<u32>(1u, 86352u) << (countOneBits(arg_0.xy) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(568f, 774f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(-2193f * global3.x))), 407f, global3.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2950f, _wgslsmith_f_op_f32(func_2(arg_0, _wgslsmith_f_op_f32(floor(global2.a)))), 420f, -1000f)));
    var var_1 = all(vec3<bool>(all(select(func_3(global3.yy), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false))), true, any(!func_3(var_0.wz))));
    let var_2 = global0[_wgslsmith_index_u32(~arg_0.x, 9u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(592f + var_2.a)) - _wgslsmith_f_op_f32(step(-1919f, global2.b.x)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(select(-379f, var_2.a, any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true)))), _wgslsmith_f_op_vec3_f32(sign(var_2.b)));
    return global1[_wgslsmith_index_u32(0u, 30u)];
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.b.x, global3.x)), -1702f)) * vec2<f32>(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(-877f - 854f)), _wgslsmith_f_op_f32(-global2.b.x)))));
    global3 = _wgslsmith_f_op_vec3_f32(-arg_0.b);
    global0 = array<Struct_1, 9>();
    let var_1 = global2.a;
    return reverseBits(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    var var_0 = func_5(func_1(min(~_wgslsmith_sub_vec3_u32(vec3<u32>(65533u, 0u, 41196u), vec3<u32>(u_input.a, 7859u, 1u)), vec3<u32>(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(36222u, 1u, u_input.c, u_input.a), vec4<u32>(u_input.c, 68024u, 16592u, 4294967295u)), u_input.e)), u_input.d.xx), true);
    let var_1 = Struct_1(global2.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(-683f, global2.a, 1279f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(-global3.x), -1847f)), global2.b));
    global0 = array<Struct_1, 9>();
    var var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(5891u, u_input.c, 29590u) & vec3<u32>(4294967295u, 63627u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a) << (vec3<u32>(u_input.a, u_input.e, 4294967295u) % vec3<u32>(32u))), vec3<u32>(7376u, 8470u, u_input.e)), ~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, u_input.c, 21942u))));
    let var_3 = global1[_wgslsmith_index_u32(~min(u_input.e, u_input.c), 30u)];
    var var_4 = global1[_wgslsmith_index_u32(u_input.c, 30u)];
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1055f);
}

