struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>) -> u32 {
    global1 = arg_0.b.yzx;
    var var_0 = 1i;
    return arg_0.d.c.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_2(u_input.b, Struct_1(-24572i, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), vec2<i32>(-3958i, 21309i), arg_2.yy) & vec2<i32>(_wgslsmith_mod_i32(-42367i, -272i), global1.x), ~(~(~global0.xy))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f + arg_0)), arg_0)), -1202f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)), 527f), -364f), select(vec3<bool>(true, true, true), vec3<bool>(true && select(false, false, true), true, false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = -_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 18264i, var_0.b.a, 2147483647i)), vec4<i32>(-22074i, arg_2.x, -3865i, 0i), _wgslsmith_add_vec4_i32(arg_2, arg_2)), vec4<i32>(-17674i, reverseBits(global1.x << (4294967295u % 32u)), -2147483647i, _wgslsmith_clamp_i32(-arg_2.x, -1i, -global1.x)));
    var var_2 = var_0.b.c;
    let var_3 = arg_2;
    global0 = _wgslsmith_mult_vec3_u32(var_0.a.zyz, _wgslsmith_add_vec3_u32(u_input.a, var_0.a.xyy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -1056f) - -1828f));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_3) -> bool {
    var var_0 = all(arg_3.b.d.yy);
    var var_1 = !any(arg_3.b.d.xy);
    var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.b.c.x + -756f), _wgslsmith_f_op_f32(681f + arg_3.b.c.x), all(arg_3.b.d))), ~func_2(Struct_4(-11382i, vec4<i32>(31464i, 0i, global1.x, global1.x), arg_2, arg_0.d), vec2<i32>(30701i, arg_0.a)), vec4<i32>(1i, arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.b.x, arg_2.x, arg_2.x), vec3<i32>(1i, arg_2.x, arg_2.x)), 1i)))) * arg_3.b.c.x);
    var var_3 = Struct_3(arg_3.a, arg_3.b, Struct_1(firstLeadingBit(select(reverseBits(42392i), -arg_3.c.b.x, false)), arg_3.c.b, vec2<u32>(_wgslsmith_mult_u32(~arg_0.d.c.x, arg_0.d.c.x), u_input.a.x)));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> i32 {
    global0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.c.x, 1u & firstLeadingBit(arg_0.c.x)), ~vec3<u32>(4294967295u ^ arg_1.c.x, 70450u, ~1u));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-global1.x, vec4<i32>(-2147483647i, -(global1.x & _wgslsmith_div_i32(global1.x, global1.x)), _wgslsmith_mod_i32(~(-global1.x), global1.x), func_4(Struct_1(global1.x, global1.zx & global1.yy, global0.yy), Struct_1(global1.x, _wgslsmith_add_vec2_i32(global1.zz, vec2<i32>(11031i, global1.x)), global0.xx), vec4<bool>(func_1(Struct_4(-9321i, vec4<i32>(-1i, global1.x, global1.x, global1.x), vec4<i32>(-2147483647i, global1.x, -34688i, global1.x), Struct_1(41658i, global1.zz, u_input.a.yy)), true, vec4<i32>(global1.x, -19570i, global1.x, 0i), Struct_3(Struct_1(global1.x, global1.xy, vec2<u32>(1u, 0u)), Struct_2(vec4<u32>(4294967295u, u_input.b.x, 58564u, 75808u), Struct_1(global1.x, vec2<i32>(12945i, 1i), u_input.a.xx), vec4<f32>(-479f, 427f, -211f, -1000f), vec3<bool>(true, false, false)), Struct_1(-1i, vec2<i32>(0i, 2147483647i), global0.yz))), select(true, false, false), any(vec2<bool>(true, false)), false), abs(2147483647i))), abs(vec4<i32>(_wgslsmith_mod_i32(select(-1419i, global1.x, true), _wgslsmith_mod_i32(global1.x, 0i)), _wgslsmith_mult_i32(~12247i, global1.x), global1.x, -1i)), Struct_1(_wgslsmith_add_i32(select(global1.x, global1.x, true), global1.x ^ (-31200i >> (global0.x % 32u))), global1.xx, vec2<u32>((u_input.b.x << (119465u % 32u)) & ~0u, firstLeadingBit(~u_input.b.x))));
    var var_1 = ~(~(~var_0.d.c.x));
    let var_2 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_add_i32(-2147483647i, global1.x)), _wgslsmith_mod_i32(global1.x & var_0.a, firstLeadingBit(-2147483647i))), ~_wgslsmith_dot_vec4_i32(var_0.b, var_0.b)), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(global1.x, var_0.a, global1.x, var_0.d.b.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(7760u, 4294967295u, global0.x, var_0.d.c.x), u_input.b, u_input.b) % vec4<u32>(32u))), max(~var_0.c, vec4<i32>(91946i, 0i, global1.x, -20864i) & firstTrailingBit(var_0.c)), var_0.b), abs(firstTrailingBit(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -27058i, var_0.a, var_0.b.x), vec4<i32>(-4570i, -8107i, -22509i, 1i))))), var_0.d);
    global1 = _wgslsmith_div_vec3_i32(~var_0.c.zwy, vec3<i32>(select(var_0.b.x, -_wgslsmith_mult_i32(-2147483647i, var_0.a), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.d.a, 0i, -83289i), select(vec3<i32>(var_2.b.x, var_2.d.a, -12149i), var_2.b.zxz, false))), -2147483647i));
    let var_3 = Struct_3(var_0.d, Struct_2(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(315u, u_input.a.x), 0u), abs(_wgslsmith_dot_vec2_u32(u_input.b.yy, global0.xy)), ~(~1u)), var_0.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-789f, -551f, -644f, -211f), vec4<f32>(-420f, 1055f, -925f, -1040f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1500f, 769f, -845f, -825f) + _wgslsmith_div_vec4_f32(vec4<f32>(1005f, 495f, 509f, 446f), vec4<f32>(-275f, -127f, -357f, 959f))), false)), !vec3<bool>(any(vec3<bool>(false, true, false)), select(true, true, false), all(vec2<bool>(false, false)))), Struct_1(_wgslsmith_mod_i32(1i, var_2.b.x), firstLeadingBit(vec2<i32>(~31796i, var_0.b.x)), vec2<u32>(max(var_0.d.c.x, 50304u) | 1u, 1u >> (select(4294967295u, 73725u, false) % 32u))));
    var var_4 = 1001f;
    let var_5 = var_2;
    var_4 = 1126f;
    var var_6 = countOneBits(min(vec4<i32>(34653i, var_5.c.x, -var_5.b.x, 1i), select(~var_0.b, var_2.c, !vec4<bool>(var_3.b.d.x, false, true, false))) | vec4<i32>(var_3.c.b.x >> (39564u % 32u), -2147483647i, -45146i, abs(-2147483647i) ^ _wgslsmith_div_i32(var_5.c.x, var_0.d.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.c.b);
}

