struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<i32>) -> i32 {
    global0 = !vec3<bool>(all(vec2<bool>(arg_0.e.a.x, all(arg_0.b.a))), arg_0.e.a.x, any(vec4<bool>(true, arg_0.c.a.x, true, true)));
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(arg_0.c.b, arg_0.e.c)), arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1008f)))), 1440f));
    let var_1 = Struct_1(!select(!arg_0.e.a, arg_0.b.b, true), _wgslsmith_f_op_f32(step(968f, _wgslsmith_f_op_f32(-arg_0.e.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.e.c, arg_0.e.c)))), -145f)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1286f - var_0.c)) * arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.e.c, arg_1.c))) * _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-arg_1.c)))));
    let var_3 = Struct_3(arg_1.a, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-arg_0.c.c));
    return -20989i;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_4(32099u, Struct_2(vec4<bool>(true, global0.x, global0.x, _wgslsmith_div_f32(arg_0.b, -430f) >= arg_0.a.x), vec3<bool>(true, all(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, global0.x, global0.x, true), false)), true), func_3(Struct_4(0u, Struct_2(vec4<bool>(false, true, global0.x, true), vec3<bool>(global0.x, false, false), u_input.b.x), Struct_1(vec3<bool>(true, global0.x, true), arg_0.b, arg_0.a.x), 1u, Struct_1(vec3<bool>(global0.x, global0.x, global0.x), 1850f, 954f)), arg_0, select(max(u_input.b.yx, u_input.b.xx), vec2<i32>(u_input.b.x, u_input.a), global0.yy))), Struct_1(vec3<bool>(false, false, global0.x), _wgslsmith_f_op_f32(234f + arg_0.a.x), _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.c)))), firstTrailingBit(~10373u), Struct_1(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(select(global0.x, global0.x, false), any(vec4<bool>(global0.x, global0.x, false, global0.x)), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), vec3<bool>(global0.x, true, !global0.x)), -1496f, _wgslsmith_f_op_f32(round(1100f))));
    let var_1 = min(vec3<u32>(var_0.a, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a, var_0.a) << (1u % 32u), ~(var_0.d ^ var_0.a)), ~83889u), vec3<u32>(abs(var_0.a), var_0.a, 1u));
    global0 = vec3<bool>(var_0.b.a.x, !any(!select(vec2<bool>(global0.x, true), var_0.c.a.zz, var_0.c.a.zz)), var_0.e.a.x);
    return Struct_3(arg_0.a, 991f, _wgslsmith_f_op_f32(ceil(arg_0.c)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> u32 {
    let var_0 = 1219u;
    var var_1 = u_input.b.x;
    let var_2 = firstLeadingBit(u_input.b.xy);
    var var_3 = func_2(arg_0);
    var var_4 = (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(~vec2<i32>(var_2.x, u_input.b.x), firstTrailingBit(vec2<i32>(1i, -2147483647i)))) >> (abs(~vec2<u32>(32889u, ~54794u)) % vec2<u32>(32u));
    return 1u;
}

fn func_1() -> Struct_4 {
    var var_0 = vec3<u32>(func_4(func_2(Struct_3(vec2<f32>(-447f, -680f), _wgslsmith_div_f32(1000f, -1000f), -956f)), vec3<bool>(false, any(select(vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, global0.x))), global0.x)), ~abs(~_wgslsmith_div_u32(1u, 106855u)), (0u & select(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_add_u32(0u, 2785u), true)) >> (~1u % 32u));
    global0 = vec3<bool>(true, true, true);
    global0 = vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(17074u, var_0.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 1u)), 1u), vec3<u32>(0u, _wgslsmith_add_u32(var_0.x, 38474u), firstTrailingBit(var_0.x))) < _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u), ~min(vec4<u32>(1u, var_0.x, var_0.x, var_0.x), vec4<u32>(34885u, var_0.x, var_0.x, var_0.x))), global0.x, all(vec3<bool>(!all(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, (false | global0.x) && false)));
    let var_1 = !(!(!vec3<bool>(any(vec4<bool>(false, global0.x, global0.x, global0.x)), global0.x, true)));
    var var_2 = vec2<bool>(true, true & (global0.x & (countOneBits(99359u) <= var_0.x)));
    return Struct_4(9239u ^ (_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, var_0.x), _wgslsmith_dot_vec2_u32(var_0.yx, var_0.zx)) << (1u % 32u)), Struct_2(select(!(!vec4<bool>(true, false, false, global0.x)), vec4<bool>(true, var_2.x | global0.x, global0.x, true), global0.x), !select(var_1, select(var_1, vec3<bool>(false, global0.x, var_1.x), vec3<bool>(false, var_2.x, true)), var_2.x), ~u_input.a), Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(Struct_3(vec2<f32>(1056f, -2074f), 440f, 682f)).a.x) - -2468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-242f)))), var_0.x, Struct_1(!var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1065f, -261f)) * _wgslsmith_f_op_f32(select(1000f, -354f, global0.x))), -1604f), 1000f));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = ~abs(~(~max(40181u, 1u)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.c.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1000f * arg_2), 1035f, arg_3.e.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1471f, 132f, arg_2))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.e.b, var_2.x, arg_3.e.b) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, 278f, 2881f))))))));
    var var_3 = arg_2;
    return arg_3;
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    return -reverseBits(abs(1i) << (func_4(func_2(Struct_3(vec2<f32>(arg_0.e.c, 335f), arg_0.e.c, arg_0.c.b)), vec3<bool>(false, true, false)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.b.x, u_input.a);
    var_0 = u_input.b.x;
    var_0 = func_6(func_5(Struct_2(vec4<bool>(true, true, true, global0.x), !vec3<bool>(true, global0.x, false), ~u_input.b.x), !all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) * _wgslsmith_f_op_f32(round(-171f))), func_1()), _wgslsmith_add_i32(-countOneBits(29831i), 1i), _wgslsmith_div_u32(22320u, ~(~25443u)), vec3<bool>(!global0.x, u_input.b.x != _wgslsmith_div_i32(34747i, -1i), global0.x)) >> (~59382u % 32u);
    let var_1 = Struct_3(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 865f)), _wgslsmith_f_op_f32(floor(-352f)), _wgslsmith_f_op_f32(-552f - _wgslsmith_div_f32(-1000f, 167f)))).a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f + _wgslsmith_f_op_f32(-503f + 671f))))), -344f);
    global0 = func_5(Struct_2(func_5(Struct_2(func_5(Struct_2(vec4<bool>(global0.x, global0.x, false, global0.x), vec3<bool>(true, false, false), u_input.b.x), false, var_1.c, Struct_4(35397u, Struct_2(vec4<bool>(global0.x, true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), u_input.b.x), Struct_1(vec3<bool>(false, global0.x, false), var_1.b, 1030f), 31242u, Struct_1(vec3<bool>(global0.x, true, global0.x), var_1.b, 191f))).b.a, !vec3<bool>(true, global0.x, global0.x), min(-7257i, u_input.a)), true, _wgslsmith_div_f32(399f, _wgslsmith_f_op_f32(-var_1.c)), func_5(func_5(Struct_2(vec4<bool>(false, true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), 3585i), global0.x, -896f, Struct_4(0u, Struct_2(vec4<bool>(true, global0.x, true, true), vec3<bool>(global0.x, true, global0.x), 8406i), Struct_1(vec3<bool>(global0.x, true, global0.x), -2686f, -1674f), 98272u, Struct_1(vec3<bool>(global0.x, global0.x, global0.x), 1709f, var_1.b))).b, true & global0.x, var_1.c, func_5(Struct_2(vec4<bool>(global0.x, false, global0.x, false), vec3<bool>(true, global0.x, true), 14572i), false, var_1.c, Struct_4(14440u, Struct_2(vec4<bool>(global0.x, false, false, global0.x), vec3<bool>(true, false, false), -1i), Struct_1(vec3<bool>(true, false, true), var_1.c, 1408f), 1549u, Struct_1(vec3<bool>(false, true, false), 1642f, var_1.a.x))))).b.a, !vec3<bool>(any(vec4<bool>(false, false, global0.x, false)), u_input.a <= u_input.b.x, global0.x), 2135i), !global0.x & true, _wgslsmith_f_op_f32(-func_1().e.c), func_5(Struct_2(vec4<bool>(func_1().e.a.x, true, false, true), !vec3<bool>(global0.x, false, false), u_input.b.x), global0.x, _wgslsmith_f_op_f32(-var_1.b), Struct_4(1u, func_1().b, func_5(Struct_2(vec4<bool>(global0.x, global0.x, global0.x, true), vec3<bool>(true, false, true), -2147483647i), select(global0.x, true, global0.x), var_1.b, Struct_4(58787u, Struct_2(vec4<bool>(global0.x, global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, false), 0i), Struct_1(vec3<bool>(false, global0.x, false), -1000f, var_1.b), 36109u, Struct_1(vec3<bool>(global0.x, true, true), var_1.b, 1360f))).e, ~(~0u), func_1().c))).c.a;
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, u_input.b.x), 1i, -25757i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -u_input.a, func_5(Struct_2(vec4<bool>(true, global0.x, true, false), vec3<bool>(true, global0.x, global0.x), 62681i), global0.x, 889f, Struct_4(51126u, Struct_2(vec4<bool>(false, global0.x, global0.x, false), vec3<bool>(false, global0.x, true), 28829i), Struct_1(vec3<bool>(global0.x, false, false), -1484f, 447f), 6009u, Struct_1(vec3<bool>(false, true, global0.x), 2376f, var_1.b))).b.c), u_input.b)), ~(-u_input.b));
    var var_2 = true;
    let var_3 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, min(~35181u >> (countOneBits(1u) % 32u), 48303u)));
}

