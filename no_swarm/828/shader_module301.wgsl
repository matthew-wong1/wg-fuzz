struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(39696u, 1u, 12591u), vec3<u32>(0u, 0u, 1u), vec3<u32>(54947u, 0u, 625u), vec3<u32>(30667u, 1143u, 1u), vec3<u32>(29286u, 53860u, 59819u), vec3<u32>(33540u, 1u, 1u), vec3<u32>(1u, 0u, 33211u), vec3<u32>(1u, 79034u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 5261u, 2954u), vec3<u32>(32883u, 8480u, 28867u), vec3<u32>(58613u, 42155u, 1u), vec3<u32>(4294967295u, 53103u, 0u), vec3<u32>(0u, 7158u, 4294967295u), vec3<u32>(0u, 17944u, 29686u), vec3<u32>(0u, 98414u, 40123u), vec3<u32>(1u, 33158u, 27170u), vec3<u32>(1u, 55312u, 55u), vec3<u32>(1951u, 1u, 16762u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 65744u, 4294967295u), vec3<u32>(47971u, 4294967295u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(u_input.c, firstTrailingBit(24866u));
    var var_1 = 277f;
    var var_2 = _wgslsmith_mult_vec2_i32(min(vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(u_input.a, -17065i)), 26697i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.a, u_input.a), vec2<i32>(18181i, u_input.a)) << (u_input.d.yx % vec2<u32>(32u))), max(reverseBits(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, u_input.b)))), -(~(vec2<i32>(u_input.a, u_input.b) ^ vec2<i32>(2147483647i, -2147483647i)))));
    var var_3 = !(!select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))));
    var var_4 = Struct_1(~var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1562f - _wgslsmith_f_op_f32(global0.x - 1630f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 1379f, global0.x), vec3<f32>(global0.x, global0.x, -1221f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-912f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-194f, global0.x, 575f), vec3<f32>(-1067f, 283f, global0.x), vec3<bool>(true, var_3.x, var_3.x))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(-2100f)), global0.x, _wgslsmith_f_op_f32(-1000f * global0.x))))), _wgslsmith_mult_i32(-1i, u_input.a), min(u_input.b & reverseBits(select(0i, var_2.x, true)), var_2.x));
    return var_4.d;
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(320f, -355f) * vec2<f32>(-1482f, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(508f, -818f) * vec2<f32>(global0.x, global0.x)))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-833f, global0.x))))))))));
    var var_0 = Struct_1(~_wgslsmith_add_u32(36007u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 25640u, 1u, u_input.c), vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, 0u))) | (_wgslsmith_add_u32(4294967295u, u_input.d.x) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.zw, u_input.d.ww), ~u_input.d.zw) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) * -194f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, 793f, global0.x)) + vec3<f32>(global0.x, global0.x, 1486f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1534f) * vec3<f32>(1344f, 852f, -842f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(155f, global0.x, -308f) + vec3<f32>(global0.x, global0.x, 272f)))))), u_input.a, _wgslsmith_mod_i32(func_3(), u_input.a));
    var var_1 = Struct_1(7439u, _wgslsmith_f_op_f32(-1464f - -901f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * var_0.c.x), global0.x), 0i, -13890i);
    global1 = array<vec3<u32>, 23>();
    let var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(~4294967295u, var_0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(392f, global0.x, true))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_0.b))) - vec3<f32>(1330f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(f32(-1f) * -395f)))), 31198i, var_1.d);
    return var_2.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: f32) -> vec4<i32> {
    let var_0 = Struct_1(~6608u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2559f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(264f * arg_2)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_2, 269f)), _wgslsmith_f_op_f32(global0.x - 637f), _wgslsmith_f_op_f32(step(arg_2, arg_2))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(879f, -118f, global0.x) + vec3<f32>(-1033f, arg_2, 642f)))))), abs(u_input.b), func_3());
    global1 = array<vec3<u32>, 23>();
    global0 = vec2<f32>(-1082f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1812f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)))));
    var var_1 = select(_wgslsmith_clamp_vec3_i32(abs(-select(vec3<i32>(-36821i, -1482i, -2147483647i), vec3<i32>(var_0.d, 31078i, 1i), arg_0)), vec3<i32>(~2147483647i, 2113i, -1i), ~abs(vec3<i32>(2147483647i, u_input.b, -46150i))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.e, 1i, -u_input.a), -vec3<i32>(~8035i, -1i >> (0u % 32u), 35160i)), select(!arg_0.x, all(!vec4<bool>(true, true, arg_0.x, arg_0.x)), any(!select(arg_0, vec3<bool>(arg_0.x, true, false), true))));
    var var_2 = all(select(select(vec2<bool>(arg_0.x, true), select(select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), false), select(vec2<bool>(false, false), arg_0.yx, arg_0.xx), true), arg_0.yz), !select(arg_0.zz, !arg_0.yy, 103333u <= var_0.a), !arg_0.x));
    return ~(-select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 2147483647i, -10686i), vec4<i32>(23911i, 1i, var_0.d, u_input.b), countOneBits(vec4<i32>(var_1.x, var_1.x, -3505i, u_input.a))), vec4<i32>(var_1.x, var_1.x, -1i, 2147483647i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(53562u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, u_input.d.x, 27947u, 0u)) % vec4<u32>(32u)), vec4<bool>(arg_0.x, !arg_0.x, false, true)));
}

