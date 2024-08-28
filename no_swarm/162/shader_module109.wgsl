struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(22746u, 24046u, 4294967295u), vec3<u32>(1u, 84862u, 0u), vec3<u32>(82805u, 1u, 1u), vec3<u32>(0u, 4294967295u, 5514u), vec3<u32>(112417u, 83617u, 41427u), vec3<u32>(45653u, 4294967295u, 1u), vec3<u32>(19617u, 0u, 18226u), vec3<u32>(1u, 0u, 26237u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 4362u, 93367u), vec3<u32>(4294967295u, 11097u, 0u), vec3<u32>(0u, 1u, 47133u), vec3<u32>(21805u, 452u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(97114u, 81650u, 55051u), vec3<u32>(11356u, 7940u, 0u), vec3<u32>(0u, 26344u, 0u), vec3<u32>(4294967295u, 27860u, 0u), vec3<u32>(21276u, 4294967295u, 4294967295u), vec3<u32>(18481u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(10108u, 4294967295u, 1956u), vec3<u32>(19974u, 31160u, 0u), vec3<u32>(20950u, 1u, 34045u), vec3<u32>(85561u, 19004u, 3483u));

var<private> global1: array<u32, 19>;

var<private> global2: vec3<f32>;

var<private> global3: i32 = 1i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = firstTrailingBit(vec4<u32>(firstTrailingBit(15468u), 1u, 1u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(~4294967295u | arg_1, 26u)], vec3<u32>(_wgslsmith_mod_u32(4294967295u, arg_1), u_input.a, u_input.a))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2495f, global2.x))))), var_0.zz, select(vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), select(true, true, all(vec4<bool>(false, true, true, true)))), vec4<bool>(true, true, select(all(vec4<bool>(false, false, true, false)), true, any(vec3<bool>(true, true, false))), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global1 = array<u32, 19>();
    var var_2 = vec2<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(~(~arg_2.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-18965i, 13842i, 0i), vec3<i32>(2147483647i, u_input.c, arg_2.x))) & ((arg_2.x | 0i) << (29231u % 32u)));
    let var_3 = select(var_1.d.yyz, vec3<bool>(true, all(select(var_1.d, select(vec4<bool>(var_1.d.x, var_1.d.x, true, var_1.d.x), var_1.d, var_1.d), var_1.d)), var_1.d.x), !(!(!(!var_1.d.x))));
    return ~vec2<u32>(~0u, min(14048u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 1u, var_1.c.x), 19u)]) | (73038u | arg_1));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), global2.yz, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 388f, global2.x, global2.x), vec4<f32>(global2.x, -482f, -585f, -205f), arg_1.a)))), 30405u, select(vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 19u)]) % vec2<u32>(32u)), vec2<i32>(2147483647i, -1i), vec2<bool>(true, false)) | ~vec2<i32>(u_input.c, u_input.c)), vec4<bool>(-1i > abs(u_input.c), arg_1.a, any(vec3<bool>(true, select(arg_1.a, true, false), true)), arg_1.a));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-11418i, u_input.c), vec2<i32>(~_wgslsmith_mod_i32(-2147483647i, u_input.c) & _wgslsmith_add_i32(u_input.c ^ -25357i, u_input.c ^ 0i), -1i));
    var var_2 = _wgslsmith_f_op_f32(step(2003f, -324f));
    var var_3 = countOneBits(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c.x, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.x, 19u)], 26u)], vec3<u32>(var_0.c.x, 12811u, global1[_wgslsmith_index_u32(u_input.a, 19u)]))), 19u)]), 19u)], reverseBits(_wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(select(43831u, 54868u, true), 19u)]))));
    let var_4 = _wgslsmith_add_u32(u_input.a, u_input.a);
    return arg_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global0 = array<vec3<u32>, 26>();
    var var_0 = func_2(Struct_3(false), Struct_3(true));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, ~4294967295u), 19u)];
    global0 = array<vec3<u32>, 26>();
    let var_2 = select(vec4<u32>(84915u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(80880u), 30377u, _wgslsmith_div_u32(u_input.a, u_input.b)), global1[_wgslsmith_index_u32(~u_input.a, 19u)]), u_input.a, 38576u), countOneBits(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(17837u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]), 17435u, ~1u, ~64418u))), vec4<bool>(all(!select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), false)), false, !var_0.a, true == (global2.x != global2.x)));
    return !(true | select(all(vec4<bool>(true, var_0.a, var_0.a, true)), any(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false), var_0.a)), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), 122f, all(vec4<bool>(true, true, true, true))))), global2.x);
    let var_0 = false;
    var var_1 = Struct_3(true);
    var var_2 = ~u_input.a > max(1339u, 106063u);
    var_1 = Struct_3(var_0);
    let var_3 = !vec3<bool>(true, !func_1(~vec4<i32>(u_input.c, -1i, 9025i, u_input.c), Struct_1(17573i)), var_0);
    var var_4 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c, -38440i), ~vec2<i32>(u_input.c, 17355i)), vec2<i32>(~u_input.c, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(1000f, 931f)), _wgslsmith_f_op_f32(max(global2.x, -299f)), -622f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-598f, global2.x, -854f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(365f, global2.x, global2.x), vec3<f32>(1147f, global2.x, -775f)))), vec3<bool>(true, false, true)))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a, firstTrailingBit(90099u), 1u), 26u)] ^ max(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.b, 46347u, u_input.a))), ~vec3<u32>(50252u, u_input.b, 1u)), _wgslsmith_sub_u32(func_3(vec4<f32>(global2.x, global2.x, -241f, global2.x), ~global1[_wgslsmith_index_u32(countOneBits(0u), 19u)], select(vec2<i32>(var_4.a, u_input.c), -vec2<i32>(-17815i, 22678i), var_3.yx)).x, ~17846u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(floor(global2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), -(max(4547i, max(1i, 1i)) | firstTrailingBit(var_4.a)));
}

