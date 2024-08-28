struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(22497u, 307u, 16104i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> u32 {
    global0 = u_input.c;
    let var_0 = Struct_1(u_input.a.x, abs(36507u), u_input.b.x);
    global0 = vec3<u32>(global0.x, ~_wgslsmith_mult_u32(39819u, _wgslsmith_dot_vec4_u32(max(u_input.a, u_input.a), vec4<u32>(17559u, 0u, global0.x, 49332u))), 1u);
    var var_1 = Struct_1(global1.a, ~(global0.x << (~(~1u) % 32u)), global1.c);
    global1 = Struct_1(~1u, 69584u, min(var_1.c, ~var_0.c));
    return ~_wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.c.x), global0.x), ~(~46830u));
}

fn func_1() -> vec2<bool> {
    global0 = vec3<u32>(_wgslsmith_add_u32(global0.x, u_input.c.x), global1.b, ~func_2());
    let var_0 = Struct_1(_wgslsmith_div_u32(global0.x, ~func_2()), _wgslsmith_dot_vec4_u32(u_input.a, firstLeadingBit(~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(55193u, global1.b, global1.a, 58445u)))), select(-u_input.b.x, u_input.b.x, !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    var var_1 = -339f;
    global0 = vec3<u32>(4294967295u, 0u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~(~global1.a), global1.a), 0u));
    var_1 = 1917f;
    return vec2<bool>(true, true);
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<i32> {
    var var_0 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -(u_input.b.xxz << (vec3<u32>(40212u, 1u, global1.b) % vec3<u32>(32u))), firstLeadingBit(select(u_input.b.xwx, -u_input.b.zyw, select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, true, arg_1)))));
    let var_1 = -17221i;
    var_0 = u_input.b.zww;
    global1 = Struct_1(~11277u, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.x, 1u) >> (global0.x % 32u), ~(~u_input.d))), u_input.b.x);
    var var_2 = !select(select(!select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, false, arg_1)), !select(vec3<bool>(false, false, false), vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, true, false)), arg_1), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1, true), true), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, arg_1), false), vec3<bool>(true, true, true)), vec3<bool>(true || arg_1, true, any(vec2<bool>(arg_1, true))), arg_1), arg_1);
    return u_input.b.wxw << ((u_input.a.yzy & u_input.c) % vec3<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    global1 = arg_1;
    var var_0 = 54411u >> (_wgslsmith_mod_u32(12014u, global0.x) % 32u);
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(min(463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-609f, 1000f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2159f))))));
    let var_3 = arg_1;
    return false;
}

fn func_5(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(global0.x, 41748u, ~6709i);
    global1 = var_0;
    global0 = ~u_input.a.zyx;
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, arg_0.x, 375f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1056f, arg_0.x, 1002f), arg_0, false))))));
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, u_input.a.zwx), ~98435u << (global0.x % 32u), 1u);
    return _wgslsmith_dot_vec3_u32(u_input.a.xxw, _wgslsmith_add_vec3_u32((u_input.c ^ vec3<u32>(global1.a, global0.x, 4294967295u)) ^ vec3<u32>(4294967295u, 6209u, 35766u), u_input.a.zzx) & vec3<u32>(~var_0.a | reverseBits(0u), 8976u, u_input.a.x << (~12645u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-725f, -137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -1835f);
    let var_1 = func_1();
    global1 = Struct_1(4294967295u, func_5(_wgslsmith_f_op_vec3_f32(select(var_0.ywx, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-170f, var_0.x, var_0.x), var_0.yxz, var_1.x)), func_4(28166u, Struct_1(u_input.a.x, global1.a, 9351i), Struct_1(global1.b, 28432u, global1.c), func_3(102006u, var_1.x))))), -global1.c & global1.c);
    global1 = Struct_1(select(43418u, 74477u, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global1.c, -45634i, global1.c, global1.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, -43713i, -18571i), u_input.b)) > (-35113i >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 54474u, u_input.a.x, u_input.a.x)) % 32u))), 1u << ((~global1.b << (0u % 32u)) % 32u), firstLeadingBit(~0i));
    global1 = Struct_1(1u, global1.b, _wgslsmith_add_i32(-global1.c, global1.c));
    global0 = u_input.c;
    global0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global1.a, global0.x, global1.b)), u_input.a.zyz), ~(~(~u_input.c))), u_input.a.zzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(0u, global1.a, global1.a), ~0u, ~global0.x), u_input.c, select(vec3<u32>(global0.x, global1.a, 4294967295u), u_input.c, false) & u_input.a.wzy) | u_input.a.xxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))))), vec2<i32>(u_input.b.x, 1i), select(u_input.a, vec4<u32>(min(_wgslsmith_mult_u32(u_input.c.x, 97484u), 1u), _wgslsmith_mod_u32(abs(0u), ~1u), 13584u, abs(~42166u)), vec4<bool>(!var_1.x, true, func_1().x, any(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x))))));
}

