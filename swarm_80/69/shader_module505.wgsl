struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 23>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_u32(1u, u_input.b);
    global1 = array<i32, 23>();
    var var_1 = _wgslsmith_f_op_f32(arg_0.x - arg_0.x);
    var var_2 = true;
    var_2 = !(!(17968i >= u_input.a));
    return abs(firstLeadingBit(vec3<u32>(min(firstLeadingBit(var_0), arg_2), 0u, ~arg_2 | arg_2)));
}

fn func_2(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = ~firstTrailingBit(_wgslsmith_mult_vec3_u32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(869f, -345f)), Struct_1(arg_0), 1u, Struct_1(arg_0)), vec3<u32>(_wgslsmith_div_u32(u_input.b, 24827u), 18738u, _wgslsmith_dot_vec2_u32(vec2<u32>(25990u, 1u), vec2<u32>(29856u, 0u)))));
    var var_1 = firstLeadingBit(select((~vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], 2147483647i, global1[_wgslsmith_index_u32(48108u, 23u)], -679i) | vec4<i32>(global1[_wgslsmith_index_u32(1u, 23u)], arg_1, 22569i, global1[_wgslsmith_index_u32(4294967295u, 23u)])) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 55029u), ~vec4<u32>(21359u, 6801u, u_input.b, u_input.b)) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(17772u, 23u)], arg_1), countOneBits(vec4<i32>(2147483647i, arg_1, 14227i, global1[_wgslsmith_index_u32(4294967295u, 23u)])))), vec4<bool>(12103u < func_3(vec2<f32>(-1563f, -1115f), Struct_1(false), 0u, Struct_1(arg_0)).x, any(vec4<bool>(false, arg_0, false, arg_0)), true, false)));
    var var_2 = Struct_1(false);
    var_1 = -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, arg_1 & -29023i, abs(_wgslsmith_add_i32(var_1.x, arg_1)), abs(firstLeadingBit(arg_1))), -abs(vec4<i32>(arg_1, 1i, var_1.x, -1i)) | _wgslsmith_add_vec4_i32(~vec4<i32>(-169i, u_input.a, -615i, var_1.x), -vec4<i32>(-1i, 1i, 1i, var_1.x)));
    global1 = array<i32, 23>();
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = 17222i & ~_wgslsmith_mod_i32(~(global1[_wgslsmith_index_u32(1u, 23u)] & 1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], u_input.a), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 23u)])));
    var var_1 = ~(-select(vec4<i32>(~u_input.a, 1i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)]), 1i), vec4<i32>(reverseBits(global1[_wgslsmith_index_u32(u_input.b, 23u)]), global1[_wgslsmith_index_u32(u_input.b, 23u)], -var_0, max(u_input.a, 1i)), select(select(vec4<bool>(arg_1.a, false, arg_2.x, arg_1.a), vec4<bool>(false, arg_2.x, true, false), global0.a), vec4<bool>(arg_2.x, false, true, arg_1.a), any(vec4<bool>(true, false, false, arg_0.a)))));
    let var_2 = -1143f;
    let var_3 = _wgslsmith_mult_vec2_u32(select(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 11835u), vec2<u32>(0u, u_input.b)), _wgslsmith_add_u32(1u, u_input.b) | u_input.b), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(39976u, u_input.b, 90646u), vec3<u32>(34554u, u_input.b, 4294967295u))), _wgslsmith_div_u32(func_3(vec2<f32>(var_2, var_2), Struct_1(arg_2.x), 16703u, Struct_1(true)).x, 6444u)), !any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_2.x, global0.a, true), vec4<bool>(false, false, arg_2.x, false)))), abs(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.b), ~_wgslsmith_mod_vec2_u32(vec2<u32>(35562u, 1u), vec2<u32>(u_input.b, 1u)))));
    let var_4 = _wgslsmith_mult_vec2_u32(var_3 ^ abs(var_3), select(abs(vec2<u32>(countOneBits(1u), ~var_3.x)), _wgslsmith_div_vec2_u32(vec2<u32>(51769u, 4294967295u), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, 0u, var_3.x), 0u)), vec2<bool>(any(!arg_2), !(1482f >= var_2))));
    return !(func_2(var_2 == var_2, -(~0i)) & true);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(false);
    var var_0 = Struct_1(func_4(Struct_1(!func_2(global0.a, global1[_wgslsmith_index_u32(u_input.b, 23u)])), Struct_1(true), !vec3<bool>(true, select(false, global0.a, global0.a), true && global0.a)));
    var var_1 = select(!(!select(!vec3<bool>(global0.a, var_0.a, var_0.a), select(vec3<bool>(true, var_0.a, false), vec3<bool>(false, var_0.a, global0.a), global0.a), !var_0.a)), vec3<bool>(any(vec4<bool>(global0.a, false, var_0.a, select(true, true, var_0.a))), var_0.a, select(global0.a, max(-27076i, u_input.a) > -2147483647i, var_0.a)), vec3<bool>(var_0.a, (_wgslsmith_f_op_f32(round(-870f)) < -411f) | global0.a, true));
    global1 = array<i32, 23>();
    let var_2 = Struct_1(!var_0.a && global0.a);
    return Struct_1(any(var_1.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(vec4<i32>(-35296i, -(i32(-1i) * -37199i), _wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(4039u, 23u)]) << ((u_input.b << (u_input.b % 32u)) % 32u), max(-2147483647i << (u_input.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 34158i), vec4<i32>(41147i, global1[_wgslsmith_index_u32(u_input.b, 23u)], u_input.a, global1[_wgslsmith_index_u32(1u, 23u)])))));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(min(-2124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(253f, 183f)), _wgslsmith_f_op_f32(f32(-1f) * -150f)))))));
    global1 = array<i32, 23>();
    let var_3 = Struct_1(true);
    let var_4 = all(!vec2<bool>(true, !all(vec3<bool>(global0.a, var_1.a, true))));
    let var_5 = vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_sub_i32(u_input.a, min(firstTrailingBit(-27124i), firstLeadingBit(~global1[_wgslsmith_index_u32(u_input.b, 23u)]))), -_wgslsmith_clamp_i32(var_0.x, i32(-1i) * -1i, global1[_wgslsmith_index_u32(~0u, 23u)]));
    let var_6 = -14418i;
    global0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xyz, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.x, -2147483647i), reverseBits(vec3<i32>(15935i, var_6, 28338i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1035f, 1540f, var_2) + vec3<f32>(-513f, 1507f, var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1283f, 1330f, -356f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -303f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, 2993f, var_2), vec3<f32>(var_2, var_2, var_2))) * vec3<f32>(var_2, 177f, 1000f)))));
}

