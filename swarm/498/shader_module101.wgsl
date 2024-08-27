struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1393f, 796f, -900f, 1297f);

var<private> global1: array<f32, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> i32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-255f + _wgslsmith_f_op_f32(abs(-731f))))))), -641f, 1000f, global0.x);
    return -max(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-u_input.c, min(vec4<i32>(1i, 54533i, u_input.c.x, u_input.c.x), u_input.c)), u_input.c.x), _wgslsmith_mod_i32(u_input.b, 2147483647i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), -1000f, global0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 823f, arg_1.x, -173f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 646f, global0.x, -676f)))))))));
    var var_0 = Struct_1(select(~(i32(-1i) * -arg_2.x), 35809i, true), !all(!(!arg_0)), arg_2);
    let var_1 = !arg_0.zx;
    let var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_3 = global0.yxx;
    return any(arg_0.yx);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec4<f32> {
    global1 = array<f32, 10>();
    let var_0 = func_3(vec4<bool>(!arg_2.x, arg_2.x | (_wgslsmith_mod_i32(u_input.b, 14924i) < func_2()), true, any(arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19068u, 10u)]) + _wgslsmith_div_f32(global0.x, -202f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global1[_wgslsmith_index_u32(arg_0.x, 10u)]) + _wgslsmith_f_op_vec2_f32(exp2(global0.yz))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yy) * _wgslsmith_f_op_vec2_f32(-global0.wz)))), vec3<i32>(1i, 25772i, 0i));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(-366f + -480f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 10u)] + 316f))), global1[_wgslsmith_index_u32(75726u, 10u)]) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2050f, global0.x, global1[_wgslsmith_index_u32(41164u, 10u)], -1000f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global0.x, global0.x, arg_1.x))) * vec4<f32>(arg_1.x, global1[_wgslsmith_index_u32(arg_0.x, 10u)], global1[_wgslsmith_index_u32(arg_0.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1165f, global1[_wgslsmith_index_u32(3307u, 10u)], global0.x, 2219f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], arg_1.x, 316f, global0.x), arg_2)), vec4<f32>(533f, 376f, arg_1.x, -143f), var_0)))));
    var var_1 = global0.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-593f + -2223f), _wgslsmith_f_op_f32(205f + -469f), func_3(arg_2, _wgslsmith_f_op_vec2_f32(-global0.wx), min(u_input.c.yyx, vec3<i32>(u_input.b, 13358i, 14785i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-345f, -458f)))) * _wgslsmith_f_op_f32(exp2(arg_1.x)))), 569f);
    return vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2043f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1932f) + -589f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_0.x, u_input.a.x), ~29620u, arg_0.x & 1u), 10u)] - 1223f))), -323f);
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(abs(-166f));
    let var_2 = _wgslsmith_sub_i32(~firstLeadingBit(-1i >> (u_input.a.x % 32u)), func_2());
    let var_3 = Struct_1(u_input.b, any(vec2<bool>(true, true)) | all(vec2<bool>(true, any(vec2<bool>(false, false)))), firstTrailingBit(~vec3<i32>(~1i, ~0i, countOneBits(u_input.c.x))));
    var var_4 = ~(~(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 26388u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 82642u)), vec4<u32>(4294967295u, arg_3.x, arg_3.x, arg_3.x) >> (vec4<u32>(arg_3.x, 4294967295u, u_input.a.x, 1u) % vec4<u32>(32u)), select(vec4<bool>(var_3.b, true, var_3.b, true), vec4<bool>(var_3.b, true, false, var_3.b), var_3.b))));
    return Struct_1(min(-var_3.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, u_input.b) | vec3<i32>(0i, var_2, var_2), firstTrailingBit(u_input.c.xwx)) ^ u_input.b), true, -(~vec3<i32>(var_3.c.x, firstLeadingBit(var_2), var_3.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, u_input.a.x, 0u), 10u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -1361f), 324f), _wgslsmith_f_op_f32(-1537f * -243f), 1556f)));
    global1 = array<f32, 10>();
    var var_0 = all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(true, true), false), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), false)));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1(select(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(48905u, 31942u, u_input.a.x, 3706u), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, false)), global0.yx, vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, false))))), global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 10u)] - global1[_wgslsmith_index_u32(u_input.a.x, 10u)]) + 1f))))), vec3<u32>(22962u, ~(~3197u) ^ firstTrailingBit(u_input.a.x), 0u));
    var var_2 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -2147483647i), _wgslsmith_dot_vec2_i32(~u_input.c.zz, _wgslsmith_add_vec2_i32(vec2<i32>(28642i, u_input.b), vec2<i32>(u_input.c.x, u_input.c.x)))), var_1.b, select(vec3<i32>(u_input.b, -36706i, ~var_1.a), u_input.c.zyx, vec3<bool>(312f > _wgslsmith_f_op_f32(291f * global0.x), true, var_1.b)));
    let var_3 = _wgslsmith_f_op_f32(339f + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.a.x, u_input.a.x)), ~(~u_input.a.yy)), 10u)]);
    var var_4 = abs(u_input.a.x);
    var_4 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, u_input.a.x), ~reverseBits(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(global0.wwx, vec4<i32>(_wgslsmith_mod_i32(~(~16561i), 3534i), ((u_input.c.x ^ 2147483647i) ^ var_2.c.x) << (52951u % 32u), max(1i, -var_2.a), min(_wgslsmith_add_i32(abs(1i), u_input.c.x & 2147483647i), _wgslsmith_div_i32(var_1.a, var_2.c.x) >> (~0u % 32u))));
}

