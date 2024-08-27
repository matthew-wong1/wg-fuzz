struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29976u;

var<private> global1: array<bool, 17>;

var<private> global2: i32;

var<private> global3: array<vec2<u32>, 16>;

var<private> global4: array<u32, 10> = array<u32, 10>(0u, 36101u, 4294967295u, 25657u, 17789u, 4294967295u, 1u, 4294967295u, 39172u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = Struct_1(arg_0.a, arg_0.a.xzy);
    var var_1 = ~vec4<i32>(_wgslsmith_div_i32(u_input.d.x >> (1u % 32u), u_input.c), 1i, countOneBits(18583i), 35045i << (~(arg_1 >> (26944u % 32u)) % 32u));
    return 41263u;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(~func_3(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 17u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 17u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 17u)], false)), 1u), 17u)], global1[_wgslsmith_index_u32(func_3(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 17u)], true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 10u)], 17u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 10u)], 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), u_input.a.x ^ 24888u), 17u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 17u)], true, !all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))), !(!global1[_wgslsmith_index_u32(281u, 17u)] && any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])))), !select(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(31208u, 17u)], true & global1[_wgslsmith_index_u32(10151u, 17u)], global1[_wgslsmith_index_u32(min(1u, global4[_wgslsmith_index_u32(u_input.a.x, 10u)]), 17u)])));
    global0 = 1u;
    var_0 = Struct_1(var_0.a, vec3<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1181f))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-809f, -299f) + -2232f)));
    var var_1 = Struct_2(Struct_1(!(!select(var_0.a, vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36602u, 10u)], 17u)], var_0.b.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 17u)], false), vec4<bool>(true, false, var_0.b.x, false))), select(!vec3<bool>(false, var_0.b.x, var_0.b.x), !select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.a.x, false, false), var_0.b), var_0.a.yxw)));
    let var_2 = Struct_2(Struct_1(vec4<bool>(false, any(!vec2<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e, 10u)], 10u)], 17u)], var_1.a.b.x)), var_0.b.x, var_1.a.b.x), select(vec3<bool>(var_1.a.b.x, all(var_1.a.a.zy), false), !var_0.b, !(global1[_wgslsmith_index_u32(90438u, 17u)] | true))));
    return !var_1.a.a.xzz;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global4 = array<u32, 10>();
    global2 = min(_wgslsmith_add_i32(543i, -6796i), u_input.c);
    let var_0 = vec4<bool>(!(!(!arg_1.a.x) | true), (u_input.a.x << (~(~0u) % 32u)) >= ~32487u, (firstTrailingBit(_wgslsmith_add_i32(-13888i, u_input.d.x)) ^ u_input.c) <= _wgslsmith_add_i32(-19878i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -10208i, u_input.d.x, u_input.c), vec4<i32>(-1i, 2147483647i, -31230i, -1i)), 25325i)), any(!arg_1.a));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-123f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -324f), -2096f);
    global4 = array<u32, 10>();
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    global3 = array<vec2<u32>, 16>();
    var var_0 = func_4(Struct_1(arg_0.a, func_2()), arg_0, Struct_2(Struct_1(arg_0.a, arg_0.b)));
    var_0 = Struct_2(arg_0);
    var var_1 = -983f;
    let var_2 = Struct_1(func_4(func_4(Struct_1(select(var_0.a.a, arg_0.a, var_0.a.a), !arg_0.a.yzw), var_0.a, Struct_2(Struct_1(vec4<bool>(true, true, var_0.a.b.x, global1[_wgslsmith_index_u32(1u, 17u)]), var_0.a.a.ywy))).a, func_4(func_4(func_4(arg_0, Struct_1(vec4<bool>(arg_0.a.x, var_0.a.b.x, arg_0.b.x, false), var_0.a.a.wyx), Struct_2(var_0.a)).a, func_4(Struct_1(vec4<bool>(arg_0.a.x, false, false, var_0.a.b.x), vec3<bool>(arg_0.a.x, true, arg_0.a.x)), var_0.a, Struct_2(arg_0)).a, Struct_2(var_0.a)).a, var_0.a, Struct_2(func_4(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 10u)], 17u)], true, global1[_wgslsmith_index_u32(1u, 17u)], false), vec3<bool>(var_0.a.b.x, false, false)), arg_0, Struct_2(Struct_1(var_0.a.a, arg_0.a.xzx))).a)).a, func_4(func_4(Struct_1(vec4<bool>(var_0.a.b.x, global1[_wgslsmith_index_u32(1u, 17u)], true, global1[_wgslsmith_index_u32(4294967295u, 17u)]), var_0.a.a.xwx), arg_0, Struct_2(var_0.a)).a, var_0.a, Struct_2(func_4(Struct_1(arg_0.a, vec3<bool>(false, var_0.a.a.x, false)), var_0.a, Struct_2(Struct_1(vec4<bool>(true, var_0.a.a.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e, 10u)], 10u)], 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]), var_0.a.a.xxw))).a))).a.a, func_2());
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~(func_1(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(85948u, 10u)], 17u)], false, global1[_wgslsmith_index_u32(1u, 17u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(8266u, 17u)], true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, 810f, 1749f))) & 1u), 10u)] & u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.d.yy, (-u_input.d.zx | firstTrailingBit(vec2<i32>(u_input.c, 433i))) | (_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.c), u_input.d.zx) | -vec2<i32>(u_input.c, 33294i)), !(countOneBits(u_input.c) == u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f))), _wgslsmith_f_op_f32(step(-480f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-926f * -1485f), _wgslsmith_f_op_f32(1000f - 1032f))))), 915f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-368f, _wgslsmith_f_op_f32(-699f - -359f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(116f)), 568f, 2442f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1761f, 389f, -2046f) * vec3<f32>(-178f, -362f, -1123f)))), true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-683f, 350f, -144f), vec3<f32>(-296f, 1000f, 381f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], true, false)))), vec3<f32>(-2303f, -1489f, _wgslsmith_f_op_f32(1751f - -591f)))), true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1755f)), _wgslsmith_f_op_f32(round(-837f)), -869f));
}

