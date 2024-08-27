struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
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

var<private> global0: vec2<u32>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_5;

var<private> global3: vec4<f32> = vec4<f32>(-1443f, -891f, -612f, 497f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    let var_0 = ~(global2.a.d.x ^ global0.x);
    let var_1 = Struct_3(vec3<u32>(global2.a.d.x, _wgslsmith_mod_u32(global0.x, firstTrailingBit(~2042u)), 60086u));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1585f)), global2.a.a, _wgslsmith_div_f32(global2.b.a.x, global2.b.a.x), 1254f)))));
    global2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1364f, global3.x))))), -2147483647i, global2.a.c, select(~firstTrailingBit(vec4<u32>(global0.x, 52256u, 84037u, 1u)), abs(u_input.a ^ vec4<u32>(0u, u_input.a.x, var_0, var_1.a.x)), true), ~(-2147483647i)), global2.b, Struct_2(global0.x, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -403f))), -global2.c.b.b, vec3<u32>(1885u, u_input.a.x >> (4294967295u % 32u), 16746u), vec4<u32>(global0.x, 1u, 0u, 68188u) | min(vec4<u32>(global2.a.c.x, global2.c.a, global0.x, u_input.a.x), vec4<u32>(global0.x, 55783u, u_input.b.x, global0.x)), ~u_input.c.x), var_1.a.yx));
    global0 = var_1.a.zz;
    return !select(select(vec3<bool>(true, any(vec3<bool>(false, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false))), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false))), true);
}

