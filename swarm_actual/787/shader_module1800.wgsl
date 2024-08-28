struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(1087f, -609f, -663f, 1182f, -286f, 930f, 421f, -1000f, 1427f, -406f, 661f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-393f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(427f)) + _wgslsmith_f_op_f32(trunc(1269f)))))), global0[_wgslsmith_index_u32(4294967295u, 11u)]);
    global0 = array<f32, 11>();
    var var_1 = i32(-1i) * -2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-967f - -1306f))))) - global0[_wgslsmith_index_u32(arg_0.x, 11u)]);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_3(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), Struct_2(false, Struct_1(vec4<f32>(224f, _wgslsmith_f_op_f32(func_3(vec2<u32>(arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(985f + -1027f), _wgslsmith_f_op_f32(133f * global0[_wgslsmith_index_u32(arg_0.b.x, 11u)])), vec3<u32>(~arg_0.b.x, arg_0.b.x, arg_0.b.x), select(vec2<bool>(true, true), select(arg_1.xy, vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_0.c.x)), any(arg_0.c))), arg_3));
    let var_1 = _wgslsmith_div_i32(0i, reverseBits(~0i) >> (countOneBits(~24639u) % 32u)) >> (0u % 32u);
    var var_2 = Struct_3(arg_0, _wgslsmith_f_op_f32(-var_0.b), Struct_2((abs(51760u) << (var_0.a.b.x % 32u)) <= ~arg_0.b.x, arg_0, i32(-1i) * -(-5286i ^ u_input.a.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c.b.a - var_0.a.a)), _wgslsmith_f_op_vec4_f32(exp2(var_0.a.a)))))), select(~vec3<u32>(33732u, _wgslsmith_clamp_u32(4294967295u, 0u, arg_0.b.x), var_2.c.b.b.x), _wgslsmith_add_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(35176u, var_0.a.b.x, arg_0.b.x), vec3<u32>(17157u, var_0.a.b.x, var_0.a.b.x)), var_0.c.b.b << (var_2.a.b % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(3430u, 0u, var_0.c.b.b.x))), select(!(!vec3<bool>(true, arg_0.c.x, false)), arg_1, vec3<bool>(false | var_0.a.c.x, true, arg_0.c.x))), var_2.a.c);
    var_2 = var_0;
    return arg_1.zx;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global0 = array<f32, 11>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.b.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b.a))), arg_1.b.b, arg_1.b.c), global0[_wgslsmith_index_u32(~(~arg_1.b.b.x), 11u)], arg_1);
    let var_1 = !(!var_0.a.c);
    var var_2 = Struct_3(var_0.a, _wgslsmith_div_f32(-1288f, -230f), Struct_2(!(!var_1.x), arg_1.b, ~var_0.c.c));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_1.b.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(67578u, 11u)] - -1409f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f + var_2.c.b.a.x) * _wgslsmith_f_op_f32(var_0.a.a.x + var_2.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1149f * var_2.b), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b.b.x, 11u)])))), -161f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0.a.a * var_2.c.b.a))) * arg_1.b.a)), !(!select(select(vec4<bool>(false, true, arg_1.b.c.x, var_0.a.c.x), vec4<bool>(true, var_2.c.b.c.x, var_0.a.c.x, var_0.a.c.x), arg_1.b.c.x), !vec4<bool>(var_1.x, true, var_2.c.b.c.x, var_0.a.c.x), true))));
    return Struct_2(var_1.x, var_0.a, _wgslsmith_clamp_i32(~(~arg_1.c), var_0.c.c ^ 2147483647i, abs(_wgslsmith_sub_i32(-6093i, -25962i))) >> (arg_1.b.b.x % 32u));
}

