struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: f32;

var<private> global3: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    global3 = arg_1.c;
    global2 = 469f;
    global3 = true;
    let var_0 = arg_0;
    global3 = all(vec3<bool>(arg_1.c, true, !arg_1.c));
    return Struct_3(!select(vec2<bool>(arg_1.c && false, !arg_1.c), vec2<bool>(arg_1.c, all(vec3<bool>(arg_1.c, true, arg_1.c))), vec2<bool>(true & arg_1.c, arg_1.c)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_5 {
    global3 = arg_3.a.x;
    let var_0 = Struct_5(Struct_4(global1[_wgslsmith_index_u32(arg_2, 28u)], vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.wwx, u_input.c.zyw)) ^ u_input.c.yy, ~1i == u_input.c.x, vec3<i32>(-23619i, -u_input.c.x, abs(22962i))), vec3<i32>(-71139i, 495i, u_input.a), _wgslsmith_f_op_f32(-arg_1));
    global2 = arg_1;
    let var_1 = -121f;
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5) -> f32 {
    var var_0 = func_3(global0.x, 157f, ~(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 12920u), vec3<u32>(4294967295u, u_input.d.x, 1u))) & ~_wgslsmith_mult_u32(17715u, 0u)), Struct_3(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, arg_1.a.c), arg_1.a.c), vec2<bool>(arg_1.a.c, true)))).a.a;
    global1 = array<Struct_1, 28>();
    var var_1 = countOneBits(_wgslsmith_add_u32(85651u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(1u, global0.x)))) ^ ~max(1u, ~_wgslsmith_div_u32(global0.x, 1u));
    global3 = arg_1.a.c;
    global2 = 654f;
    return -588f;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(135f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -476f))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-124f, 599f)))), func_3(_wgslsmith_mod_u32(7653u, _wgslsmith_add_u32(u_input.d.x, 12202u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), 4294967295u, func_2(0u, Struct_4(arg_0, vec2<i32>(2147483647i, -8014i), false, u_input.c.xxw), global1[_wgslsmith_index_u32(firstLeadingBit(1u), 28u)], Struct_1(arg_0.a))))));
    let var_1 = Struct_5(func_3(~arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + -1170f) - 734f), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, u_input.d.x), vec3<u32>(global0.x, arg_1, 0u))), Struct_3(func_2(0u, Struct_4(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], u_input.c.xx, false, u_input.c.xzx), func_3(3817u, arg_0.a, 14619u, Struct_3(vec2<bool>(false, false))).a.a, func_3(global0.x, arg_0.a, 1u, Struct_3(vec2<bool>(false, false))).a.a).a)).a, func_3(~reverseBits(15679u), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(293f, -1140f)))), ~_wgslsmith_add_u32(global0.x, 1u >> (global0.x % 32u)), Struct_3(vec2<bool>(true, true))).a.d, _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 404f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(arg_0.a + -955f))), Struct_5(Struct_4(Struct_1(-350f), ~u_input.c.wy, func_2(1u, Struct_4(Struct_1(arg_0.a), u_input.c.zy, true, vec3<i32>(-1i, -781i, u_input.a)), Struct_1(-1328f), Struct_1(var_0.x)).a.x, -vec3<i32>(5125i, u_input.a, u_input.a)), -(~u_input.c.xzz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) - _wgslsmith_f_op_f32(-arg_0.a))))));
    let var_2 = func_3(firstLeadingBit(abs(firstTrailingBit(firstTrailingBit(u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(1453f - arg_0.a)))), _wgslsmith_sub_u32(~(~global0.x | _wgslsmith_add_u32(global0.x, arg_1)), 62508u), func_2(_wgslsmith_div_u32(~min(u_input.d.x, u_input.d.x), ~(~arg_1)), var_1.a, Struct_1(_wgslsmith_f_op_f32(func_4(var_0.xy, Struct_5(var_1.a, vec3<i32>(1i, u_input.a, 0i), 1319f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-840f))))));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.a.a.a))))));
    global0 = ~vec4<u32>(global0.x, ~35704u, min(_wgslsmith_sub_u32(46858u, u_input.b), 4169u), 3777u) & ~vec4<u32>(21219u, global0.x, ~0u, arg_1);
    return ~vec4<u32>(13232u, ~(~min(1u, 27378u)), arg_1, _wgslsmith_add_u32(4294967295u, abs(global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.c.x);
    var var_1 = u_input.c.zw;
    var var_2 = ~(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global0.x, u_input.d.x, u_input.d.x), vec4<u32>(22748u, 21321u, u_input.b, u_input.b)))));
    var_1 = vec2<i32>(abs(u_input.c.x), 1i);
    var_2 = abs(~_wgslsmith_div_vec4_u32(abs(func_1(global1[_wgslsmith_index_u32(62087u, 28u)], 29725u)), abs(~vec4<u32>(60113u, 4294967295u, u_input.d.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f - -1294f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(367f, -975f)), _wgslsmith_f_op_f32(ceil(685f)))) - _wgslsmith_div_f32(-1384f, 1361f)), vec3<f32>(212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f - -270f))), -2381f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-479f, 1255f, -522f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-754f, -357f, 492f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, 2278f, 660f))), vec3<bool>(true, true, true))))));
}

