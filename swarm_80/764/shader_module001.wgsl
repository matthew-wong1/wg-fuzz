struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: Struct_1 = Struct_1(2147483647i, vec4<f32>(-2866f, 271f, -1159f, 606f));

var<private> global3: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = -1000f;
    return var_0.b.x;
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-global2.b.x);
    var var_1 = -_wgslsmith_div_i32(u_input.c.x, countOneBits(max(u_input.e, global2.a >> (36316u % 32u))));
    var_1 = global2.a;
    var var_2 = Struct_1(~(-2147483647i), _wgslsmith_div_vec4_f32(global2.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(trunc(global2.b))), _wgslsmith_f_op_vec4_f32(ceil(global2.b))))));
    var var_3 = Struct_1(i32(-1i) * -13916i, var_2.b);
    return vec4<f32>(-207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * 341f)), -1642f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + var_3.b.x)), _wgslsmith_f_op_f32(abs(235f)))));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(16279i, _wgslsmith_f_op_vec4_f32(func_3()));
    global3 = false;
    var var_0 = 0u;
    return Struct_1(2147483647i, vec4<f32>(-1045f, _wgslsmith_f_op_f32(917f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * global2.b.x))), 509f, 1000f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> bool {
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~(~42463u), global0.x, 10710u), select(abs(~vec3<u32>(0u, 0u, global0.x)), countOneBits(~vec3<u32>(1u, u_input.b.x, 1u)), !select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), ~(~abs(~vec3<u32>(4294967295u, 1u, global0.x))));
    global2 = func_2();
    var_0 = (vec3<u32>(abs(0u), 1u, _wgslsmith_div_u32(u_input.b.x, var_0.x)) >> (vec3<u32>(_wgslsmith_sub_u32(~29426u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(81959u, global0.x), vec2<u32>(var_0.x, 0u)), ~(138760u | var_0.x)) % vec3<u32>(32u))) & vec3<u32>(1u, global0.x, _wgslsmith_sub_u32(1u, u_input.b.x));
    global1 = array<vec2<bool>, 18>();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(global2.b));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.x + -581f), global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b.x)) * _wgslsmith_f_op_f32(-574f + 188f)), _wgslsmith_f_op_f32(func_1(Struct_1(global2.a, global2.b))), global2.b.x), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.x - -619f), _wgslsmith_f_op_f32(f32(-1f) * -1368f), true)), global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - global2.b.x), -2200f))));
    global0 = u_input.b;
    global1 = array<vec2<bool>, 18>();
    let var_0 = func_5(vec2<bool>(select(21484u <= u_input.b.x, true, true) & !all(vec4<bool>(false, true, true, false)), true), vec2<bool>(func_4(func_2(), func_2(), _wgslsmith_f_op_vec2_f32(step(global2.b.xx, global2.b.zz)), 1u), true));
    var var_1 = ~(~vec2<i32>(-var_0.a, 0i));
    global1 = array<vec2<bool>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, global0.x, 0u, 1u), abs(vec4<u32>(global0.x, u_input.b.x, u_input.b.x, 0u)))));
}

