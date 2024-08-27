struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = u_input.c.wyw;
    var var_1 = Struct_1(!vec4<bool>(any(vec4<bool>(false, false, false, true)) & all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)) & all(vec2<bool>(false, false)), true, all(vec2<bool>(false, false)) && true));
    var var_2 = any(!select(!var_1.a.wz, !var_1.a.yx, select(select(var_1.a.wz, vec2<bool>(true, false), var_1.a.x), var_1.a.xy, !vec2<bool>(var_1.a.x, var_1.a.x))));
    let var_3 = var_1.a.x;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-570f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1061f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1133f, _wgslsmith_f_op_f32(-110f - -965f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-805f))))))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(max(min(countOneBits(u_input.c.xxz), ~u_input.c.wyx), u_input.c.zzw), vec3<u32>(~arg_3, _wgslsmith_dot_vec3_u32(countOneBits(~u_input.c.ywz), firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.b, 0u, 1u)))), arg_3), _wgslsmith_sub_vec3_u32(~(select(u_input.c.yxz, u_input.c.yww, true) << (~vec3<u32>(arg_3, 63747u, 1u) % vec3<u32>(32u))), u_input.c.yxw));
    var_0 = _wgslsmith_sub_vec3_u32(u_input.c.zxz, firstTrailingBit(u_input.c.yzz));
    let var_1 = Struct_2(-firstLeadingBit(u_input.a));
    var_0 = vec3<u32>(arg_3, func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -21599i, min(var_1.a, arg_2.x), countOneBits(-1i)), ~(~vec4<i32>(var_1.a, -32169i, -2147483647i, u_input.a)))), ~8392u << (u_input.c.x % 32u));
    let var_2 = (-52526i > ~(firstLeadingBit(-17454i) << (arg_3 % 32u))) & true;
    return _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(abs(~arg_3), _wgslsmith_mult_u32(u_input.b, firstTrailingBit(var_0.x)))), _wgslsmith_add_vec2_u32(u_input.c.xx, vec2<u32>(1u, _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(arg_3, u_input.c.x, 1u)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> vec3<bool> {
    var var_0 = 46724u;
    var_0 = ((_wgslsmith_div_u32(~arg_0, 0u) | 0u) << ((u_input.b | 4294967295u) % 32u)) >> (_wgslsmith_dot_vec2_u32(u_input.c.xz, _wgslsmith_add_vec2_u32(func_4(Struct_1(vec4<bool>(arg_1.a.x, false, true, arg_1.a.x)), 1776f, vec3<i32>(arg_3, arg_3, arg_3), func_3(vec4<i32>(u_input.a, arg_3, 0i, 1i))), u_input.c.zw)) % 32u);
    var_0 = ~_wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(~select(4294967295u, 43961u, arg_1.a.x), _wgslsmith_sub_u32(max(u_input.c.x, u_input.c.x), firstTrailingBit(1u))));
    var var_1 = Struct_2(-(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, -2147483647i), ~u_input.a) >> (reverseBits(_wgslsmith_div_u32(arg_0, 0u)) % 32u)));
    var_1 = Struct_2(_wgslsmith_div_i32(abs(_wgslsmith_mult_i32(39996i, 1i)), var_1.a));
    return arg_1.a.ywx;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    let var_0 = !func_2(abs(~(~1u)), Struct_1(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(264f, arg_3.x)) - arg_3.zw), u_input.a);
    var var_1 = Struct_1(!vec4<bool>(true, true, var_0.x, !any(var_0)));
    let var_2 = -373f;
    let var_3 = Struct_2(abs(arg_1.x));
    let var_4 = !select(!(!vec2<bool>(var_0.x, var_1.a.x)), vec2<bool>(true, var_0.x), true);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-363f, _wgslsmith_div_f32(arg_2, arg_2)))), all(vec4<bool>(any(var_1.a), !var_1.a.x, !var_0.x, var_1.a.x)))), 131f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-1024f, _wgslsmith_f_op_f32(func_1(~u_input.c.zz, vec2<i32>(u_input.a >> (4294967295u % 32u), min(u_input.a, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(536f, -891f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(563f, 617f, -825f, 517f) + vec4<f32>(-1251f, 189f, 1535f, -1714f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, 1625f, 1529f, 691f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -270f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), -615f), vec2<bool>(false, _wgslsmith_div_i32(30078i, 1705i) <= u_input.a))));
    var var_1 = select(vec4<bool>(true, false, true, all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))))), !vec4<bool>(true || (var_0.x < 1577f), true, true, 0u != (u_input.c.x << (0u % 32u))), !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, u_input.a <= u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)));
    var_1 = select(!(!(!select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, false, false)))), !select(vec4<bool>(true, true, !var_1.x, !var_1.x), vec4<bool>(!var_1.x, true, var_1.x, !var_1.x), select(vec4<bool>(false, var_1.x, false, true), !vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(var_1.x, false, var_1.x, false))), select(select(vec4<bool>(var_1.x, var_1.x, all(vec4<bool>(true, var_1.x, false, var_1.x)), true), !select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, false, false), vec4<bool>(false, var_1.x, true, var_1.x)), vec4<bool>(true, var_1.x, true, !var_1.x)), !vec4<bool>(var_1.x, true, false, var_1.x & var_1.x), vec4<bool>(var_1.x, true, !var_1.x, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(724f, -230f, 328f, -1433f), vec4<f32>(-290f, var_0.x, 157f, 883f)) + vec4<f32>(var_0.x, var_0.x, -503f, 549f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 840f, 1510f, -1000f)) * vec4<f32>(-837f, _wgslsmith_f_op_f32(round(-628f)), _wgslsmith_f_op_f32(249f + -1465f), -597f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -484f, 1192f, -1070f) - vec4<f32>(528f, 287f, 125f, -207f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 1126f, 958f), vec4<f32>(var_0.x, var_0.x, 810f, 2493f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1647f, 821f, 1247f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), any(vec4<bool>(var_1.x, true, true, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 290f, 139f) + vec4<f32>(var_0.x, -812f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(577f, -357f, var_0.x, 119f)))))));
    var var_3 = vec4<bool>(var_1.x, true, u_input.a >= -u_input.a, var_1.x);
    var var_4 = Struct_1(vec4<bool>(!var_1.x, true, all(!func_2(u_input.b, Struct_1(vec4<bool>(var_1.x, true, false, var_3.x)), var_0, u_input.a)), any(!(!vec4<bool>(var_3.x, true, false, true)))));
    var_3 = vec4<bool>(true, true, -44801i <= u_input.a, !(!any(select(vec2<bool>(false, var_4.a.x), vec2<bool>(false, true), false))));
    var var_5 = countOneBits(~(~86275u));
    var var_6 = u_input.c.wz;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, 0i, vec2<u32>(abs(20988u) << (1u % 32u), ~(~u_input.b) & (10123u >> (var_6.x % 32u))));
}

