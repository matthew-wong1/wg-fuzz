struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(firstTrailingBit(abs(u_input.c.ywz)) ^ abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 34005u, u_input.c.x), u_input.c.yzz)), vec3<u32>(9525u, _wgslsmith_div_u32(4294967295u | u_input.c.x, ~3992u), 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1089f, -1011f, -801f) - vec3<f32>(-954f, -472f, -359f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-978f, 851f, -1588f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, _wgslsmith_f_op_f32(ceil(478f)), _wgslsmith_f_op_f32(2158f + 1500f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1107f, -318f, 1566f) + vec3<f32>(-882f, -941f, 154f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, 1241f, 1222f))))), vec2<i32>(_wgslsmith_add_i32(35899i, 1944i) ^ u_input.e, u_input.e));
    let var_1 = select(i32(-1i) * -21885i, 0i, !(!(_wgslsmith_div_f32(495f, -510f) <= _wgslsmith_f_op_f32(-var_0.b.x))));
    var var_2 = vec3<bool>(true, true, any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, all(vec2<bool>(false, false))))));
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x) - var_0.b.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, _wgslsmith_f_op_f32(floor(243f)), _wgslsmith_f_op_f32(floor(var_4)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4, 891f, 753f), var_0.b, false)))) * vec3<f32>(605f, _wgslsmith_f_op_f32(-708f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - 1150f))), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1155f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = countOneBits(abs(~vec2<u32>(21958u, 0u))) >> (vec2<u32>(u_input.c.x << (arg_2.x % 32u), _wgslsmith_mod_u32(~4294967295u, arg_2.x)) % vec2<u32>(32u));
    var_0 = vec2<u32>(~25905u, 1u);
    var_0 = firstLeadingBit(u_input.c.xw) | vec2<u32>(abs(0u), _wgslsmith_mult_u32(select(0u, arg_2.x, var_0.x == 0u), select(4294967295u, 1u, true)));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_add_u32(arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 13363u), ~vec3<u32>(var_0.x, u_input.d.x, 4294967295u))), 4294967295u, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -994f), arg_0.x, arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(857f + arg_0.x), arg_0.x, arg_0.x)), u_input.a.wz);
    let var_2 = _wgslsmith_add_u32(arg_2.x, var_1.a.x) | var_0.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 664f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), arg_0.x)))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-747f * arg_0), arg_0))), !select(!arg_1.zxz, select(vec3<bool>(arg_1.x, true, false), select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_1.x, arg_1.x, true)), true), (arg_0 < arg_0) == true), u_input.c.wxz));
    var var_1 = arg_1;
    var var_2 = var_1.zy;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1579f - -461f))), arg_0, 1020f));
    let var_4 = min(0u, 4048u);
    return var_1.xxy;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = !vec3<bool>(arg_2, _wgslsmith_f_op_f32(2232f + _wgslsmith_f_op_f32(-arg_1.b.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -193f)), _wgslsmith_f_op_f32(609f - -1452f) > arg_1.b.x);
    var_0 = !(!(!vec3<bool>(true, any(vec3<bool>(arg_2, false, arg_2)), all(vec2<bool>(true, arg_2)))));
    var_0 = !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x) + arg_1.b.x)), select(vec4<bool>(arg_2, !arg_2, false, var_0.x), !(!vec4<bool>(false, false, arg_0, var_0.x)), true));
    let var_1 = u_input.a;
    var_0 = func_2(-1685f, !(!(!(!vec4<bool>(true, true, arg_0, arg_2)))));
    return 4294967295u;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(~max(u_input.c.zyw, vec3<u32>(~u_input.d.x, ~u_input.d.x, ~690u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-449f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) * 1f), -706f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-435f, 184f, -375f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-928f, -800f, 1191f))))), u_input.a.zx);
    let var_1 = var_0.a.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-329f * _wgslsmith_f_op_f32(f32(-1f) * -206f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1226f)) - _wgslsmith_f_op_f32(f32(-1f) * -1180f))))), -279f);
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, 1974f, var_2.x))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-136f, var_0.b.x, -233f), vec3<f32>(-1410f, -295f, var_0.b.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(var_2.x, 1636f, var_2.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1707f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(-1029f, 916f, 1000f))))));
    let var_3 = arg_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~u_input.c.xwy << ((vec3<u32>(u_input.d.x, 1u, 1u) ^ vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)) % vec3<u32>(32u))) ^ ~(~(~vec3<u32>(17422u, 70349u, 30805u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), firstTrailingBit(~vec2<i32>(-u_input.a.x, ~u_input.b)));
    var_0 = func_5(u_input.a.x << (abs(_wgslsmith_mult_u32(~31014u, abs(u_input.c.x))) % 32u), select(!(!all(vec4<bool>(true, true, false, true))), (u_input.b << (1u % 32u)) >= min(u_input.b, i32(-1i) * -25524i), true), select(vec3<bool>(false, select(true, true, true), func_1(true, Struct_1(vec3<u32>(9375u, var_0.a.x, u_input.c.x), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), u_input.a.xw), true) > _wgslsmith_add_u32(u_input.d.x, 1u)), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true || any(vec2<bool>(true, true)), !func_2(948f, vec4<bool>(true, true, true, true)).x), !select(true, true, true)), all(vec2<bool>(false, func_2(_wgslsmith_f_op_f32(round(var_0.b.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))).x)));
    var_0 = Struct_1(u_input.c.wxy, var_0.b, abs(select(u_input.a.xz, select(vec2<i32>(var_0.c.x, -1i), u_input.a.yz, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(var_0.a.x > u_input.d.x, u_input.d.x == u_input.c.x))));
    var_0 = Struct_1(u_input.c.xzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1691f, _wgslsmith_f_op_vec4_f32(func_4(var_0.b, vec3<bool>(false, false, true), vec3<u32>(u_input.d.x, 0u, 66060u))).x, _wgslsmith_f_op_f32(-1324f * 341f)))), -vec2<i32>(reverseBits(_wgslsmith_mod_i32(-12179i, u_input.a.x)), u_input.e));
    var var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(~(-12040i)) >> ((111320u << (1u % 32u)) % 32u), firstLeadingBit(27826i)), countOneBits(min(u_input.a.x ^ -10614i, max(~u_input.a.x, -u_input.b))), 3448u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -242f, var_0.b.x, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(332f, -2085f, var_1.x, -352f) + vec4<f32>(-136f, -1000f, 890f, 387f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-987f, var_0.b.x, 1381f, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.b.x, var_0.b.x, 2015f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xy - vec2<f32>(129f, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.b.x) - var_0.b.yx) + var_0.b.zx))))));
}

