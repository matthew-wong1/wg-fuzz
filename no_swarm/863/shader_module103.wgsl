struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 1> = array<f32, 1>(1924f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = u_input.a.x;
    let var_1 = any(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec2<bool>(true, true))));
    var var_2 = vec3<u32>(~(~(~65845u)), var_0, abs(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(52035u, u_input.a.x, u_input.a.x, 13631u) >> (vec4<u32>(4294967295u, u_input.a.x, 34074u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(var_0, 1u, 40866u, u_input.a.x)))));
    let var_3 = 1013f;
    global1 = array<f32, 1>();
    return false | (_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 1u)]), -426f) + -1309f) < _wgslsmith_f_op_f32(1188f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1026f))))));
}

fn func_2() -> i32 {
    let var_0 = select(select(vec3<bool>(func_3(), true, ~u_input.b.x < reverseBits(global0.a)), vec3<bool>(false, true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))), (_wgslsmith_sub_u32(34554u, 0u) << (min(1u, u_input.a.x) % 32u)) > ~firstLeadingBit(u_input.a.x)), select(vec3<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), any(vec3<bool>(true, false, true))), select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(true, false, false))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)] >= -1923f, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(2075f + -840f) > global1[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, true), 1u)])));
    global0 = Struct_1(_wgslsmith_sub_i32(u_input.b.x, ~min(0i | u_input.b.x, -2147483647i)));
    global1 = array<f32, 1>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1342f + global1[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 1u)])))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(935f - global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_f_op_f32(sign(1388f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2428f, 351f) + vec2<f32>(global1[_wgslsmith_index_u32(20548u, 1u)], -448f)) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)]))), any(vec2<bool>(false, select(true, var_0.x, var_0.x))))), max(-2147483647i, _wgslsmith_add_i32(~(-52386i), global0.a)));
    global0 = Struct_1(-13361i);
    return 72263i << (_wgslsmith_sub_u32(~_wgslsmith_add_u32(firstTrailingBit(1u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 9832u) % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(abs(14632u), u_input.a.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, -2107f)), u_input.b.x >> (_wgslsmith_dot_vec3_u32(~u_input.a << (vec3<u32>(u_input.a.x, var_0, u_input.a.x) % vec3<u32>(32u)), countOneBits(select(vec3<u32>(4294967295u, var_0, 40364u), vec3<u32>(var_0, u_input.a.x, 0u), false))) % 32u));
    global0 = Struct_1(4518i);
    let var_2 = !(~_wgslsmith_sub_u32(0u, var_0) < 38631u) | arg_1;
    let var_3 = Struct_2(!(!vec3<bool>(var_2, true, false)), Struct_1(u_input.b.x), _wgslsmith_f_op_f32(-var_1.a.x), u_input.b.xz);
    return Struct_1(arg_0.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(select(select(select(vec3<bool>(arg_3.x, true, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, true), arg_3.yyw), select(vec3<bool>(false, true, true), select(vec3<bool>(false, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), true), !vec3<bool>(false, true, arg_3.x)), select(arg_3.xwy, select(arg_3.ywx, arg_3.zzx, true), false)), select(arg_3.ywy, vec3<bool>(arg_3.x, all(vec3<bool>(false, true, true)), any(arg_3)), !vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), select(arg_3.ywx, arg_3.xwz, select(!arg_3.wxz, arg_3.xxx, all(arg_3.wwz)))), Struct_1(arg_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1605f)) * _wgslsmith_f_op_f32(-1021f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f - -1125f)))), u_input.b.xy);
    global0 = func_4(select(select(vec4<i32>(-1i) * -vec4<i32>(global0.a, -30962i, arg_1.a, var_0.d.x), vec4<i32>(-2147483647i, select(0i, -11020i, true), -11422i, -16564i), select(arg_3, !vec4<bool>(var_0.a.x, false, false, arg_3.x), vec4<bool>(arg_3.x, var_0.a.x, arg_3.x, true))), countOneBits(min(vec4<i32>(var_0.d.x, var_0.d.x, -8776i, 7971i), vec4<i32>(var_0.b.a, -1i, 1i, 40691i)) | -vec4<i32>(var_0.d.x, -1i, var_0.b.a, arg_2.b)), vec4<bool>(!(!arg_3.x), var_0.a.x, all(select(vec4<bool>(false, false, arg_3.x, true), arg_3, arg_3)), true)), all(var_0.a), u_input.b);
    var var_1 = abs(~_wgslsmith_div_vec3_i32(~(vec3<i32>(2147483647i, u_input.b.x, var_0.d.x) | vec3<i32>(1i, 0i, -1i)), firstLeadingBit(u_input.b)));
    var_0 = Struct_2(select(vec3<bool>(all(arg_3.wy), any(vec3<bool>(true, var_0.a.x, false)), all(select(arg_3.zz, vec2<bool>(var_0.a.x, arg_3.x), vec2<bool>(var_0.a.x, false)))), select(vec3<bool>(func_3(), true, any(vec3<bool>(var_0.a.x, true, true))), select(!var_0.a, var_0.a, !vec3<bool>(false, arg_3.x, false)), vec3<bool>(arg_3.x, true, true)), false), var_0.b, _wgslsmith_f_op_f32(abs(1f)), var_1.xz);
    var var_2 = var_0.a.x;
    return var_0.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: i32) -> vec4<bool> {
    global0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 17079u, arg_0.x, u_input.a.x), vec4<u32>(6680u, u_input.a.x, 1u, 4294967295u)), 1u)]))), 646f, global1[_wgslsmith_index_u32(arg_0.x, 1u)]), func_4(~(~vec4<i32>(98i, -16423i, -1i, 1i) & -vec4<i32>(global0.a, 1i, -51044i, arg_2)), any(!(!vec2<bool>(false, arg_1))), _wgslsmith_add_vec3_i32(vec3<i32>(-30174i, ~global0.a, func_2()), _wgslsmith_div_vec3_i32(-vec3<i32>(global0.a, 0i, global0.a), reverseBits(u_input.b)))), Struct_3(vec2<f32>(global1[_wgslsmith_index_u32(2631u, 1u)], _wgslsmith_f_op_f32(floor(-337f))), firstLeadingBit(abs(reverseBits(arg_2)))), !select(!select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, true, arg_1, arg_1)), select(select(vec4<bool>(arg_1, false, false, false), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1)), !vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true))), all(select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, false, true, arg_1)))));
    let var_0 = vec2<i32>(_wgslsmith_mod_i32((func_4(vec4<i32>(arg_2, -2147483647i, 50306i, 0i), true, u_input.b).a << (_wgslsmith_add_u32(arg_0.x, 1u) % 32u)) | _wgslsmith_sub_i32(2147483647i, global0.a), arg_2), _wgslsmith_sub_i32(34026i, 0i));
    global0 = Struct_1(-58478i);
    global1 = array<f32, 1>();
    var var_1 = vec4<bool>(select(false & arg_1, false, arg_1), true, arg_1, any(!select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, true, false, arg_1), arg_1)));
    return !select(select(select(select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(var_1.x, false, false, true), vec4<bool>(arg_1, false, true, arg_1)), vec4<bool>(arg_1, arg_1, var_1.x, false), !vec4<bool>(true, var_1.x, false, false)), select(vec4<bool>(false, false, true, arg_1), !vec4<bool>(false, false, false, var_1.x), !vec4<bool>(arg_1, false, true, var_1.x)), var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), !vec4<bool>(!var_1.x, true, var_1.x & false, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 1>();
    let var_0 = u_input.b;
    var var_1 = any(!vec4<bool>(true, !(global1[_wgslsmith_index_u32(29951u, 1u)] == -502f), global1[_wgslsmith_index_u32(u_input.a.x, 1u)] != -1614f, all(func_1(vec3<u32>(u_input.a.x, u_input.a.x, 4449u), true, 0i))));
    var var_2 = func_1(vec3<u32>(4507u, 17308u, 43465u), any(func_1(select(reverseBits(u_input.a), countOneBits(u_input.a), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), 0i).wy), _wgslsmith_clamp_i32(firstTrailingBit(2147483647i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, 2147483647i, var_0.x, global0.a)), ~(~vec4<i32>(-22818i, u_input.b.x, 1i, var_0.x))), -select(-global0.a, abs(-1i), all(vec4<bool>(false, false, false, true))))).zzy;
    let var_3 = _wgslsmith_mult_u32(~64471u >> (u_input.a.x % 32u), 4294967295u);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 1u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2430f * 616f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(24755u, 1u)] - global1[_wgslsmith_index_u32(~var_3, 1u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(213f, -1000f, false)), _wgslsmith_f_op_f32(2330f * 115f)) - global1[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_f32(1661f + global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(2703u)), 1u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(209f - -1507f) * _wgslsmith_f_op_f32(trunc(-896f))) + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(20576u, u_input.a.x), 1u)], _wgslsmith_f_op_f32(f32(-1f) * -155f)))), -1437f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, ~16435u, var_3 | 683u)), 1u)]));
    let var_5 = -u_input.b.x;
    var var_6 = vec3<u32>(u_input.a.x, u_input.a.x, 69335u) >> (max(select(vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_3), 4294967295u, abs(70467u)), u_input.a, !func_3()), u_input.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<i32>(1i, var_5, countOneBits(0i), ~(-2147483647i))), abs(-59943i), 11332i, u_input.a.x);
}

