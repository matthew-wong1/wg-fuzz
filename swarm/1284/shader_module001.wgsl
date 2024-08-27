struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 101267u, 18639u, 0u);

var<private> global1: array<f32, 26> = array<f32, 26>(-758f, -511f, -186f, -794f, -823f, -331f, 529f, 849f, -318f, -276f, 453f, -344f, 254f, 1328f, 415f, 725f, -743f, -139f, 152f, 2396f, -284f, 601f, 1679f, -1081f, -118f, -1408f);

var<private> global2: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = select(vec3<bool>(true, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), false)), !(!(-63658i >= arg_0.b))), vec3<bool>(true, true, true), true);
    var var_1 = arg_0;
    global2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-1197f - _wgslsmith_f_op_f32(f32(-1f) * -1379f)), _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(628f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x - 460f)), global1[_wgslsmith_index_u32(18377u, 26u)]) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1516f, global2.x, global1[_wgslsmith_index_u32(var_1.c.a, 26u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-128f, 404f, -852f) + vec3<f32>(global2.x, global1[_wgslsmith_index_u32(1u, 26u)], 276f)))))));
    let var_2 = Struct_2(Struct_1(~96920u), u_input.c, Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0.xww, vec3<u32>(45735u, global0.x, var_1.c.a)), u_input.a)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(167f, global1[_wgslsmith_index_u32(~reverseBits(24817u), 26u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x * -949f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_f32(trunc(1465f)), -1328f))));
    return false;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = select(func_3(Struct_2(Struct_1(global0.x | global0.x), _wgslsmith_sub_i32(-2147483647i >> (u_input.a.x % 32u), u_input.d.x), Struct_1(countOneBits(global0.x)))), any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false)), false);
    let var_1 = u_input.a;
    var var_2 = 0i;
    var_0 = true;
    let var_3 = ~(~(~var_1.x >> (var_1.x % 32u)));
    return global1[_wgslsmith_index_u32(countOneBits(88290u), 26u)];
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, global2.x) * vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 26u)], 1538f, 915f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, _wgslsmith_f_op_f32(func_2(919f)), -654f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(132f, _wgslsmith_f_op_f32(1178f - arg_0), -1066f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -547f, global1[_wgslsmith_index_u32(1u, 26u)])))));
    var var_0 = Struct_1(u_input.a.x);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -476f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_div_f32(arg_0, global1[_wgslsmith_index_u32(global0.x, 26u)]))), global2.x, _wgslsmith_f_op_f32(abs(-1724f))))));
    global1 = array<f32, 26>();
    return Struct_1(26645u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(abs(17278u)), reverseBits(~(-47779i)), func_1(1208f));
    global0 = vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(~global0.zy, u_input.a.zz)), _wgslsmith_clamp_u32(abs(1u) << ((u_input.a.x | 4294967295u) % 32u), global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(8072u, 75022u, u_input.a.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 17012u, 38374u), vec4<u32>(global0.x, 0u, var_0.a.a, u_input.a.x), vec4<u32>(0u, global0.x, 38078u, 7081u)))), ~(global0.x & ~1u), 1u) | vec4<u32>(4294967295u, u_input.a.x, select(abs(1u), max(62647u, min(54158u, 55128u)), false), 53u);
    var var_1 = var_0;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1020f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-950f * 1861f), 867f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_1.a.a, 26u)], global2.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -143f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)))), global1[_wgslsmith_index_u32(76406u, 26u)], 1939f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1460f, _wgslsmith_f_op_f32(select(-608f, 1054f, true)), any(vec2<bool>(true, true)))))));
    var var_3 = Struct_2(Struct_1(u_input.a.x & 0u), 61504i, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1374f, var_0.c.a, var_1.a.a);
}

