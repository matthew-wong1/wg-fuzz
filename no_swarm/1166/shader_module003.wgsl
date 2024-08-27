struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global1 = global0.b.x;
    let var_0 = Struct_1(u_input.a.x >> (26359u % 32u), _wgslsmith_mod_vec4_i32(global0.b, _wgslsmith_clamp_vec4_i32(reverseBits(-vec4<i32>(global0.b.x, 1i, 0i, global0.b.x)), firstLeadingBit(vec4<i32>(37452i, -2147483647i, global0.b.x, global0.b.x)), global0.b)), abs(abs(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))) + global0.d));
    global1 = 7323i;
    let var_1 = select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(any(vec2<bool>(false, false)), true, true)), false, false, !(all(vec3<bool>(false, false, false)) != (1949f == var_0.d))), select(select(vec4<bool>(true, true, all(vec2<bool>(false, false)), all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), !vec4<bool>(true, true, true, var_0.b.x <= var_0.b.x), !(var_0.b.x < 1i)));
    let var_2 = global0.d;
    return select(select(var_1.xwy, vec3<bool>(true, var_1.x, var_1.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(-21189i, var_0.b.x), global0.b.x) < global0.b.x), select(!select(vec3<bool>(false, true, false), select(vec3<bool>(var_1.x, var_1.x, false), var_1.xyy, var_1.x), vec3<bool>(var_1.x, var_1.x, true)), select(!(!vec3<bool>(var_1.x, var_1.x, false)), select(var_1.zyz, !var_1.xxy, !var_1.x), select(var_1.yxw, select(vec3<bool>(var_1.x, false, var_1.x), var_1.ywx, var_1.zwy), var_1.wxz)), var_1.x), !any(var_1));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = all(func_3()) || all(func_3());
    global0 = Struct_1(u_input.b.x, max(_wgslsmith_clamp_vec4_i32(-arg_1.b, global0.b, vec4<i32>(~arg_1.b.x, _wgslsmith_div_i32(global0.b.x, arg_1.b.x), _wgslsmith_div_i32(arg_1.b.x, global0.b.x), _wgslsmith_clamp_i32(arg_1.b.x, -1i, -21593i))), abs(vec4<i32>(arg_1.b.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.b.x, -2147483647i), global0.b.wxy), arg_1.b.x))), vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(0u, firstLeadingBit(global0.a))) << (((vec2<u32>(73737u, arg_1.a) & ~global2.zz) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_1.c.x), u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), -1000f);
    var_0 = true;
    global0 = Struct_1(max(1u ^ select(1u, arg_1.a, all(arg_0)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(18588u, 57817u, 63839u, global0.a)), ~vec4<u32>(1u, 74001u, arg_1.a, global2.x)) ^ u_input.b.x), abs(-vec4<i32>(44906i, abs(-1643i), _wgslsmith_mult_i32(9798i, -7963i), _wgslsmith_add_i32(arg_1.b.x, -1i))), vec2<u32>(u_input.a.x, ~global2.x), arg_1.d);
    global2 = vec4<u32>(49600u, ~(~(~global2.x)), ~arg_1.a, 91708u) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 19304u), arg_1.a, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, arg_1.c.x, global2.x), vec4<u32>(0u, global2.x, global0.a, 10887u))), vec4<u32>(_wgslsmith_div_u32(global2.x, global0.a), max(1u, 36500u), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_1.a), u_input.a))) % vec4<u32>(32u));
    return ~_wgslsmith_add_u32(_wgslsmith_add_u32(90631u, arg_1.a), 0u);
}

fn func_1() -> vec2<bool> {
    global2 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(max(global0.c.x, 4294967295u), _wgslsmith_div_u32(global2.x, 0u), global2.x, firstLeadingBit(1299u))), abs(vec4<u32>(_wgslsmith_mult_u32(0u, global2.x), global0.a >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(4294967295u, global2.x)), ~1u))) & vec4<u32>(_wgslsmith_mod_u32(~global0.c.x, _wgslsmith_mod_u32(reverseBits(27732u), func_2(vec4<bool>(false, false, true, false), Struct_1(29306u, vec4<i32>(2147483647i, -1i, -1i, global0.b.x), global2.wx, 920f)))), 0u >> (u_input.a.x % 32u), reverseBits(abs(~u_input.b.x)), ~_wgslsmith_sub_u32(16022u | global0.c.x, _wgslsmith_sub_u32(global2.x, 0u)));
    var var_0 = ~(~(-global0.b));
    let var_1 = all(vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))) >= _wgslsmith_f_op_f32(-global0.d), !any(vec3<bool>(true, true, true)), !(min(var_0.x, -1i) != 18081i), any(vec3<bool>(true, true, true))));
    global1 = global0.b.x;
    let var_2 = Struct_1(_wgslsmith_clamp_u32(u_input.b.x, ~(~abs(18908u)), global0.c.x & u_input.a.x), firstLeadingBit(~(~_wgslsmith_clamp_vec4_i32(global0.b, global0.b, vec4<i32>(global0.b.x, var_0.x, global0.b.x, 2147483647i)))), abs(_wgslsmith_mod_vec2_u32(~(vec2<u32>(global0.a, u_input.b.x) << (global0.c % vec2<u32>(32u))), ~vec2<u32>(global0.c.x, global2.x) ^ ~vec2<u32>(global0.a, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d))) - 164f)));
    return !select(vec2<bool>(true, any(!vec4<bool>(true, var_1, true, false))), select(!(!vec2<bool>(var_1, var_1)), !select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), true), any(select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, var_1, var_1, false)))), !(!vec2<bool>(true, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.c.x, _wgslsmith_mod_vec4_i32(reverseBits(-global0.b), ~(_wgslsmith_add_vec4_i32(global0.b, global0.b) ^ ~vec4<i32>(-2147483647i, 0i, global0.b.x, 40369i))), global0.c, _wgslsmith_f_op_f32(-358f - 858f));
    var var_0 = select(!(!func_1()), vec2<bool>(false, select(true, !(global0.d >= 425f), true)), vec2<bool>(true, true));
    global0 = Struct_1(28793u, vec4<i32>(global0.b.x, global0.b.x, -1i, global0.b.x ^ -global0.b.x), ~global0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2253f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.d))), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(trunc(1222f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1566f) + _wgslsmith_f_op_f32(floor(global0.d))))));
    let var_1 = vec3<bool>(!any(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, true))), true, var_0.x | all(!vec2<bool>(var_0.x, var_0.x)));
    let var_2 = -851f;
    let var_3 = _wgslsmith_mod_u32(firstLeadingBit(0u), firstTrailingBit(u_input.a.x));
    var_0 = var_1.xz;
    global0 = Struct_1(firstLeadingBit(global2.x) ^ 0u, -(~(-firstLeadingBit(vec4<i32>(global0.b.x, global0.b.x, 1i, -2147483647i)))), vec2<u32>(select(u_input.a.x, 1u, all(var_1.yx)), _wgslsmith_div_u32(~func_2(vec4<bool>(false, false, true, var_0.x), Struct_1(6960u, vec4<i32>(global0.b.x, -2147483647i, 0i, global0.b.x), vec2<u32>(33731u, 74309u), 797f)), abs(9173u))), _wgslsmith_f_op_f32(var_2 + 180f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, global0.d, u_input.b);
}

