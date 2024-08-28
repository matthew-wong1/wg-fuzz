struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b >> (u_input.b % 32u), 0u, 1u, ~82500u), ~vec4<u32>(1u, 4294967295u, firstTrailingBit(4294967295u), min(u_input.d, u_input.b)));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1626f, 1000f)) + vec2<f32>(-1300f, 925f)))), Struct_2(select(vec2<bool>(any(vec3<bool>(true, false, true)), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), all(vec4<bool>(true, true, true, true))), Struct_1(vec2<bool>(false, all(vec2<bool>(true, false))), false, vec2<u32>(var_0.x | 51967u, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-187f, 1390f) - _wgslsmith_f_op_f32(ceil(-1119f))), true), !(max(-11593i, 67656i) <= firstTrailingBit(-22851i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(0u, u_input.d, u_input.d, 4047u) >> (vec4<u32>(u_input.b, u_input.d, 0u, var_0.x) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 0u, var_0.x, 1u) % vec4<u32>(32u)), ~abs(vec4<u32>(var_0.x, 70218u, var_0.x, 0u))), 9u)]), Struct_1(vec2<bool>(true, true), !all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true)), var_0.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1136f, 877f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1804f, -1170f)), _wgslsmith_f_op_f32(644f - -1000f), true))), all(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -49707i), vec2<i32>(u_input.c, -1i))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-8788i, u_input.c), vec2<i32>(-2147483647i, 19730i)))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-17504i, u_input.a), vec2<i32>(1i, 741i))) | (vec2<i32>(u_input.a, u_input.a) >> (abs(~vec2<u32>(1u, 5861u)) % vec2<u32>(32u)));
    return true;
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = func_3();
    var var_1 = Struct_4(279f, u_input.c, Struct_1(!vec2<bool>(u_input.d < u_input.d, false), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), arg_0.wz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f + -1523f) + -522f), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(step(-581f, 1253f)), 491f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1754f), -1684f, -434f))), global0[_wgslsmith_index_u32(~(~(~(~arg_0.x))), 9u)]);
    var_0 = var_1.c.a.x;
    var var_2 = Struct_2(var_1.e.a, var_1.c, !var_1.c.b, global0[_wgslsmith_index_u32(var_1.c.c.x, 9u)]);
    let var_3 = Struct_5(u_input.c << (_wgslsmith_div_u32(~(~var_2.d.c.x), ~(32032u ^ arg_0.x)) % 32u), vec4<u32>(~var_1.e.c.x, var_1.c.c.x, arg_0.x, arg_0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(703f, -790f) * vec2<f32>(-684f, var_2.b.d)))))), Struct_1(!(!(!var_2.d.a)), var_2.b.a.x, countOneBits(~countOneBits(var_2.b.c)), -271f, true), Struct_1(!(!(!var_1.e.a)), func_3() & all(select(vec3<bool>(true, false, true), vec3<bool>(var_2.d.b, var_2.a.x, false), vec3<bool>(false, var_2.a.x, var_1.c.a.x))), max(vec2<u32>(firstTrailingBit(arg_0.x), min(u_input.b, 42429u)), ~select(vec2<u32>(var_2.d.c.x, 4294967295u), arg_0.wy, var_1.e.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-818f, var_2.d.d))), true));
    return true && any(!select(var_1.e.a, var_1.e.a, var_3.e.a));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    global0 = array<Struct_1, 9>();
    let var_0 = !vec3<bool>(arg_1, true, (_wgslsmith_clamp_u32(arg_2.x, 46756u, arg_3) >> ((u_input.b | arg_2.x) % 32u)) == ~u_input.b);
    var var_1 = min(select(vec4<u32>((u_input.d | 1u) << ((arg_2.x & 4294967295u) % 32u), arg_2.x, _wgslsmith_sub_u32(u_input.d & u_input.b, ~arg_2.x), u_input.b), ~(~(~vec4<u32>(u_input.b, 46334u, arg_2.x, arg_2.x))), vec4<bool>(!(!arg_1), true, true, true)), vec4<u32>(countOneBits(_wgslsmith_add_u32(4294967295u ^ arg_2.x, _wgslsmith_mod_u32(u_input.b, arg_2.x))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 1u), 4294967295u), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d, arg_3, 52469u, 1u), vec4<u32>(0u, 13606u, 0u, arg_3), vec4<bool>(arg_1, true, true, var_0.x)), vec4<u32>(arg_2.x, 67775u, u_input.b, 48005u)), ~countOneBits(arg_2.x) | 23276u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-639f))))) - -960f), 1262f);
    global0 = array<Struct_1, 9>();
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -819f), _wgslsmith_f_op_f32(ceil(1026f))), Struct_2(!select(select(var_0.yx, vec2<bool>(arg_1, false), vec2<bool>(arg_1, var_0.x)), vec2<bool>(true, true), 65322u > var_1.x), global0[_wgslsmith_index_u32(1u, 9u)], false, Struct_1(!select(vec2<bool>(true, var_0.x), var_0.yx, var_0.xx), true, vec2<u32>(4294967295u, arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(306f)) * _wgslsmith_f_op_f32(step(-1517f, 668f))), true)), global0[_wgslsmith_index_u32(~arg_3, 9u)]);
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_1, 9>();
    var var_0 = firstTrailingBit(_wgslsmith_mod_i32(0i >> (u_input.d % 32u), u_input.c));
    var var_1 = func_4(firstLeadingBit(_wgslsmith_mult_i32(-2147483647i, u_input.c)), func_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, 1u, 4294967295u, 44894u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b))) & func_2(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.d, 67130u), u_input.b, _wgslsmith_sub_u32(u_input.d, u_input.d))), ~max(reverseBits(vec3<u32>(u_input.d, 1u, u_input.b)), select(~vec3<u32>(4294967295u, 0u, u_input.d), vec3<u32>(u_input.d, 1u, 33401u) << (vec3<u32>(0u, u_input.d, 0u) % vec3<u32>(32u)), true)), min(~_wgslsmith_div_u32(18862u >> (u_input.b % 32u), 1u), ~1u));
    global0 = array<Struct_1, 9>();
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(-846f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -442f) - var_1.a.x)), Struct_2(func_4(~13006i, (8432u >> (1u % 32u)) == var_1.c.c.x, vec3<u32>(max(u_input.b, u_input.d), ~u_input.d, _wgslsmith_clamp_u32(u_input.b, 29632u, 1u)), 20637u).c.a, global0[_wgslsmith_index_u32(func_4(-abs(u_input.a), any(!vec3<bool>(true, var_1.b.c, var_1.c.b)), vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b, 74887u), 0u, u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.c.x, var_1.c.c.x, 52843u, 4294967295u), vec4<u32>(var_1.b.b.c.x, var_1.c.c.x, u_input.b, 91901u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.c.c.x, 1u, 714u), vec4<u32>(var_1.c.c.x, 4294967295u, 37807u, u_input.b)))).c.c.x, 9u)], !any(func_4(2147483647i, var_1.c.b, vec3<u32>(4875u, 1u, 4294967295u), 25762u).c.a), Struct_1(vec2<bool>(func_4(0i, true, vec3<u32>(u_input.b, var_1.b.b.c.x, 45359u), u_input.d).c.e, var_1.b.d.a.x), true, var_1.b.d.c, var_1.b.d.d, var_1.c.b)), Struct_1(vec2<bool>(true, var_1.c.b), !(true | var_1.c.b), var_1.b.b.c, 430f, true));
    return Struct_5(-16791i, firstTrailingBit(~countOneBits(~vec4<u32>(62387u, u_input.b, u_input.b, var_2.c.c.x))), vec2<f32>(-382f, -2010f), global0[_wgslsmith_index_u32(firstTrailingBit(21315u), 9u)], var_1.c);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_5) -> Struct_2 {
    global0 = array<Struct_1, 9>();
    var var_0 = ~(-(~(vec4<i32>(2147483647i, -45194i, -66386i, 30581i) >> (vec4<u32>(arg_1, 29108u, u_input.d, u_input.d) % vec4<u32>(32u))))) ^ max(vec4<i32>(arg_2.a | 23572i, 0i, arg_2.a | -1i, ~(-1i)) >> (~_wgslsmith_clamp_vec4_u32(arg_2.b, arg_2.b, arg_2.b) % vec4<u32>(32u)), -countOneBits(vec4<i32>(u_input.a, -26080i, arg_2.a, -6340i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(176f, func_1().c.x, -1285f, -1817f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(259f, arg_2.c.x, 201f, 114f), _wgslsmith_div_vec4_f32(vec4<f32>(-1289f, -124f, 875f, 1413f), vec4<f32>(arg_2.d.d, 869f, arg_2.c.x, -1366f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, 314f, 1164f, 1860f))))));
    return Struct_2(arg_2.d.a, arg_2.e, arg_0, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(true, ~(~(~10170u)), func_1());
    var var_1 = Struct_4(-999f, (-12332i >> (func_1().d.c.x % 32u)) & -2147483647i, func_1().e, vec3<f32>(-404f, var_0.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.d))))), Struct_1(select(!func_1().e.a, !vec2<bool>(true, var_0.a.x), true), func_3(), vec2<u32>(~(~13340u), _wgslsmith_dot_vec2_u32(vec2<u32>(32075u, 8634u), abs(var_0.b.c))), var_0.b.d, false));
    var var_2 = Struct_5(abs(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_div_i32(var_1.b, -57887i), ~var_1.b)), vec4<u32>(12063u, var_0.b.c.x, select(~1u, _wgslsmith_sub_u32(u_input.d, 1u), var_1.c.a.x && all(vec4<bool>(true, true, true, var_1.c.e))), var_1.e.c.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.d.zz)) - vec2<f32>(_wgslsmith_f_op_f32(1000f + 1686f), _wgslsmith_div_f32(1614f, 664f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.d.zx, var_1.d.zz))), var_1.d.zy, false)))), Struct_1(select(!select(var_1.c.a, vec2<bool>(var_0.b.a.x, var_1.c.e), false), var_0.d.a, true), func_5(true, _wgslsmith_sub_u32(~u_input.b, var_0.d.c.x), func_1()).c, func_4(u_input.a, var_1.c.b, _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(0u, var_0.d.c.x, var_1.e.c.x)), vec3<u32>(var_1.e.c.x, var_1.c.c.x, 0u) >> (vec3<u32>(var_1.c.c.x, 67059u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_add_u32(func_5(var_1.c.b, var_1.c.c.x, Struct_5(3268i, vec4<u32>(var_0.d.c.x, u_input.d, var_0.d.c.x, var_1.c.c.x), vec2<f32>(-265f, 938f), Struct_1(var_1.c.a, var_1.c.e, vec2<u32>(var_1.e.c.x, var_0.d.c.x), var_1.d.x, false), Struct_1(vec2<bool>(false, var_0.c), false, vec2<u32>(0u, var_1.e.c.x), 1933f, var_0.a.x))).d.c.x, ~u_input.d)).b.b.c, _wgslsmith_f_op_f32(round(var_1.c.d)), any(var_1.e.a)), Struct_1(var_0.d.a, func_4(var_1.b, var_0.c, vec3<u32>(u_input.d, 7969u, u_input.d) | vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_add_u32(var_0.d.c.x ^ 59933u, var_0.b.c.x)).c.a.x, ~(~(~var_1.e.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) + _wgslsmith_f_op_f32(var_0.b.d * -903f)) * -1097f), all(var_1.c.a)));
    var var_3 = Struct_4(var_1.e.d, -38161i, func_1().e, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.d))))), Struct_1(vec2<bool>(true, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 731i), vec2<i32>(2147483647i, u_input.c)), var_1.e.e, var_2.b.www, var_0.b.c.x).b.d.b), var_0.a.x, reverseBits(var_2.e.c), 1000f, func_3()));
    let var_4 = _wgslsmith_div_vec4_i32(-(~vec4<i32>(~(-31624i), -2147483647i, -1i, _wgslsmith_add_i32(var_2.a, var_3.b))), max(vec4<i32>(-1i, var_1.b, select(10550i, 72467i, var_0.d.b) >> (_wgslsmith_mod_u32(var_0.b.c.x, var_3.e.c.x) % 32u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(48592i, 2147483647i, var_3.b)), vec3<i32>(var_3.b, var_3.b, -1i))), vec4<i32>(_wgslsmith_mod_i32(-1i, 33142i | var_2.a), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_2.a, var_2.a), select(0i, -32827i, true)), 0i, var_1.b)));
    let var_5 = Struct_4(var_0.d.d, var_1.b, func_5(true, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(var_2.b, var_2.b), vec4<u32>(~0u, _wgslsmith_add_u32(u_input.b, 4294967295u), 1u, var_0.b.c.x)), Struct_5(~(i32(-1i) * -83796i), var_2.b << (vec4<u32>(4534u, var_1.c.c.x, 95829u, 1u) % vec4<u32>(32u)), var_1.d.yx, var_1.e, func_4(~0i, true, _wgslsmith_mult_vec3_u32(var_2.b.zxx, var_2.b.xxw), ~4294967295u).b.d)).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_3.d))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(437f, var_2.c.x, -1119f) * var_3.d)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, -1012f, 1339f)), vec3<f32>(_wgslsmith_f_op_f32(round(-272f)), _wgslsmith_f_op_f32(var_3.c.d - -921f), var_1.a)))), func_4(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(func_1().a, ~var_3.b), ~var_3.b & -1i, -u_input.a), select(!var_0.c, true, var_2.e.a.x) || !(var_2.a <= u_input.a), var_2.b.yxy, ~var_3.c.c.x).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_4(~var_1.b << (func_4(var_1.b, var_3.e.a.x, vec3<u32>(10357u, var_3.e.c.x, 0u), 0u).c.c.x % 32u), var_0.b.a.x, vec3<u32>(~var_2.d.c.x, ~4294967295u, 30364u), _wgslsmith_clamp_u32(var_0.b.c.x, 13837u, 61452u) & 4294967295u).c.c.x, _wgslsmith_dot_vec3_u32(~(~var_2.b.yzw), vec3<u32>(min(35783u, 21874u), reverseBits(var_3.c.c.x), 3624u)), ~var_3.e.c.x, var_2.b.x), 169f, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(14985u, var_0.b.c.x) << (var_5.c.c % vec2<u32>(32u)), var_5.c.c), ~(countOneBits(var_0.d.c.x) ^ 4294967295u)));
}

