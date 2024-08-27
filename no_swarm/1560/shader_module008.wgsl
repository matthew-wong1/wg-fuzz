struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<f32, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = ~vec3<i32>(i32(-1i) * -firstLeadingBit(-11686i), 1i, -62303i);
    var var_1 = select(firstTrailingBit(vec2<u32>(~(~u_input.a), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.b), vec3<u32>(u_input.c.x, 4294967295u, u_input.b))))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(max(u_input.c, vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.c.x, 1u)), countOneBits(u_input.c)), vec2<bool>(false, global1.a.x));
    var var_2 = global1.a.x;
    let var_3 = u_input.a | max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.x ^ u_input.b, u_input.a << (var_1.x % 32u), var_1.x), vec4<u32>(max(22319u, 1u), 11276u, ~0u, var_1.x)), 0u);
    var var_4 = Struct_1(select(select(global1.a, global1.a, global1.a), global1.a, vec3<bool>(all(select(global1.a, vec3<bool>(global1.a.x, true, global1.a.x), global1.a.x)), all(select(vec4<bool>(global1.a.x, true, false, global1.a.x), vec4<bool>(false, global1.a.x, true, global1.a.x), global1.a.x)), global1.a.x)));
    return !var_4.a.x | false;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = vec4<bool>(!(true & !any(global1.a)), func_3(), any(vec4<bool>(!(-1000f != global2[_wgslsmith_index_u32(arg_0.x, 16u)]), false, 1u >= _wgslsmith_add_u32(0u, arg_1), global1.a.x)), arg_2.a.a.x);
    var var_1 = Struct_3(-(~1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(325f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(55825u << (u_input.c.x % 32u), 16u)] - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)] - global2[_wgslsmith_index_u32(arg_0.x, 16u)])), 137f)), arg_2.a.a.x);
    let var_2 = i32(-1i) * -57250i;
    global0 = -_wgslsmith_sub_i32(2147483647i | var_2, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, -14057i, -61289i), vec3<i32>(1i, 3122i, var_2))), select(firstTrailingBit(vec3<i32>(-11330i, var_1.a, -69468i)), ~vec3<i32>(0i, var_1.a, var_1.a), false)));
    var_1 = Struct_3(var_2 >> (_wgslsmith_div_u32(2098u, select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9797u, 46147u), vec3<u32>(4294967295u, 4294967295u, 1u)), var_0.x)) % 32u), var_1.b, var_0.x);
    return !(!select(vec4<bool>(any(var_0.wx), true, true, var_0.x), select(!vec4<bool>(false, false, true, arg_2.a.a.x), select(vec4<bool>(arg_2.a.a.x, true, false, true), vec4<bool>(global1.a.x, var_0.x, false, var_0.x), arg_2.a.a.x), all(vec4<bool>(false, arg_2.a.a.x, false, arg_2.a.a.x))), !(var_0.x != var_1.c)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = !(!vec4<bool>(~4294967295u > _wgslsmith_div_u32(arg_3.x, 0u), arg_1.x | true, arg_2.x, !any(vec2<bool>(global1.a.x, arg_1.x))));
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(var_0.x, true, !arg_2.x), select(select(vec3<bool>(false, arg_2.x, true), vec3<bool>(var_0.x, arg_1.x, false), true), vec3<bool>(var_0.x, false, arg_2.x), !arg_1.xzy), vec3<bool>(arg_1.x, var_0.x, true))));
    var var_2 = -1i;
    let var_3 = Struct_1(vec3<bool>(true, true, true));
    global2 = array<f32, 16>();
    return var_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(!(!(!arg_0.a.a))));
    let var_1 = Struct_2(func_4(~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 85691u), vec2<u32>(7087u, 22686u))), vec4<bool>(true, true, !all(vec4<bool>(false, true, false, true)), true), !global1.a, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.c.x) | u_input.c, ~vec2<u32>(u_input.b, u_input.c.x))));
    var var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.a, u_input.a), true), u_input.c) | _wgslsmith_mult_vec2_u32(firstLeadingBit(abs(u_input.c)), u_input.c), _wgslsmith_mod_vec2_u32(u_input.c | vec2<u32>(0u ^ u_input.b, u_input.b), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c)));
    global0 = -(i32(-1i) * -1i);
    var var_3 = arg_0;
    return vec2<i32>(-1i, -7205i);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: bool) -> vec2<i32> {
    global2 = array<f32, 16>();
    var var_0 = select(~(~vec3<u32>(~u_input.b, firstLeadingBit(u_input.c.x), 1808u)), vec3<u32>(reverseBits((1u & u_input.a) | u_input.b), 55633u, countOneBits(1u)), global1.a);
    let var_1 = vec2<u32>(var_0.x, ~0u);
    let var_2 = var_0.x;
    var var_3 = vec3<i32>(~_wgslsmith_add_i32(-(~0i), arg_2), arg_2, -2147483647i);
    return func_5(Struct_2(func_4(select(vec2<u32>(50380u, 0u), vec2<u32>(var_1.x, 39192u), !global1.a.xy), func_2(countOneBits(var_1), 0u, Struct_2(Struct_1(global1.a))), global1.a, ~(~vec2<u32>(43042u, var_1.x)))), 1i, Struct_3(-1i, arg_0, any(global1.a.yx)));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = ~(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.c.x), vec3<u32>(u_input.b, 0u, 4294967295u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a))) >> (~(~(~vec3<u32>(u_input.c.x, 1u, 58349u))) % vec3<u32>(32u)));
    var var_1 = select(vec4<i32>(-16277i, arg_0.x, arg_1, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(arg_0.x, -45259i, arg_1)) >> (abs(vec3<u32>(1u, u_input.c.x, u_input.a)) % vec3<u32>(32u)), firstLeadingBit(arg_0) ^ (vec3<i32>(arg_0.x, 40605i, 0i) << (vec3<u32>(var_0.x, var_0.x, u_input.a) % vec3<u32>(32u))))), select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2352i, 13156i, -2147483647i) | vec4<i32>(arg_2.a, 2147483647i, arg_2.a, arg_2.a), vec4<i32>(arg_2.a, -65296i, 2147483647i, -2147483647i), vec4<i32>(arg_1, -39792i, arg_0.x, 27545i) | vec4<i32>(-30177i, -26090i, 1i, arg_2.a)), ~(abs(vec4<i32>(arg_2.a, arg_2.a, arg_2.a, -17413i)) >> (vec4<u32>(4294967295u, var_0.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), true), func_2(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(73057u, u_input.b)), _wgslsmith_div_vec2_u32(var_0.yy, vec2<u32>(0u, 14119u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.zx), max(var_0.xz >> (var_0.xz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(39697u, u_input.c.x), vec2<u32>(1u, u_input.a), var_0.xy))), u_input.a, Struct_2(Struct_1(global1.a))));
    var var_2 = func_4(var_0.yx, select(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, global1.a.x, true), vec4<bool>(false, false, arg_2.c, arg_2.c), vec4<bool>(false, arg_2.c, global1.a.x, arg_2.c)), global1.a.x), func_2(var_0.zz & select(u_input.c, var_0.xy, global1.a.yx), _wgslsmith_sub_u32(0u >> (u_input.a % 32u), u_input.a), Struct_2(Struct_1(vec3<bool>(true, false, arg_2.c)))), arg_2.c), select(!(!vec3<bool>(arg_2.c, true, global1.a.x)), vec3<bool>(false, global1.a.x, global2[_wgslsmith_index_u32(47338u & u_input.c.x, 16u)] < _wgslsmith_f_op_f32(select(arg_2.b.x, arg_3.x, true))), vec3<bool>(!(!arg_2.c), false, global1.a.x)), vec2<u32>(_wgslsmith_div_u32(43046u, max(var_0.x << (4294967295u % 32u), ~var_0.x)), u_input.a));
    global0 = -1i;
    var var_3 = 4294967295u;
    return Struct_3(-28677i, _wgslsmith_f_op_vec3_f32(trunc(arg_3)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 16>();
    let var_0 = func_6(~abs(vec3<i32>(2147483647i, firstTrailingBit(-90176i), -1i)), _wgslsmith_dot_vec2_i32(-abs(func_1(vec3<f32>(global2[_wgslsmith_index_u32(1u, 16u)], -1000f, -460f), -1i, -1i, global1.a.x)), firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 5508i)), vec2<i32>(33085i, -8244i)))), Struct_3(-1i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], 1000f, 1218f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], -405f, global2[_wgslsmith_index_u32(u_input.b, 16u)])) - vec3<f32>(1000f, global2[_wgslsmith_index_u32(15390u, 16u)], 1511f)))), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(max(max(u_input.b, u_input.a), 22063u), 16u)], global2[_wgslsmith_index_u32(454u | ~u_input.c.x, 16u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.a, 16u)] + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)] * 373f)))));
    var var_1 = !any(!(!vec4<bool>(var_0.c, var_0.c, var_0.c, global1.a.x)));
    let var_2 = func_6(-vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 18811i, 2147483647i), vec3<i32>(var_0.a, var_0.a, var_0.a)), firstTrailingBit(var_0.a)), var_0.a, _wgslsmith_clamp_i32(countOneBits(15738i), _wgslsmith_add_i32(var_0.a, -1i), i32(-1i) * -5571i)), ~min(_wgslsmith_mult_i32(var_0.a, _wgslsmith_mult_i32(var_0.a, var_0.a)), var_0.a), func_6(vec3<i32>(~var_0.a | 34587i, _wgslsmith_add_i32(var_0.a, 6386i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, var_0.a), firstLeadingBit(vec3<i32>(2147483647i, var_0.a, var_0.a)))), 0i, var_0, _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-810f, global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(51522u, 16u)])), _wgslsmith_f_op_vec3_f32(round(var_0.b)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 1245f, var_0.c)) + var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x + func_6(vec3<i32>(var_0.a, var_0.a, -1i), var_0.a, Struct_3(-1i, vec3<f32>(-1006f, var_0.b.x, 122f), var_0.c), var_0.b).b.x)))));
    let var_3 = vec4<bool>(-575f <= var_2.b.x, global1.a.x, select(any(!(!vec4<bool>(false, global1.a.x, var_2.c, global1.a.x))), true, var_0.c), !any(vec4<bool>(global1.a.x && true, true, !var_0.c, global1.a.x)));
    let var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(_wgslsmith_clamp_u32(5900u & u_input.c.x, u_input.a, u_input.a) ^ 11624u), ~func_5(Struct_2(Struct_1(var_3.yyy)), firstTrailingBit(var_2.a), func_6(vec3<i32>(var_0.a, var_0.a, var_2.a), firstTrailingBit(-18922i), Struct_3(9144i, var_2.b, false), vec3<f32>(-548f, -1268f, var_0.b.x))));
}

