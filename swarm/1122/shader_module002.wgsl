struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(23540u, 4294967295u, 6762u, 13362u));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(false, false, vec2<f32>(-691f, 1776f), -48496i), Struct_1(true, true, vec2<f32>(1000f, 1334f), 8982i), Struct_1(false, true, vec2<f32>(-1115f, -1034f), 2147483647i), Struct_1(false, false, vec2<f32>(-543f, 1101f), -5219i), Struct_1(true, false, vec2<f32>(1000f, -1154f), -1i), Struct_1(true, true, vec2<f32>(1210f, 180f), -17056i), Struct_1(false, true, vec2<f32>(251f, 1474f), 0i), Struct_1(true, true, vec2<f32>(-1286f, 1000f), 2147483647i), Struct_1(false, false, vec2<f32>(1215f, 940f), 14640i), Struct_1(true, false, vec2<f32>(1233f, -2065f), 2147483647i));

var<private> global2: array<u32, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> bool {
    global2 = array<u32, 32>();
    global0 = Struct_2(vec4<u32>(reverseBits(~global2[_wgslsmith_index_u32(0u << (global0.a.x % 32u), 32u)]), max(~(~global2[_wgslsmith_index_u32(67315u, 32u)]), reverseBits(0u << (u_input.c.x % 32u))), global0.a.x, 32876u));
    let var_0 = Struct_2(firstLeadingBit(~global0.a));
    let var_1 = 191f;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1151f * _wgslsmith_f_op_f32(max(arg_0, -1946f)))))));
    return !(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(var_2 - var_2))) < -165f);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = arg_0;
    var var_2 = firstLeadingBit(~arg_0.x);
    let var_3 = var_0;
    var var_4 = Struct_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-181f, -921f)))))), arg_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), -704f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_div_vec2_f32(vec2<f32>(-365f, -167f), vec2<f32>(597f, -1485f)))))), ~u_input.a);
    return Struct_2(reverseBits(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.a, global0.a), ~global0.a))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(true, false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-340f, 600f) * vec2<f32>(-726f, -114f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, -487f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -604f) + vec2<f32>(arg_2, -155f))))), u_input.a);
    var var_1 = func_2(vec3<i32>(-(~arg_1.x), select(_wgslsmith_sub_i32(var_0.d, 0i), 1i, func_3(1f)), -2147483647i << (global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_0.a, global0.a), 32u)] % 32u)), true, arg_0, arg_3.x);
    var_0 = global1[_wgslsmith_index_u32(1u | firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, 0u)), 10u)];
    var var_2 = !(!(!(!select(vec3<bool>(true, var_0.a, arg_3.x), vec3<bool>(var_0.a, false, var_0.b), arg_3.x))));
    var_2 = !(!(!select(select(vec3<bool>(var_0.b, false, false), vec3<bool>(false, false, false), vec3<bool>(var_2.x, var_0.a, true)), select(vec3<bool>(arg_3.x, true, true), vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.a, false, var_2.x)), false)));
    return Struct_2(_wgslsmith_div_vec4_u32((~vec4<u32>(var_1.a.x, 4294967295u, 23944u, 0u) ^ arg_0.a) ^ vec4<u32>(0u, max(76945u, arg_0.a.x), min(0u, 104976u), 1u), ~firstLeadingBit(var_1.a)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    global0 = func_4(func_2(min(min(-vec3<i32>(-3858i, -2147483647i, -1i), vec3<i32>(arg_3, u_input.a, arg_3) | vec3<i32>(u_input.a, 31396i, u_input.a)), vec3<i32>(u_input.a, min(2147483647i, 19456i), -u_input.a)), 10825i >= _wgslsmith_mod_i32(~arg_2.x, ~0i), arg_1, true), arg_2, 328f, vec2<bool>(func_3(_wgslsmith_f_op_f32(step(-1088f, _wgslsmith_f_op_f32(sign(415f))))), any(vec3<bool>(true, true, true))));
    global2 = array<u32, 32>();
    var var_0 = Struct_1(false, true, vec2<f32>(-697f, _wgslsmith_f_op_f32(f32(-1f) * -792f)), -2147483647i);
    var var_1 = global1[_wgslsmith_index_u32(~max(34851u, min(14353u, 0u)) >> (global2[_wgslsmith_index_u32(~4294967295u, 32u)] % 32u), 10u)];
    let var_2 = Struct_1(true, var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-437f, var_0.c.x) * var_1.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) + vec2<f32>(var_1.c.x, -2123f)))), var_1.d);
    return func_2(-(~arg_2.yyw), func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-612f - var_1.c.x), var_1.c.x))), func_4(func_4(Struct_2(countOneBits(arg_1.a)), ~vec4<i32>(arg_2.x, -1i, -34346i, u_input.a) & firstLeadingBit(arg_2), 165f, select(!vec2<bool>(var_1.b, var_1.a), !vec2<bool>(var_2.a, var_2.a), select(vec2<bool>(false, var_2.a), vec2<bool>(true, false), true))), -arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(467f + -652f))), _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(494f + var_0.c.x)))), vec2<bool>(!(var_2.b && var_0.a), var_0.a)), !var_2.b);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global0 = Struct_2(~func_2(~(-vec3<i32>(u_input.a, u_input.a, u_input.a)), true, func_2(~vec3<i32>(u_input.a, -1i, u_input.a), any(vec3<bool>(true, true, true)), func_4(Struct_2(vec4<u32>(0u, 1u, 1u, global2[_wgslsmith_index_u32(33728u, 32u)])), vec4<i32>(u_input.a, u_input.a, u_input.a, 44235i), -1000f, vec2<bool>(true, true)), global2[_wgslsmith_index_u32(4294967295u, 32u)] > global0.a.x), true).a);
    let var_0 = Struct_2(firstLeadingBit(max(~_wgslsmith_add_vec4_u32(arg_1.a, arg_1.a), firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 32u)], 32u)], 3506u, arg_1.a.x, 13095u)))));
    let var_1 = global1[_wgslsmith_index_u32(~0u, 10u)];
    global2 = array<u32, 32>();
    let var_2 = global1[_wgslsmith_index_u32(26378u, 10u)];
    return var_0.a.x >> (global0.a.x % 32u);
}

fn func_6(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(select(-644f, arg_2.c.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 10u)];
    var var_1 = vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(func_6(max(_wgslsmith_sub_vec2_u32(~global0.a.wy, u_input.c.yy), vec2<u32>(1u, 0u) << (firstLeadingBit(vec2<u32>(34474u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 32u)], 32u)], 32u)])) % vec2<u32>(32u))), func_5(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 32u)], 32u)], 32u)], 4294967295u), func_1(Struct_2(global0.a), Struct_2(vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 32u)], 32u)], 1u, global0.a.x)), vec4<i32>(-46298i, 0i, var_0.d, var_0.d), -1i), -542f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, -739f))) | ~abs(u_input.c.x), global1[_wgslsmith_index_u32(16974u, 10u)])), var_0.c.x);
    var var_2 = global0.a.x;
    global0 = Struct_2(vec4<u32>(global0.a.x, 0u, global0.a.x, ~(~27998u)));
    var var_3 = var_0.c.x;
    var var_4 = Struct_1(any(vec2<bool>(false, true)), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) & any(vec3<bool>(true || var_0.b, true, -709f <= var_0.c.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.c))), var_0.d & var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(-1360f);
}

