struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<bool>;

var<private> global2: Struct_2 = Struct_2(1u, false, vec4<u32>(69630u, 1u, 4506u, 4294967295u), 0u, vec3<u32>(15923u, 24850u, 69550u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    let var_0 = Struct_4(!global2.b, Struct_2(global2.d, !global2.b, ~vec4<u32>(~52497u, _wgslsmith_mod_u32(global2.a, arg_2.x), arg_2.x, 4294967295u), _wgslsmith_div_u32(4294967295u, global2.c.x) << (reverseBits(0u >> (arg_2.x % 32u)) % 32u), firstTrailingBit(vec3<u32>(arg_2.x, _wgslsmith_add_u32(global2.c.x, 35013u), ~4294967295u))), u_input.a.x, _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global2.c.wyy, arg_2), abs(vec3<u32>(global2.e.x, arg_2.x, 47259u))), global2.d));
    let var_1 = 27243u;
    let var_2 = 971f;
    let var_3 = Struct_1(min(min(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 1u, 3875u, 36235u), vec4<u32>(var_1, 1u, 25530u, 43821u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 37045u, 65503u, global2.e.x), ~vec4<u32>(1u, 56575u, 4294967295u, var_1))), ~(~(~global2.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(809f, var_2), arg_0, vec2<bool>(global1.x, true))))))));
    var var_4 = arg_1.wwz;
    return _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.d, global2.c.x, _wgslsmith_mult_u32(~arg_2.x, max(var_0.d, global2.e.x)), arg_2.x | ~1u), firstTrailingBit(vec4<u32>(arg_2.x ^ 30460u, global2.c.x, _wgslsmith_dot_vec2_u32(arg_2.xx, arg_2.zy), firstTrailingBit(1u))), !select(!vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, var_0.a, global2.b, global2.b), true)), ~global2.c);
}

fn func_2() -> Struct_2 {
    return Struct_2(1u, true, vec4<u32>(global2.c.x, _wgslsmith_add_u32(90050u | global2.c.x, func_3(vec2<f32>(1000f, -1000f), vec4<f32>(897f, 1000f, 1000f, -783f), vec3<u32>(global2.e.x, global2.d, global2.e.x), 2147483647i)), abs(31839u), select(global2.a, global2.c.x, true)) | global2.c, 33842u, global2.e);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-957f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1523f))), 339f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-812f, 144f), vec2<f32>(-276f, 1342f), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-121f, 1041f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -710f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(577f, -181f), _wgslsmith_f_op_vec2_f32(vec2<f32>(693f, -366f) + vec2<f32>(-1847f, -591f)))), vec2<f32>(-988f, _wgslsmith_f_op_f32(-586f * 1000f)))))), vec2<bool>(arg_0.b, !global1.x)));
    var var_1 = arg_0;
    global1 = !select(vec2<bool>(arg_0.b, any(!vec3<bool>(global1.x, false, var_1.b))), !select(!vec2<bool>(global2.b, true), select(vec2<bool>(global1.x, global2.b), vec2<bool>(true, global2.b), true), any(vec3<bool>(true, var_1.b, true))), !(!select(vec2<bool>(true, global2.b), vec2<bool>(false, false), false)));
    let var_2 = arg_0;
    let var_3 = firstLeadingBit(arg_1.x << (arg_1.x % 32u));
    return func_2();
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = select(min(-_wgslsmith_mod_i32(firstLeadingBit(1i), _wgslsmith_add_i32(u_input.a.x, 13832i)), u_input.c), _wgslsmith_mult_i32(select(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.c, u_input.b.x)), ~u_input.c, global2.e.x < 6675u) >> (62013u % 32u), i32(-1i) * -max(19324i, u_input.d.x)), any(select(!(!vec4<bool>(global1.x, false, false, global1.x)), vec4<bool>(true, global2.b | global2.b, true, !global2.b), vec4<bool>(!global2.b, global1.x, true, global1.x))));
    let var_1 = u_input.c;
    let var_2 = Struct_4(false, func_4(func_2(), global2.e.xy), u_input.c, global2.e.x);
    let var_3 = global2.a;
    var var_4 = var_2.b;
    return Struct_2(40667u | abs(_wgslsmith_div_u32(1u, 53666u) | firstTrailingBit(20791u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(min(-1828f, 369f)))) < _wgslsmith_f_op_f32(340f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, 828f, false)) + _wgslsmith_f_op_f32(715f - arg_0.x))), vec4<u32>(_wgslsmith_div_u32(global2.a >> (_wgslsmith_sub_u32(var_2.b.c.x, var_2.b.a) % 32u), global2.e.x), 0u, ~var_4.a, var_2.d), _wgslsmith_mod_u32(var_2.b.e.x, var_4.d), vec3<u32>(global2.e.x, 1u, ~(54585u << (var_2.d % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-395f + -359f), 1500f, _wgslsmith_div_f32(-678f, -169f), _wgslsmith_f_op_f32(min(1000f, 1090f))) * vec4<f32>(_wgslsmith_div_f32(-322f, 109f), _wgslsmith_f_op_f32(step(-1000f, 432f)), -2015f, _wgslsmith_f_op_f32(f32(-1f) * -366f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, -397f, -1850f, -379f))), !(!(u_input.c == 1i)))), vec4<f32>(_wgslsmith_f_op_f32(663f * 807f), _wgslsmith_f_op_f32(ceil(-557f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(246f - 1603f))), 295f), _wgslsmith_f_op_f32(round(-180f))));
    let var_1 = u_input.a;
    let var_2 = Struct_1(vec4<u32>(firstLeadingBit(~max(global2.d, 498u)), 74308u, ~(~_wgslsmith_add_u32(0u, global2.e.x)), global2.c.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-272f * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1217f * var_0.x))))));
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - -842f), _wgslsmith_f_op_f32(trunc(-773f))), vec3<f32>(1127f, var_0.x, var_0.x))) - var_0.xyy));
    var_3 = func_2();
    var var_4 = vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, var_1.x), -50735i), u_input.c);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-731f, 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.a.x, global2.e.x, 15725u) >> (global2.c % vec4<u32>(32u)), var_3.c)), _wgslsmith_clamp_vec4_u32(func_1(var_0.zwx).c, max(vec4<u32>(global2.a, 9138u, global2.c.x, global2.d), global2.c), var_3.c << (global2.c % vec4<u32>(32u))) ^ vec4<u32>(~var_2.a.x, _wgslsmith_div_u32(global2.d, var_3.e.x), global2.e.x, global2.d)), vec3<u32>(0u, ~71186u >> (_wgslsmith_add_u32(~0u, global2.d) % 32u), ~1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(var_0.x, 951f))), -188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(933f - 1382f) * _wgslsmith_f_op_f32(step(-2022f, var_0.x))))), var_0.yy);
}