fn func_1() -> vec3<i32> {
    global0 = array<f32, 11>();
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(~var_0, -3914i, ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, -2147483647i, 0i))) >> (vec3<u32>(countOneBits(49389u), 0u, 61722u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(-countOneBits(u_input.b), _wgslsmith_sub_i32(var_0, -1i)), 5330i, select(9448i, u_input.a.x, true)));
    let var_2 = func_4(_wgslsmith_f_op_f32(-979f * global0[_wgslsmith_index_u32(~1u, 11u)]), Struct_2(true, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(268f * -135f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 11u)] + global0[_wgslsmith_index_u32(24535u, 11u)]), -155f, _wgslsmith_f_op_f32(min(-383f, global0[_wgslsmith_index_u32(1u, 11u)]))), ~reverseBits(vec3<u32>(0u, 61064u, 1u)), select(func_2(Struct_1(vec4<f32>(3056f, -689f, global0[_wgslsmith_index_u32(63417u, 11u)], -639f), vec3<u32>(0u, 1u, 27018u), vec2<bool>(false, false)), vec3<bool>(false, false, true), vec4<f32>(global0[_wgslsmith_index_u32(19717u, 11u)], global0[_wgslsmith_index_u32(76409u, 11u)], 1435f, global0[_wgslsmith_index_u32(1u, 11u)]), u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false)), abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 10121i), vec2<i32>(u_input.a.x, u_input.b)), -45354i))));
    var var_3 = _wgslsmith_clamp_u32(var_2.b.b.x, var_2.b.b.x, 0u);
    return vec3<i32>(countOneBits(u_input.b), ~var_1.x, _wgslsmith_mult_i32(1i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(abs(func_1()), vec3<i32>(29738i, i32(-1i) * -u_input.b, _wgslsmith_mod_i32(~(~u_input.b), _wgslsmith_mod_i32(u_input.b ^ 6128i, i32(-1i) * -1001i))), vec3<bool>(false, func_4(_wgslsmith_f_op_f32(733f - global0[_wgslsmith_index_u32(~69380u, 11u)]), func_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(46378u, 11u)] * global0[_wgslsmith_index_u32(0u, 11u)]), func_4(-324f, Struct_2(false, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(15775u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(79611u, 11u)], -698f), vec3<u32>(36877u, 13277u, 11928u), vec2<bool>(false, true)), -43301i)))).a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(34737u, 11u)], -542f)) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 11u)] * global0[_wgslsmith_index_u32(61749u, 11u)]))));
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)]) + _wgslsmith_f_op_f32(step(380f, -110f))) < _wgslsmith_f_op_f32(exp2(func_4(global0[_wgslsmith_index_u32(86020u, 11u)], Struct_2(true, Struct_1(vec4<f32>(191f, global0[_wgslsmith_index_u32(0u, 11u)], 1792f, -1266f), vec3<u32>(51216u, 22468u, 0u), vec2<bool>(true, false)), 14959i)).b.a.x))) && all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, true, true), true));
    var var_2 = abs(vec4<u32>(32925u << ((_wgslsmith_dot_vec2_u32(vec2<u32>(45847u, 0u), vec2<u32>(7019u, 4294967295u)) & ~34505u) % 32u), ~(~0u) & _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(55356u, 21715u)), vec2<u32>(1u, 1u)), 1u >> (_wgslsmith_clamp_u32(1u, ~0u, 4294967295u) % 32u), func_4(835f, func_4(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 11u)])), Struct_2(true, Struct_1(vec4<f32>(-1983f, global0[_wgslsmith_index_u32(1u, 11u)], -504f, 804f), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<bool>(true, var_1)), var_0.x))).b.b.x));
    let var_3 = _wgslsmith_sub_u32(~var_2.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(8367u, _wgslsmith_clamp_u32(88238u, var_2.x, 0u)) << (abs(1u) % 32u), 17592u));
    global0 = array<f32, 11>();
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(16263u, 11u)], global0[_wgslsmith_index_u32(var_3, 11u)], global0[_wgslsmith_index_u32(var_2.x, 11u)], -481f) + vec4<f32>(928f, global0[_wgslsmith_index_u32(1u, 11u)], 1442f, 949f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(var_2.x, 11u)]), vec4<f32>(global0[_wgslsmith_index_u32(var_3, 11u)], global0[_wgslsmith_index_u32(19092u, 11u)], 1100f, -159f)))))), vec3<u32>(2604u, 59740u, 0u), vec2<bool>(!var_1, true));
    var var_5 = ~(vec4<i32>(~u_input.a.x, -countOneBits(28728i), 22761i, min(_wgslsmith_add_i32(var_0.x, var_0.x), var_0.x >> (var_4.b.x % 32u))) | u_input.a);
    var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_4.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(37591u), var_4.b.x, ~var_3, select(0u, 1u, var_4.c.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_4.b.x, var_4.b.x, var_4.b.x, 4294967295u), firstTrailingBit(vec4<u32>(1u, 99023u, var_2.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_4.b.x, 0u, 2071u), vec4<u32>(0u, var_3, var_2.x, 51259u), vec4<u32>(1u, var_3, 0u, 1u)))), 86792u, _wgslsmith_div_u32(var_2.x << (var_3 % 32u), var_2.x)), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.a.x, global0[_wgslsmith_index_u32(19478u, 11u)], -576f, -398f))))), ~countOneBits(vec3<u32>(var_2.x, var_4.b.x, 1u)), vec2<bool>(true, false)), !vec3<bool>(func_2(Struct_1(vec4<f32>(-204f, 1298f, -786f, var_4.a.x), var_4.b, var_4.c), vec3<bool>(var_4.c.x, var_1, false), var_4.a, -47230i).x, var_4.c.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(-var_4.a.x), -978f, _wgslsmith_f_op_f32(736f - var_4.a.x))), -(var_0.x << (_wgslsmith_sub_u32(var_4.b.x, 4294967295u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_add_u32(89300u, _wgslsmith_mod_u32(var_4.b.x & 1u, var_4.b.x >> (6017u % 32u))), 4294967295u, 14005u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-180f, var_4.a.x, var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-924f - var_4.a.x), var_4.a.x) * vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_2.x, 11u)])), _wgslsmith_f_op_f32(var_4.a.x + -1434f), 523f, var_4.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_4.a))))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~4294967295u, var_4.b.x), min(var_2.yyw, reverseBits(vec3<u32>(var_3, var_3, var_2.x)))), var_2.x), abs(vec4<u32>(0u, var_4.b.x, var_3, var_3)));
}

