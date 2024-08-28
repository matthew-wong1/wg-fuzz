struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(2147483647i, 2147483647i, -5903i, 15695i, -1i, i32(-2147483648), 0i, -30533i, -22486i, 0i);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 0u, 0u);

var<private> global2: array<Struct_1, 27>;

var<private> global3: bool;

var<private> global4: array<i32, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec3<i32> {
    global2 = array<Struct_1, 27>();
    global4 = array<i32, 5>();
    global0 = array<i32, 10>();
    let var_0 = global1.zzw;
    global1 = _wgslsmith_mult_vec4_u32(~abs(firstTrailingBit(min(vec4<u32>(1u, 6488u, var_0.x, 34637u), vec4<u32>(var_0.x, global1.x, 1u, global1.x)))), ~(reverseBits(abs(vec4<u32>(1u, var_0.x, 39173u, u_input.e))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 35242u, var_0.x, 6973u), _wgslsmith_div_vec4_u32(vec4<u32>(7311u, u_input.e, 65006u, u_input.b), vec4<u32>(var_0.x, 0u, u_input.a.x, var_0.x))) % vec4<u32>(32u))));
    return select(max(vec3<i32>(9361i << (_wgslsmith_mod_u32(global1.x, global1.x) % 32u), _wgslsmith_mod_i32(u_input.d.x, -arg_0.x), u_input.c), u_input.d.wyy), vec3<i32>(arg_0.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global4[_wgslsmith_index_u32(~var_0.x, 5u)], 1i), _wgslsmith_mod_vec3_i32(select(vec3<i32>(global4[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(3421u, 10u)], -1i), u_input.d.xyy, vec3<bool>(false, true, false)), u_input.d.zzz))), ~(-firstLeadingBit(global4[_wgslsmith_index_u32(var_0.x, 5u)])) < arg_0.x);
}

