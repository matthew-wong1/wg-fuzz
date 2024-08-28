struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<u32> = vec2<u32>(69993u, 1u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = 12247u;
    global1 = select(abs(firstLeadingBit(vec2<u32>(0u, u_input.a))), vec2<u32>(~4294967295u, firstLeadingBit(~5510u)), _wgslsmith_mult_i32(51990i >> (global1.x % 32u), -global0.x) >= firstTrailingBit(global0.x ^ 5120i)) ^ vec2<u32>(_wgslsmith_mult_u32(~4294967295u, countOneBits(firstLeadingBit(global1.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(120689u, 12104u, global1.x), reverseBits(vec3<u32>(0u, 5380u, 1u))) & var_0);
    global1 = vec2<u32>(u_input.a, 0u) | ~(~vec2<u32>(19977u, u_input.a));
    global1 = vec2<u32>(min(_wgslsmith_add_u32(109571u, global1.x >> (1257u % 32u)), min(28153u, (12627u ^ u_input.a) ^ 4294967295u)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(global1.x, 4294967295u), vec2<u32>(94601u, 77245u)), ~vec2<u32>(15557u, u_input.a)), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(7014u, var_0))));
    let var_1 = firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(1u, reverseBits(~1u)), max(_wgslsmith_div_u32(1u, 1u), reverseBits(43762u))));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d, 1033f, 1138f, arg_1))) + vec4<f32>(arg_1, arg_0.d, -176f, 809f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 770f, -1940f, 2386f)), vec4<f32>(1513f, arg_0.d, arg_0.d, arg_0.d), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, -1268f, -513f, 1000f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0.d, arg_1, -1540f) - vec4<f32>(arg_0.d, arg_1, arg_0.d, arg_2.x)), vec4<f32>(arg_1, -1224f, arg_2.x, arg_0.d), vec4<bool>(true, true, true, true)))))));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(-(-global0.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, -1580i, global0.x), arg_0.c)), 1i, select(_wgslsmith_mod_i32(select(arg_0.c.x, global0.x, false), countOneBits(global0.x)), _wgslsmith_sub_i32(2147483647i, -2147483647i ^ global0.x), true), -1i), countOneBits(vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-1i, global0.x, global0.x)), u_input.b.x, 7837i, select(global0.x, -16687i, false) << (~1u % 32u))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<u32>) -> i32 {
    let var_0 = 1521f;
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-firstTrailingBit(func_3(Struct_1(vec2<u32>(arg_2.x, arg_2.x), 50107i, vec4<i32>(global0.x, 1i, 1i, arg_0), -364f, global1.x), var_0, vec2<f32>(arg_1, 309f))), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 1i, 0i, u_input.d.x) | vec4<i32>(12254i, 2147483647i, 34385i, -1570i), func_3(Struct_1(arg_2.zx, -12455i, vec4<i32>(arg_0, 1i, arg_0, arg_0), arg_1, 20868u), arg_1, vec2<f32>(arg_1, var_0))) & (-vec4<i32>(u_input.c, 1i, -27796i, 0i) >> (vec4<u32>(4294967295u, global1.x, 103690u, arg_2.x) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_mod_vec4_i32(select(~vec4<i32>(14690i, 1i, 0i, 2147483647i), ~vec4<i32>(global0.x, arg_0, u_input.d.x, u_input.c), true), max(vec4<i32>(global0.x, u_input.c, -1i, 3890i), -vec4<i32>(1i, arg_0, arg_0, global0.x)))));
    let var_1 = u_input.d;
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -35736i, var_1.x, select(var_1.x, var_1.x, true)), -select(vec4<i32>(-2147483647i, var_1.x, var_1.x, u_input.c) ^ vec4<i32>(-2147483647i, var_1.x, global0.x, -2147483647i), -vec4<i32>(2147483647i, var_1.x, 1i, u_input.b.x), true) | ~vec4<i32>(2007i, var_1.x, -2147483647i, -1i));
    global1 = vec2<u32>(abs(1u), global1.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1076f, 1309f, -622f), vec3<f32>(1000f, 301f, 194f), vec3<bool>(false, true, true))) - _wgslsmith_div_vec3_f32(vec3<f32>(-741f, -699f, 2003f), vec3<f32>(-1058f, 906f, 435f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(723f, -448f, 932f))), vec3<f32>(_wgslsmith_f_op_f32(1000f * 124f), _wgslsmith_f_op_f32(select(1923f, -401f, true)), _wgslsmith_f_op_f32(step(-1081f, -1682f))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(283f, 184f, 413f), vec3<f32>(-755f, 1127f, 1000f), vec3<bool>(false, true, true)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1905f, 119f, 308f) * vec3<f32>(-464f, -1686f, 586f)))))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 1u) ^ ~vec4<u32>(1u, 1u, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(abs(vec4<u32>(32376u, u_input.a, global1.x, u_input.a)), vec4<u32>(119167u, global1.x, 0u, 48641u) ^ vec4<u32>(global1.x, u_input.a, 37162u, 4294967295u))), global1.x), u_input.a);
    global1 = select(~_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(var_1, 1u)), ~(~vec2<u32>(u_input.a, global1.x)), countOneBits(abs(vec2<u32>(var_1, u_input.a)))), _wgslsmith_mult_vec2_u32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -275f)), vec2<u32>(~global1.x, 7378u)), select(vec2<bool>(!all(vec3<bool>(false, false, true)), true), vec2<bool>(true, true), vec2<bool>(false, true)));
    var var_2 = true;
    global0 = vec4<i32>(u_input.b.x, _wgslsmith_div_i32(0i, ~u_input.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global0.x, -17378i, global0.x, -1i) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 8625i, global0.x, global0.x), vec4<i32>(u_input.c, 4061i, -32020i, 0i)), ~vec4<i32>(u_input.c, global0.x, u_input.c, global0.x) & vec4<i32>(-53839i, 0i, global0.x, u_input.b.x)), select(~vec4<i32>(u_input.b.x, 2147483647i, 49033i, 1i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(55962i, -27915i, global0.x, global0.x), ~vec4<i32>(u_input.c, 12083i, -2147483647i, u_input.b.x), vec4<i32>(u_input.c, global0.x, 2147483647i, -48165i) << (vec4<u32>(29926u, 1u, var_1, global1.x) % vec4<u32>(32u))), !any(vec4<bool>(true, false, false, true)))), u_input.b.x);
    var var_3 = -243f;
    var var_4 = ~_wgslsmith_clamp_i32(1i, func_2(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), ~(vec3<u32>(var_1, 840u, var_1) & vec3<u32>(21394u, 36158u, var_1))), _wgslsmith_mult_i32(u_input.d.x, ~global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, ~u_input.b.x, -1i), vec3<i32>(global0.x, u_input.d.x, u_input.b.x)), abs(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(u_input.a, var_1) >> (_wgslsmith_add_u32(7388u, 0u) % 32u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(988f, -559f, 487f, -1725f), _wgslsmith_div_vec4_f32(vec4<f32>(-989f, var_0.x, var_0.x, -593f), vec4<f32>(var_0.x, 2555f, var_0.x, 490f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 608f, -308f, var_0.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-454f, -134f, -366f, -573f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1151f, -1000f, 1436f, var_0.x) * vec4<f32>(var_0.x, -695f, var_0.x, -1638f)))))))));
}

