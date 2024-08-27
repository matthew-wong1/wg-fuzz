struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1;

var<private> global2: array<bool, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    global2 = array<bool, 18>();
    var var_0 = global2[_wgslsmith_index_u32(arg_0, 18u)];
    var var_1 = arg_2;
    global2 = array<bool, 18>();
    var_1 = Struct_1(select(!global1.a, !arg_2.a, select(!(!vec3<bool>(false, arg_2.a.x, arg_2.a.x)), select(!vec3<bool>(var_1.a.x, false, false), select(vec3<bool>(false, var_1.a.x, arg_2.a.x), vec3<bool>(true, true, var_1.a.x), true), true & arg_2.a.x), !(u_input.a > 34001u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -175f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(667f, 614f)))) + global1.b)), var_1.c, ~select(i32(-1i) * -10234i, 4115i, false));
    return -2079f;
}

fn func_2() -> u32 {
    global0 = 0u >> (u_input.a % 32u);
    let var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(firstTrailingBit(global1.c.yxw)), ~(~vec3<u32>(4294967295u, 53874u, global1.c.x))), global1.c.wzx);
    global2 = array<bool, 18>();
    let var_1 = Struct_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_3(19810u, !(!vec3<bool>(global2[_wgslsmith_index_u32(global1.c.x, 18u)], global1.a.x, global1.a.x)), Struct_1(global1.a, global1.b, select(global1.c, global1.c, false), -1i))), global1.b.x, global1.b.x), Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1178f, global1.b.x) + global1.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, 881f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.b, global1.b, vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 18u)], global1.a.x))) - vec2<f32>(global1.b.x, global1.b.x))), vec4<u32>(_wgslsmith_add_u32(0u, 0u), _wgslsmith_add_u32(var_0, 21445u), max(var_0, 65880u), var_0 << (17985u % 32u)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(69099u, 29064u, var_0, var_0), vec4<u32>(global1.c.x, 31719u, 24219u, u_input.e.x)) % vec4<u32>(32u)), 0i));
    var var_2 = select(!select(select(select(vec2<bool>(false, var_1.b.a.x), global1.a.zx, var_1.b.a.x), select(var_1.b.a.yz, vec2<bool>(true, global1.a.x), vec2<bool>(false, var_1.b.a.x)), all(vec2<bool>(false, true))), global1.a.zx, vec2<bool>(!var_1.b.a.x, !var_1.b.a.x)), var_1.b.a.zx, !global1.a.zx);
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.e & u_input.e, vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(global1.c, var_1.b.c))), global1.c.x) & (4294967295u >> (u_input.e.x % 32u));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    global0 = ~(_wgslsmith_sub_u32(~arg_1.c.x, _wgslsmith_clamp_u32(~4294967295u, abs(50161u), func_2())) | min(~global1.c.x | 4294967295u, _wgslsmith_dot_vec3_u32(~global1.c.zyx, abs(vec3<u32>(4294967295u, 1u, 0u)))));
    global0 = max(abs(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(4184u, arg_1.c.x, global1.c.x), 1u)), min(u_input.e.x, global1.c.x));
    var var_0 = ~select(abs(global1.c), arg_1.c ^ abs(min(vec4<u32>(70180u, 22198u, arg_1.c.x, arg_1.c.x), vec4<u32>(13780u, 4294967295u, 0u, global1.c.x))), (-arg_1.d | global1.d) >= _wgslsmith_mult_i32(0i, arg_1.d));
    global0 = ~(~4294967295u);
    var var_1 = arg_1;
    return -11380i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    return Struct_1(!select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global1.a.x, global2[_wgslsmith_index_u32(0u, 18u)]), global1.a, vec3<bool>(true, global2[_wgslsmith_index_u32(91382u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)])), vec3<bool>(false, false, false), -1i < u_input.b.x), select(vec3<bool>(arg_0.a.x, global2[_wgslsmith_index_u32(4294967295u, 18u)], false), arg_0.a, !global2[_wgslsmith_index_u32(0u, 18u)]), vec3<bool>(arg_0.a.x, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.c.ww, global1.c.zw), 18u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(345f, arg_0.b.x)), vec2<f32>(arg_0.b.x, arg_1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, 1012f) - arg_0.b)))), vec4<u32>(26459u, global1.c.x, firstLeadingBit(0u) << (arg_0.c.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), ~arg_0.c.xw)) & ~(~(~global1.c)), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    global1 = func_4(Struct_1(!vec3<bool>(true, true, !global2[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, 311f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-122f, 1374f)))), global1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-62728i, func_1(0i, Struct_1(vec3<bool>(false, global1.a.x, global2[_wgslsmith_index_u32(1u, 18u)]), global1.b, vec4<u32>(u_input.a, global1.c.x, 38093u, global1.c.x), -23146i)), 2527i), -(vec3<i32>(1i, u_input.d.x, -11853i) & vec3<i32>(-8589i, 21437i, -23438i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b.x, global1.b.x)) * global1.b.x), global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -397f), 413f));
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(~_wgslsmith_clamp_i32(global1.d, u_input.d.x, 2147483647i), u_input.c, false), -10912i), global1.b.x);
}

