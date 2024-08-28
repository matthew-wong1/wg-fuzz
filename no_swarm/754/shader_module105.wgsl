struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: Struct_3,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32>;

var<private> global2: Struct_5;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec4<i32> {
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = -func_3(global3.a, global2.c, global2.d >> (~_wgslsmith_sub_vec4_u32(global3.a.d, vec4<u32>(59870u, global2.a, 20452u, u_input.e)) % vec4<u32>(32u)), vec4<f32>(164f, global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + -1557f), 376f)), global1.x));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.a.d.x), global3.a.d.wy), _wgslsmith_add_u32(global2.e, min(global3.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.e, arg_0, 15330u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.e)))), ~global2.e);
    var var_2 = -33510i;
    var var_3 = global3.b >= -1103f;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)));
    return false;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f - -1015f))) * arg_0.a), abs(~min(vec2<u32>(22185u, arg_0.e), vec2<u32>(0u, 66657u))), vec3<bool>(!any(global3.e), false, !global3.e.x || false), vec2<bool>(true, func_2(0u, -463f, i32(-1i) * -u_input.d)));
    var_0 = Struct_2(var_0.a, -359f, min(vec2<u32>(~(var_0.a.e >> (global3.a.e % 32u)), global3.a.d.x), global3.a.d.zw), select(!select(var_0.d, select(vec3<bool>(false, global3.d.x, false), var_0.d, vec3<bool>(var_0.e.x, true, true)), select(global3.d, global3.d, var_0.d)), global3.d, var_0.d), select(select(select(!vec2<bool>(var_0.d.x, var_0.d.x), select(global3.e, var_0.d.yy, true), select(vec2<bool>(var_0.d.x, true), global3.e, global3.e.x)), global3.d.zz, false), select(global3.d.xz, vec2<bool>(true, true), !any(vec3<bool>(var_0.e.x, true, global3.e.x))), !select(vec2<bool>(false, global3.d.x), !var_0.d.zy, any(vec4<bool>(true, var_0.d.x, false, true)))));
    global0 = global2.c;
    var var_1 = Struct_4(global2.e);
    let var_2 = ~(~0i);
    return Struct_3(_wgslsmith_div_f32(global3.a.a, _wgslsmith_f_op_f32(ceil(arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global3.a);
    var var_1 = _wgslsmith_div_vec2_u32(~abs(~(~vec2<u32>(u_input.e, 0u))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global2.e, global2.a, global3.a.d.x), min(vec4<u32>(5553u, 14808u, 4294967295u, u_input.c), global3.a.d)), _wgslsmith_sub_u32(max(u_input.e, global3.a.e), ~u_input.c)) ^ ~vec2<u32>(_wgslsmith_clamp_u32(global3.c.x, global3.c.x, global2.e), _wgslsmith_mult_u32(60131u, global3.c.x)));
    let var_2 = ~4294967295u;
    global0 = global2.c;
    var_1 = reverseBits(countOneBits(global3.c));
    let var_3 = -1228f;
    let var_4 = global2.b.x;
    var var_5 = countOneBits(~global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1276f, 373f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, var_3), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.a, -1000f)), select(vec2<bool>(true, false), vec2<bool>(global3.d.x, global3.e.x), global3.d.yz)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
}

