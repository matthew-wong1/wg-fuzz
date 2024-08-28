struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 44233i;

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(u_input.c.x, vec4<u32>(u_input.c.x | u_input.c.x, 4294967295u, ~(~u_input.c.x), _wgslsmith_add_u32(~u_input.c.x, u_input.c.x))), Struct_1(~(~(~9111u)), ~vec4<u32>(u_input.c.x >> (4294967295u % 32u), max(u_input.a.x, 1u), u_input.c.x, u_input.c.x)));
    let var_1 = Struct_3(select(select(vec2<bool>(all(vec2<bool>(true, true)), 4294967295u < u_input.a.x), vec2<bool>(true, true), !any(vec3<bool>(true, true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, true)), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), vec2<bool>(all(vec3<bool>(true, false, false)), any(vec3<bool>(true, false, false)))), vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    return _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 7847i | (i32(-1i) * -u_input.b.x));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = -vec2<i32>(-(reverseBits(-54859i) | select(arg_1.x, u_input.b.x, true)), select(func_2() >> (~5628u % 32u), arg_0, false));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -149f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * vec2<f32>(arg_2, arg_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-554f, arg_2))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(937f, arg_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))), !(!all(vec4<bool>(true, false, false, true)))))));
    global2 = array<vec3<bool>, 21>();
    let var_2 = ~(~143290u);
    let var_3 = select(vec2<bool>(!all(!global2[_wgslsmith_index_u32(20682u, 21u)]), true), vec2<bool>(false, any(global2[_wgslsmith_index_u32(~33577u, 21u)])), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec3<bool>(true, true, true))), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true))), true));
    return vec2<bool>(var_3.x, _wgslsmith_mult_u32(0u, abs(u_input.c.x)) < arg_3.b.b.x);
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_3(func_3(func_2(), u_input.b.wyw, _wgslsmith_f_op_f32(410f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(227f - -1000f)))), Struct_2(Struct_1(9927u, abs(u_input.a)), arg_0.b)));
    var var_1 = Struct_1(~(~u_input.c.x), vec4<u32>(~(65084u & u_input.a.x), u_input.a.x, 0u, 19050u));
    let var_2 = u_input.b.x;
    var var_3 = 393f;
    let var_4 = var_1.b;
    return vec2<bool>(any(!(!(!var_0.a))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    global0 = u_input.b.x;
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2155f), -649f, -601f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(372f, 1225f, -744f) * vec3<f32>(310f, -466f, -970f)))), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 731f, 843f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(328f, -899f, 1494f)) * vec3<f32>(1032f, 1444f, 168f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1144f * -1045f)), -205f, _wgslsmith_f_op_f32(min(-1205f, -1000f)))));
    global2 = array<vec3<bool>, 21>();
    var var_1 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(func_1(Struct_2(Struct_1(67440u, vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.a.x)), Struct_1(u_input.a.x, vec4<u32>(u_input.c.x, 7027u, u_input.c.x, 42437u)))), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(false, false, true)), true))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-501f, 2657f, _wgslsmith_f_op_f32(f32(-1f) * -809f)));
}

