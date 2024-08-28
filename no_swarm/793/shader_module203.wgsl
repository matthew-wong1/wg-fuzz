struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(13062u, 9434u, 4294967295u);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(13868u, 52237u, 47287u, 4294967295u), -297f, vec4<i32>(1i, 0i, 49404i, 1i), vec2<f32>(-724f, 1339f)), Struct_1(vec4<u32>(6476u, 1u, 1u, 10954u), 141f, vec4<i32>(-1i, 19201i, -1i, 1i), vec2<f32>(-749f, 150f)), Struct_1(vec4<u32>(1093u, 104215u, 37914u, 26159u), -607f, vec4<i32>(0i, 2147483647i, -1i, -17399i), vec2<f32>(360f, -242f)), Struct_1(vec4<u32>(4294967295u, 81247u, 20893u, 0u), -1072f, vec4<i32>(-1i, 21130i, -1i, -3122i), vec2<f32>(-360f, 877f)), Struct_1(vec4<u32>(0u, 23274u, 0u, 25056u), -415f, vec4<i32>(21076i, 4990i, -1i, 0i), vec2<f32>(-595f, -1541f)), Struct_1(vec4<u32>(29678u, 32256u, 4294967295u, 4294967295u), 750f, vec4<i32>(-3974i, 32902i, 8947i, -47060i), vec2<f32>(219f, -358f)), Struct_1(vec4<u32>(39898u, 0u, 803u, 32955u), -475f, vec4<i32>(2147483647i, -35289i, 49069i, 2147483647i), vec2<f32>(2603f, -934f)), Struct_1(vec4<u32>(34742u, 0u, 53054u, 0u), -569f, vec4<i32>(52888i, 1i, 13553i, 398i), vec2<f32>(-1331f, 208f)), Struct_1(vec4<u32>(41709u, 1u, 1u, 51917u), 884f, vec4<i32>(24141i, -7818i, -7871i, -16761i), vec2<f32>(1764f, 555f)), Struct_1(vec4<u32>(20559u, 109361u, 1u, 22183u), -682f, vec4<i32>(-12469i, i32(-2147483648), 96397i, 11819i), vec2<f32>(-992f, 1000f)), Struct_1(vec4<u32>(50472u, 1u, 29915u, 32186u), 671f, vec4<i32>(-28335i, 2147483647i, 17148i, 5262i), vec2<f32>(-1178f, -1070f)), Struct_1(vec4<u32>(1u, 64406u, 59084u, 0u), -601f, vec4<i32>(21593i, 0i, 1i, 2147483647i), vec2<f32>(-1000f, -134f)), Struct_1(vec4<u32>(66125u, 7389u, 50130u, 4294967295u), -180f, vec4<i32>(2147483647i, 0i, i32(-2147483648), 25467i), vec2<f32>(-613f, -453f)), Struct_1(vec4<u32>(1u, 4294967295u, 11338u, 2743u), 995f, vec4<i32>(-10135i, 0i, -1i, -1i), vec2<f32>(-2325f, -1242f)), Struct_1(vec4<u32>(1u, 1u, 4629u, 27859u), 482f, vec4<i32>(-8097i, 25644i, i32(-2147483648), 2147483647i), vec2<f32>(-1895f, 367f)), Struct_1(vec4<u32>(5429u, 35885u, 4294967295u, 37662u), 586f, vec4<i32>(-1i, 45945i, 1i, -1i), vec2<f32>(-1406f, 120f)));

var<private> global2: array<Struct_2, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.c.yz;
    var var_1 = Struct_2(arg_2, Struct_1(vec4<u32>(arg_0.b.a.x, ~arg_0.b.a.x, 1u, countOneBits(32235u)), _wgslsmith_f_op_f32(abs(arg_1.a.d.x)), vec4<i32>(_wgslsmith_add_i32(min(-1i, arg_0.c.x), max(arg_1.b.c.x, arg_0.a.c.x)), -19308i, max(-6426i, 32580i), ~(-2147483647i ^ arg_1.b.c.x)), vec2<f32>(arg_0.a.b, 183f)), arg_2.c);
    return arg_2;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec4<u32> {
    global2 = array<Struct_2, 9>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f), _wgslsmith_f_op_f32(f32(-1f) * -514f))))), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -488f), _wgslsmith_f_op_f32(-arg_1.b))) + _wgslsmith_f_op_f32(-arg_1.b))), -700f);
    let var_1 = Struct_2(arg_1, func_2(Struct_2(func_2(arg_2, arg_0, Struct_1(arg_2.a.a, 309f, vec4<i32>(arg_2.a.c.x, arg_0.a.c.x, 1i, arg_1.c.x), var_0.wy)), Struct_1(vec4<u32>(40369u, arg_2.a.a.x, arg_1.a.x, global0.x), _wgslsmith_f_op_f32(-arg_0.a.d.x), vec4<i32>(arg_0.a.c.x, arg_2.c.x, arg_2.b.c.x, -1i), _wgslsmith_f_op_vec2_f32(round(var_0.zw))), arg_1.c), Struct_2(func_2(arg_2, arg_0, func_2(arg_2, arg_2, arg_2.b)), arg_0.b, arg_2.b.c), func_2(arg_2, Struct_2(Struct_1(vec4<u32>(34083u, u_input.a.x, 0u, u_input.a.x), -221f, vec4<i32>(u_input.b, 0i, 22570i, arg_1.c.x), var_0.wy), Struct_1(arg_0.a.a, arg_2.a.d.x, arg_0.a.c, vec2<f32>(var_0.x, var_0.x)), countOneBits(arg_1.c)), global1[_wgslsmith_index_u32(abs(0u), 16u)])), vec4<i32>(max((-2377i << (u_input.a.x % 32u)) & (-36102i >> (arg_1.a.x % 32u)), -_wgslsmith_sub_i32(arg_1.c.x, -44233i)), -3055i, abs(countOneBits(_wgslsmith_sub_i32(2147483647i, u_input.b))), u_input.b));
    let var_2 = ~select(min(~arg_1.a.x, firstLeadingBit(arg_0.a.a.x)), 26447u, any(vec3<bool>(true, true, true)) != false);
    return var_1.b.a;
}

