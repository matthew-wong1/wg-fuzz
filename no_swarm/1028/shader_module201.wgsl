struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_4(Struct_3(Struct_1(~4294967295u, abs(0i), ~vec2<u32>(arg_1, arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, -1067f, -802f)))), Struct_1(_wgslsmith_mult_u32(u_input.d.x, arg_1 & u_input.d.x), u_input.a.x, vec2<u32>(4294967295u, select(arg_1, u_input.d.x, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1043f, 1000f), vec3<f32>(586f, 1798f, -1119f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(480f, -448f, 430f) * vec3<f32>(1227f, 679f, -1105f)))), vec4<bool>(!any(vec4<bool>(true, false, false, false)), true, true, true), Struct_1(25125u, u_input.c.x, _wgslsmith_add_vec2_u32(u_input.d.zy, vec2<u32>(arg_1, arg_1) & vec2<u32>(30403u, u_input.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-905f, 324f, 906f)))));
    var var_1 = select(var_0.a.c.xy, var_0.a.c.yw, !var_0.a.c.x);
    let var_2 = var_0;
    var_1 = var_2.a.c.wy;
    var var_3 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.a.b.b, var_2.a.a.b, var_0.a.a.b) & vec4<i32>(u_input.a.x, 13673i, arg_0, arg_0), select(~vec4<i32>(0i, 1i, u_input.a.x, var_0.a.b.b), countOneBits(vec4<i32>(arg_0, 2147483647i, -2147483647i, 0i)), select(var_0.a.c, vec4<bool>(var_1.x, false, true, var_0.a.c.x), var_0.a.c))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-23546i, -48225i, 2147483647i, -43682i) | vec4<i32>(u_input.a.x, 14964i, 28305i, 2147483647i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.b.b, -83343i, -76524i, var_2.a.a.b), vec4<i32>(u_input.a.x, 0i, 40821i, -57i)))));
    return select(var_2.a.c, !var_2.a.c, var_2.a.c);
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec4<bool>(!(true & all(vec3<bool>(false, true, true))), all(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(0i, -14841i)), 4294967295u)), true, true), !vec4<bool>(true, select(true, true, true), true, _wgslsmith_add_i32(u_input.a.x, 72264i) != u_input.b), all(func_3(u_input.c.x, u_input.d.x)));
    let var_1 = ~0u;
    var var_2 = -6938i;
    var_2 = select(_wgslsmith_mult_i32(u_input.a.x, -9961i), ~abs(~1i), true);
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.d.zx), -51955i, max(abs(abs(u_input.d.zy)), countOneBits(u_input.d.zz)), vec3<f32>(_wgslsmith_f_op_f32(-1170f + 471f), _wgslsmith_f_op_f32(-643f * _wgslsmith_f_op_f32(1841f - 240f)), 886f)), Struct_1(~var_1, _wgslsmith_clamp_i32(-2147483647i, 31960i, u_input.c.x), countOneBits(u_input.d.wy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1223f, _wgslsmith_f_op_f32(-998f - -1034f), _wgslsmith_f_op_f32(-1377f - -1494f)))));
    return Struct_1(~(~u_input.d.x << (~29402u % 32u)) | ~(firstLeadingBit(4294967295u) | (var_3.a.a << (u_input.d.x % 32u))), 58326i >> (countOneBits(~var_1) % 32u), ~u_input.d.zx, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.a.d), vec3<f32>(var_3.b.d.x, 833f, var_3.b.d.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1053f, var_3.a.d.x, 2347f))) + vec3<f32>(398f, var_3.a.d.x, 2818f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-616f, -430f)), _wgslsmith_f_op_f32(sign(1823f)), _wgslsmith_f_op_f32(-var_3.b.d.x))))));
}

fn func_1() -> vec2<i32> {
    var var_0 = all(!vec3<bool>(-6939i > (u_input.a.x | 0i), u_input.d.x == _wgslsmith_clamp_u32(u_input.d.x, 43321u, u_input.d.x), true));
    var var_1 = Struct_3(Struct_1(u_input.d.x, max(select(u_input.b, u_input.c.x, false) >> (~30558u % 32u), ~u_input.c.x), vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.d.yxz, u_input.d.wzz), 0u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, 617f, 890f))))), func_2(), vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), u_input.c.x >= 2147483647i)), !func_3(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, u_input.c.x), u_input.d.x).x, true, !any(vec2<bool>(true, true))), func_2());
    var_0 = true;
    let var_2 = var_1.c.x;
    var var_3 = Struct_4(Struct_3(func_2(), Struct_1(abs(~var_1.b.c.x), 0i, vec2<u32>(26375u, u_input.d.x | 0u), vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.d.x), var_1.a.d.x, var_1.b.d.x)), func_3(-6896i, max(0u, ~u_input.d.x)), var_1.a));
    return abs(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(0i, -2147483647i), -var_3.a.d.b), vec2<i32>(0i, _wgslsmith_mult_i32(-35903i, var_1.b.b)))) ^ vec2<i32>(var_1.d.b, ~(~0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1014f;
    var_0 = 813f;
    var_0 = -640f;
    var_0 = 1090f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)) * 1423f)));
    var var_1 = countOneBits((((vec2<i32>(-35119i, u_input.b) ^ u_input.a) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))) & func_1()) & u_input.c.zy);
    let var_2 = Struct_1(~_wgslsmith_mult_u32(48038u, ~_wgslsmith_add_u32(u_input.d.x, 47349u)), -8881i, u_input.d.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, -1000f, -321f)), vec3<f32>(-771f, 2079f, _wgslsmith_div_f32(2558f, -608f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d.x, 282f) - 844f), var_2.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, var_2.d.x) * var_2.d.yz), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.d.x, 413f)))))))));
}

