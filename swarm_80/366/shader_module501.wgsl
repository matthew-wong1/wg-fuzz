struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
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

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 50988u), vec3<u32>(77683u, 91898u, 1u), vec3<u32>(56776u, 40012u, 4294967295u), vec3<u32>(19046u, 1u, 848u), vec3<u32>(0u, 0u, 30028u), vec3<u32>(4294967295u, 44532u, 31771u), vec3<u32>(65767u, 4294967295u, 1u), vec3<u32>(4294967295u, 75220u, 18696u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(18742u, 0u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(1u);
    global0 = Struct_1(vec3<i32>(-1i, ~global0.a.x, _wgslsmith_div_i32(global0.a.x, u_input.d)), !global0.b);
    var var_1 = any(!global0.b.zw);
    var_1 = !(!((-2061f == _wgslsmith_f_op_f32(select(-1970f, 154f, global0.b.x))) == !all(vec3<bool>(true, false, true))));
    global1 = array<vec3<u32>, 11>();
    return Struct_2(~(~firstTrailingBit(1u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_3.x;
    var_0 = true;
    global0 = Struct_1(-vec3<i32>(u_input.a.x, -1i, 3383i), !vec4<bool>(all(select(vec4<bool>(arg_3.x, true, global0.b.x, false), global0.b, vec4<bool>(true, false, false, false))), any(vec2<bool>(global0.b.x, false)), global0.b.x, select(!arg_3.x, false && arg_2.b.x, true)));
    return select(vec4<bool>(arg_0.x != -929f, any(arg_3), all(!vec4<bool>(true, arg_3.x, arg_2.b.x, global0.b.x)), any(select(select(vec3<bool>(true, arg_2.b.x, arg_3.x), arg_3.zxw, global0.b.ywy), !arg_2.b.ywy, global0.b.zxy))), vec4<bool>(true, u_input.b.x >= u_input.b.x, arg_3.x, select(true, arg_2.b.x, !(arg_2.a.x != u_input.d))), !(!arg_2.b.x));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global0 = Struct_1(vec3<i32>(u_input.a.x, abs(_wgslsmith_dot_vec4_i32(u_input.a ^ u_input.a, vec4<i32>(57959i, 45316i, 10620i, global0.a.x))), arg_0.a.x), select(!arg_0.b, select(select(arg_0.b, !vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), !global0.b), !select(global0.b, arg_0.b, vec4<bool>(false, false, false, global0.b.x)), arg_0.b), !vec4<bool>(arg_0.b.x, true, false, false)));
    global1 = array<vec3<u32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1556f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-344f, -661f)), _wgslsmith_div_f32(1000f, 351f), _wgslsmith_f_op_f32(742f * 1114f))));
    global1 = array<vec3<u32>, 11>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 390f, var_0.x, -812f), vec4<f32>(var_0.x, var_0.x, -338f, 1188f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2175f, 1030f, var_0.x, -501f), vec4<f32>(490f, var_0.x, var_0.x, var_0.x))))) + vec4<f32>(2006f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(-1956f - _wgslsmith_div_f32(273f, var_0.x))), var_0.x));
    return vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), countOneBits(1i) > -(~_wgslsmith_clamp_i32(-43114i, global0.a.x, global0.a.x)), !any(!global0.b), (u_input.c >= 4294967295u) & false);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(311f, -144f, -1465f, -1538f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-363f, 476f, -1000f, 605f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-538f, 1765f, 1822f, -635f) - vec4<f32>(1359f, 103f, 734f, 258f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-157f, -621f, -476f, 114f) * vec4<f32>(1321f, 545f, 593f, -1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-357f, 657f, 827f, 111f), vec4<f32>(-1630f, -1000f, -409f, -428f)))))));
    global0 = Struct_1(global0.a, select(arg_1, func_4(Struct_1(select(u_input.a.xxy, u_input.a.xxz, global0.b.yww), func_3(vec2<f32>(1104f, var_1.x), global1[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(u_input.a.zxw, vec4<bool>(arg_0.x, true, arg_1.x, arg_0.x)), arg_1))), !vec4<bool>(any(arg_1.zzx), true, !arg_1.x, func_3(vec2<f32>(var_1.x, var_1.x), vec3<u32>(85197u, 1u, 52182u), Struct_1(vec3<i32>(-6206i, u_input.a.x, 1206i), global0.b), arg_1).x)));
    let var_2 = true;
    global0 = Struct_1(select(global0.a << (select(global1[_wgslsmith_index_u32(17831u, 11u)], vec3<u32>(u_input.b.x, var_0.a, 0u), all(global0.b.yy)) % vec3<u32>(32u)), countOneBits(vec3<i32>(_wgslsmith_div_i32(0i, 46134i), min(global0.a.x, arg_2.x), ~(-3290i))), vec3<bool>(true, var_2, true)), !vec4<bool>(global0.b.x, all(!vec3<bool>(global0.b.x, arg_1.x, var_2)), arg_0.x, func_4(Struct_1(vec3<i32>(u_input.a.x, global0.a.x, u_input.d), arg_0)).x));
    return Struct_1(vec3<i32>(-15174i, 17866i, global0.a.x), !select(arg_0, func_4(Struct_1(global0.a, vec4<bool>(arg_0.x, var_2, true, arg_1.x))), vec4<bool>(arg_0.x, select(var_2, global0.b.x, true), !var_2, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.b, global0.b, (vec2<i32>(_wgslsmith_mod_i32(u_input.d, global0.a.x), u_input.a.x) ^ countOneBits(vec2<i32>(1i, global0.a.x))) ^ vec2<i32>(~_wgslsmith_clamp_i32(-6541i, -1i, 1i), ~(~(-2147483647i))));
    var var_1 = !vec2<bool>(~(~4294967295u) == _wgslsmith_add_u32(u_input.c, firstTrailingBit(4294967295u)), false);
    var var_2 = 1i;
    var var_3 = vec3<bool>(var_1.x, _wgslsmith_mod_i32(~(~global0.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 65026i), abs(vec2<i32>(-1i, u_input.d)))) >= -1i, func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -632f), -628f), ~vec3<u32>(u_input.c, 1u, u_input.b.x), Struct_1(~vec3<i32>(u_input.a.x, 17245i, 0i), global0.b), func_4(Struct_1(var_0.a, vec4<bool>(var_1.x, true, true, false)))).x || global0.b.x);
    var var_4 = Struct_2(2079u);
    let var_5 = !vec3<bool>(true, global0.b.x, false);
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1023f)));
}