fn func_1() -> f32 {
    global2 = array<Struct_2, 9>();
    global0 = u_input.a;
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(abs(abs(var_0.a)), vec4<u32>(select(11357u, global0.x, true), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, 9437u, 0u, 1u)), var_0.a.x, abs(var_0.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f + 1069f)))), _wgslsmith_clamp_vec4_i32(var_0.c, vec4<i32>(-var_0.c.x, abs(-7506i), -11605i, var_0.c.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(21239i, 41790i, -10144i, 29994i), vec4<i32>(u_input.b, var_0.c.x, u_input.b, 5986i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-945f, -679f)))))), Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(6252u, u_input.a.x, 1u, 27645u) & vec4<u32>(0u, 10272u, 24670u, 4294967295u), func_3(Struct_2(global1[_wgslsmith_index_u32(33611u, 16u)], Struct_1(var_0.a, 1436f, var_0.c, var_0.d), vec4<i32>(u_input.b, -41083i, u_input.b, 1i)), func_2(Struct_2(Struct_1(var_0.a, var_0.b, vec4<i32>(u_input.b, -1i, -1i, u_input.b), vec2<f32>(var_0.b, var_0.d.x)), Struct_1(vec4<u32>(1u, global0.x, global0.x, global0.x), -576f, vec4<i32>(u_input.b, u_input.b, 48809i, u_input.b), vec2<f32>(var_0.b, var_0.d.x)), vec4<i32>(-15829i, -2147483647i, -2147483647i, 61056i)), global2[_wgslsmith_index_u32(global0.x, 9u)], global1[_wgslsmith_index_u32(34527u, 16u)]), Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], Struct_1(vec4<u32>(var_0.a.x, 4294967295u, global0.x, u_input.a.x), var_0.b, vec4<i32>(2786i, u_input.b, var_0.c.x, u_input.b), var_0.d), vec4<i32>(var_0.c.x, u_input.b, -1i, var_0.c.x)), true)), -1753f, var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.d, var_0.d, false)) * vec2<f32>(var_0.b, var_0.b)) - var_0.d)), var_0.c);
    var var_2 = vec3<f32>(var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1640f))), -1643f);
    return _wgslsmith_f_op_f32(round(1014f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~1u, ~(~(abs(1u) ^ global0.x)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1590f)))), 810f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_1))))) + vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1())));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, -777f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, -1302f))), vec2<f32>(-1093f, 221f)))), vec2<f32>(-1070f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 641f)));
    let var_3 = global2[_wgslsmith_index_u32(51642u, 9u)];
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2225f) * _wgslsmith_f_op_f32(var_3.a.b * 223f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(541f, _wgslsmith_f_op_f32(var_3.a.b * 1377f))) + _wgslsmith_f_op_f32(select(-979f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1566f)), true))), 887f, -460f);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-449f)), _wgslsmith_f_op_f32(-var_1)) + 505f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(round(var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c, _wgslsmith_f_op_vec4_f32(var_4 * _wgslsmith_f_op_vec4_f32(-var_4)), var_3.c.x >> (u_input.a.x % 32u), select(_wgslsmith_mod_vec4_u32(~var_3.a.a, var_3.b.a), ~(~(var_3.b.a << (vec4<u32>(0u, var_3.b.a.x, 62092u, 1u) % vec4<u32>(32u)))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, all(vec4<bool>(true, false, true, false)), true), select(any(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, true, true)), true))), _wgslsmith_clamp_vec2_i32(var_3.c.yx, vec2<i32>(-(~var_3.a.c.x), _wgslsmith_sub_i32(reverseBits(16810i), var_3.b.c.x)), func_2(global2[_wgslsmith_index_u32(reverseBits(u_input.a.x) & var_3.a.a.x, 9u)], Struct_2(Struct_1(var_3.a.a, -1239f, vec4<i32>(var_3.b.c.x, var_3.a.c.x, var_3.b.c.x, -2147483647i), vec2<f32>(-270f, -1592f)), func_2(global2[_wgslsmith_index_u32(28412u, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)], Struct_1(var_3.b.a, var_2.x, var_3.b.c, var_3.b.d)), vec4<i32>(1i, var_3.b.c.x, u_input.b, 15293i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(31533u, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, global0.x), vec2<u32>(28772u, 39502u))), 16u)]).c.zy));
}

