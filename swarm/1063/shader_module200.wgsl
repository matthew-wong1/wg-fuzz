struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<bool>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_4;

var<private> global2: Struct_3 = Struct_3(Struct_2(21196u, 1i, 698f), vec4<i32>(1i, 18374i, 21748i, -63588i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32) -> Struct_2 {
    return global2.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_4 {
    global2 = global1.d;
    global2 = global1.d;
    let var_0 = vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.d.a.a, u_input.d, global2.a.a)), vec3<u32>(_wgslsmith_div_u32(9424u, u_input.b.x), 4294967295u, global1.d.a.a)) & u_input.b.x, ~4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.b.x | ~0u, ~14922u), 1u ^ _wgslsmith_sub_u32(arg_3.a, ~1u)));
    let var_1 = !select(!arg_0.wzx, vec3<bool>(_wgslsmith_f_op_f32(max(848f, -1575f)) > global1.c, all(vec4<bool>(false, false, true, arg_0.x)), arg_0.x), true);
    global0 = array<Struct_1, 29>();
    return Struct_4(vec3<i32>(16455i, -(28920i & global2.a.b), -arg_3.b), true, 478f, global1.d);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_2(u_input.d, -25039i, 578f);
    global0 = array<Struct_1, 29>();
    var var_1 = u_input.b.xz | _wgslsmith_sub_vec2_u32(vec2<u32>(global2.a.a, 23341u), vec2<u32>(1u, _wgslsmith_sub_u32(global1.d.a.a, 4294967295u) & (1u ^ u_input.b.x)));
    global1 = func_3(select(!select(vec4<bool>(false, global1.b, arg_2, arg_2), !arg_1, true), vec4<bool>(global1.b, arg_0, true, all(vec4<bool>(arg_2, true, global1.b, arg_0))), arg_1), -2147483647i, var_0.b, func_2(select(min(~8142u, global1.d.a.a), ~abs(u_input.b.x), false)));
    global0 = array<Struct_1, 29>();
    return Struct_3(Struct_2(abs(4294967295u), -1i, -1604f), func_3(arg_1, global1.a.x, ~global2.a.b, func_3(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, global1.b, arg_1.x, global1.b), arg_1), i32(-1i) * -u_input.e.x, -u_input.c, Struct_2(9841u, global1.d.b.x, _wgslsmith_f_op_f32(1655f * 1407f))).d.a).d.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = select(vec4<bool>(true, !(~35733u >= u_input.d), global1.b, false), !vec4<bool>(all(vec3<bool>(arg_0.x, arg_2.b, true)), global2.a.a == ~global2.a.a, true, arg_2.b), select(select(!(!vec4<bool>(true, arg_2.b, global1.b, arg_2.b)), !(!vec4<bool>(global1.b, true, false, true)), false), !vec4<bool>(true, true, true, arg_2.b), !all(vec4<bool>(false, global1.b, true, false))));
    var_0 = !vec4<bool>(arg_0.x, !func_3(!vec4<bool>(var_0.x, true, arg_2.b, false), 2147483647i, 34874i, Struct_2(0u, arg_2.d.b.x, -1000f)).b, arg_0.x, arg_2.b);
    var var_1 = ~(~vec4<i32>(-1i, -arg_2.a.x, 1i, _wgslsmith_div_i32(global1.d.b.x, global1.d.b.x) & 2147483647i));
    global0 = array<Struct_1, 29>();
    var_1 = -u_input.a;
    return func_2(1210u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(!select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(global1.b, global1.b, global1.b), true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.c - global1.d.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -859f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + _wgslsmith_f_op_f32(global2.a.c + global2.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-197f)))), Struct_4(vec3<i32>(1i, -83893i, 1i), true, global1.c, func_1(true, select(vec4<bool>(false, false, global1.b, false), vec4<bool>(global1.b, global1.b, true, false), global1.b), true))), vec4<i32>(global1.a.x, _wgslsmith_mod_i32(-(global2.b.x | -2147483647i), 1i), ~_wgslsmith_mult_i32(0i, u_input.a.x), -max(~(-2147483647i), global1.d.b.x)));
    let var_1 = Struct_5(any(select(select(!vec4<bool>(false, true, global1.b, false), !vec4<bool>(global1.b, global1.b, global1.b, true), select(vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(global1.b, false, global1.b, false), true)), select(select(vec4<bool>(false, global1.b, false, global1.b), vec4<bool>(global1.b, global1.b, true, false), global1.b), vec4<bool>(global1.b, false, global1.b, false), global1.b), vec4<bool>(global1.b, global1.b | global1.b, global1.d.a.c == global1.c, global1.b))));
    var var_2 = firstTrailingBit(u_input.b.yz ^ _wgslsmith_add_vec2_u32(select(vec2<u32>(global1.d.a.a, 4294967295u), u_input.b.zx << (vec2<u32>(4294967295u, var_0.a.a) % vec2<u32>(32u)), select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, global1.b), vec2<bool>(true, global1.b))), firstTrailingBit(~u_input.b.yz)));
    let var_3 = _wgslsmith_sub_i32(func_4(select(vec3<bool>(var_1.a, global1.b, false), !vec3<bool>(true, false, var_1.a), !vec3<bool>(global1.b, true, true)), vec3<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-888f - 1000f), func_3(vec4<bool>(var_1.a, true, global1.b, false), -2147483647i, var_0.b.x, var_0.a).d.a.c), Struct_4(global1.d.b.zxx, true, 1109f, Struct_3(var_0.a, u_input.a))).b, max(countOneBits(global1.d.b.x), -1i)) << (4294967295u % 32u);
    let var_4 = ~func_3(!vec4<bool>(all(vec2<bool>(false, true)), var_1.a, true, any(vec3<bool>(global1.b, global1.b, var_1.a))), global2.a.b, _wgslsmith_mod_i32(var_0.b.x, global1.d.a.b), func_1(var_1.a, vec4<bool>(false, var_1.a, true, any(vec4<bool>(false, global1.b, var_1.a, false))), ~6154i != _wgslsmith_dot_vec2_i32(vec2<i32>(27155i, 1i), global2.b.ww)).a).d.b;
    var_2 = firstLeadingBit(vec2<u32>(u_input.d, 0u));
    var_2 = abs(u_input.b.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1437f, -1468f, var_0.a.c))))), global2.b.x, min(abs(~global1.a.xz), ~global1.d.b.wx) ^ (func_3(!vec4<bool>(true, global1.b, true, true), var_4.x, var_4.x, Struct_2(global2.a.a, global1.d.b.x, global1.d.a.c)).a.zz << ((~vec2<u32>(0u, 71106u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, 1u), vec2<u32>(var_0.a.a, global1.d.a.a)) % vec2<u32>(32u))) % vec2<u32>(32u))), var_0.a.c);
}

