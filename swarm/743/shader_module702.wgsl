struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 4>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 708f, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -1000f)) + vec3<f32>(152f, arg_2, 1341f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1132f, 255f, 899f), vec3<f32>(-145f, -1588f, arg_2), true)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, 1000f, arg_2)), arg_1)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -1286f))))), _wgslsmith_div_vec3_f32(vec3<f32>(-291f, arg_2, -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, -1368f, -2237f), vec3<f32>(arg_2, -330f, arg_2))))), (~global1.x ^ countOneBits(-24278i)) >= abs(global1.x)))));
    global0 = array<vec4<u32>, 25>();
    var var_1 = Struct_1(select(select(select(select(vec3<bool>(arg_1.x, arg_0.x, true), global2.a, global2.a), select(global2.a, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_0.x, arg_1.x, global2.a.x)), vec3<bool>(arg_1.x, true, false)), select(!arg_1, !vec3<bool>(global2.a.x, false, arg_0.x), global2.a), arg_0.x && true), arg_1, false));
    global0 = array<vec4<u32>, 25>();
    let var_2 = max(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(global1.x, -24138i, u_input.a.x) & vec3<i32>(73033i, global3[_wgslsmith_index_u32(0u, 4u)], 2147483647i)) | (_wgslsmith_add_vec3_i32(vec3<i32>(-32614i, 0i, 2147483647i), vec3<i32>(0i, global1.x, -1i)) >> (~vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -global3[_wgslsmith_index_u32(4294967295u, 4u)], -4102i), vec3<i32>(global1.x, u_input.a.x, ~global3[_wgslsmith_index_u32(0u, 4u)]))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a.x), vec3<i32>(global3[_wgslsmith_index_u32(60560u, 4u)], u_input.a.x, 2147483647i)) ^ ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-59486i, 1i, global1.x), vec3<i32>(global3[_wgslsmith_index_u32(0u, 4u)], 2147483647i, global3[_wgslsmith_index_u32(4574u, 4u)])), select(vec3<i32>(global3[_wgslsmith_index_u32(35802u, 4u)], global3[_wgslsmith_index_u32(49646u, 4u)], 2147483647i), vec3<i32>(28026i, global1.x, global3[_wgslsmith_index_u32(0u, 4u)]), arg_1.x)));
    return !vec3<bool>(!all(select(vec4<bool>(global2.a.x, var_1.a.x, true, true), vec4<bool>(false, false, false, true), true)), global2.a.x, !arg_1.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(func_3(vec2<bool>(global2.a.x, true), global2.a, _wgslsmith_f_op_f32(430f - 529f)));
    let var_1 = Struct_1(var_0.a);
    global0 = array<vec4<u32>, 25>();
    var var_2 = ~firstLeadingBit(~select(vec3<u32>(53609u, 17945u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(false, var_1.a.x, global2.a.x))) << (max(_wgslsmith_mod_vec3_u32(~vec3<u32>(71604u, 36524u, 50149u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(5446u, 1u, 0u), vec3<u32>(2987u, 30572u, 0u), vec3<u32>(0u, 4294967295u, 13845u))), ~(~vec3<u32>(0u, 4294967295u, 28371u))) % vec3<u32>(32u));
    let var_3 = true;
    return Struct_1(var_1.a);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global3 = array<i32, 4>();
    global0 = array<vec4<u32>, 25>();
    let var_0 = arg_1;
    global0 = array<vec4<u32>, 25>();
    var var_1 = _wgslsmith_f_op_f32(-arg_2);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    let var_0 = func_1(1568f, Struct_1(!global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2121f) * 594f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f + -1000f) * -1000f), 143f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-572f, -981f)), _wgslsmith_f_op_f32(round(349f)), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 957f)))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_f_op_f32(abs(-129f)))), -634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f * 1063f)), _wgslsmith_f_op_f32(ceil(-399f)))));
    global1 = -(-_wgslsmith_mod_vec2_i32(u_input.a, u_input.a) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u))) << (select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8898u, 19088u, 16502u, 28388u), ~vec4<u32>(4294967295u, 13630u, 4294967295u, 4294967295u)), 1u), ~_wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, 19859u), vec2<u32>(4294967295u, 20664u)), vec2<u32>(89221u, 1u)), global2.a.x) % vec2<u32>(32u));
    let var_2 = vec4<u32>(~select(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(50673u, 4294967295u), vec2<u32>(40264u, 1u)), 0u), var_0.a.x), 4294967295u, ~abs(79903u), _wgslsmith_dot_vec2_u32(firstLeadingBit(~max(vec2<u32>(951u, 0u), vec2<u32>(49568u, 1u))), vec2<u32>(~(~19739u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(45553u, 4984u, 88173u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 1u)), ~7923u, var_0.a.x))));
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(~450u, ~(~var_2.x), 78827u), ~9469u | var_2.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_2.zw, vec2<u32>(var_2.x, var_2.x)), var_2.x), ~abs(var_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 84467u, ~var_2.x, var_2.x), vec4<u32>(abs(_wgslsmith_add_u32(1u, var_2.x)), ~_wgslsmith_sub_u32(37873u, var_2.x), _wgslsmith_sub_u32(4294967295u, var_2.x), ~77923u)));
}

