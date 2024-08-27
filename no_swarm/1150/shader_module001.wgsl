struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> i32 {
    let var_0 = countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~51923u, ~arg_2.x) ^ (firstTrailingBit(arg_2.zw) | u_input.a), ~(~select(vec2<u32>(1u, arg_0.b), vec2<u32>(4294967295u, 1u), vec2<bool>(true, false)))));
    global0 = array<u32, 30>();
    var var_1 = vec2<bool>(false, true);
    global0 = array<u32, 30>();
    var_1 = !vec2<bool>(var_1.x, all(vec4<bool>(var_1.x, select(false, true, var_1.x), true, true)));
    return -1i;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    var var_0 = Struct_2(~arg_0.d, abs(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 22768u)), u_input.a), 30u)]));
    var var_1 = ~arg_0.c;
    var var_2 = Struct_2((_wgslsmith_dot_vec3_i32(var_1.xzz, _wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, 2147483647i), vec3<i32>(-44487i, 0i, arg_0.d))) >> (_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 30u)], ~45179u, abs(1106u)) % 32u)) ^ func_3(Struct_2(_wgslsmith_mult_i32(9038i, arg_0.d), _wgslsmith_sub_u32(u_input.a.x, 4294967295u)), ~max(23995i, arg_0.c.x), vec4<u32>(0u, 4294967295u, var_0.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24135u, 30u)], 30u)]) & firstTrailingBit(vec4<u32>(27058u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 4294967295u, 69497u)), 30526i), 4294967295u);
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<u32, 30>();
    var var_0 = ~vec3<i32>(26136i, _wgslsmith_mod_i32(arg_1.x, reverseBits(1i)), arg_1.x);
    var_0 = arg_2.c.wyx;
    var var_1 = vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) * _wgslsmith_div_f32(arg_2.b.x, -545f)) - _wgslsmith_f_op_f32(-arg_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.b.x)) - func_2(Struct_1(u_input.b, vec4<f32>(arg_2.b.x, 284f, arg_2.b.x, arg_2.b.x), arg_2.c, arg_2.a.x), arg_2.a.x).b.x))));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, 1u, ~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(4294967295u, 60295u, global0[_wgslsmith_index_u32(37138u, 30u)]))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32919u, 30u)], 30u)], 920u, u_input.a.x), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 1u))), vec3<u32>(global0[_wgslsmith_index_u32(132205u, 30u)] << (global0[_wgslsmith_index_u32(u_input.a.x, 30u)] % 32u), _wgslsmith_mult_u32(u_input.a.x, 1530u), 577u)) & ~(~(vec3<u32>(6506u, global0[_wgslsmith_index_u32(13641u, 30u)], global0[_wgslsmith_index_u32(29496u, 30u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(69909u, 30u)], 4294967295u, 39217u) % vec3<u32>(32u)))));
    return func_2(func_2(arg_2, firstLeadingBit(~(~331i))), -212i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(157f, arg_0.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(vec2<bool>(true, false), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.d, 1i), vec2<i32>(1i, -33526i)), Struct_1(u_input.b, vec4<f32>(arg_0.b.x, 842f, arg_0.b.x, arg_0.b.x), arg_0.c, arg_0.c.x)).b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-812f, arg_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - 2309f)), arg_0.b.x) - arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(step(-323f, _wgslsmith_f_op_f32(floor(-985f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f)), arg_0.b.x))));
    var var_2 = vec2<u32>(arg_1.b, _wgslsmith_dot_vec2_u32(u_input.a, ~(u_input.a >> (u_input.a % vec2<u32>(32u)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -177f);
    let var_3 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(arg_1.b < arg_1.b, true, true, select(false, true, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true))), select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, arg_0.b.x < arg_0.b.x, any(vec4<bool>(true, false, true, true)), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, !(var_1.x < -416f))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    return 1f;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<u32, 30>();
    var var_0 = vec2<u32>(4294967295u, 13641u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1857f)) == _wgslsmith_f_op_f32(func_5(func_4(arg_0.zx, -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(65736i, -2147483647i)), func_2(Struct_1(u_input.b, vec4<f32>(1167f, -123f, 495f, 347f), vec4<i32>(2147483647i, -17906i, 12340i, -1i), u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, u_input.c))), Struct_2(i32(-1i) * -u_input.c, 4294967295u)));
    let var_2 = ~_wgslsmith_add_vec3_i32(-(vec3<i32>(-31804i, -1i, u_input.c) << (vec3<u32>(23114u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(20204i, i32(-1i) * -43471i, 0i)) >> (~vec3<u32>(~(~u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(28401u, u_input.a.x) ^ 1u, 30u)], select(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(2534u, global0[_wgslsmith_index_u32(19907u, 30u)]), u_input.a), global0[_wgslsmith_index_u32(0u, 30u)] != 0u)) % vec3<u32>(32u));
    let var_3 = global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.a.x << (countOneBits(~13722u) % 32u), ~4294967295u), _wgslsmith_mod_u32(~(firstTrailingBit(4294967295u) | global0[_wgslsmith_index_u32(max(u_input.a.x, 1u), 30u)]), u_input.a.x)), 30u)];
    return func_2(func_4(select(vec2<bool>(false, true), select(select(arg_0.xy, vec2<bool>(var_1, true), arg_0.zx), vec2<bool>(false, true), vec2<bool>(false, var_1)), false), vec2<i32>(-2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(13443i, -66897i, 2147483647i, u_input.c), vec4<i32>(-2147483647i, u_input.b.x, 85409i, u_input.c)))), Struct_1(-(~vec2<i32>(-5130i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, -764f, -1000f, -222f)) - vec4<f32>(458f, -665f, 150f, -573f)), vec4<i32>(~u_input.b.x, 1i, 1i, u_input.b.x | u_input.b.x), _wgslsmith_sub_i32(u_input.c, 2147483647i) & -30769i)), abs(_wgslsmith_div_i32(1i, 49016i)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_1(~vec2<i32>(min(u_input.b.x, 1i), -1i), func_1(vec3<bool>(all(vec4<bool>(true, true, true, false)), !(arg_2.a <= u_input.c), true)).b, vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(1i, arg_3, 0i, arg_3)), min(i32(-1i) * -(u_input.b.x ^ arg_2.a), 2147483647i));
    var var_1 = Struct_2(-arg_2.a, countOneBits(u_input.a.x));
    let var_2 = func_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(-628f, var_0.b.x, var_0.b.x, 297f)) + arg_1.b)), ~var_0.c, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(var_0.c.x, arg_3)), _wgslsmith_div_i32(~var_0.c.x, func_1(vec3<bool>(false, false, true)).d))), func_1(vec3<bool>(any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(false, true, true)), true)).d);
    var var_3 = func_2(var_2, var_1.a).b;
    let var_4 = var_0.b.x;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(u_input.a.x, func_1(vec3<bool>(true, true, true)), Struct_2(u_input.c, ~max(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), 1u)), _wgslsmith_mod_i32(u_input.c, _wgslsmith_sub_i32(u_input.b.x, 0i)));
    global0 = array<u32, 30>();
    let var_1 = func_6(u_input.a.x, func_2(Struct_1(firstTrailingBit(vec2<i32>(u_input.b.x, 52124i) >> (vec2<u32>(u_input.a.x, 28410u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1389f, -1000f, 2096f, 210f)))), ~vec4<i32>(0i, 1i, 1i, var_0.a), _wgslsmith_div_i32(var_0.a, var_0.a)), 1i), Struct_2(abs(var_0.a), var_0.b), _wgslsmith_div_i32(~(-_wgslsmith_sub_i32(var_0.a, u_input.c)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.c), _wgslsmith_mod_vec2_i32(u_input.b, u_input.b)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(21133i, -18183i), vec2<i32>(0i, u_input.b.x)), vec2<i32>(var_0.a, 0i)))));
    global0 = array<u32, 30>();
    var var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(0u, ~(4294967295u << (0u % 32u)), ~(~u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(82925u, 1u, 4294967295u, u_input.a.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 30u)], 30u)], 30u)], 59566u, global0[_wgslsmith_index_u32(88974u, 30u)])) ^ ~var_0.b, global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(1u)), 30u)]), _wgslsmith_sub_vec3_u32(vec3<u32>(18790u >> (var_0.b % 32u), ~0u, firstTrailingBit(var_1.b)), reverseBits(vec3<u32>(var_0.b, var_0.b, 6203u) << (vec3<u32>(u_input.a.x, 1u, var_0.b) % vec3<u32>(32u))))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 15807u, 4294967295u)), reverseBits(vec3<u32>(0u, var_1.b, 45684u))), 4294967295u), 0u, 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(false, true), min(u_input.b, u_input.b), func_2(Struct_1(u_input.b, vec4<f32>(1784f, 1484f, -1714f, 1000f), vec4<i32>(u_input.c, 2147483647i, -2147483647i, u_input.b.x), u_input.c), var_0.a)).b.wyz + vec3<f32>(_wgslsmith_f_op_f32(-285f + 127f), _wgslsmith_f_op_f32(1168f + -646f), _wgslsmith_f_op_f32(max(-2261f, 133f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1804f, -951f, -204f), vec3<f32>(1000f, 128f, -1001f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(292f, -220f, 384f), vec3<f32>(-704f, -965f, -1000f)))))));
}

