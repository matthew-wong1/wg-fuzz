struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> u32 {
    global1 = array<Struct_1, 31>();
    let var_0 = all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))) & any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), any(vec3<bool>(true, true, true))));
    var var_1 = min(vec2<u32>(arg_3, abs(0u)), ~(~(vec2<u32>(49320u, 64806u) ^ vec2<u32>(1u, arg_1)) >> (select(vec2<u32>(u_input.a, 0u), select(vec2<u32>(arg_1, u_input.b), vec2<u32>(u_input.d, 0u), vec2<bool>(var_0, var_0)), true) % vec2<u32>(32u))));
    var_1 = vec2<u32>(arg_1, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(~arg_3, _wgslsmith_sub_u32(u_input.a, 1u), countOneBits(u_input.a))), countOneBits(~(~vec3<u32>(45641u, arg_3, 1u)))));
    let var_2 = reverseBits(select(arg_0.yx, arg_0.zy, !select(vec2<bool>(false, false), vec2<bool>(var_0, true), select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), false))));
    return 1u;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> i32 {
    var var_0 = ~vec2<u32>(~u_input.a, u_input.d) >> (_wgslsmith_add_vec2_u32(vec2<u32>(35369u, ~0u >> (u_input.b % 32u)), vec2<u32>(_wgslsmith_mod_u32(1u, 24131u), func_3(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 7u)], u_input.c, u_input.c), u_input.d, global1[_wgslsmith_index_u32(34307u, 31u)], u_input.d) & firstTrailingBit(u_input.a))) % vec2<u32>(32u));
    var var_1 = 1919f;
    var var_2 = min(~reverseBits(-vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 7u)], u_input.c, global0[_wgslsmith_index_u32(26510u, 7u)], -2147483647i)), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(44901u, 36456u), u_input.d), 7u)], 18339i, ~(-18093i), firstLeadingBit(0i)));
    var var_3 = Struct_1(0i);
    let var_4 = false;
    return ~min(var_3.a, -(~1i));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<f32> {
    global1 = array<Struct_1, 31>();
    global0 = array<i32, 7>();
    global1 = array<Struct_1, 31>();
    let var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(max(18136i, u_input.c), 53983i ^ func_2(true, vec2<bool>(true, true))), _wgslsmith_mult_i32(u_input.c, _wgslsmith_sub_i32(-51080i << (0u % 32u), global0[_wgslsmith_index_u32(min(0u, 41378u), 7u)]))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(abs(vec2<u32>(33618u, 18229u)), vec2<u32>(33406u >> (0u % 32u), u_input.a | u_input.d), vec2<bool>(false, true)), vec2<u32>(~u_input.b, _wgslsmith_sub_u32(u_input.d, u_input.b))), vec2<u32>(1u, u_input.b)), 31u)];
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1648f, arg_0, arg_0, arg_0)) * vec4<f32>(-534f, arg_1, arg_1, -1175f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1338f, -2408f, -1174f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -889f, arg_0, 489f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, 574f, arg_0, -494f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-461f, 2122f, arg_0, 987f) + vec4<f32>(arg_1, 1000f, 452f, 430f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_1, -1000f, 228f), vec4<f32>(arg_1, arg_0, arg_1, -986f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, -946f, 224f, arg_0) - vec4<f32>(-1836f, -810f, arg_1, 1836f))), vec4<bool>(false, any(vec4<bool>(true, false, false, true)), true, false)))), select(select(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true || any(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, true, true)), !all(vec2<bool>(true, false)), select(true, select(false, true, true), false)), vec4<bool>(true, ~u_input.b < countOneBits(u_input.a), true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<i32, 7>();
    var var_1 = ~1u;
    let var_2 = u_input.c != 0i;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -867f), 1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-1793f)), _wgslsmith_f_op_f32(max(1f, -427f)), 2524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -857f))))));
    let var_4 = Struct_1(~(-583i | func_2(true, vec2<bool>(var_2, true))));
    var_0 = !any(!(!select(vec4<bool>(true, false, false, var_2), vec4<bool>(var_2, var_2, var_2, false), true)));
    var_1 = _wgslsmith_add_u32(0u, select(~4294967295u, u_input.d, !var_2));
    var var_5 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>((u_input.b | 41860u) >> (u_input.b % 32u), 0u, ~(~u_input.a), ~max(62577u, 4294967295u)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(39481u, u_input.b, 18271u, 4294967295u)), vec4<u32>(u_input.b, 25911u, 5308u, 0u) & vec4<u32>(0u, u_input.b, u_input.a, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.a, max(~abs(vec4<i32>(u_input.c, -22443i, var_4.a, 2147483647i)), firstLeadingBit(firstLeadingBit(abs(vec4<i32>(-44450i, u_input.c, global0[_wgslsmith_index_u32(u_input.d, 7u)], var_4.a))))), abs(firstTrailingBit(~abs(u_input.b))), ~firstTrailingBit(19452u), _wgslsmith_dot_vec3_i32(countOneBits((vec3<i32>(-7094i, -1i, var_4.a) ^ vec3<i32>(-55150i, 2147483647i, global0[_wgslsmith_index_u32(0u, 7u)])) << (vec3<u32>(4294967295u, 51469u, 1u) % vec3<u32>(32u))), ~(~min(vec3<i32>(0i, var_4.a, -27837i), vec3<i32>(-19786i, 63296i, var_4.a)))));
}

