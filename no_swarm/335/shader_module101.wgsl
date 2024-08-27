struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool = false;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_sub_u32(61236u, 1u);
    global0 = !select(!select(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), false), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, global0.x), global0.x), !vec3<bool>(true, global0.x, global0.x)), vec3<bool>(true, true, !all(vec3<bool>(false, global0.x, global0.x))), all(vec2<bool>(true, global0.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(_wgslsmith_div_u32(0u, 7590u), 11330u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), !(!vec4<bool>(false, true, global0.x, global0.x))), ~abs(vec4<u32>(0u, 4294967295u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = Struct_2(select(any(!(!global0.zx)), global0.x, false));
    var var_3 = global0.x;
    return 0u;
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = Struct_2(false);
    var var_1 = firstLeadingBit(~max(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yy), u_input.b, arg_1, 32352i), reverseBits(-vec4<i32>(1i, -2147483647i, 42451i, u_input.a.x))));
    let var_2 = _wgslsmith_div_vec2_u32(~vec2<u32>(94711u, firstTrailingBit(_wgslsmith_div_u32(1u, 109124u))), firstTrailingBit(~vec2<u32>(arg_0, 24655u)));
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_3(), ~_wgslsmith_mod_u32(var_2.x, 43969u)), firstTrailingBit(~var_2 << (var_2 % vec2<u32>(32u))), var_2), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(794f, _wgslsmith_f_op_f32(f32(-1f) * -659f), -721f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-760f, -1000f, -1271f), vec3<f32>(-1169f, 889f, -235f), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-953f, -1261f, -990f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1306f, 845f, 202f), vec3<f32>(-1000f, 165f, 1052f)))))))));
    let var_4 = Struct_1(vec2<u32>(~111177u, reverseBits(~max(arg_0, 4294967295u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.b), vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-472f, -278f)), var_3.b.x), select(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, global0.x, var_0.a), !vec3<bool>(var_0.a, true, global0.x)), !select(vec3<bool>(global0.x, false, false), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a)), global0.x && var_0.a))));
    return var_0.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = arg_0.zyx;
    global1 = !func_2(arg_3.x, -71963i);
    global0 = !arg_0.xzx;
    global1 = true;
    var var_0 = Struct_1(vec2<u32>(func_3(), arg_3.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1160f, -731f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(997f))) * -1000f), _wgslsmith_f_op_f32(514f - _wgslsmith_f_op_f32(trunc(676f)))));
    return var_0.b.xy;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = ~(~(~arg_1));
    var var_1 = select(global0.yy, global0.xx, false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1854f - arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1125f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(var_1.x, true, false, var_1.x), arg_1, 2147483647i, vec2<u32>(arg_1, 4294967295u))).x))))));
    var var_3 = select(!var_1.x, select(~(~1u), 1u, any(!vec4<bool>(var_1.x, global0.x, global0.x, var_1.x))) > ~(arg_1 & 1u), true);
    global1 = any(vec4<bool>(var_1.x, true, global0.x, any(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(false, var_1.x, global0.x, var_1.x), vec4<bool>(global0.x, var_1.x, global0.x, false))))) && var_1.x;
    return Struct_2((u_input.c & _wgslsmith_mod_i32(~u_input.c, ~0i)) == u_input.c);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = u_input.c;
    global1 = all(vec4<bool>(global0.x, !any(vec2<bool>(false, arg_2.a)), !(!func_2(arg_0, var_0)), true));
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 18402u)), max(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(122360u, 0u, 178047u)))), max(~vec2<u32>(arg_0, arg_0), (vec2<u32>(arg_0, 46337u) ^ vec2<u32>(arg_0, arg_0)) & max(vec2<u32>(4294967295u, 59712u), vec2<u32>(arg_0, arg_0))), _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(arg_0, arg_0), vec2<u32>(31171u, 7949u), global0.x), ~vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0) >> (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-875f * _wgslsmith_f_op_f32(sign(-2227f))), 1f), _wgslsmith_f_op_vec2_f32(func_1(!select(vec4<bool>(arg_2.a, false, true, true), vec4<bool>(arg_2.a, arg_2.a, global0.x, false), vec4<bool>(true, global0.x, arg_2.a, global0.x)), arg_0, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -7229i), arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 37975u), select(vec2<u32>(3270u, 1222u), vec2<u32>(arg_0, arg_0), vec2<bool>(false, arg_2.a))))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1768f))));
    var var_2 = Struct_2(arg_2.a);
    var var_3 = 1000f;
    return Struct_1(~_wgslsmith_sub_vec2_u32(~var_1.a | var_1.a, ~(~vec2<u32>(13495u, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    return _wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_2.x, arg_2.x, 50601i)) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.a.x, 4294967295u, arg_1.a.x)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(21453u, arg_1.a.x, 701u)), countOneBits(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, 32041u), ~vec3<u32>(arg_1.a.x, 0u, 43028u))) % vec3<u32>(32u)), vec3<i32>(0i, _wgslsmith_mod_i32(arg_0.x, -2147483647i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1049f * _wgslsmith_f_op_f32(f32(-1f) * -1475f)), _wgslsmith_f_op_f32(abs(-668f)))))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, _wgslsmith_clamp_i32(~(-1i), firstTrailingBit(u_input.a.x), u_input.a.x >> (59374u % 32u))) | -u_input.b, func_6(-vec4<i32>(u_input.c, 0i, u_input.a.x, u_input.a.x) | countOneBits(vec4<i32>(23227i, u_input.a.x, u_input.b, u_input.a.x)), func_5(~(~30916u), _wgslsmith_mod_i32(~2147483647i, countOneBits(u_input.b)), func_4(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, false, global0.x, true), 68961u, u_input.b, vec2<u32>(4294967295u, 16171u))), ~0u)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.b, 1i, u_input.b, -65272i), ~vec4<i32>(u_input.b, u_input.a.x, u_input.b, 46119i)), vec4<i32>(u_input.a.x & -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), vec2<i32>(1i, u_input.b)), ~u_input.a.x, 0i))), 33072i);
    let var_2 = Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(999f)), _wgslsmith_f_op_f32(-1f), -392f) + vec3<f32>(1f, 1f, 1f)));
    var var_3 = vec3<bool>(all(select(!(!vec2<bool>(global0.x, global0.x)), !(!vec2<bool>(global0.x, global0.x)), func_4(vec2<f32>(var_2.b.x, 300f), 21052u).a | any(global0.xz))), !global0.x, !global0.x);
    var var_4 = _wgslsmith_div_i32(~(~(-1i)), reverseBits(-2147483647i));
    var var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-577f, var_2.b.x, 1000f, -876f) - vec4<f32>(1417f, 865f, var_2.b.x, var_2.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1189f, var_2.b.x, var_2.b.x, -1034f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 582f, 335f, var_2.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2479f, -633f, var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1398f, var_2.b.x, var_2.b.x, var_2.b.x) - vec4<f32>(-1051f, 833f, var_2.b.x, 117f)) + vec4<f32>(var_2.b.x, 386f, -2371f, 214f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, 182f))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(), ~u_input.b, vec4<i32>(~((-14937i >> (var_2.a.x % 32u)) >> ((var_2.a.x | var_2.a.x) % 32u)), ~var_1, -func_6(min(vec4<i32>(var_1, var_1, var_1, u_input.c), vec4<i32>(-9669i, u_input.a.x, u_input.b, var_1)), func_5(var_2.a.x, 1i, Struct_2(true)), select(vec4<i32>(u_input.a.x, var_1, var_1, -28200i), vec4<i32>(40866i, var_1, var_1, u_input.c), vec4<bool>(global0.x, true, global0.x, global0.x))), -2147483647i));
}

