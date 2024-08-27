struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(5804i, 2147483647i, 11107i, -1304i), 28649u, vec2<u32>(4294967295u, 4294967295u), 521f, vec2<u32>(1u, 33215u)), vec4<bool>(true, true, false, true));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(5428i, 1i, 0i, i32(-2147483648)), 0u, vec2<u32>(0u, 49379u), 1852f, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(0i, 25422i, -12042i, 1i), 8585u, vec2<u32>(4294967295u, 4294967295u), -719f, vec2<u32>(36365u, 1u)), Struct_1(vec4<i32>(0i, 2147483647i, 53162i, -17338i), 1u, vec2<u32>(4294967295u, 26153u), 764f, vec2<u32>(10585u, 24845u)), Struct_1(vec4<i32>(-8355i, 2152i, 3340i, 1i), 18928u, vec2<u32>(62695u, 4294967295u), 712f, vec2<u32>(24481u, 100063u)), Struct_1(vec4<i32>(30977i, -10609i, 2147483647i, -67545i), 1u, vec2<u32>(14400u, 1u), 672f, vec2<u32>(4294967295u, 35692u)), Struct_1(vec4<i32>(8817i, 2147483647i, -13051i, 9488i), 9396u, vec2<u32>(0u, 1468u), -1000f, vec2<u32>(0u, 19923u)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> vec2<u32> {
    global1 = array<Struct_2, 7>();
    let var_0 = global0.b;
    var var_1 = -6005i;
    let var_2 = !var_0.x;
    var var_3 = u_input.a.yzy;
    return ~_wgslsmith_clamp_vec2_u32(vec2<u32>(40895u, 0u), vec2<u32>(arg_0.x, arg_0.x), ~(~vec2<u32>(4294967295u, 1u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_2, 7>();
    let var_0 = firstLeadingBit(countOneBits(global0.a.a.x ^ 1i) << ((firstTrailingBit(global0.a.e.x) >> (1u % 32u)) % 32u)) << (countOneBits(_wgslsmith_div_u32((arg_1.b >> (global0.a.b % 32u)) << (30651u % 32u), 7609u)) % 32u);
    var var_1 = arg_3.a.x;
    let var_2 = Struct_2(Struct_1(abs(arg_1.a >> (u_input.a % vec4<u32>(32u))) ^ arg_3.a, ~1u, ~max(min(arg_1.c, arg_1.e), arg_3.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(410f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f * -333f))), vec2<u32>(reverseBits(~14210u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 22142u, arg_3.c.x, 122002u)) & countOneBits(arg_1.e.x))), vec4<bool>(global0.b.x, _wgslsmith_mod_i32(~(-3052i), -2147483647i) < min(arg_1.a.x & global0.a.a.x, _wgslsmith_dot_vec4_i32(arg_3.a, global0.a.a)), all(!select(global0.b.wzw, global0.b.zwz, arg_0)), all(vec2<bool>(arg_0, true)) & (global0.b.x & arg_0)));
    var_1 = var_2.a.a.x;
    return global2[_wgslsmith_index_u32(3722u, 6u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    let var_0 = u_input.a & u_input.a;
    global2 = array<Struct_1, 6>();
    var var_1 = Struct_2(arg_0.a, select(select(vec4<bool>(all(vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x)), global0.b.x, true, arg_0.a.d >= -702f), global0.b, vec4<bool>(global0.a.a.x > arg_0.a.a.x, true, all(arg_0.b), any(global0.b.yw))), arg_0.b, !global0.b));
    global0 = global1[_wgslsmith_index_u32(4156u, 7u)];
    let var_2 = u_input.a.x;
    return arg_0.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = func_4(Struct_2(func_3(!any(arg_2.b.xyy), Struct_1(select(arg_2.a.a, arg_2.a.a, false), arg_3.a.e.x, ~vec2<u32>(global0.a.e.x, 1u), _wgslsmith_f_op_f32(-arg_2.a.d), func_2(vec3<u32>(30789u, 89966u, arg_2.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_3.a.d, arg_0.d), vec3<f32>(arg_2.a.d, -182f, arg_2.a.d))), Struct_1(global0.a.a, 23501u, u_input.a.wx, arg_0.d, ~arg_0.e)), arg_1.b), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(func_3(true, func_3(global0.b.x, global0.a, vec3<f32>(307f, -460f, -389f), global0.a), vec3<f32>(-551f, 1766f, -1026f), arg_0).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f + -1659f) - 1275f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-947f, 292f), vec2<f32>(953f, arg_3.a.d), arg_1.b.yy)))))));
    let var_1 = global0.b.x && true;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.a.d - 391f))) * arg_2.a.d), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - _wgslsmith_div_f32(1222f, arg_0.d)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 1357f, arg_0.d)) + vec3<f32>(_wgslsmith_f_op_f32(736f + 644f), _wgslsmith_f_op_f32(arg_3.a.d + arg_0.d), -211f)))), true));
    var var_3 = global0.b.wz;
    var var_4 = vec2<bool>(false, false);
    return vec2<u32>(_wgslsmith_sub_u32(max(1u, arg_1.a.c.x), ~24292u), _wgslsmith_mult_u32(arg_3.a.b, ~arg_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_dot_vec2_u32(func_1(global2[_wgslsmith_index_u32(1u, 6u)], Struct_2(global0.a, global0.b), Struct_2(global0.a, vec4<bool>(true, false, false, true)), global1[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_sub_vec2_u32(u_input.a.wx, vec2<u32>(0u, u_input.a.x))) & 1u) & (_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.a.c.x << (global0.a.c.x % 32u), ~u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.wx, u_input.a.yw)) & u_input.a.x);
    var var_1 = vec2<f32>(-881f, global0.a.d);
    let var_2 = global0.a;
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 806f))))))));
    global2 = array<Struct_1, 6>();
    let var_3 = func_3(true | any(!global0.b.xzy), global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 6u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.d + -265f))) - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_2.d), global0.b.x && global0.b.x))), _wgslsmith_f_op_f32(select(-1021f, var_1.x, func_4(global1[_wgslsmith_index_u32(var_0, 7u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global0.a.d))))), _wgslsmith_f_op_f32(-global0.a.d)), global0.a);
    global0 = Struct_2(var_3, vec4<bool>(true && any(!vec4<bool>(true, true, false, global0.b.x)), func_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, var_3.c.x), 7u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d, var_2.d) * vec2<f32>(var_2.d, -454f))) & (true && global0.b.x), !all(vec2<bool>(false, global0.b.x)) != !any(vec4<bool>(global0.b.x, true, global0.b.x, false)), global0.a.a.x > _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global0.a.a, var_3.a), var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(global0.a.d, var_2.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), global0.b.x)), -907f)), ~(~(~var_2.a)));
}

