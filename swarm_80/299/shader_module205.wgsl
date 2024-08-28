struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1853f + 1269f) - _wgslsmith_f_op_f32(sign(2164f)))), vec3<f32>(_wgslsmith_f_op_f32(-481f * 1000f), -111f, _wgslsmith_f_op_f32(sign(-705f)))), Struct_4(35403u | u_input.b.x), Struct_1(-726f, _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.b.zz, u_input.b.xx)) << (u_input.b.zx % vec2<u32>(32u)), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, true)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(311f)), -831f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f * 1000f) - _wgslsmith_f_op_f32(floor(-136f)))), _wgslsmith_mod_vec2_u32(~(~u_input.b.zz), countOneBits(~u_input.b.yz)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.c.a, _wgslsmith_f_op_f32(f32(-1f) * -1247f))), _wgslsmith_f_op_f32(var_0.d.a + _wgslsmith_f_op_f32(113f + -1227f)), all(vec2<bool>(false, var_0.c.c.x)))), _wgslsmith_f_op_f32(abs(952f))), Struct_4(6459u), Struct_1(_wgslsmith_f_op_f32(495f - -569f), vec2<u32>(68612u, _wgslsmith_dot_vec4_u32(vec4<u32>(36488u, u_input.b.x, 29846u, 27148u), vec4<u32>(u_input.b.x, var_0.c.b.x, u_input.b.x, 1u) & vec4<u32>(1u, 11314u, var_0.d.b.x, var_0.b.a))), select(var_0.d.c, select(!vec3<bool>(true, var_0.d.c.x, true), select(vec3<bool>(var_0.d.c.x, false, false), var_0.c.c, var_0.c.c), var_0.c.c.x), select(!vec3<bool>(true, false, var_0.d.c.x), select(var_0.c.c, var_0.d.c, false), select(var_0.d.c, vec3<bool>(false, var_0.d.c.x, true), var_0.c.c.x)))), Struct_1(_wgslsmith_f_op_f32(floor(var_0.d.a)), countOneBits(vec2<u32>(4294967295u, 79452u) ^ vec2<u32>(589u, u_input.b.x)) & var_0.d.b, vec3<bool>(var_0.d.c.x, true, var_0.d.c.x)));
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-220f, -414f, 419f)))) * _wgslsmith_f_op_vec3_f32(abs(var_0.a))), var_0.b, var_0.c, var_0.c);
    var_0 = Struct_5(vec3<f32>(_wgslsmith_div_f32(-560f, -186f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.a))) + var_0.c.a)), Struct_4(u_input.b.x), Struct_1(_wgslsmith_f_op_f32(min(2813f, var_0.d.a)), _wgslsmith_sub_vec2_u32(~u_input.b.yx, vec2<u32>(u_input.b.x, min(29675u, u_input.b.x))), vec3<bool>(var_0.c.c.x != var_0.d.c.x, !(!var_0.c.c.x), any(!var_0.c.c))), Struct_1(_wgslsmith_f_op_f32(ceil(488f)), u_input.b.xy, select(vec3<bool>(true, true, true), !var_0.c.c, !var_0.d.c)));
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-466f, var_0.c.a, -697f) - var_0.a), _wgslsmith_f_op_vec3_f32(-var_0.a)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(-1234f - 949f), _wgslsmith_f_op_f32(floor(var_0.c.a))))), var_0.b, Struct_1(-1023f, vec2<u32>(1u, var_0.b.a), vec3<bool>(var_0.c.c.x, var_0.c.c.x, any(select(vec2<bool>(false, var_0.c.c.x), vec2<bool>(var_0.c.c.x, false), vec2<bool>(false, true))))), var_0.d);
    return 76820u;
}

fn func_2() -> Struct_5 {
    var var_0 = vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 74257u), u_input.b.zx), _wgslsmith_mult_vec2_u32(max(vec2<u32>(0u, 1u), u_input.b.xy), u_input.b.zx)), u_input.b.x, u_input.b.x & 54294u) & abs(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 56506u, 0u, 38831u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))));
    let var_1 = Struct_4(var_0.x);
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(96715u, 42401u), u_input.b.x, _wgslsmith_clamp_u32(0u, func_3(), ~min(var_1.a, u_input.b.x))), 4294967295u, var_0.x, (_wgslsmith_add_u32(var_1.a, 15946u) | abs(12030u << (0u % 32u))) << (~1u % 32u));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f + _wgslsmith_f_op_f32(314f + -642f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1977f) * _wgslsmith_f_op_f32(f32(-1f) * -2082f)))), -1000f), ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 107642u, var_0.x, 1u), ~vec4<u32>(140947u, u_input.b.x, 4294967295u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_1.a, var_0.x) << (vec4<u32>(0u, 4294967295u, 65277u, 44308u) % vec4<u32>(32u)))), Struct_1(961f, (u_input.b.xz >> (u_input.b.yz % vec2<u32>(32u))) << (((u_input.b.xx & var_0.yz) ^ vec2<u32>(1u, var_0.x)) % vec2<u32>(32u)), vec3<bool>(false, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_f32(ceil(-259f)) == _wgslsmith_f_op_f32(select(729f, -1041f, true)))), ~0u, firstLeadingBit(0i));
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_f32(-957f - var_2.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_2.a.x))))), Struct_4(~(4294967295u ^ var_1.a)), Struct_1(2017f, vec2<u32>(4294967295u, var_0.x), var_2.c.c), var_2.c);
}

