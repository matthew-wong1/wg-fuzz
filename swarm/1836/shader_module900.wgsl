struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<u32, 20>;

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(1000f, 772f, 146f, -400f));

var<private> global3: Struct_1 = Struct_1(993f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-743f, global3.a, -556f, arg_1.a) * vec4<f32>(global2.a.x, -995f, 128f, 1478f)) - global2.a))));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)));
    global3 = arg_0;
    let var_0 = global2.a;
    global1 = !(!any(vec3<bool>(u_input.a.x >= -2147483647i, all(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, true, false)))));
    return global3.a;
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 20>();
    global2 = Struct_2(vec4<f32>(191f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(step(global2.a.x, -732f))))), _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(global3.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(184f), Struct_1(global2.a.x), global0[_wgslsmith_index_u32(1217u, 20u)])), _wgslsmith_f_op_f32(f32(-1f) * -151f)))));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(global2.a * vec4<f32>(180f, -701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) + _wgslsmith_f_op_f32(948f - global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-937f + global3.a)))));
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1159f + -863f))) * _wgslsmith_f_op_f32(f32(-1f) * -291f)));
    global0 = array<u32, 20>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(global2.a * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, 585f, global3.a, -1043f)), _wgslsmith_f_op_vec4_f32(exp2(global2.a))))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = func_2();
    var var_2 = var_1;
    global3 = arg_2;
    global3 = arg_2;
    return min(vec4<i32>(u_input.a.x, -13902i, u_input.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 20433i), vec3<i32>(u_input.a.x, u_input.a.x, -1i))), ~vec4<i32>(abs(-1838i), ~(-22709i), -u_input.a.x, ~u_input.a.x)) ^ _wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(-vec4<i32>(-28463i, 0i, -6792i, u_input.a.x), -vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x)), ~vec4<i32>(-19796i, firstLeadingBit(-17218i), ~(-61059i), 2147483647i), min(-(vec4<i32>(u_input.a.x, u_input.a.x, -18245i, u_input.a.x) | vec4<i32>(-1i, -1i, -73892i, 34835i)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -68368i)), vec4<i32>(1i, -44195i, u_input.a.x, u_input.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = arg_0;
    let var_2 = Struct_3(all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false))), select(vec2<bool>(select(any(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(69687u, 20u)] <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], false), all(vec4<bool>(true, false, true, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true)))), !(((global3.a <= global2.a.x) && true) | all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))));
    let var_3 = _wgslsmith_f_op_f32(floor(global2.a.x));
    let var_4 = var_2.b;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1185f - var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global2.a.x)))));
    let var_1 = Struct_2(global2.a);
    global3 = func_4(var_1, select(firstTrailingBit(vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), i32(-1i) * -2147483647i, ~(-2147483647i))), _wgslsmith_sub_vec4_i32(-func_1(-1357f, 4294967295u, Struct_1(var_1.a.x), -1072f), -firstLeadingBit(vec4<i32>(1i, 11545i, u_input.a.x, -2147483647i))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), true)));
    var var_2 = 1u;
    let var_3 = false;
    var var_4 = Struct_3(false | var_3, !vec2<bool>(true, any(select(vec4<bool>(var_3, false, false, true), vec4<bool>(true, false, var_3, false), var_3))), true | all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 1u, ~4294967295u, ~0u));
}