fn func_2() -> bool {
    var var_0 = true;
    var var_1 = select(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, countOneBits(_wgslsmith_sub_i32(7324i, 1i)), -36520i), 1i, u_input.c), reverseBits(~(-select(u_input.d.wwz, vec3<i32>(global4[_wgslsmith_index_u32(global1.x, 5u)], 2147483647i, u_input.c), vec3<bool>(true, true, true)))), !vec3<bool>(any(vec4<bool>(true, false, true, false)) & true, true, false));
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(-vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(65856u, 10u)], u_input.c)) ^ func_3(~vec2<i32>(-1i, 2147483647i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1290f, -180f, 676f)))), ~(~(~u_input.d.zxz))), var_1.x, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, true)), true, true)), countOneBits(-u_input.d), vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec4<bool>(true, any(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, false)), all(vec3<bool>(false, false, true))))));
    var var_3 = vec4<bool>(var_2.c.x, !all(vec4<bool>(var_2.e.x, all(var_2.c), true, any(var_2.c.zx))), true, true != all(select(var_2.c.xyz, select(vec3<bool>(true, true, var_2.c.x), vec3<bool>(false, false, var_2.e.x), var_2.e), vec3<bool>(var_2.e.x, true, true))));
    var_1 = ~(~firstLeadingBit(var_2.d.wyy)) << (~(~_wgslsmith_add_vec3_u32(select(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(u_input.e, u_input.a.x, global1.x), vec3<bool>(var_3.x, true, false)), u_input.a)) % vec3<u32>(32u));
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global0 = array<i32, 10>();
    global2 = array<Struct_1, 27>();
    global1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.x, 34721u) >> (arg_0 % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.b, global1.x)), global1.zwy), 1u, 7974u, ~(~36970u));
    let var_0 = u_input.b;
    let var_1 = vec4<bool>(any(select(arg_1.c, !select(vec4<bool>(true, arg_1.c.x, true, true), arg_1.c, vec4<bool>(false, arg_1.e.x, true, true)), select(select(arg_1.c, vec4<bool>(true, false, true, arg_1.c.x), true), select(arg_1.c, vec4<bool>(false, arg_1.e.x, arg_1.e.x, arg_1.c.x), arg_1.c), arg_1.c))), func_2(), !arg_1.c.x, true);
    return 0u;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 10>();
    var var_0 = !select(vec2<bool>(arg_2.e.x, true | (0u != global1.x)), vec2<bool>(true, false), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 0u), 0u) <= func_1(select(u_input.a, vec3<u32>(global1.x, arg_1.x, 1u), arg_3.e.x), global2[_wgslsmith_index_u32(51399u, 27u)]));
    let var_1 = Struct_1(countOneBits(-u_input.d.xxy), -firstLeadingBit(_wgslsmith_mod_i32(min(-1500i, global4[_wgslsmith_index_u32(global1.x, 5u)]), 2147483647i)), vec4<bool>(arg_2.e.x, any(vec4<bool>(!var_0.x, 4294967295u > arg_1.x, func_2(), all(arg_3.c.yzy))), arg_3.e.x, arg_2.c.x), _wgslsmith_sub_vec4_i32(firstLeadingBit(~(-vec4<i32>(global0[_wgslsmith_index_u32(77682u, 10u)], 45126i, global4[_wgslsmith_index_u32(u_input.b, 5u)], u_input.c))), ~(-vec4<i32>(0i, global0[_wgslsmith_index_u32(36356u, 10u)], global4[_wgslsmith_index_u32(arg_1.x, 5u)], -2206i))), select(vec3<bool>(~0i > u_input.c, !(!arg_3.c.x), func_2() & func_2()), select(vec3<bool>(select(true, arg_2.c.x, arg_2.e.x), !arg_2.c.x, arg_2.e.x), vec3<bool>(any(vec4<bool>(var_0.x, true, arg_3.e.x, arg_2.c.x)), arg_3.a.x != u_input.c, var_0.x), false), select(arg_3.e, select(vec3<bool>(var_0.x, true, true), arg_3.e, arg_2.e), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), 729f, -412f) * vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(151f + -719f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -921f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1565f, arg_0, -1000f, 347f))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1691f, 360f, 527f), _wgslsmith_f_op_vec4_f32(vec4<f32>(771f, arg_0, arg_0, arg_0) - vec4<f32>(389f, arg_0, 546f, -475f))))))));
    let var_3 = ~(-_wgslsmith_dot_vec4_i32(countOneBits(var_1.d & u_input.d), _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(2147483647i, 34884i, -2147483647i, 24544i))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(31782u, 27u)];
    let var_1 = !(!select(var_0.e.zx, vec2<bool>(true, global0[_wgslsmith_index_u32(48580u, 10u)] >= 2147483647i), var_0.e.yz));
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 27u)];
    global3 = var_0.c.x;
    var var_3 = func_4(-339f, vec2<u32>(~_wgslsmith_dot_vec2_u32(global1.zx, vec2<u32>(2036u, 17971u) | vec2<u32>(u_input.e, u_input.e)), _wgslsmith_clamp_u32(global1.x, func_1(abs(global1.zww), global2[_wgslsmith_index_u32(u_input.e, 27u)]), _wgslsmith_add_u32(u_input.a.x, ~123541u))), Struct_1(u_input.d.zwx, _wgslsmith_sub_i32(~(~global4[_wgslsmith_index_u32(0u, 5u)]), -18519i), var_0.c, vec4<i32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(1u, 14907u), ~29590u), 5u)], abs(i32(-1i) * -1i), (global4[_wgslsmith_index_u32(22595u, 5u)] ^ var_0.d.x) ^ -10207i, func_3(-u_input.d.yz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-816f, -911f, 1425f))).x), vec3<bool>(var_0.c.x, true, !var_0.c.x)), Struct_1(firstLeadingBit(u_input.d.zzz), -55534i, select(var_0.c, vec4<bool>(var_2.b == -2147483647i, var_1.x, func_2(), false), false), var_0.d, select(vec3<bool>(true, true & var_1.x, all(var_0.c.wzx)), select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_2.c.x, false, var_0.e.x), var_0.e.x), !vec3<bool>(true, var_2.c.x, true), any(var_2.c)), select(vec3<bool>(false, false, false), var_2.e, select(var_0.c.x, var_1.x, var_2.e.x)))));
    let var_4 = !var_0.c;
    global2 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2076f, -621f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -811f)));
}

