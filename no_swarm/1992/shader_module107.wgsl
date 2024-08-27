struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(17738i, 28800i, 22181i, i32(-2147483648));

var<private> global1: u32 = 0u;

var<private> global2: array<i32, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_i32(0i, _wgslsmith_div_i32(arg_1.b, i32(-1i) * -1i));
    let var_1 = false;
    global0 = array<i32, 4>();
    let var_2 = Struct_1(arg_1.a, -1i);
    let var_3 = arg_1;
    return any(!vec3<bool>(arg_1.a | any(vec4<bool>(var_1, var_2.a, var_2.a, var_3.a)), var_2.a, !(false | arg_1.a)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 857f;
    var var_1 = Struct_1(all(!select(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false)), vec2<bool>(true, true), arg_0)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, ~_wgslsmith_sub_u32(~1u, ~u_input.b.x)), 4u)]);
    global0 = array<i32, 4>();
    let var_2 = !vec4<bool>(func_3(firstLeadingBit(_wgslsmith_clamp_i32(var_1.b, var_1.b, global0[_wgslsmith_index_u32(0u, 4u)])), Struct_1(var_1.a && var_1.a, -40298i)), !var_1.a, false, true);
    var var_3 = abs(vec4<u32>(1u, ~u_input.b.x, 23190u, 1u));
    return Struct_1(162f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1306f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(817f, var_0, arg_0)), _wgslsmith_f_op_f32(trunc(var_0))))), countOneBits(-35236i));
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global1 = 1u;
    let var_0 = -31906i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.x;
    var var_0 = func_1();
    let var_1 = func_2(false);
    var_0 = var_1;
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -268f, -112f, -1048f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1601f)), _wgslsmith_f_op_f32(trunc(-283f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(314f, -493f, false)))), _wgslsmith_f_op_f32(max(175f, 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-439f * -113f), 152f)))), _wgslsmith_f_op_f32(f32(-1f) * -1380f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1247f, -527f)))) + vec2<f32>(_wgslsmith_div_f32(1037f, _wgslsmith_f_op_f32(ceil(1000f))), -1000f)));
}

