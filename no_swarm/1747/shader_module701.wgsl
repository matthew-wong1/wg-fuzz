struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(0i, 0i, 39166i), vec3<i32>(1i, 28446i, 1i), vec3<i32>(115519i, -59202i, -17519i), vec3<i32>(-24590i, 11232i, 8825i), vec3<i32>(1i, 1i, -1i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 4433i), vec3<i32>(38372i, 1i, 10523i), vec3<i32>(-11008i, -14783i, 14636i), vec3<i32>(i32(-2147483648), -57170i, 1i), vec3<i32>(34458i, -450i, i32(-2147483648)), vec3<i32>(11801i, 34752i, -32187i), vec3<i32>(-4243i, -6950i, 25872i), vec3<i32>(1i, -63262i, -3457i), vec3<i32>(2147483647i, -1i, -2849i), vec3<i32>(1i, 27180i, -13816i), vec3<i32>(6891i, 2147483647i, -1i), vec3<i32>(-25291i, -14020i, 0i), vec3<i32>(0i, -10609i, -14182i), vec3<i32>(i32(-2147483648), i32(-2147483648), -16923i), vec3<i32>(-24838i, -13715i, 2147483647i), vec3<i32>(-21447i, -1i, 51347i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    global2 = array<vec3<i32>, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-354f - arg_1.a), true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 1000f, arg_1.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, -1000f, arg_1.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, -286f, -154f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1015f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, arg_1.a)))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)), -733f) - _wgslsmith_f_op_vec3_f32(func_3(u_input.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -218f), true)))));
    global0 = array<vec2<i32>, 29>();
    global1 = Struct_2(!(!(!(!vec2<bool>(global1.a.x, false)))));
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    return Struct_1(-448f, false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.a, -1855f)), _wgslsmith_f_op_f32(-var_0.a))), all(vec4<bool>(global1.a.x, (u_input.c | 0u) < 1u, true, all(vec3<bool>(false, false, global1.a.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(func_2(u_input.c).a, -1000f)), var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_i32(0i, -33835i), func_2(84118u))).x - 183f))) * 1202f);
    let var_2 = vec2<i32>((max(27811i, _wgslsmith_add_i32(u_input.d, -729i)) ^ u_input.d) ^ -(~53597i), -1i);
    var var_3 = u_input.c;
    return ~countOneBits(31214u);
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<i32>, 29>();
    let var_0 = u_input.a & ~func_4(Struct_2(select(vec2<bool>(global1.a.x, false), vec2<bool>(false, global1.a.x), global1.a.x)), func_2(27695u));
    return Struct_2(!(!(!vec2<bool>(global1.a.x, global1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(vec2<bool>(u_input.d >= _wgslsmith_mult_i32(u_input.d ^ u_input.d, -1i), any(!vec3<bool>(true, global1.a.x, true))));
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 29u)];
    var var_1 = _wgslsmith_add_i32(~(max(-1i, i32(-1i) * -7675i) & var_0.x), 17019i >> (~firstTrailingBit(u_input.a & 72836u) % 32u));
    var var_2 = func_1();
    var var_3 = ~(~(~vec4<u32>(u_input.b, u_input.c, u_input.b, abs(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(firstLeadingBit(global0[_wgslsmith_index_u32(var_3.x, 29u)]), min(-vec2<i32>(u_input.d, -10601i), vec2<i32>(1i, u_input.d))));
}

