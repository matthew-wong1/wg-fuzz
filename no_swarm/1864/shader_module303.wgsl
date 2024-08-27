struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-36730i, 840f, Struct_1(3781i, vec4<f32>(392f, -772f, 437f, -856f), true, 739f, true));

var<private> global1: array<u32, 1>;

var<private> global2: f32 = 1096f;

var<private> global3: vec4<f32>;

var<private> global4: Struct_4;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = ~firstTrailingBit(~vec4<u32>(1u << (1u % 32u), ~u_input.d.x, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(10818u, 1u)], 4294967295u), ~4796u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c.b - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(176f, global0.c.b.x, 639f, 1413f))), global0.c.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global4.c.c.b - vec4<f32>(global4.c.b, global0.b, global0.c.d, -1393f)), _wgslsmith_f_op_vec4_f32(select(global0.c.b, vec4<f32>(global3.x, global4.b, 1356f, -1681f), global0.c.e)), true)))) + _wgslsmith_f_op_vec4_f32(-global0.c.b));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 2053f));
    let var_2 = Struct_3(global0.c, Struct_1(_wgslsmith_sub_i32(global0.a, _wgslsmith_add_i32(-u_input.c.x, firstTrailingBit(global0.a))), global0.c.b, !(!(global0.a > 2147483647i)), _wgslsmith_f_op_f32(-global0.c.b.x), true), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 9747u, global1[_wgslsmith_index_u32(u_input.e.x | 4294967295u, 1u)], 56254u), abs(vec4<u32>(u_input.d.x, var_0.x, 58902u, u_input.e.x))), ~(~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 1u)], 1u)]))), Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1143f, -618f, var_1.x, global0.b), vec4<f32>(var_1.x, global3.x, 203f, global0.b), vec4<bool>(true, false, global4.a.x, global4.c.c.c)))))), global4.c.c.e, _wgslsmith_f_op_f32(ceil(-319f)), global4.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(964f - global0.c.d), global3.x), _wgslsmith_f_op_f32(global4.c.c.b.x - _wgslsmith_f_op_f32(sign(global4.c.b))))));
    var var_3 = true;
    return global3.x;
}

fn func_2(arg_0: bool) -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b + global4.b)))), 240f, global4.c.c.d)));
    var var_0 = Struct_3(Struct_1(_wgslsmith_add_i32(u_input.b, ~u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -1650f)), _wgslsmith_f_op_f32(func_3()), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1635f))), true, _wgslsmith_f_op_f32(func_3()), global0.c.e), Struct_1(-27246i, global0.c.b, _wgslsmith_f_op_f32(abs(global4.c.c.d)) >= global4.c.c.b.x, _wgslsmith_f_op_f32(abs(-1006f)), true), u_input.e.x, global0.c, vec2<f32>(-213f, 825f));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-759f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, global4.b)), _wgslsmith_f_op_f32(exp2(var_0.e.x))))) - var_0.a.b.x);
    var var_1 = global4.a.x;
    var var_2 = !(!(!vec3<bool>(false, all(vec4<bool>(arg_0, var_0.b.e, false, global4.a.x)), true)));
    return select(vec2<bool>(global0.c.e | (_wgslsmith_add_i32(u_input.b, -10784i) < _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a, u_input.b), vec2<i32>(var_0.a.a, global0.c.a))), _wgslsmith_f_op_f32(sign(-677f)) < _wgslsmith_f_op_f32(-1f)), vec2<bool>(global4.a.x, any(global4.a)), !var_2.xz);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    global1 = array<u32, 1>();
    var var_0 = all(select(global4.a, func_2(true), global4.a));
    var var_1 = !vec3<bool>(global0.c.e, global4.c.c.c, !any(vec3<bool>(false, false, true)));
    return Struct_2(_wgslsmith_sub_i32(~reverseBits(abs(u_input.c.x)), _wgslsmith_add_i32(arg_3, 0i)), _wgslsmith_f_op_f32(697f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.b.x)) - _wgslsmith_f_op_f32(-global4.b)))), global4.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d;
    var var_1 = u_input.d;
    var var_2 = func_1(global0.c.b.zzx, ~max(43899u, 38861u), global4.c.c.b.wxx, 5850i);
    var var_3 = Struct_4(select(!global4.a, !(!global4.a), var_2.c.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), func_1(_wgslsmith_f_op_vec3_f32(round(var_2.c.b.wxy)), 38154u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global3.xwy))), ~_wgslsmith_sub_i32(reverseBits(global4.c.c.a), 1i)));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.b);
}

