struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec3<i32>(289i, -1i, -59990i), 2147483647i)), Struct_2(Struct_1(vec3<i32>(-5209i, -1i, -26716i), i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -10484i, 10843i), -28557i)), Struct_2(Struct_1(vec3<i32>(1i, -18570i, 22239i), 11097i)), Struct_2(Struct_1(vec3<i32>(-57985i, 27773i, -67379i), 2147483647i)), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), 1214i), 0i)), Struct_2(Struct_1(vec3<i32>(22118i, 0i, -8049i), 29708i)), Struct_2(Struct_1(vec3<i32>(0i, 41197i, 0i), -45110i)), Struct_2(Struct_1(vec3<i32>(0i, 57553i, 27996i), -18128i)), Struct_2(Struct_1(vec3<i32>(18187i, -29869i, 1i), -1i)), Struct_2(Struct_1(vec3<i32>(-1i, 22730i, i32(-2147483648)), 2147483647i)), Struct_2(Struct_1(vec3<i32>(82501i, -9515i, 14021i), 1i)), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 61534i), -24070i)), Struct_2(Struct_1(vec3<i32>(-19042i, -3220i, -10216i), 20839i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 16782i, -21346i), -52520i)), Struct_2(Struct_1(vec3<i32>(2147483647i, -3495i, 24501i), -46917i)), Struct_2(Struct_1(vec3<i32>(-50459i, 22057i, -39014i), 22114i)), Struct_2(Struct_1(vec3<i32>(5597i, 1i, 39202i), 0i)), Struct_2(Struct_1(vec3<i32>(2147483647i, -9226i, 27129i), i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(-50736i, 1i, i32(-2147483648)), 11203i)), Struct_2(Struct_1(vec3<i32>(-7784i, 0i, 0i), 74728i)), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, -7099i), 65731i)), Struct_2(Struct_1(vec3<i32>(2147483647i, -15985i, -61853i), 2147483647i)), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, -1i), 2147483647i)), Struct_2(Struct_1(vec3<i32>(-1767i, 39752i, -19237i), 1i)));

var<private> global1: array<bool, 10> = array<bool, 10>(true, false, true, true, false, false, true, true, false, true);

var<private> global2: array<vec3<bool>, 28>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = 0i;
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-692f - _wgslsmith_f_op_f32(-arg_0)), -422f)), -366f, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, 327f, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1395f, -2282f, -1064f, -254f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -669f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1376f, arg_0, arg_0, arg_0)), select(vec4<bool>(true, false, global3.x, true), vec4<bool>(global1[_wgslsmith_index_u32(97994u, 10u)], global1[_wgslsmith_index_u32(12297u, 10u)], false, true), global1[_wgslsmith_index_u32(u_input.a, 10u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) < _wgslsmith_f_op_f32(arg_0 * arg_0)));
    return _wgslsmith_mult_u32(countOneBits(u_input.a), 4294967295u);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = select(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 0u, 71156u, 1u), ~vec4<u32>(72635u, 1u, arg_2, 5673u)), vec4<u32>(firstTrailingBit(func_3(1428f, arg_1.a, Struct_1(vec3<i32>(arg_1.a.b, u_input.d.x, -35477i), arg_1.a.b), Struct_2(arg_1.a))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), ~vec2<u32>(73225u, 103870u)), ~_wgslsmith_sub_u32(arg_2, 85835u), ~0u) ^ ~(~vec4<u32>(0u, 26328u, 1u, arg_2)), global1[_wgslsmith_index_u32(~(~(~1u)), 10u)] && false);
    global3 = vec4<bool>(_wgslsmith_f_op_f32(trunc(2381f)) != _wgslsmith_f_op_f32(sign(-1208f)), false, any(vec2<bool>(false, false)), !(arg_0 | all(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_2, 10u)], arg_0), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), global3.wx))));
    var var_1 = global0[_wgslsmith_index_u32(arg_2, 25u)];
    var var_2 = firstTrailingBit(abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, 2147483647i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.a.a.x, 2667i, 2147483647i), u_input.e), 1i))));
    let var_3 = 4294967295u;
    return max(1u, 79249u);
}

fn func_1() -> u32 {
    var var_0 = (vec2<u32>(func_2(36615u != u_input.a, Struct_2(Struct_1(u_input.d.yxw, u_input.d.x)), u_input.a), u_input.a) << (select(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(6806u, 4294967295u)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(4294967295u, 54173u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 5047u), vec2<u32>(1u, 34997u)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), global3.x)), true) % vec2<u32>(32u))) << ((~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(50581u, u_input.a), vec2<u32>(71886u, u_input.a)), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(78428u, u_input.a)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a, u_input.a), abs(~vec2<u32>(u_input.a, u_input.a)))) % vec2<u32>(32u));
    global3 = vec4<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(11961u, 90075u), 10u)], global1[_wgslsmith_index_u32(0u, 10u)], false, var_0.x <= u_input.a);
    var var_1 = Struct_2(Struct_1(u_input.e.wxx, ~u_input.e.x));
    var var_2 = !any(!global3.xwy);
    var var_3 = var_1.a;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a, func_1(), ~98100u << (u_input.a % 32u));
    let var_1 = _wgslsmith_mod_vec4_i32(u_input.e, ~u_input.e);
    global3 = !(!select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(294u, 10u)], true, false, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(4503u, 10u)], true), global1[_wgslsmith_index_u32(u_input.a, 10u)]), !vec4<bool>(global3.x, true, global1[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(global3.x, global1[_wgslsmith_index_u32(var_0.x, 10u)], false, global1[_wgslsmith_index_u32(var_0.x, 10u)])), vec4<bool>(true, global3.x, global1[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(27273u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], var_0.x), 10u)], !global3.x), !any(global3.zzw)));
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~(~(_wgslsmith_mult_i32(var_1.x, var_1.x) << (func_3(-1220f, Struct_1(vec3<i32>(var_1.x, u_input.b, var_1.x), 2147483647i), Struct_1(vec3<i32>(10580i, -2147483647i, 35853i), var_1.x), global0[_wgslsmith_index_u32(u_input.a, 25u)]) % 32u))));
}

