struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(4294967295u, 56497u, 0u, 4294967295u, 94777u, 18642u, 53850u, 0u, 0u, 4294967295u, 1u, 68789u, 4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    global0 = array<u32, 13>();
    var var_0 = arg_3;
    let var_1 = select(!(!select(select(vec4<bool>(arg_2.x, true, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_2.x, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_2.x)), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), !vec4<bool>(arg_2.x, arg_0.x, true, arg_0.x))), select(!(!vec4<bool>(arg_2.x, arg_2.x, true, false)), select(vec4<bool>(true, any(arg_0), true, any(arg_2)), vec4<bool>(any(vec4<bool>(false, arg_0.x, false, true)), false, !arg_2.x, arg_0.x), select(select(vec4<bool>(false, false, arg_2.x, true), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, true, arg_0.x, false)), select(vec4<bool>(true, arg_2.x, true, true), vec4<bool>(true, false, arg_2.x, true), false), vec4<bool>(arg_0.x, true, arg_2.x, false))), !select(vec4<bool>(false, false, true, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_2.x, true), vec4<bool>(false, false, true, false), arg_2.x))), arg_0.x);
    global0 = array<u32, 13>();
    var var_2 = !(u_input.a > global0[_wgslsmith_index_u32(~(~arg_3.a.x) | 39593u, 13u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(650f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c, _wgslsmith_f_op_f32(935f - var_0.c)) * _wgslsmith_f_op_f32(sign(-238f))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1773f)));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), u_input.c.x, vec2<bool>(false, false), Struct_1(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 17496u), 2147483647i, -1775f, vec4<u32>(u_input.a, u_input.b, 4294967295u, global0[_wgslsmith_index_u32(0u, 13u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1651f)) + _wgslsmith_f_op_f32(f32(-1f) * -409f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1557f)), true)))));
    global0 = array<u32, 13>();
    let var_1 = any(vec3<bool>(true, true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)))) || true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1228f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-784f + -1463f), _wgslsmith_f_op_f32(f32(-1f) * -736f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-542f, 697f), vec2<f32>(-1505f, 1219f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, -3635f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(946f)), _wgslsmith_div_f32(-938f, -1147f)) + vec2<f32>(-562f, -1869f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1834f)), -1629f) * vec2<f32>(_wgslsmith_f_op_f32(473f + 1513f), -1344f))));
    return 1678f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1000f))), _wgslsmith_f_op_f32(-1393f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f + -3182f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.b, 8170u, 51231u) << (vec4<u32>(77829u, u_input.a, u_input.b, u_input.a) % vec4<u32>(32u))), vec4<u32>(85317u, 1u, 4294967295u << (u_input.b % 32u), global0[_wgslsmith_index_u32(~73885u, 13u)])), ~(~vec4<u32>(25277u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31382u, 13u)], 13u)], global0[_wgslsmith_index_u32(8497u, 13u)], 50273u))), countOneBits(firstTrailingBit(~(~u_input.c.x))), 1f, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(79002u, 13u)], global0[_wgslsmith_index_u32(89066u, 13u)]) << (~vec4<u32>(global0[_wgslsmith_index_u32(0u, 13u)], 51114u, 38701u, global0[_wgslsmith_index_u32(4294967295u, 13u)]) % vec4<u32>(32u)), firstTrailingBit(abs(vec4<u32>(0u, u_input.a, u_input.b, 4294967295u)))), vec4<u32>(1u, abs(global0[_wgslsmith_index_u32(36197u, 13u)]), global0[_wgslsmith_index_u32(~52488u, 13u)], ~0u) & vec4<u32>(firstLeadingBit(50053u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 13u)], 4294967295u), 13u)], 1u, abs(77473u))));
    global0 = array<u32, 13>();
    let var_2 = reverseBits(vec3<u32>(_wgslsmith_mult_u32(~u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10026u, 24786u), vec2<u32>(4294967295u, var_1.d.x)), 13u)]), u_input.a, 4294967295u)) << (~var_1.d.wzx % vec3<u32>(32u));
    var_1 = Struct_1(var_1.d, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(select(18541i, u_input.c.x, false), countOneBits(u_input.d)), vec2<i32>(var_1.b, ~var_1.b))), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(exp2(var_1.c))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 36750u, var_2.x, global0[_wgslsmith_index_u32(u_input.b, 13u)]), ~var_1.a, vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 13u)], 1u, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(22137u, 1u, var_1.d.x, 6218u), _wgslsmith_mod_vec4_u32(var_1.d, var_1.d))), ~select(var_1.d >> (vec4<u32>(4294967295u, var_1.a.x, var_1.d.x, var_2.x) % vec4<u32>(32u)), abs(vec4<u32>(var_1.a.x, u_input.a, 9319u, 1u)), vec4<bool>(true, false, true, false))));
    return Struct_1(vec4<u32>(_wgslsmith_mod_u32(0u, min(_wgslsmith_mult_u32(14327u, var_1.d.x), 4294967295u)), 4816u, ~var_2.x, var_1.d.x), -var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1450f), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 13>();
    var var_0 = Struct_1(vec4<u32>(~(~12581u), ~global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, 0u), 13u)], u_input.a, u_input.b), ~_wgslsmith_mod_i32(u_input.d, -u_input.c.x), _wgslsmith_f_op_f32(min(154f, 178f)), vec4<u32>(global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(~u_input.a, 13u)]), 13u)], ~_wgslsmith_sub_u32(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)], 13u)]), global0[_wgslsmith_index_u32(1u, 13u)], u_input.b) | ~(~(vec4<u32>(u_input.b, u_input.a, 95479u, global0[_wgslsmith_index_u32(23866u, 13u)]) << (vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43387u, 13u)], 13u)], 13u)], 13u)], 1u) % vec4<u32>(32u)))));
    var var_1 = all(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), false, any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_clamp_u32(abs(global0[_wgslsmith_index_u32(1u, 13u)]), ~firstLeadingBit(abs(39270u) & abs(var_0.a.x)), 4294967295u);
    var_0 = func_1();
    let var_3 = func_1();
    let var_4 = 0i;
    var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(490f, -278f))) - var_3.c))));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.c)))) + var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(61755u, ~(~(-max(8721i, var_0.b))));
}