fn func_4(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = firstLeadingBit(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 30422u, u_input.b.x) & ~vec3<u32>(arg_0.b.a, 37402u, 25098u), ~(~u_input.b), ~(~vec3<u32>(7585u, 22415u, u_input.b.x)))));
    let var_1 = Struct_2(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.d.a, -770f))))), _wgslsmith_f_op_f32(min(arg_0.d.a, arg_0.c.a))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(0u, u_input.b.x), var_0.zy), min(u_input.b.yz, vec2<u32>(var_0.x, arg_0.d.b.x))), 1u, 1u, 70104u), func_2().c, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(104715u, arg_0.d.b.x, arg_0.b.a, u_input.b.x) & vec4<u32>(1u, 15982u, u_input.b.x, 26976u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(89934u, 4294967295u, arg_0.b.a, 7310u), vec4<u32>(arg_0.d.b.x, 1u, 21231u, 0u)), countOneBits(vec4<u32>(101212u, var_0.x, var_0.x, 1u)))), 0u << (min(~0u, ~var_0.x) % 32u)), _wgslsmith_div_i32(u_input.d, _wgslsmith_clamp_i32(-11015i >> (func_3() % 32u), -2001i, _wgslsmith_clamp_i32(26598i, u_input.a, u_input.c ^ 5868i))));
    var_0 = ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, var_1.b.x, 44475u) << (u_input.b % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, arg_0.c.b.x, 4294967295u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 70989u, 4294967295u), u_input.b) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(1u, u_input.b.x, 63047u)));
    let var_2 = !(!select(var_1.c.c.yy, var_1.c.c.xx, arg_0.c.c.yz));
    let var_3 = var_1.c.c.x;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1120f)), arg_0.a.x, 272f, 740f));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_mult_i32(~abs(-(u_input.c >> (0u % 32u))), u_input.c);
    var var_1 = all(select(vec4<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(14154i, var_0, 1i, u_input.c), vec4<i32>(40082i, u_input.a, arg_0, u_input.c)) < _wgslsmith_add_i32(0i, u_input.c), true | select(true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true | (u_input.b.x == abs(u_input.b.x))));
    var var_2 = _wgslsmith_add_i32(-1i, 1i);
    let var_3 = _wgslsmith_f_op_vec4_f32(func_4(func_2()));
    var_1 = true;
    return ~select(countOneBits(u_input.b.x), 0u, false);
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = arg_2.c.c.x;
    var_0 = false;
    var_0 = !(!arg_2.c.c.x);
    var_0 = false;
    var_0 = false;
    return vec3<bool>(func_2().c.c.x, arg_2.c.c.x, any(vec4<bool>(true, arg_2.c.c.x, true, arg_2.c.c.x || true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<u32>(u_input.b.x, ~(~(~u_input.b.x)), func_1(57216i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, -795f, 536f))), 29745u), _wgslsmith_f_op_f32(-1f), Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(998f, 1519f, _wgslsmith_f_op_f32(select(-810f, -434f, false))))), ~(~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 11926u))), Struct_1(_wgslsmith_f_op_f32(min(-1390f, _wgslsmith_f_op_f32(abs(-2633f)))), firstLeadingBit(firstTrailingBit(u_input.b.yx)), vec3<bool>(true, true, true)), 73650u, select(u_input.a, 13689i, true)));
    var var_1 = -392f;
    var var_2 = ~66387u;
    var_2 = 16573u;
    let var_3 = var_0.xz;
    var_2 = func_3();
    let var_4 = func_2().b;
    var var_5 = _wgslsmith_mult_vec3_u32(vec3<u32>(41086u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, 18792u, var_4.a), u_input.b.x >> (39311u % 32u))), ~11403u), u_input.b);
    var_1 = func_2().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec2<u32>(firstTrailingBit(~min(u_input.b.x, 56788u)), var_5.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, _wgslsmith_f_op_f32(step(443f, -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-491f, 277f))))))), _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.x, u_input.b.x, var_4.a), ~vec3<u32>(4294967295u, var_4.a, var_5.x), firstTrailingBit(u_input.b)) >> (~vec3<u32>(u_input.b.x, var_5.x, u_input.b.x) % vec3<u32>(32u))));
}

