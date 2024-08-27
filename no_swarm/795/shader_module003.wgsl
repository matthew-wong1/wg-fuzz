struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = Struct_1(2788u);
    global0 = Struct_1(_wgslsmith_add_u32(~global0.a, abs(u_input.a.x)));
    var var_0 = Struct_3(-vec2<i32>(~(-13159i), -58820i), Struct_1(u_input.a.x));
    var_0 = Struct_3(vec2<i32>(-1i, -5134i), var_0.b);
    var_0 = Struct_3(~vec2<i32>(_wgslsmith_div_i32(~(-14328i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, 2147483647i), vec3<i32>(var_0.a.x, 37765i, 1i))), -firstTrailingBit(var_0.a.x)), Struct_1(global0.a));
    return Struct_2(!(!arg_0), u_input.a.ywx, var_0.b);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = -abs(countOneBits(-1494i));
    global0 = func_2(true).c;
    let var_1 = vec4<i32>(max(-2147483647i << (u_input.a.x % 32u), 0i) & abs(i32(-1i) * -1i), -41787i, 2147483647i, 1i) << (u_input.a % vec4<u32>(32u));
    var var_2 = Struct_2(arg_1, arg_0.b, arg_0.c);
    let var_3 = ~(~79179u);
    return !arg_1;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> u32 {
    var var_0 = countOneBits(-_wgslsmith_clamp_i32(arg_0, arg_0, 1i));
    let var_1 = ~(~select(u_input.a.x, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(0u, arg_1.x, arg_1.x, 4294967295u)), any(vec4<bool>(false, true, false, false))));
    let var_2 = !vec3<bool>(true, all(vec2<bool>(true, any(vec3<bool>(true, false, true)))), true && !select(false, true, true));
    let var_3 = vec3<bool>(var_2.x, true, func_3(func_2(false), var_2.x, 35241u));
    let var_4 = Struct_4(vec3<bool>(!func_2(true).a, true, var_3.x), Struct_3(select(vec2<i32>(arg_0, arg_0), countOneBits(~vec2<i32>(arg_0, 9392i)), func_2(func_2(var_3.x).a).a), Struct_1(4294967295u)), 1u, Struct_3(-reverseBits(vec2<i32>(-2147483647i, arg_0)), Struct_1(~10451u)), ~(~_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a.x, var_1, arg_1.x), arg_1.yxz), _wgslsmith_sub_vec3_u32(arg_1.wzy, arg_1.xzy))));
    return _wgslsmith_div_u32(firstTrailingBit(32045u), select(~abs(~0u), 8461u, all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 457f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1013f, 2465f, true))), var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - _wgslsmith_f_op_f32(max(1423f, var_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)))))));
    global0 = Struct_1(u_input.a.x >> (select(func_1(27810i << (global0.a % 32u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1757u, 38537u, global0.a), vec4<u32>(u_input.a.x, 0u, u_input.a.x, global0.a))), func_1(~45625i, u_input.a), -54021i <= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -17649i, 10727i), vec3<i32>(-2147483647i, 30001i, -2147483647i))) % 32u));
    let var_2 = true;
    var var_3 = !var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yw, var_0, var_0);
}