fn func_2() -> Struct_2 {
    global2 = Struct_5(global2.c.b, Struct_4(_wgslsmith_f_op_vec4_f32(-global2.b.a), _wgslsmith_add_i32(global2.c.b.e & u_input.c.x, -2147483647i) ^ abs(u_input.c.x)), Struct_2(1u, global2.a, global2.a.d.xw));
    var var_0 = 1f;
    var var_1 = vec3<bool>(!any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), true, false);
    var_1 = !select(func_3(), select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x || var_1.x, true, !var_1.x), all(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x))), vec3<bool>(any(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, true, true, var_1.x))), var_1.x, var_1.x));
    let var_2 = !(!vec4<bool>(!any(vec2<bool>(var_1.x, true)), func_3().x, false, all(vec3<bool>(var_1.x, var_1.x, true))));
    return global2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec4_f32(global2.b.a - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, global3.x, _wgslsmith_f_op_f32(260f + -922f), global2.a.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 1000f, arg_0.b.a, global3.x), vec4<f32>(807f, 599f, global1.x, 407f), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(global2.b.a + vec4<f32>(arg_0.b.a, global3.x, arg_0.b.a, -1245f))))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false))), vec4<bool>(func_3().x, true, false, true), true))));
    global3 = global2.b.a;
    let var_0 = vec3<bool>(true, false, true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 231f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.a, -805f) + -150f)))), 1i & _wgslsmith_sub_i32(countOneBits(-u_input.c.x), (arg_0.b.b << (14130u % 32u)) | _wgslsmith_mod_i32(1i, -93384i)), _wgslsmith_clamp_vec3_u32(func_2().b.d.wwx, u_input.a.wxw, ~vec3<u32>(27512u, abs(arg_0.a), arg_1.a.x)), countOneBits(~firstLeadingBit(arg_0.b.d)), global2.a.e);
    let var_2 = ~countOneBits(~(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, global0.x, 78831u, u_input.a.x), var_1.d) << (~u_input.a % vec4<u32>(32u))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(475f, _wgslsmith_f_op_f32(step(global2.b.a.x, global1.x)))), 1f, _wgslsmith_f_op_f32(max(func_2().b.a, _wgslsmith_f_op_f32(ceil(937f)))), 161f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global2.a.a)), -1000f, _wgslsmith_f_op_f32(global1.x - -1677f), _wgslsmith_f_op_f32(round(global1.x)))))), 38848i);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = global2.c;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(arg_1.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1.a)) - _wgslsmith_f_op_vec4_f32(floor(global2.b.a))))))));
    let var_2 = u_input.b.x;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(2408f, var_1.b.a, _wgslsmith_f_op_f32(select(global1.x, var_0.a.x, false)), -1255f) + var_0.a), vec4<f32>(global2.c.b.a, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1445f)), -574f, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(global1.x * global2.a.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(718f, arg_1.a.x, var_0.a.x, var_1.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, -449f, -2077f, -287f))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(func_2().b.a, -1000f, _wgslsmith_f_op_f32(-277f - global3.x), _wgslsmith_f_op_f32(-global2.a.a)), vec4<f32>(-719f, _wgslsmith_f_op_f32(max(-941f, -1597f)), -1972f, _wgslsmith_f_op_f32(global1.x - -834f))))), vec4<bool>(true, arg_3, _wgslsmith_clamp_i32(-u_input.c.x, u_input.c.x, 2147483647i) > max(firstLeadingBit(arg_2), -2147483647i), arg_3)));
    return global2.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.c.x | -402i;
    let var_1 = vec2<i32>(reverseBits(var_0), -2147483647i);
    let var_2 = ~(u_input.c >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 17672u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4445u, global0.x), vec3<u32>(28528u, arg_2, 26185u))) % vec3<u32>(32u)));
    global2 = Struct_5(global2.c.b, func_5(u_input.a | global2.c.b.d, func_4(func_2(), Struct_3(~vec3<u32>(4294967295u, 52153u, 0u)), ~53234u), _wgslsmith_add_i32(_wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x), ~global2.a.e, reverseBits(var_0)), var_0), _wgslsmith_mod_i32(2147483647i, arg_0.x & var_0) < -1i), global2.c);
    global3 = arg_3;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(vec3<i32>(global2.c.b.b, reverseBits(global2.a.e), global2.a.e)) & -_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, -7990i, u_input.c.x), u_input.c), u_input.c), _wgslsmith_f_op_f32(min(456f, -454f)), firstTrailingBit(1u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b.a) + _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 330f, global1.x, global1.x), _wgslsmith_div_vec4_f32(global2.b.a, vec4<f32>(-650f, 1000f, global3.x, 1262f)))))));
    var var_1 = _wgslsmith_sub_vec3_u32(select(global2.c.b.d.xzz, u_input.a.yyz << (global2.c.b.c % vec3<u32>(32u)), any(vec4<bool>(false, true, false, false))) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.x, global0.x, 7917u), ~vec3<u32>(global2.a.c.x, global0.x, 51315u)) ^ global2.a.d.yyx), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_clamp_u32(2055u, 53377u, 4294967295u)), 1u, ~(_wgslsmith_add_u32(10554u, u_input.b.x) & _wgslsmith_sub_u32(global2.c.c.x, global2.c.c.x))));
    var var_2 = func_2();
    var var_3 = _wgslsmith_add_i32(var_2.b.e, _wgslsmith_add_i32(i32(-1i) * -abs(var_2.b.e), -33897i));
    var_2 = global2.c;
    var var_4 = Struct_2(_wgslsmith_sub_u32(~global2.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(4294967295u), ~var_2.b.c.x, global2.a.d.x), vec3<u32>(~global2.c.a, var_1.x, firstTrailingBit(global2.a.d.x)))), Struct_1(_wgslsmith_f_op_f32(trunc(-301f)), global2.c.b.b, vec3<u32>(reverseBits(var_1.x ^ 4440u), _wgslsmith_dot_vec3_u32(~u_input.a.zzw, global2.c.b.d.ywz), 17075u), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.a, ~vec4<u32>(global0.x, var_2.a, 16105u, var_0.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, var_1.x), vec4<u32>(var_2.b.d.x, var_1.x, 4008u, 4294967295u)) ^ (global2.c.b.d & u_input.a), vec4<u32>(global0.x, u_input.a.x, 37039u, 42559u)), _wgslsmith_add_i32(10813i, func_4(func_2(), Struct_3(var_2.b.c), ~var_0.c.x).b)), global2.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(~global0.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_2.b.c, vec3<u32>(37712u, 39119u, 1u)), global0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 17847u), ~33808u), vec2<u32>(~var_2.b.c.x, 4294967295u))));
}

