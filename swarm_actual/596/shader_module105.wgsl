struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(51458u <= global0.d.x, global0.a.c.b, global0.a.c.c, !vec3<bool>(global0.a.c.d.x, true, global0.a.c.a));
    var var_1 = 1u;
    let var_2 = global0.c.c.d.zz;
    let var_3 = firstLeadingBit(~_wgslsmith_clamp_u32(~91688u, _wgslsmith_clamp_u32(var_0.b.x, u_input.a, 1u), u_input.d) << (~firstTrailingBit(4294967295u) % 32u));
    var_1 = _wgslsmith_div_u32(1u, min(~3911u, 55007u));
    return -354f;
}

fn func_2() -> u32 {
    global1 = array<vec4<bool>, 20>();
    let var_0 = -2147483647i;
    global0 = Struct_3(Struct_2(-(~(~(-2147483647i))), global0.c.c.c.x, global0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b - -125f), -669f, false)))), global0.a, _wgslsmith_div_vec4_u32(~abs(countOneBits(vec4<u32>(21654u, 9939u, 93142u, u_input.d))), firstLeadingBit(vec4<u32>(global0.c.c.b.x, _wgslsmith_sub_u32(65144u, 50408u), _wgslsmith_sub_u32(global0.a.c.b.x, 0u), _wgslsmith_clamp_u32(36416u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) * -1302f)));
    let var_1 = _wgslsmith_f_op_f32(func_3());
    var var_2 = Struct_1(any(vec4<bool>(true, true, any(global0.c.c.d.zx), global0.a.c.d.x)), vec4<u32>(countOneBits(u_input.a), _wgslsmith_clamp_u32(global0.c.c.b.x, global0.a.c.b.x, ~(~4294967295u)), ~4294967295u, ~_wgslsmith_add_u32(global0.c.c.b.x, 1u | u_input.a)), -global0.c.c.c, global0.c.c.d);
    return _wgslsmith_clamp_u32(firstLeadingBit(~global0.a.c.b.x), abs(min(_wgslsmith_sub_u32(abs(var_2.b.x), global0.d.x), _wgslsmith_dot_vec3_u32(global0.d.xyy, ~vec3<u32>(0u, var_2.b.x, 0u)))), reverseBits(_wgslsmith_dot_vec2_u32(var_2.b.xz, var_2.b.yw)));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d, ~global0.a.c.b.x) | global0.d.xw, vec2<u32>(u_input.a, countOneBits(u_input.a)) << (vec2<u32>(func_2(), u_input.d) % vec2<u32>(32u)));
    var var_1 = select(firstLeadingBit(~vec4<u32>(2593u, global0.a.c.b.x, min(u_input.d, 1u), _wgslsmith_div_u32(var_0.x, global0.c.c.b.x))), global0.d, select(vec4<bool>(global0.c.c.a, true, all(select(vec3<bool>(true, false, false), vec3<bool>(global0.c.c.a, global0.c.c.a, false), true)), all(global0.a.c.d.yy)), vec4<bool>(true, !(false && global0.a.c.d.x), true, false), vec4<bool>(true, select(global0.a.c.a, all(global0.a.c.d.yy), true), arg_0, true)));
    var var_2 = (arg_0 & true) | false;
    var var_3 = ~(~u_input.d);
    global0 = Struct_3(global0.c, _wgslsmith_f_op_f32(func_3()), global0.c, select(global0.c.c.b, global0.a.c.b, !(-global0.c.c.c.x <= _wgslsmith_div_i32(0i, 13941i))), global0.b);
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0.a.c.c.www << (~select(global0.c.c.b.xzw, vec3<u32>(_wgslsmith_dot_vec4_u32(global0.a.c.b, global0.d), u_input.d, global0.a.c.b.x), !vec3<bool>(global0.a.c.d.x, global0.c.c.a, global0.c.c.a)) % vec3<u32>(32u));
    global1 = array<vec4<bool>, 20>();
    var var_1 = Struct_4(global0.e);
    let var_2 = vec4<f32>(global0.b, 1084f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e - var_1.a) + _wgslsmith_f_op_f32(-680f - global0.e)) - _wgslsmith_f_op_f32(func_1(any(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(select(global0.e, global0.b, false)))), global0.e);
    global1 = array<vec4<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.c.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) - var_2), abs(~u_input.a));
}

