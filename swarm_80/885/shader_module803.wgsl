struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(42108u, 40012u, 1115u, 4294967295u), vec4<u32>(50903u, 4294967295u, 1u, 0u), vec4<u32>(1u, 31231u, 25914u, 1u));

var<private> global2: array<Struct_1, 20>;

var<private> global3: vec4<i32> = vec4<i32>(27669i, i32(-2147483648), 2904i, -49858i);

var<private> global4: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> i32 {
    global1 = array<vec4<u32>, 3>();
    global0 = array<Struct_2, 22>();
    var var_0 = global0[_wgslsmith_index_u32(arg_0, 22u)];
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -889f), var_0.b.a, var_0.a.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(520f, -210f, 541f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a) - vec3<f32>(var_0.b.a, -621f, 185f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(183f, var_0.a.a, var_0.a.a) * vec3<f32>(857f, -752f, -801f))), _wgslsmith_div_vec3_f32(vec3<f32>(-114f, var_0.b.a, var_0.b.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, 172f, var_0.b.a) - vec3<f32>(-152f, var_0.a.a, var_0.b.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1143f, 1368f, var_0.b.a)))));
    return u_input.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<bool>) -> i32 {
    global0 = array<Struct_2, 22>();
    var var_0 = -vec4<i32>(-6226i, -2147483647i, func_3(~38852u), -global3.x);
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_2 = global0[_wgslsmith_index_u32(~19040u, 22u)];
    let var_3 = Struct_1(672f);
    return (u_input.c.x & ~(-79866i)) ^ ~(~(0i << (_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.a) % 32u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    var var_0 = 1u;
    let var_1 = select(arg_2.xxz, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(global3.x, func_2(arg_1, Struct_2(global2[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<u32>(arg_0.x, 23808u, u_input.a), vec2<bool>(false, true))), min(_wgslsmith_sub_i32(global3.x, arg_2.x), 1i)), u_input.c.x, u_input.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true || (arg_0.x < 491u), true, _wgslsmith_add_i32(2147483647i, u_input.c.x) >= _wgslsmith_sub_i32(arg_2.x, global3.x)), true));
    let var_2 = arg_1.a;
    var var_3 = vec2<f32>(-795f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(919f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2)))))));
    var var_4 = arg_1;
    return !any(vec4<bool>(true, false, !all(global4[_wgslsmith_index_u32(0u, 20u)]), (-2147483647i > u_input.c.x) && true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~1u));
    var var_1 = !(global3.x <= u_input.c.x);
    var var_2 = !vec2<bool>(func_1(u_input.b, Struct_1(-963f), -u_input.c) & all(vec2<bool>(false, true)), true);
    let var_3 = _wgslsmith_f_op_f32(max(175f, 1154f));
    global0 = array<Struct_2, 22>();
    var_1 = var_2.x;
    var var_4 = Struct_1(-660f);
    let var_5 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, u_input.b.x), 1u), max(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, select(firstTrailingBit(~(-global3.x)), 21820i, (_wgslsmith_add_u32(0u, var_5) >> (~u_input.b.x % 32u)) < reverseBits(45262u)));
}

