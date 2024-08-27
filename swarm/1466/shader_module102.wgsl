struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(82025i, 1i, -5788i, -7161i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 58301i));

var<private> global2: Struct_2;

var<private> global3: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: i32) -> vec3<bool> {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a))), 1f, Struct_1(~(~(~arg_0.a)), arg_0.b), Struct_1(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.a, u_input.b, arg_0.a, 26972u), vec4<u32>(global2.e.a, 1u, global2.d.a, 42173u)), _wgslsmith_mod_u32(4294967295u, 1u)), vec3<bool>(true, true, true)), global2.d);
    var var_0 = Struct_1(u_input.b, global2.e.b);
    let var_1 = Struct_1(~(~(min(21596u, 4294967295u) >> (1u % 32u))), vec3<bool>(select(all(vec2<bool>(true, var_0.b.x)), all(vec2<bool>(false, arg_2)), ~var_0.a == 12748u), select(arg_2, arg_2, false), true));
    global3 = var_1.b.x;
    let var_2 = global2.a.x;
    return vec3<bool>(any(vec2<bool>(any(arg_0.b.zz), select(arg_0.b.x && true, !arg_1, arg_0.b.x))), true, any(var_0.b));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)) + _wgslsmith_f_op_f32(global2.a.x * -402f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -110f);
    let var_1 = global2.d.a;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(max(-448f, _wgslsmith_f_op_f32(global2.b - global2.b)))), _wgslsmith_f_op_f32(-global2.a.x)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(-global2.a.x));
    return Struct_1(1u, select(global2.e.b, select(global2.c.b, func_3(global2.d, -2147483647i <= u_input.c.x, !global2.d.b.x, 0i), vec3<bool>(true, select(true, global2.c.b.x, global2.d.b.x), true)), func_3(Struct_1(global2.e.a, vec3<bool>(true, true, global2.c.b.x)), !global2.e.b.x, any(global2.c.b), i32(-1i) * -1i).x));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    global0 = array<vec4<i32>, 23>();
    global0 = array<vec4<i32>, 23>();
    let var_0 = global2.a.x;
    var var_1 = func_2();
    var var_2 = ~1i;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) - vec3<f32>(-856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * global2.b)), -209f)), -1023f, Struct_1(20746u, vec3<bool>(true, false, false)), func_2(), global2.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    global1 = array<vec4<i32>, 2>();
    let var_0 = -u_input.a.x;
    var var_1 = func_1(arg_0.a.zz, u_input.b).d;
    global3 = false;
    let var_2 = select(~(~(~max(u_input.b, 92623u))), ~15332u, true);
    return Struct_1(arg_0.e.a, global2.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, !(_wgslsmith_mult_u32(_wgslsmith_div_u32(38611u, global2.c.a), 14169u) == global2.d.a), false, true | global2.d.b.x);
    var var_1 = func_4(func_1(global2.a.zz, ~global2.e.a), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(abs(global2.a.x)))), _wgslsmith_f_op_f32(floor(1140f))), global2.a.x));
    var var_2 = Struct_1(~(~(global2.e.a & 4294967295u)), var_1.b);
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.xz - _wgslsmith_f_op_vec2_f32(-global2.a.xx))), abs(~74417u));
    var var_4 = Struct_1(1u, vec3<bool>(var_0.x, var_1.b.x, (~global2.e.a | var_2.a) > (u_input.b >> (_wgslsmith_sub_u32(var_3.c.a, 22730u) % 32u))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, var_3.a.x, -1020f, -819f)))));
    global1 = array<vec4<i32>, 2>();
    let var_6 = func_1(var_5.xy, func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, -516f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2481f, var_5.x)))), var_3.a.zz), ~1u).d.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.x, global2.b, ~u_input.b);
}

