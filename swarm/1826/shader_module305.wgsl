struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(32203i, vec3<bool>(false, true, true), true), Struct_2(2147483647i, vec3<bool>(true, false, true), false), Struct_2(i32(-2147483648), vec3<bool>(true, true, false), true), Struct_2(-54943i, vec3<bool>(false, false, false), true), Struct_2(i32(-2147483648), vec3<bool>(false, true, false), true), Struct_2(563i, vec3<bool>(true, false, false), true));

var<private> global4: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    return vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.x)) + 1056f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-747f - _wgslsmith_div_f32(global1.a.x, -904f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(987f, -1000f))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> vec2<bool> {
    global4 = global1.c.x;
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.a.x, -869f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -742f) - -471f) * _wgslsmith_f_op_f32(abs(arg_0.a.x))), any(vec3<bool>(global0.c || arg_0.c.x, 93048u >= global1.b, global1.c.x))))));
    let var_1 = -59829i;
    var var_2 = global3[_wgslsmith_index_u32(1u, 6u)];
    var_2 = global3[_wgslsmith_index_u32(1u, 6u)];
    return vec2<bool>(-406f > arg_2, false != !(!all(vec4<bool>(global1.c.x, var_2.c, global1.c.x, false))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = 16145u;
    let var_1 = select(select(arg_2.b.xy, func_3(Struct_1(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(arg_0.x, global1.a.x, arg_0.x, 1786f)), ~global1.b, global1.c, vec2<i32>(1i, -26700i)), vec3<u32>(var_0, global1.b, global1.b) & ~vec3<u32>(7072u, 0u, 4294967295u), _wgslsmith_div_f32(_wgslsmith_div_f32(973f, arg_0.x), _wgslsmith_f_op_f32(select(-910f, -1329f, global0.c)))), false), !vec2<bool>(true, any(global1.c.yw)), arg_2.b.x);
    let var_2 = 1i;
    var var_3 = vec2<u32>(1u, min(~(~global1.b), 1u));
    var var_4 = Struct_1(arg_0, ~80083u, global1.c, abs(abs(vec2<i32>(-60174i, 1i))));
    return var_4.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.b | 1i)) - global1.a);
    let var_1 = _wgslsmith_add_u32(max(110614u, 43613u), _wgslsmith_add_u32(~global1.b, min(_wgslsmith_sub_u32(21119u, global1.b) | global1.b, func_2(vec4<f32>(var_0.x, global1.a.x, var_0.x, var_0.x), global0.a == u_input.c, Struct_2(u_input.b, global0.b, false)))));
    var var_2 = Struct_2(~(-19492i), select(select(global0.b, vec3<bool>(u_input.a.x >= 2147483647i, true, global1.c.x || global0.b.x), global0.b), !vec3<bool>(any(vec2<bool>(global1.c.x, false)), any(global1.c.yww), false), all(vec2<bool>(false, true)) & global1.c.x), all(vec4<bool>(global1.b <= (global1.b & global1.b), true, !(-147f >= global1.a.x), all(!global1.c))));
    let var_3 = ~(~vec3<u32>(var_1, ~32186u, ~(~0u)));
    global4 = all(global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1667f - global1.a.x) + _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec4_f32(func_1(-global1.d.x)).x, ~(~reverseBits(~var_2.a)), ~16452u);
}

