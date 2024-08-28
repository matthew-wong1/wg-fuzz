struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

var<private> global1: array<bool, 28> = array<bool, 28>(false, false, true, false, false, true, true, true, true, true, false, true, true, false, true, true, true, false, false, false, false, false, true, true, false, false, true, false);

var<private> global2: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), -20097i, 1i);

var<private> global3: array<vec4<u32>, 27>;

var<private> global4: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = !global1[_wgslsmith_index_u32(11974u, 28u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(927f, -173f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1217f - 1029f), _wgslsmith_f_op_f32(max(220f, -107f)))) - 539f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, -450f)))))));
    global2 = select(~_wgslsmith_div_vec4_i32(-firstLeadingBit(vec4<i32>(-10514i, -48021i, u_input.c, 10864i)), vec4<i32>(-1i) * -vec4<i32>(2827i, -6296i, global2.x, u_input.c)), vec4<i32>(u_input.c, min(-2820i, 0i), (-23782i & ~global2.x) << (min(u_input.b, 21648u) % 32u), u_input.c), global2.x >= min(-u_input.c, 2147483647i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1233f * _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + var_1.x))))));
    global1 = array<bool, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-531f, var_1.x) + 901f));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<vec4<f32>, 28>();
    let var_0 = arg_1;
    global1 = array<bool, 28>();
    global4 = array<vec2<bool>, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.a))))), _wgslsmith_f_op_f32(164f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), -220f))), any(!vec2<bool>(arg_0, true)))), 1i);
    return var_0;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_mult_u32(select(4294967295u, u_input.a, global1[_wgslsmith_index_u32(~4294967295u, 28u)]), reverseBits(firstLeadingBit(1u)));
    global0 = array<vec4<f32>, 28>();
    let var_1 = countOneBits(-vec4<i32>(-global2.x ^ u_input.c, arg_2, ~_wgslsmith_add_i32(global2.x, arg_2), -1i));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1890f)), _wgslsmith_f_op_f32(-arg_0))));
    var var_3 = func_2(30562u >= u_input.a, Struct_1(564f, ~countOneBits(_wgslsmith_add_i32(var_1.x, arg_2))), arg_2);
    return -var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 27>();
    var var_0 = vec4<i32>(global2.x, -min(global2.x ^ func_1(1000f, vec2<bool>(global1[_wgslsmith_index_u32(30661u, 28u)], false), -8005i), reverseBits(countOneBits(0i))), abs(abs(reverseBits(_wgslsmith_mult_i32(-1i, -18871i)))), global2.x);
    global2 = -vec4<i32>(-_wgslsmith_mod_i32(var_0.x, abs(3264i)), func_1(_wgslsmith_f_op_f32(min(-416f, -104f)), !global4[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_clamp_i32(-31671i, -1i, var_0.x)) & (0i << (~u_input.a % 32u)), global2.x, ~_wgslsmith_dot_vec3_i32(global2.ywz, var_0.wyy) << (u_input.a % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(654f + -2230f))))), firstLeadingBit(_wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(var_0.x, -3907i))) | u_input.c);
    global3 = array<vec4<u32>, 27>();
    global4 = array<vec2<bool>, 21>();
    var var_2 = select(~u_input.c, countOneBits(_wgslsmith_mod_i32(global2.x, -1i)) | -func_2(false & global1[_wgslsmith_index_u32(0u, 28u)], func_2(global1[_wgslsmith_index_u32(u_input.a, 28u)], Struct_1(133f, -18419i), -1i), var_0.x).b, false);
    global1 = array<bool, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(35860u, 20267u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, 1u)), select(vec2<bool>(global1[_wgslsmith_index_u32(21104u, 28u)], false), global4[_wgslsmith_index_u32(u_input.b, 21u)], global4[_wgslsmith_index_u32(u_input.a, 21u)])) & vec2<u32>(u_input.a >> (u_input.a % 32u), select(u_input.a, u_input.a, false))), vec3<u32>(~68205u, max(u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 26224u), vec2<u32>(26848u, u_input.a)), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(0u, 27u)], vec4<u32>(u_input.a, u_input.b, u_input.a, 9084u)))), u_input.b), ~(~u_input.a) << (u_input.a % 32u));
}

