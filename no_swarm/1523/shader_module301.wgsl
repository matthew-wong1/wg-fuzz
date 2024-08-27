struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<i32, 25> = array<i32, 25>(-1i, -2097i, 8157i, i32(-2147483648), 17595i, -1i, 7995i, 31942i, 1i, 2147483647i, i32(-2147483648), 15613i, 1i, 2147483647i, -1i, 1i, -32394i, 1i, -63837i, 13238i, -23193i, 5957i, 1i, 1i, -1i);

var<private> global2: array<vec4<u32>, 4>;

var<private> global3: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> vec4<bool> {
    global3 = all(arg_1);
    var var_0 = Struct_1(max(min(vec3<u32>(u_input.a, min(8298u, u_input.a), 37338u), vec3<u32>(1u, abs(0u), ~u_input.a)), vec3<u32>(63149u, u_input.a >> (50970u % 32u), u_input.a >> (u_input.a % 32u)) << (countOneBits(min(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 22568u, 50381u))) % vec3<u32>(32u))));
    global2 = array<vec4<u32>, 4>();
    let var_1 = min(-countOneBits(vec4<i32>(abs(2147483647i), arg_0.x, ~(-2147483647i), 35137i)), firstTrailingBit(~(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], 1173i, -1i, global1[_wgslsmith_index_u32(u_input.a, 25u)]) >> (max(global2[_wgslsmith_index_u32(38296u, 4u)], vec4<u32>(1u, 0u, 36544u, 1u)) % vec4<u32>(32u)))));
    var var_2 = global0.x;
    return select(select(!(!select(vec4<bool>(global0.x, arg_1.x, false, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, false, false, global0.x))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_1.x, true, global0.x, global0.x), global0.x), !vec4<bool>(global0.x, arg_1.x, true, global0.x), all(arg_1.xx)), select(select(vec4<bool>(true, global0.x, arg_1.x, arg_1.x), vec4<bool>(false, true, false, global0.x), false), select(vec4<bool>(false, false, true, global0.x), vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true)), select(arg_1.x, arg_1.x, arg_1.x)), select(select(vec4<bool>(true, false, true, global0.x), vec4<bool>(true, arg_1.x, false, arg_1.x), false), !vec4<bool>(arg_1.x, true, arg_1.x, true), true)), false), !vec4<bool>(any(!arg_1.xx), all(vec4<bool>(false, false, true, false)) && global0.x, arg_1.x, false), !select(!select(vec4<bool>(arg_1.x, false, false, false), vec4<bool>(arg_1.x, global0.x, false, arg_1.x), vec4<bool>(false, arg_1.x, global0.x, false)), vec4<bool>(true, arg_1.x, true, global1[_wgslsmith_index_u32(0u, 25u)] >= -29085i), select(!vec4<bool>(global0.x, true, arg_1.x, false), vec4<bool>(false, false, arg_1.x, true), !vec4<bool>(false, arg_1.x, false, arg_1.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    global3 = true;
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(max(abs(arg_3.a), vec3<u32>(arg_3.a.x, arg_3.a.x, 51941u)), arg_3.a), arg_3.a));
    var var_1 = 1i;
    global2 = array<vec4<u32>, 4>();
    global0 = arg_2.xzy;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) + -1796f))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-666f))), -1021f, _wgslsmith_f_op_f32(func_4(vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(arg_1.a.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), !(71758u != _wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(45415u, 23244u, arg_1.a.x))), select(select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), !vec4<bool>(arg_0.x, false, true, true), func_3(vec3<i32>(global1[_wgslsmith_index_u32(1u, 25u)], 47119i, global1[_wgslsmith_index_u32(1u, 25u)]), arg_0)), func_3(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(arg_2.a.x, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)]), arg_0), func_3(vec3<i32>(global1[_wgslsmith_index_u32(arg_1.a.x, 25u)], global1[_wgslsmith_index_u32(50226u, 25u)], global1[_wgslsmith_index_u32(39293u, 25u)]), !arg_0)), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) - _wgslsmith_f_op_f32(-729f * 200f)), -303f))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.a.x, 0u), 4294967295u) >> (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1.a.x, u_input.a), vec3<u32>(24347u, arg_2.a.x, u_input.a))) % 32u), _wgslsmith_div_u32(select(abs(arg_2.a.x), 48318u, true), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(arg_1.a.x, 6117u, arg_1.a.x)), 27313u))), ~_wgslsmith_mod_u32(~_wgslsmith_add_u32(3906u, arg_2.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(72727u, 28226u), arg_1.a.zy)));
    var_1 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(13989u, 0u) ^ ~arg_1.a.x, max(max(arg_2.a.x, select(1u, 14370u, global0.x)), 95450u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_1.a.x, 0u)), vec2<u32>(1u, 40332u)), min(43900u, arg_2.a.x), 1077u), vec3<u32>(~37117u, reverseBits(0u), 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(-1283f * _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-477f, -460f, 711f > var_0.x)) - var_0.x)));
    global3 = !global0.x;
    return reverseBits(arg_2.a);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = ~(~func_2(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(u_input.a, arg_0, 43522u)), Struct_1(vec3<u32>(22319u, u_input.a, 4294967295u)))) | vec3<u32>(u_input.a, _wgslsmith_sub_u32(~(u_input.a & arg_0), arg_0), 0u);
    var var_1 = Struct_1(func_2(!(!select(vec3<bool>(true, true, global0.x), vec3<bool>(false, true, false), true)), Struct_1(vec3<u32>(~u_input.a, firstLeadingBit(21265u), 1u)), Struct_1(vec3<u32>(u_input.a, 17762u, var_0.x) | (var_0 ^ vec3<u32>(0u, arg_0, 26934u)))));
    global3 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true, global0.x, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, false, global0.x, global0.x)), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, true), vec4<bool>(true, false, global0.x, global0.x)), !vec4<bool>(false, true, global0.x, false))));
    let var_2 = Struct_1(vec3<u32>(~(~u_input.a), arg_0, 0u));
    let var_3 = 0u;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 4>();
    global2 = array<vec4<u32>, 4>();
    var var_0 = func_1(~62252u);
    let var_1 = firstLeadingBit(-_wgslsmith_add_i32(global1[_wgslsmith_index_u32(19423u, 25u)], global1[_wgslsmith_index_u32(24749u, 25u)] >> (4294967295u % 32u))) | ~global1[_wgslsmith_index_u32(1u, 25u)];
    var var_2 = select(select(select(vec4<bool>(global0.x, global0.x, !global0.x, false), !vec4<bool>(global0.x, global0.x, false, global0.x), false), !select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(global0.x, false, false, true)), any(vec2<bool>(true, true))), select(func_3(max(max(vec3<i32>(global1[_wgslsmith_index_u32(3063u, 25u)], var_1, var_1), vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 25u)], var_1, 28520i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(16802u, 25u)], -17981i, 0i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 25u)], 1i, 1i), vec3<i32>(-48390i, var_1, 2147483647i))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, global0.x, global0.x), global0.x), vec3<bool>(global0.x, global0.x, true), global0.x)), vec4<bool>(func_3(vec3<i32>(0i, global1[_wgslsmith_index_u32(19417u, 25u)], global1[_wgslsmith_index_u32(var_0.a.x, 25u)]), vec3<bool>(global0.x, global0.x, global0.x)).x | !global0.x, max(2147483647i, -1i) <= (var_1 & var_1), global0.x, any(vec4<bool>(global0.x, false, global0.x, true)) | true), vec4<bool>(!any(vec4<bool>(global0.x, global0.x, global0.x, true)), true, true, global0.x)), global0.x);
    var var_3 = u_input.a;
    global2 = array<vec4<u32>, 4>();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstTrailingBit(~vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 25u)], 2147483647i, var_1)), select(true, func_3(vec3<i32>(var_1, var_1, var_1) ^ vec3<i32>(-2147483647i, -51991i, -16048i), !var_2.wzw).x, !(global1[_wgslsmith_index_u32(43875u, 25u)] <= -2147483647i)), select(!vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(8001u < u_input.a, select(false, var_2.x, global0.x), var_2.x, true), false), func_1(~(~u_input.a)))));
    let var_5 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1679f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-272f)) * _wgslsmith_f_op_f32(select(-570f, 1341f, false))), _wgslsmith_f_op_f32(ceil(-434f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1188f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1215f, 1402f, 141f), vec3<f32>(-1261f, -1282f, 550f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2322f, -1456f, -524f))) - vec3<f32>(_wgslsmith_f_op_f32(-688f + -120f), _wgslsmith_f_op_f32(step(521f, -528f)), -1246f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1412f * 1115f), _wgslsmith_div_f32(-231f, 630f), _wgslsmith_f_op_f32(-960f + -485f)))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(25663u, ~(~firstTrailingBit(58983u))));
}

