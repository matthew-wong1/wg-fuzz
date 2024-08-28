struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<u32, 17> = array<u32, 17>(3774u, 0u, 1u, 4294967295u, 87137u, 4294967295u, 18452u, 1u, 0u, 0u, 7891u, 0u, 4294967295u, 1u, 1u, 59152u, 48107u);

var<private> global2: vec3<i32>;

var<private> global3: array<i32, 23> = array<i32, 23>(16580i, 2147483647i, 1i, -9790i, 0i, -34200i, 0i, -39169i, 0i, i32(-2147483648), 10353i, -10208i, 1i, i32(-2147483648), i32(-2147483648), 73858i, 14347i, -1i, -1i, 1i, 2147483647i, -1i, 17378i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.a.x, arg_3.a.x, arg_0.a.x, arg_0.a.x), ~vec4<u32>(1u, 35396u, u_input.c, 0u)), ~(~vec4<u32>(arg_3.a.x, arg_3.a.x, 0u, arg_1.a.x))), ~(~(~(~1u))), u_input.c ^ 0u, ~(~4294967295u));
    global3 = array<i32, 23>();
    global3 = array<i32, 23>();
    var var_1 = arg_0.a.x;
    global2 = u_input.a;
    return 93627u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select((vec3<u32>(1u, 1u, 2243u) | vec3<u32>(0u, 65621u, u_input.c)) | ~vec3<u32>(u_input.c, 2852u, u_input.c), vec3<u32>(func_3(Struct_1(vec3<u32>(24321u, global1[_wgslsmith_index_u32(u_input.c, 17u)], u_input.c), -2030f, global0[_wgslsmith_index_u32(u_input.c, 19u)]), Struct_1(vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(20857u, 17u)], u_input.c), -362f, global0[_wgslsmith_index_u32(26605u, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 17u)], 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)]), Struct_1(vec3<u32>(4294967295u, u_input.c, u_input.c), -221f, global0[_wgslsmith_index_u32(u_input.c, 19u)])), global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(u_input.c, 17u)]), 17u)], ~41563u), !select(vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 19u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)], true), vec3<bool>(global0[_wgslsmith_index_u32(25012u, 19u)], true, false))) ^ ~vec3<u32>(~1u, _wgslsmith_clamp_u32(4294967295u, 45729u, 4294967295u), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)])), _wgslsmith_f_op_f32(-571f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1348f, 1100f)), 1421f, false))), false);
    var var_1 = vec3<u32>(select(_wgslsmith_dot_vec2_u32(var_0.a.zz, _wgslsmith_div_vec2_u32(vec2<u32>(92401u, 1u), ~vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.c, 17u)]))), _wgslsmith_add_u32(func_3(var_0, Struct_1(vec3<u32>(17665u, var_0.a.x, u_input.c), var_0.b, var_0.c), select(vec2<bool>(false, false), vec2<bool>(false, var_0.c), true), var_0), (47209u >> (var_0.a.x % 32u)) << (_wgslsmith_clamp_u32(60935u, 21328u, 340u) % 32u)), true), 17134u, ~u_input.c & _wgslsmith_sub_u32(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 17u)]) << (_wgslsmith_div_u32(57095u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)]) % 32u), ~1u));
    var var_2 = global2.x;
    global2 = vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, min(u_input.c, ~1u)), 23u)], global2.x, global3[_wgslsmith_index_u32(u_input.c, 23u)]);
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -489f), -1329f, !select(select(true, var_0.c, var_0.c), any(vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 19u)])), var_1.x >= global1[_wgslsmith_index_u32(1u, 17u)]))), global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.a.zy, vec2<u32>(var_0.a.x, var_0.a.x)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], var_0.a.x))), 19u)]);
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 35337u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(53895u, 17u)]), ~vec2<u32>(4294967295u, 4294967295u))), 19u)], false, false, global2.x < min(-22088i, 1i)), select(vec4<bool>(select(true, true, true), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(u_input.c, 17u)]), 19u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)])), true || !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24713u, 17u)], 19u)]), vec4<bool>(!(1i >= u_input.b.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~u_input.c), 17u)], 19u)], global2.x < 1i, !global0[_wgslsmith_index_u32(1u, 19u)]), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 19u)], true), false)), all(select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4910u, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(21888u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(104693u, 17u)], 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 17u)], 17u)], 17u)], 19u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 19u)]))), !all(vec2<bool>(false, true)), true)), all(!(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 19u)])))));
    global2 = u_input.b.ywy;
    let var_1 = -1236f;
    var var_2 = func_2();
    var var_3 = Struct_1(_wgslsmith_add_vec3_u32(~abs(~var_2.a), var_2.a), _wgslsmith_f_op_f32(-1f), any(select(vec4<bool>(!var_2.c, !var_2.c, !var_2.c, select(global0[_wgslsmith_index_u32(17453u, 19u)], var_2.c, true)), vec4<bool>(true, true, true, var_2.c), var_2.c)));
    return Struct_1(vec3<u32>(4294967295u, u_input.c & var_3.a.x, 1u), _wgslsmith_f_op_f32(-447f * var_3.b), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 17>();
    global2 = vec3<i32>(-1i) * -vec3<i32>(~(-u_input.a.x), _wgslsmith_sub_i32(-1i, global3[_wgslsmith_index_u32(4294967295u, 23u)] << (global1[_wgslsmith_index_u32(17648u, 17u)] % 32u)), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, global2.x, global2.x)) >> (4294967295u % 32u));
    let var_0 = func_1();
    let var_1 = Struct_1(vec3<u32>(~var_0.a.x, ~(~_wgslsmith_add_u32(61218u, u_input.c)), ~1u), _wgslsmith_f_op_f32(-var_0.b), any(select(!vec2<bool>(var_0.c, true), !vec2<bool>(global0[_wgslsmith_index_u32(12479u, 19u)], true), any(vec2<bool>(var_0.c, true)))));
    var var_2 = var_0;
    var var_3 = ~u_input.b.x;
    var var_4 = var_1.a.x;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, 784f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.b, -1761f, 1212f, var_2.b), vec4<f32>(var_2.b, 809f, 1792f, 942f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-868f, var_1.b, 487f, var_0.b), vec4<f32>(-297f, 1787f, 896f, 1677f), vec4<bool>(false, true, var_2.c, true))), vec4<bool>(global0[_wgslsmith_index_u32(0u, 19u)], var_2.c, false, true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, -1603f, 903f, var_0.b), vec4<f32>(941f, var_0.b, var_0.b, var_1.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1472f, 350f, -221f) - vec4<f32>(var_1.b, -508f, var_0.b, var_1.b)))))), vec4<f32>(-460f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(720f, -915f, false)) * func_2().b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b, var_0.b, false)), -2666f))), -211f, var_1.b));
}

