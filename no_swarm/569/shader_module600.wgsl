struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1i), Struct_1(11221i), Struct_1(2635i), Struct_1(12701i), Struct_1(-34660i), Struct_1(11308i), Struct_1(39460i), Struct_1(1i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(-35715i), Struct_1(2903i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(-19103i), Struct_1(-30119i), Struct_1(16344i), Struct_1(35619i), Struct_1(-15223i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(1i));

var<private> global1: array<i32, 24> = array<i32, 24>(33480i, -44899i, -4974i, -26783i, -1i, -1i, 1i, 34377i, -1i, -1i, -1586i, 74573i, -21175i, 2147483647i, -28692i, 2147483647i, 2147483647i, i32(-2147483648), 17025i, 38654i, i32(-2147483648), -6497i, 1i, 1i);

var<private> global2: array<u32, 10>;

var<private> global3: array<Struct_1, 2>;

var<private> global4: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    var var_0 = vec3<f32>(1234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 269f)) - 3323f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-arg_2.x))));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), -483f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -224f)))), 1709f));
    let var_3 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 1u) >> (~vec4<u32>(0u, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, arg_3, u_input.a.x, arg_3), vec4<u32>(arg_3, 81939u, arg_3, u_input.a.x)))));
    let var_4 = Struct_1(42048i);
    return ~(-17390i);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(~select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 24u)] | global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28271u, 10u)], 24u)], func_3(vec2<bool>(true, false), vec2<bool>(true, true), vec2<f32>(1623f, 772f), 0u), true) ^ ~(~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9740u, 10u)], 10u)], 24u)], 0i)));
    var var_1 = global0[_wgslsmith_index_u32(~(24052u ^ max(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 10u)], 1u)), u_input.a.x)), 26u)];
    global0 = array<Struct_1, 26>();
    let var_2 = abs(-vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 10u)], 24u)], 4743i), vec3<i32>(1i, var_0.a, var_1.a)), -var_1.a, select(false, true, false)), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 24u)], 2147483647i) >> (max(0u, u_input.a.x) % 32u), 0i, ~firstLeadingBit(1i)));
    let var_3 = true;
    return select(vec2<bool>(var_3, var_3), select(select(vec2<bool>(var_3, 1u <= global2[_wgslsmith_index_u32(1u, 10u)]), select(vec2<bool>(var_3, true), vec2<bool>(true, true), true), false), vec2<bool>(var_3, var_3), var_3), select(!(!vec2<bool>(var_3, false)), !(!select(vec2<bool>(var_3, true), vec2<bool>(var_3, var_3), var_3)), select(!vec2<bool>(true, var_3), select(!vec2<bool>(var_3, var_3), !vec2<bool>(var_3, true), vec2<bool>(true, true)), select(!vec2<bool>(var_3, false), vec2<bool>(var_3, var_3), all(vec4<bool>(var_3, true, var_3, false))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    global2 = array<u32, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-710f, -1565f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-531f, -2409f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1068f, -914f), vec2<f32>(297f, -1281f))))))));
    let var_2 = !(!all(select(func_2(), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), func_2())));
    let var_3 = !vec4<bool>(var_2, var_2, var_2, !(!(!var_2)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~61262u, 10u)], 2u)], vec3<u32>(~abs(u_input.a.x), 16287u, 73803u), Struct_1(firstTrailingBit(-_wgslsmith_sub_i32(-84329i, global1[_wgslsmith_index_u32(0u, 24u)]))));
    var var_1 = ~vec4<i32>(func_1(func_1(global3[_wgslsmith_index_u32(1u, 2u)], ~vec3<u32>(1u, 15219u, u_input.a.x), Struct_1(var_0.a)), (vec3<u32>(4294967295u, 63042u, u_input.a.x) >> (vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]) % vec3<u32>(32u))) << (~vec3<u32>(4294967295u, u_input.a.x, global2[_wgslsmith_index_u32(21946u, 10u)]) % vec3<u32>(32u)), func_1(Struct_1(var_0.a), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15686u, 10u)], 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), func_1(Struct_1(2147483647i), vec3<u32>(global2[_wgslsmith_index_u32(0u, 10u)], 4294967295u, 4294967295u), global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))).a, firstTrailingBit(-abs(1i)), -min(7540i, var_0.a), global1[_wgslsmith_index_u32(~abs(~u_input.a.x), 24u)]);
    var var_2 = ~(-abs(select(var_0.a, _wgslsmith_mod_i32(-37753i, 1i), true)));
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(floor(-659f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1975f), -747f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2394f + 889f), 552f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1108f)), _wgslsmith_f_op_f32(round(557f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(709f, -638f, 147f, -300f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(109f, -1132f)))))), 533f);
}

