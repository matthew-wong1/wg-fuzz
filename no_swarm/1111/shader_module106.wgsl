struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(88457u, 23923u, 42682u, 1u, 107291u, 0u, 6724u, 9070u, 3939u, 13111u, 0u, 0u, 0u, 0u, 0u, 5792u, 30397u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(449f - var_1.a.x), var_1.a.x), false))), abs(1i), var_1.c, ~(~u_input.a) << (u_input.a % vec3<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, 1671f) - var_1.a) * vec2<f32>(var_1.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a))))), var_2.b, global0[_wgslsmith_index_u32(1u, 18u)], arg_0.yyw);
    let var_4 = arg_1;
    return 55178u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = ~vec4<u32>(7819u, ~(_wgslsmith_clamp_u32(2454u, 4294967295u, 0u) << (0u % 32u)), max(~1u, _wgslsmith_mult_u32(arg_3.d.x, global0[_wgslsmith_index_u32(6524u, 18u)]) ^ _wgslsmith_clamp_u32(arg_3.c, arg_3.c, global0[_wgslsmith_index_u32(arg_2.d.x, 18u)])), _wgslsmith_mod_u32(func_3(vec4<u32>(u_input.a.x, 14893u, 44822u, 60121u), arg_1), ~(arg_1.c & 0u)));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2202f * _wgslsmith_f_op_f32(round(-380f)))), 177f), u_input.c.x, 47889u, abs(arg_3.d));
    var var_2 = select(arg_0, vec2<bool>(-reverseBits(var_1.b) > -52541i, true), true);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(763f, arg_2.a.x)))), ~_wgslsmith_add_i32(min(_wgslsmith_mod_i32(u_input.c.x, 1i), arg_2.b), max(2147483647i & u_input.c.x, abs(arg_3.b))), arg_3.d.x, ~arg_2.d);
    var_2 = !vec2<bool>(arg_0.x, false);
    return -1i;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, 1887f) + -1161f), 237f)), -764f), abs(abs(-18031i)), var_0.d.x, ~arg_0.d);
    global0 = array<u32, 18>();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-2393f))))), _wgslsmith_f_op_f32(min(-1028f, _wgslsmith_f_op_f32(-arg_0.a.x))))));
    var var_3 = 0i;
    return select(vec2<bool>(!(_wgslsmith_f_op_f32(min(-1203f, var_0.a.x)) >= var_0.a.x), select(true, false, false)), !select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), !all(vec4<bool>(false, true, true, false))), var_2.x > _wgslsmith_f_op_f32(1265f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * 1000f))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    let var_0 = vec2<i32>(arg_2, abs(u_input.c.x) | -44532i);
    global0 = array<u32, 18>();
    let var_1 = arg_1.b;
    global0 = array<u32, 18>();
    let var_2 = global0[_wgslsmith_index_u32(max(~(~(~arg_1.c) | (7535u >> (~u_input.b % 32u))), 4261u), 18u)];
    return select(vec2<bool>(!all(arg_0), false), arg_0, arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = ~(~abs(~arg_0.c)) < (~_wgslsmith_add_u32(countOneBits(16787u), 25563u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, max(0u, arg_1.d.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, arg_0.d.x) >> (arg_1.d.zy % vec2<u32>(32u)), ~u_input.a.yz, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 18u)]))) % 32u));
    return select(func_5(func_4(arg_0, func_2(vec2<bool>(true, var_0), Struct_1(arg_0.a, -52549i, u_input.b, arg_1.d), Struct_1(vec2<f32>(arg_1.a.x, arg_1.a.x), arg_0.b, 25232u, arg_1.d), arg_0) ^ _wgslsmith_div_i32(8343i, 17808i)), arg_0, ~0i), vec2<bool>(true, var_0), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2152f, 2287f))))))) - -133f);
    global0 = array<u32, 18>();
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, ~2147483647i, select(21454i, u_input.c.x, true), ~u_input.c.x), firstLeadingBit(vec4<i32>(-50009i, -14014i, -1i, u_input.c.x)) >> (~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], 84479u, 47241u, 0u) % vec4<u32>(32u))), -u_input.c.x), firstTrailingBit(vec3<i32>(-1i, max(u_input.c.x, u_input.c.x), max(u_input.c.x, u_input.c.x))) & vec3<i32>(u_input.c.x, -_wgslsmith_clamp_i32(-2147483647i, -59343i, u_input.c.x), max(-u_input.c.x, -67980i)));
    var var_2 = !func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(609f, 2376f), vec2<f32>(-693f, 2975f), vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, 517f) + vec2<f32>(1000f, 534f))), firstLeadingBit(var_1.x ^ -1i), _wgslsmith_mod_u32(~u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(83422u, 18u)]), 18u)]), vec3<u32>(firstTrailingBit(0u), ~u_input.b, global0[_wgslsmith_index_u32(~u_input.a.x, 18u)])), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(961f, -1461f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1048f, -1832f), vec2<f32>(-456f, 427f), vec2<bool>(true, false)))), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_1.x, u_input.c.x), vec3<i32>(18374i, u_input.c.x, -1i)), global0[_wgslsmith_index_u32(u_input.a.x, 18u)], vec3<u32>(~62157u, reverseBits(u_input.a.x), global0[_wgslsmith_index_u32(u_input.b, 18u)] >> (4294967295u % 32u))));
    var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(47828i, var_1.x << (u_input.b % 32u), u_input.c.x), countOneBits(~vec3<i32>(-25507i, var_1.x, -17527i)), vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-u_input.c.x, func_2(vec2<bool>(var_2.x, true), Struct_1(vec2<f32>(-1717f, -517f), var_1.x, 28599u, u_input.a), Struct_1(vec2<f32>(1599f, -1741f), u_input.c.x, 1u, u_input.a), Struct_1(vec2<f32>(802f, 1683f), -41121i, global0[_wgslsmith_index_u32(5591u, 18u)], u_input.a))), (u_input.c.x | u_input.c.x) | var_1.x), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (~73372u % 32u), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 12805u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 17109u, 49651u), vec4<u32>(u_input.b, 1u, global0[_wgslsmith_index_u32(3282u, 18u)], 28212u)) << (firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u, 0u, 73991u)) % vec4<u32>(32u))), select(~vec4<u32>(u_input.b, 4294967295u, 1u, 1u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 17748u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 18u)], 18515u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 18u)], u_input.a.x)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.b, 1u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(99832u, 18u)], 18u)]) & vec4<u32>(0u, global0[_wgslsmith_index_u32(23106u, 18u)], 0u, 1u)), vec4<bool>(all(vec2<bool>(false, var_2.x)), var_2.x, var_2.x, true)), select(vec4<u32>(53841u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 18u)], 0u) ^ vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 4294967295u, u_input.a.x, u_input.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(2983u, 18u)], 1u, 0u, 4294967295u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14813u, 18u)], 18u)], 18u)], 65921u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)])) % vec4<u32>(32u)), select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, true, false, var_2.x), true)))));
}

