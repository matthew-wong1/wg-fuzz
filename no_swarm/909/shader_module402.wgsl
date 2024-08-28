struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-42541i, 0i, 1i, -28048i, -33703i, 3891i, -1i, -1i, -1i, -1i);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)));

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<vec4<bool>, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 21u)];
    global2 = array<Struct_1, 21>();
    var var_1 = var_0.a.x & any(!select(!vec4<bool>(false, var_0.a.x, var_0.a.x, false), global3[_wgslsmith_index_u32(0u, 27u)], select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(false, false, var_0.a.x, var_0.a.x), true)));
    global3 = array<vec4<bool>, 27>();
    global0 = array<i32, 10>();
    return vec3<bool>(any(!vec4<bool>(var_0.a.x, true, var_0.a.x | true, u_input.a.x < 14198u)), var_0.a.x, ~max(u_input.b, ~15948u) != ((u_input.b & u_input.a.x) << (_wgslsmith_sub_u32(1u, u_input.b) % 32u)));
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<bool>, 27>();
    global1 = array<Struct_1, 2>();
    let var_0 = func_3();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1561f, _wgslsmith_div_f32(-466f, -838f))))))));
    var_1 = 544f;
    return global1[_wgslsmith_index_u32(u_input.a.x, 2u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = vec4<bool>(min(11995u, u_input.a.x) == (u_input.a.x >> ((35997u << (u_input.a.x % 32u)) % 32u)), false, arg_1.a.x, arg_3.x);
    global3 = array<vec4<bool>, 27>();
    global3 = array<vec4<bool>, 27>();
    var var_1 = Struct_2(u_input.b & (13459u | u_input.a.x), Struct_1(arg_3), vec2<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, 1u) << (4294967295u % 32u), firstTrailingBit(reverseBits(u_input.b)))));
    global0 = array<i32, 10>();
    return ~select(firstLeadingBit(vec4<u32>(108328u, 19338u, 21098u, 0u) >> (vec4<u32>(var_1.a, 1u, u_input.b, 52524u) % vec4<u32>(32u))), vec4<u32>(u_input.b, _wgslsmith_mult_u32(11389u, u_input.b), firstLeadingBit(var_1.c.x), var_1.a), all(!vec3<bool>(var_0.x, arg_1.a.x, var_0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    let var_0 = vec3<u32>(arg_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_1.x, 4294967295u, arg_2.a), vec4<u32>(arg_1.x, 0u, 37607u, 4294967295u)), ~vec4<u32>(788u, u_input.a.x, arg_2.c.x, arg_1.x) << ((vec4<u32>(4294967295u, 31847u, 58668u, 41271u) | vec4<u32>(4294967295u, u_input.a.x, 31263u, arg_1.x)) % vec4<u32>(32u))), func_4(-global0[_wgslsmith_index_u32(1u, 10u)] & (i32(-1i) * -2147483647i), func_2(), arg_0.a.x, !arg_0.a)), ~abs(_wgslsmith_clamp_u32(~arg_1.x, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(20476u, arg_2.c.x, arg_2.a), arg_1))));
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(~u_input.b, 4294967295u, ~47299u), vec3<u32>(_wgslsmith_div_u32(arg_1.x, 14559u), arg_2.a, min(~0u, ~arg_2.c.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - 1000f), 953f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1664f, -791f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1065f, 1029f) - vec2<f32>(737f, 1877f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1139f, 198f)), vec2<bool>(func_3().x, !arg_0.a.x))), true)));
    global1 = array<Struct_1, 2>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-478f, var_2.x, -960f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1436f, var_2.x, 1000f) * vec3<f32>(var_2.x, -356f, -972f))))), false)));
    return !all(select(vec4<bool>(any(arg_2.b.a), arg_2.b.a.x & arg_2.b.a.x, arg_2.b.a.x, all(vec2<bool>(arg_0.a.x, arg_0.a.x))), global3[_wgslsmith_index_u32(5110u, 27u)], vec4<bool>(!arg_0.a.x, select(true, arg_0.a.x, false), arg_0.a.x != arg_2.b.a.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a, vec2<u32>(min(~abs(u_input.a.x), 35691u), u_input.b), !all(vec2<bool>(func_1(Struct_1(vec3<bool>(true, false, true)), vec3<u32>(65344u, u_input.b, u_input.a.x), Struct_2(0u, Struct_1(vec3<bool>(true, false, true)), u_input.a)), false)));
    var var_1 = ~6820i;
    var var_2 = Struct_1(select(vec3<bool>(75839u > reverseBits(var_0.x), false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(28101u, 23815u), 10u)] == ~global0[_wgslsmith_index_u32(u_input.b, 10u)]), vec3<bool>(true, true, true), vec3<bool>(true, !func_1(Struct_1(vec3<bool>(true, false, false)), vec3<u32>(1299u, 1u, u_input.a.x), Struct_2(u_input.a.x, Struct_1(vec3<bool>(false, true, false)), vec2<u32>(var_0.x, 1u))), global0[_wgslsmith_index_u32(countOneBits(4294967295u), 10u)] >= _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))));
    global2 = array<Struct_1, 21>();
    global0 = array<i32, 10>();
    var var_3 = global2[_wgslsmith_index_u32(0u, 21u)];
    var var_4 = 832f;
    let var_5 = global2[_wgslsmith_index_u32(firstTrailingBit(~var_0.x), 21u)];
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-528f * -111f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, 147f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1530f)) + _wgslsmith_div_f32(-981f, 1330f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1433f - 391f))))));
}

