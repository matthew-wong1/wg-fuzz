struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: f32 = 1461f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -994f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f - 2492f) - _wgslsmith_f_op_f32(f32(-1f) * -641f)) * _wgslsmith_div_f32(2106f, _wgslsmith_f_op_f32(max(-484f, -327f))))));
    var var_0 = Struct_1(426f, global0.zz);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(min(783f, _wgslsmith_f_op_f32(round(var_0.a))))), vec2<bool>(arg_2, arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1209f)), var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1428f), 1279f))), _wgslsmith_f_op_f32(var_0.a + var_0.a));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b.xwz, ~vec3<u32>(0u, 0u, 4294967295u)) >> (~96484u % 32u), _wgslsmith_mod_u32(u_input.e, 0u)), vec2<u32>(u_input.e, ~5337u));
    var_0 = var_1.a;
    return var_1.a;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1114f + _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_2.a), true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a)) - 322f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), arg_2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(sign(arg_2.a)))))), arg_1);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-822f, _wgslsmith_f_op_f32(-293f + 1737f))))));
    let var_1 = arg_2.b.x;
    var var_2 = Struct_3(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-167f, arg_2.a)) + _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-429f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-981f, arg_2.a))), 1101f)), 2147483647i, _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(u_input.a.x, 1u), 0u) >> (~(~u_input.e) % 32u), abs(1u ^ _wgslsmith_mod_u32(u_input.b.x, u_input.c))), !any(!(!vec4<bool>(false, true, var_1, global0.x))));
    let var_3 = Struct_3(var_2.a, _wgslsmith_f_op_f32(max(-427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f - 781f) * func_2(Struct_4(true), vec2<bool>(false, var_1), var_1).a) - _wgslsmith_f_op_f32(sign(-1528f))))), max(_wgslsmith_mod_i32(~(~var_2.c), _wgslsmith_clamp_i32(select(arg_0, var_2.c, var_1), select(u_input.d.x, 0i, true), _wgslsmith_div_i32(46232i, -9229i))), reverseBits(~(-12615i))), _wgslsmith_dot_vec3_u32(min(_wgslsmith_sub_vec3_u32(u_input.b.zyw, _wgslsmith_mod_vec3_u32(u_input.b.zyy, u_input.b.yxy)), vec3<u32>(firstLeadingBit(19259u), ~4294967295u, _wgslsmith_div_u32(24689u, 119479u))), _wgslsmith_mult_vec3_u32(~firstLeadingBit(u_input.b.wxy), min(abs(vec3<u32>(var_2.d, 1u, u_input.a.x)), vec3<u32>(4294967295u, 1u, var_2.d)))), true);
    return false;
}

fn func_1(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = select(!(!select(!global0.xz, vec2<bool>(true, global0.x), !global0.x)), global0.zy, func_3(u_input.d.x >> (36876u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(Struct_4(true), select(vec2<bool>(arg_0.a.a, arg_0.a.a), !vec2<bool>(false, global0.x), select(vec2<bool>(arg_0.a.a, global0.x), vec2<bool>(global0.x, arg_0.a.a), global0.yx)), !(arg_0.c > -41847i))));
    let var_1 = ~2147483647i;
    global0 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, global0.x), vec3<bool>(arg_0.a.a, true, true)), vec3<bool>(true, var_0.x, global0.x), -12442i <= arg_0.c)));
    var var_2 = var_0.x;
    global1 = _wgslsmith_f_op_f32(sign(-764f));
    return select(select(vec3<bool>(!(arg_0.a.a == false), all(!vec4<bool>(false, var_0.x, global0.x, var_0.x)), false), vec3<bool>(arg_0.a.a, var_0.x, true), true), vec3<bool>(true, all(select(select(vec3<bool>(arg_0.a.a, true, global0.x), vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a), arg_0.a.a), select(vec3<bool>(var_0.x, global0.x, global0.x), vec3<bool>(false, false, false), global0.x), arg_0.c < var_1)), all(select(!vec3<bool>(false, var_0.x, arg_0.a.a), vec3<bool>(var_0.x, arg_0.a.a, global0.x), global0.x))), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -998f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(abs(-1000f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1672f)) + arg_1));
    var var_2 = u_input.d.x | -30127i;
    let var_3 = false;
    var var_4 = ~u_input.d.x;
    return Struct_4(!(!any(!vec3<bool>(false, true, arg_2.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f - -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1000f) - -1741f) + -650f), 142f)), -1416f);
    var var_1 = func_4(select(select(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true)), vec3<bool>(global0.x, !global0.x, true), global0.x), select(vec3<bool>(true, u_input.a.x < 0u, select(global0.x, false, global0.x)), func_1(Struct_5(Struct_4(global0.x), var_0.x, -6616i)), true), true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x + -424f))), -596f, true)))), Struct_2(func_2(Struct_4(any(vec3<bool>(global0.x, global0.x, global0.x))), global0.zz, select(u_input.e >= u_input.e, global0.x, u_input.b.x > u_input.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -580f, -1000f, var_0.x), vec4<f32>(-695f, 359f, -314f, -290f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(var_0.x * 1416f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-843f, var_0.x), -1000f), _wgslsmith_f_op_f32(-902f + 480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -1993f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-822f, 741f, var_0.x, var_0.x) + vec4<f32>(var_0.x, -449f, 677f, 1220f)), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, -1000f, var_0.x, 1000f)), -1000f < _wgslsmith_f_op_f32(-var_0.x))), ((u_input.d.x ^ u_input.d.x) ^ -1i) > ~(-2147483647i))));
    let var_2 = u_input.a.x;
    global1 = -1352f;
    let var_3 = var_1.a;
    var var_4 = ~firstLeadingBit(reverseBits(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, u_input.d.x, u_input.d.x), vec4<i32>(2147483647i, -2147483647i, 0i, -2147483647i)))));
    var var_5 = -209f;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1342f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-919f - -913f)) + _wgslsmith_f_op_f32(f32(-1f) * -767f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(abs(countOneBits(var_4.x)), u_input.d.x), firstTrailingBit(-37189i)), vec2<u32>(~(~(~u_input.c)), 1u), min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d.x, u_input.d.x) >> (u_input.b.xyx % vec3<u32>(32u)), u_input.d), -u_input.d.x), var_4.x);
}