fn func_1() -> i32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(f32(-1f) * -1117f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-330f, 150f))))) * _wgslsmith_f_op_f32(f32(-1f) * -509f)), 1000f);
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) + global0.x), -1718f), -1791f);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x))), -318f)));
    let var_0 = vec4<i32>(u_input.a, ~u_input.a, abs(firstLeadingBit(u_input.a)) & _wgslsmith_div_i32(1i, u_input.a), firstLeadingBit(max(firstLeadingBit(0i), 8330i))) & func_4(select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), true), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), vec2<i32>(~func_2(), -max(u_input.a, -1i)), _wgslsmith_f_op_f32(max(1182f, global0.x)));
    global1 = array<vec3<u32>, 23>();
    return var_0.x;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(24028u, _wgslsmith_f_op_f32(1133f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, 289f)), -700f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0, global0.x) + vec3<f32>(2972f, 694f, global0.x)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(895f, arg_0, global0.x)))))), func_1(), ~u_input.a);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(floor(1903f)))));
    global0 = var_0.c.yy;
    var var_1 = _wgslsmith_mult_u32(~var_0.a, firstLeadingBit(u_input.d.x));
    global1 = array<vec3<u32>, 23>();
    return Struct_1(~(~u_input.d.x), global0.x, vec3<f32>(-446f, 2378f, -1729f), countOneBits(u_input.a) ^ 2147483647i, _wgslsmith_clamp_i32(1i ^ (u_input.a >> (u_input.d.x % 32u)), _wgslsmith_mult_i32(var_0.d >> (15144u % 32u), 17197i), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 23>();
    var var_0 = ~(~_wgslsmith_mult_i32(-16058i, -48027i));
    var var_1 = func_5(1652f, _wgslsmith_f_op_f32(min(global0.x, -1640f)), func_1() <= ~(~9489i));
    let var_2 = abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a, var_1.e), u_input.b, -20913i, u_input.b), _wgslsmith_mod_vec4_i32(-vec4<i32>(20272i, var_1.e, u_input.a, var_1.e), vec4<i32>(u_input.a, u_input.b, u_input.b, 4498i))));
    var var_3 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f * -413f))), global0.x, any(vec3<bool>(all(vec3<bool>(true, false, true)), true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f)), all(select(vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), 2147483647i <= var_2.x), vec4<bool>(true, true, true, true))));
    let var_4 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec3<bool>(true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(var_3.a, var_1.a), 0u, 4294967295u, var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), ~(i32(-1i) * -2147483647i));
}

