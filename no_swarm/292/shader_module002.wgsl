struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    let var_0 = vec4<bool>(false, !any(select(!vec3<bool>(arg_1.a.a, true, true), vec3<bool>(arg_1.a.a, arg_1.b, arg_1.a.a), vec3<bool>(false, arg_1.b, arg_1.b))), true, arg_1.b);
    let var_1 = vec4<i32>(arg_2, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(~arg_2, arg_2), -(~(~arg_2))), 25867i, -arg_2);
    var var_2 = Struct_1(-594f, !(!var_0.x), select(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_sub_i32(arg_2, arg_2)), _wgslsmith_mult_i32(var_1.x | 1i, ~var_1.x)), -(~(~var_1.x)), 79537u >= arg_0.x), ~u_input.e.wz);
    var var_3 = var_1.ww;
    var var_4 = arg_1;
    return vec3<bool>(((arg_1.c.x < -872f) & var_2.b) != true, any(select(!select(vec4<bool>(true, false, false, false), var_0, var_4.b), vec4<bool>(var_4.a.a, all(var_0.xyy), !arg_1.b, true), true)), !all(select(var_0.wzw, select(vec3<bool>(arg_1.a.a, false, var_4.b), var_0.yzx, var_0.zzx), any(var_0.wx))));
}

fn func_3() -> u32 {
    let var_0 = 1u;
    var var_1 = !func_1(u_input.e.zz, Struct_3(Struct_2(true, var_0), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, -1371f, 1015f, 2230f))), _wgslsmith_add_u32(~u_input.c, ~var_0)), select(1i, countOneBits(1i), true));
    var_1 = select(!(!vec3<bool>(true, false, true && var_1.x)), select(!vec3<bool>(true, all(vec3<bool>(var_1.x, false, false)), !var_1.x), vec3<bool>(!(!var_1.x), func_1(u_input.e.zx, Struct_3(Struct_2(true, 1u), false, vec4<f32>(-1133f, -2275f, -817f, 719f), 4294967295u), ~19811i).x, true), !(!vec3<bool>(var_1.x, var_1.x, false))), var_1.x);
    var_1 = vec3<bool>(func_1(~(max(u_input.e.zx, u_input.e.xz) >> (vec2<u32>(var_0, 1u) % vec2<u32>(32u))), Struct_3(Struct_2(true, u_input.a), (var_1.x && false) | true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, 856f, -775f, -1026f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1408f, 938f, -1000f, 1346f))), min(u_input.e.x, abs(var_0))), _wgslsmith_sub_i32(1i, select(_wgslsmith_add_i32(1i, 13900i), -33110i, true))).x, true, var_1.x);
    return ~(~(~62381u << ((var_0 << (var_0 % 32u)) % 32u))) ^ (min(u_input.a, ~countOneBits(u_input.a)) ^ ~(~_wgslsmith_mod_u32(u_input.b, u_input.d)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_5(Struct_3(Struct_2(true, ~(~u_input.e.x)), false, vec4<f32>(_wgslsmith_f_op_f32(abs(-926f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(356f, 2103f)))), _wgslsmith_f_op_f32(sign(-358f)), -894f), u_input.d), Struct_2(true, 4294967295u));
    var_0 = Struct_5(Struct_3(Struct_2(!(!var_0.b.a), u_input.a), !var_0.a.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c.x), var_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.c.x)) - _wgslsmith_f_op_f32(157f + -389f))), u_input.e.x), Struct_2(var_0.a.b, var_0.a.a.b | countOneBits(func_3())));
    let var_1 = ~4294967295u;
    var var_2 = Struct_1(var_0.a.c.x, !((var_0.a.c.x != var_0.a.c.x) || true), ~(-55372i), select(~(_wgslsmith_clamp_vec2_u32(u_input.e.xy, u_input.e.xy, u_input.e.wz) >> (vec2<u32>(6022u, 0u) % vec2<u32>(32u))), u_input.e.yx >> (abs(vec2<u32>(var_1, 4294967295u)) % vec2<u32>(32u)), var_0.b.a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(984f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1098f)) - var_2.a)) * _wgslsmith_div_f32(812f, var_2.a));
    return Struct_3(var_0.a.a, false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.a.c - vec4<f32>(var_0.a.c.x, 1399f, -1828f, -3019f)))), _wgslsmith_f_op_vec4_f32(round(var_0.a.c)))))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, ~(u_input.b >> ((124167u & u_input.c) % 32u)) >= 4294967295u, true);
    var var_1 = false;
    var_1 = false;
    var var_2 = -52280i;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-411f, _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, -1467f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - -1811f), _wgslsmith_f_op_f32(2908f + -1000f)))));
    var_1 = select(any(!select(var_0, func_1(u_input.e.yy, Struct_3(Struct_2(false, 1u), var_0.x, vec4<f32>(-1577f, var_3.x, var_3.x, 1398f), u_input.b), -63074i), func_1(vec2<u32>(u_input.a, u_input.d), Struct_3(Struct_2(var_0.x, 41515u), var_0.x, vec4<f32>(-160f, var_3.x, var_3.x, var_3.x), 4294967295u), 0i))), false, false);
    let var_4 = func_1(u_input.e.yw, func_2(), 0i).yz;
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, max(abs(-61638i << (u_input.e.x % 32u)), firstLeadingBit(~2569i)), countOneBits(-3595i), -1i), vec4<i32>(1i, -15599i, _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(-15369i, 18496i, 26390i), firstLeadingBit(2147483647i)), i32(-1i) * -(i32(-1i) * -44964i)));
    var var_5 = Struct_3(Struct_2(false, u_input.d), !(_wgslsmith_f_op_f32(abs(func_2().c.x)) >= _wgslsmith_f_op_f32(-1207f * -155f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_3.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) + var_3.x)), _wgslsmith_f_op_f32(-306f + var_3.x), -306f, var_3.x), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(reverseBits(55972i) ^ (1i >> (var_5.d % 32u)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(-2147483647i, -4411i, 1i))), -30578i, -countOneBits(-16340i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.c.x) - 642f), -vec2<i32>(1i, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1342f)));
}

