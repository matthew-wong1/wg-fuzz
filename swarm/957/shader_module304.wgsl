struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_1(1u, arg_1, vec3<bool>(select(arg_0.a | !arg_0.a, any(!vec3<bool>(arg_0.a, arg_0.a, false)), arg_0.a), select(false, true, false), arg_0.a), vec3<u32>(91247u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(30640u, 4294967295u), ~vec2<u32>(1u, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~42461u, 1u, ~2887u), ~_wgslsmith_clamp_u32(47684u, 0u, 0u))), true);
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    var var_1 = select(!vec3<bool>(false, var_0.e, arg_0.a), var_0.c, vec3<bool>(false, any(vec2<bool>(true, true || var_0.e)), select(any(vec2<bool>(var_0.c.x, true)), all(vec2<bool>(var_0.c.x, var_0.e)), arg_0.a) && var_0.e));
    global0 = array<Struct_3, 24>();
    return select(!select(!var_0.c, !(!var_0.c), select(var_0.c, var_0.c, false)), vec3<bool>(any(!var_0.c), var_0.b >= _wgslsmith_div_f32(arg_1, -1579f), false), vec3<bool>(true, true, !arg_0.a));
}

fn func_2() -> Struct_2 {
    let var_0 = 1i;
    global0 = array<Struct_3, 24>();
    let var_1 = Struct_1(0u, 1237f, select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), func_3(Struct_2(false), 2360f), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), true), abs(min(~(~vec3<u32>(208u, 27379u, 0u)), vec3<u32>(1u, 1u, 1u))), all(!vec3<bool>(all(vec4<bool>(true, false, true, true)), false, any(vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, 472f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1437f, 274f), vec2<f32>(var_1.b, -1000f))), -917f != var_1.b)))))));
    global0 = array<Struct_3, 24>();
    return Struct_2(false);
}

fn func_1() -> Struct_3 {
    let var_0 = ~(-1i);
    let var_1 = ~(~(-6380i));
    var var_2 = func_2();
    let var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(1u, 1u) >> (countOneBits(~1u) % 32u)), vec2<u32>(max(_wgslsmith_mod_u32(max(0u, 50641u), min(1u, 31306u)), 1u), ~6881u), abs(reverseBits(vec2<u32>(~4294967295u, ~0u))));
    var_2 = func_2();
    return Struct_3(Struct_1(6650u, -2579f, func_3(Struct_2(var_2.a | false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_add_vec3_u32(vec3<u32>(~63101u, var_3.x, var_3.x), reverseBits(~vec3<u32>(1u, var_3.x, 0u))), select(~var_1 < (var_0 & -54596i), true, (var_0 >= u_input.a) | !var_2.a)), Struct_2(!var_2.a), _wgslsmith_clamp_vec2_i32(~firstTrailingBit(~vec2<i32>(1320i, 19089i)), vec2<i32>(-_wgslsmith_clamp_i32(var_1, 2147483647i, var_1), ~min(var_0, u_input.a)), _wgslsmith_sub_vec2_i32(~(vec2<i32>(2147483647i, var_1) | vec2<i32>(var_1, -25248i)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(36363i, -1i)), vec2<i32>(var_0, -21261i)))), func_2(), Struct_1(var_3.x, -1059f, vec3<bool>(false && var_2.a, !(4294967295u != var_3.x), 32623i > _wgslsmith_div_i32(0i, u_input.a)), min(abs(vec3<u32>(33422u, var_3.x, 1u) | vec3<u32>(0u, 67939u, 4294967295u)), ~(vec3<u32>(9349u, var_3.x, var_3.x) ^ vec3<u32>(var_3.x, var_3.x, var_3.x))), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mult_i32(var_0.c.x, u_input.a)) >> (var_0.e.d.x % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -24616i), ~vec2<i32>(u_input.a, -13837i)), _wgslsmith_clamp_vec2_i32(var_0.c, var_0.c | var_0.c, vec2<i32>(u_input.a, -1i) | vec2<i32>(-2147483647i, 0i)))), _wgslsmith_dot_vec2_i32(max(~vec2<i32>(2147483647i, 1i), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 25735i, var_0.c.x), _wgslsmith_add_i32(1i, u_input.a))), vec2<i32>(-1i) * -firstLeadingBit(var_0.c)));
    var var_2 = countOneBits(~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.e.d.x, var_0.a.a, 92469u, var_0.e.d.x), vec4<u32>(var_0.e.d.x, var_0.e.d.x, var_0.a.d.x, 70243u), vec4<u32>(var_0.a.d.x, 1u, var_0.e.a, var_0.a.a)) & vec4<u32>(var_0.a.a, 0u, 54818u, var_0.e.d.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1311f + var_0.a.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(var_0.a.d, abs(var_2.yxy)), -893f, ~(~abs(select(vec3<i32>(-6220i, 0i, u_input.a), vec3<i32>(var_0.c.x, u_input.a, var_0.c.x), var_0.d.a))));
}

