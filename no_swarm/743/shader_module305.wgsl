struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<i32, 1> = array<i32, 1>(-1447i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = Struct_1(false && !(true && !arg_2.a));
    global2 = array<i32, 1>();
    global2 = array<i32, 1>();
    var var_0 = arg_3.a;
    global1 = Struct_1(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f + -2254f) + _wgslsmith_f_op_f32(step(-811f, 669f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-800f))));
    return all(vec3<bool>(false, select(arg_3.a, all(vec2<bool>(true, true)), true), true));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    global2 = array<i32, 1>();
    global0 = Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(1u, 33094u) ^ vec2<u32>(u_input.a.x, 76163u)) % 32u), 1u)] > 0i);
    let var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x ^ _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, ~33515u))), 1u)];
    let var_1 = arg_2;
    let var_2 = var_1;
    return global0.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_3(0i, arg_1, func_3(-min(global2[_wgslsmith_index_u32(33391u, 1u)], ~(-8097i)), Struct_1(func_2(-1265f, firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(45362u, 1u)], global2[_wgslsmith_index_u32(22949u, 1u)], -33412i, global2[_wgslsmith_index_u32(0u, 1u)])), Struct_1(global0.a))), arg_1));
    global0 = func_3(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(((30753u >> (0u % 32u)) >> (_wgslsmith_div_u32(39767u, u_input.a.x) % 32u)) | countOneBits(u_input.a.x), 1u)]), var_0, var_0);
    var var_1 = 20103u;
    var var_2 = func_3(~(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 33903u), 1u)]), arg_1, func_3(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 432i, -11527i)), -firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 1i, 29343i))), func_3(1i, func_3(global2[_wgslsmith_index_u32(countOneBits(4294967295u), 1u)], Struct_1(global0.a), func_3(0i, Struct_1(global1.a), arg_1)), func_3(_wgslsmith_sub_i32(0i, global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), func_3(-25587i, var_0, Struct_1(true)), Struct_1(true))), func_3(~global2[_wgslsmith_index_u32(u_input.a.x, 1u)], func_3(global2[_wgslsmith_index_u32(u_input.a.x, 1u)] ^ 1i, func_3(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_1(var_0.a), arg_1), Struct_1(true)), func_3(global2[_wgslsmith_index_u32(~0u, 1u)], arg_1, func_3(-2147483647i, Struct_1(global0.a), Struct_1(false))))));
    var_1 = 1u;
    return Struct_1(any(!arg_0.xw));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(select(vec4<bool>(any(!vec4<bool>(true, global0.a, true, global0.a)), any(!vec3<bool>(global0.a, global0.a, global0.a)), any(vec2<bool>(global1.a, true)) || (global1.a && false), global0.a), !vec4<bool>(!global1.a, true, true, select(true, global1.a, global0.a)), func_1(_wgslsmith_mult_vec3_u32(~u_input.a, vec3<u32>(1415u, 43656u, 43858u)), u_input.a.zx, Struct_1(global1.a), Struct_1(true))), func_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(u_input.a.x, 0u, false), ~u_input.a.x), 1u)], Struct_1(func_2(-567f, vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 1i, global2[_wgslsmith_index_u32(43134u, 1u)]), Struct_1(true)) | global0.a), Struct_1(_wgslsmith_f_op_f32(ceil(771f)) >= _wgslsmith_f_op_f32(-272f - -156f))));
    var var_0 = func_4(vec4<bool>(!global0.a, any(select(vec2<bool>(true, true), vec2<bool>(global0.a, global1.a), vec2<bool>(global0.a, global0.a))), _wgslsmith_f_op_f32(trunc(-551f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -482f))), false), Struct_1(!func_2(_wgslsmith_f_op_f32(f32(-1f) * -673f), vec4<i32>(-28483i, -60516i, -1i, 30549i), Struct_1(global0.a))));
    let var_1 = ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a.x >> (65213u % 32u), 4294967295u, u_input.a.x, min(u_input.a.x, u_input.a.x)), abs(firstLeadingBit(vec4<u32>(1u, 116910u, 56473u, u_input.a.x))), select(!vec4<bool>(true, global0.a, global0.a, global0.a), !vec4<bool>(true, global0.a, var_0.a, true), !vec4<bool>(false, false, var_0.a, var_0.a))), firstLeadingBit(~vec4<u32>(u_input.a.x, 20667u, 349u, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1589f, 941f, -321f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1980f, 1598f, 911f), vec3<f32>(-1479f, -1018f, 1000f))))), vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, -895f, 839f)))))));
    var var_3 = func_4(select(select(select(vec4<bool>(false, var_0.a, global0.a, var_0.a), !vec4<bool>(var_0.a, global1.a, false, global1.a), true), !vec4<bool>(false, true, var_0.a, true), func_1(~vec3<u32>(0u, 4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), func_3(65006i, Struct_1(false), Struct_1(false)), func_4(vec4<bool>(false, true, var_0.a, true), Struct_1(false)))), select(!select(vec4<bool>(false, global1.a, var_0.a, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(global1.a, true, global0.a, false)), select(select(vec4<bool>(global0.a, false, true, true), vec4<bool>(global1.a, true, global0.a, global1.a), vec4<bool>(false, global1.a, false, var_0.a)), vec4<bool>(false, var_0.a, var_0.a, global0.a), !vec4<bool>(global0.a, true, global0.a, false)), true), !vec4<bool>(func_3(-15135i, Struct_1(global1.a), Struct_1(global1.a)).a, global0.a, var_2.x == var_2.x, var_0.a)), Struct_1(any(!vec4<bool>(false, false, global1.a, false))));
    var var_4 = global2[_wgslsmith_index_u32(~(firstTrailingBit(u_input.a.x) >> (countOneBits(11051u) % 32u)), 1u)] >> (11476u % 32u);
    var var_5 = func_3(-20088i, func_3(global2[_wgslsmith_index_u32(4294967295u, 1u)] | global2[_wgslsmith_index_u32(min(max(1u, var_1.x), var_1.x), 1u)], func_3(_wgslsmith_sub_i32(-19061i, countOneBits(1i)), Struct_1(false), func_4(vec4<bool>(global0.a, var_3.a, false, true), Struct_1(false))), func_3(~_wgslsmith_mult_i32(-19239i, global2[_wgslsmith_index_u32(var_1.x, 1u)]), func_3(firstLeadingBit(0i), func_3(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_1(false), Struct_1(false)), Struct_1(false)), func_4(select(vec4<bool>(false, global0.a, var_0.a, var_0.a), vec4<bool>(true, global1.a, true, false), var_3.a), func_4(vec4<bool>(var_0.a, var_3.a, var_3.a, true), Struct_1(false))))), func_3((i32(-1i) * -14127i) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2786i, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), vec4<i32>(0i, -5139i, 15551i, 2147483647i)), ~(-1i)), Struct_1(select(all(vec2<bool>(var_0.a, var_0.a)), !global1.a, true)), func_4(!(!vec4<bool>(false, false, var_3.a, global1.a)), Struct_1(!var_3.a))));
    var var_6 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-50343i, global2[_wgslsmith_index_u32(min(28969u, 0u), 1u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 50395u), 1u)]);
}

