struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-826f, -1108f, 927f, 195f) - vec4<f32>(-456f, 1738f, -1553f, 878f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1307f) + 845f), _wgslsmith_f_op_f32(-1380f - _wgslsmith_f_op_f32(trunc(426f))), _wgslsmith_div_f32(1227f, _wgslsmith_f_op_f32(566f + 1364f)), 564f)), true, _wgslsmith_sub_i32(2147483647i, -u_input.e), -(select(0i, u_input.e, true) | -38952i) >> (u_input.a % 32u));
    global0 = array<bool, 7>();
    let var_1 = ~(~(~u_input.d.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, -175f, var_0.a.x, -1704f)), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), 659f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-626f, var_0.a.x)), any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], var_0.b)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1000f, var_0.a.x)), 314f, -1010f, var_0.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-513f, -354f, -1000f, -296f), var_0.a))))), false & ((global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(7979u, 1u), 7u)] || (u_input.c < u_input.a)) != ((-83152i != arg_0) | var_0.b)), var_0.c, var_0.d);
    let var_3 = _wgslsmith_sub_i32(min(-47597i, 1i), abs(arg_0));
    return var_0;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: f32) -> vec4<f32> {
    global0 = array<bool, 7>();
    let var_0 = func_2(i32(-1i) * -9999i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.a.zzx)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -939f))))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - 2426f)) + var_0.a);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool) -> u32 {
    var var_0 = func_2(u_input.e);
    global0 = array<bool, 7>();
    var var_1 = func_2(u_input.e);
    return max(~abs(~firstTrailingBit(112731u)), _wgslsmith_dot_vec2_u32(arg_1.zy, ~_wgslsmith_clamp_vec2_u32(~u_input.d, u_input.d, vec2<u32>(u_input.a, u_input.d.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = firstTrailingBit(~arg_0.d);
    global0 = array<bool, 7>();
    let var_1 = 1384f;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_add_u32(0u, u_input.a), select(vec4<bool>(any(!vec3<bool>(arg_0.b, global0[_wgslsmith_index_u32(u_input.c, 7u)], arg_2.b)), any(!vec2<bool>(arg_2.b, false)), arg_0.b, u_input.b.x != u_input.e), vec4<bool>(!all(vec2<bool>(arg_2.b, true)), global0[_wgslsmith_index_u32(max(u_input.c, min(u_input.a, 45637u)), 7u)], func_2(~u_input.e).b, global0[_wgslsmith_index_u32(u_input.d.x, 7u)]), select(vec4<bool>(arg_2.b, 0u < u_input.c, global0[_wgslsmith_index_u32(u_input.d.x & u_input.d.x, 7u)], arg_2.b), select(select(vec4<bool>(global0[_wgslsmith_index_u32(83645u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, arg_2.b, global0[_wgslsmith_index_u32(u_input.d.x, 7u)], false), vec4<bool>(arg_0.b, global0[_wgslsmith_index_u32(u_input.c, 7u)], arg_0.b, arg_2.b), vec4<bool>(true, false, true, arg_0.b)), any(vec4<bool>(arg_2.b, global0[_wgslsmith_index_u32(11594u, 7u)], false, arg_2.b))), arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - 1035f))).x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-998f, -528f, -110f, 1470f), arg_0.a)))), true, select(~(0i & min(arg_0.d, arg_2.d)), ~_wgslsmith_clamp_i32(-13596i, arg_0.c, firstTrailingBit(-31279i)), true), u_input.b.x);
    return arg_0.b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = max(vec3<u32>(4294967295u, ~20522u, u_input.d.x), _wgslsmith_div_vec3_u32(reverseBits(abs(vec3<u32>(4294967295u, u_input.d.x, u_input.c))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, 6923u), vec3<u32>(u_input.c, u_input.c, u_input.d.x) ^ vec3<u32>(0u, u_input.c, u_input.d.x))));
    var var_1 = arg_0;
    let var_2 = arg_0;
    let var_3 = select(select(!(!select(vec2<bool>(false, var_1.b), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(9538u, 7u)], true))), vec2<bool>(min(arg_0.d, 30630i) >= abs(2147483647i), !all(vec3<bool>(arg_0.b, false, true))), vec2<bool>(true, var_2.b)), vec2<bool>(~(~40532u) != firstLeadingBit(~var_0.x), true), false);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) + _wgslsmith_f_op_vec4_f32(-var_2.a)), !(var_0.x > ~u_input.d.x) & any(!select(vec4<bool>(arg_0.b, global0[_wgslsmith_index_u32(42220u, 7u)], arg_0.b, false), vec4<bool>(true, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 7u)], var_2.b, var_1.b, var_2.b))), _wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(u_input.e, 24422i))), vec2<i32>(~32644i, _wgslsmith_add_i32(38083i, -6920i))) ^ var_1.d, var_1.c);
    return Struct_1(var_1.a, all(vec3<bool>(true, false, any(vec3<bool>(true, false, false)) | var_1.b)), 6393i ^ _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.d, var_2.c) | 1i, -1i), -u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(43261u, select(vec4<bool>(global0[_wgslsmith_index_u32(52166u, 7u)], true, global0[_wgslsmith_index_u32(48817u, 7u)], true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], false, global0[_wgslsmith_index_u32(u_input.c, 7u)], true), true), _wgslsmith_f_op_f32(trunc(-1827f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-510f, 404f, 422f, -724f))) + vec4<f32>(-1118f, -1284f, 1418f, -1189f))), func_4(Struct_1(vec4<f32>(-972f, -817f, -190f, 230f), global0[_wgslsmith_index_u32(func_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 7u)], false, global0[_wgslsmith_index_u32(0u, 7u)]), vec3<u32>(u_input.a, 42101u, u_input.c), global0[_wgslsmith_index_u32(u_input.d.x, 7u)]), 7u)], -2147483647i, _wgslsmith_add_i32(u_input.e, 1i)), vec3<f32>(-704f, _wgslsmith_f_op_vec4_f32(func_1(u_input.c, vec4<bool>(false, global0[_wgslsmith_index_u32(53602u, 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), 2731f)).x, _wgslsmith_f_op_f32(1105f - -455f)), func_2(min(1i, 72541i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -918f))), -u_input.e, 2147483647i));
    let var_1 = true;
    let var_2 = -u_input.e;
    let var_3 = u_input.d;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(17684u, u_input.a), var_3), vec2<u32>(var_3.x, 4294967295u)), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], var_1, false), !vec4<bool>(true, var_1, var_1, var_1), true), vec4<bool>(select(false, true, var_1), !var_1, true, u_input.d.x < u_input.c), !select(vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<bool>(var_0.b, true, true, var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1508f + var_0.a.x), 787f))), true, 2147483647i, _wgslsmith_add_i32(firstTrailingBit(max(reverseBits(var_2), -30370i)), -3603i));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -func_2(u_input.b.x).c, u_input.e >> (_wgslsmith_add_u32(u_input.d.x, 100605u) % 32u));
}

