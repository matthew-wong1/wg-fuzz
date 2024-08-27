struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: i32 = 0i;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec4<f32> {
    var var_0 = u_input.b >= u_input.b;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.d)))), _wgslsmith_f_op_f32(floor(672f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) + _wgslsmith_f_op_f32(-global2.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~0i >> (_wgslsmith_div_u32(u_input.b, _wgslsmith_div_u32(4294967295u, ~u_input.b)) % 32u);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.e)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, 1000f, -1153f, var_0.x)) - _wgslsmith_f_op_vec4_f32(func_1())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global2.e.x, var_0.x, global2.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.a, var_0.x, 160f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, 1952f, 1224f, var_0.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1083f, global2.a, global2.e.x, global2.e.x), vec4<f32>(var_0.x, 186f, -750f, -310f)))))) - vec4<f32>(global2.d, _wgslsmith_f_op_f32(ceil(global2.d)), 755f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, global2.e.x) * _wgslsmith_f_op_f32(global2.e.x - global2.a)))));
    var var_2 = vec2<u32>(~4294967295u, min(~_wgslsmith_mod_u32(u_input.a, 37364u), ~(~_wgslsmith_sub_u32(u_input.a, u_input.b))));
    var var_3 = _wgslsmith_mod_vec2_i32(firstLeadingBit(max(global2.b.xz << ((vec2<u32>(0u, u_input.b) & vec2<u32>(24598u, 4294967295u)) % vec2<u32>(32u)), abs(_wgslsmith_clamp_vec2_i32(global2.b.xz, vec2<i32>(global2.b.x, global2.c), global2.b.yy)))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-select(vec2<i32>(global2.c, global2.c), global2.b.xx, true), global2.b.yy), global2.b.xy));
    let var_4 = _wgslsmith_f_op_f32(-var_1.x);
    global1 = ~(i32(-1i) * -7831i);
    let var_5 = 64634i;
    var var_6 = i32(-1i) * -(~(global2.b.x ^ 22501i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1()).ww, -310f, 11140i, _wgslsmith_f_op_vec3_f32(var_1.yyw * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, var_4, var_0.x) * _wgslsmith_f_op_vec3_f32(-var_1.xxy)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.xzx), _wgslsmith_f_op_vec3_f32(-global2.e), false)))));
}

