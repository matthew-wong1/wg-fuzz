struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: u32) -> u32 {
    let var_0 = any(select(vec3<bool>(true, !arg_0, true), !(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(false, arg_0, true))), false));
    let var_1 = Struct_2(select(select(!select(vec4<bool>(true, var_0, true, arg_0), vec4<bool>(var_0, arg_0, true, false), true), vec4<bool>(!var_0, select(false, arg_0, var_0), !var_0, arg_0 | false), arg_0), vec4<bool>(var_0, true, !var_0, arg_2.x >= _wgslsmith_f_op_f32(arg_2.x + -1296f)), var_0));
    var var_2 = Struct_3(false, ~(~9117u), -42014i);
    let var_3 = Struct_1(!select(var_1.a, !var_1.a, var_1.a), reverseBits(u_input.e) ^ firstTrailingBit(var_2.b));
    var_2 = Struct_3(var_0, _wgslsmith_add_u32(arg_3, 4294967295u), -10640i << (0u % 32u));
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(reverseBits(~(u_input.a.wz << (u_input.a.wx % vec2<u32>(32u)))), abs(u_input.a.yy)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_4 {
    let var_0 = Struct_3(all(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_3.a), vec4<bool>(arg_3.a, arg_0, true, arg_3.a), vec4<bool>(true, false, false, arg_3.a))) | arg_0, _wgslsmith_add_u32(func_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1.x, -1314f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1699f, 735f, 814f) + vec3<f32>(arg_1.x, -133f, arg_1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, arg_2, 948f, arg_2))))), _wgslsmith_add_u32(arg_3.b, 0u) | u_input.e), _wgslsmith_add_u32(~4294967295u, 1u)), 19949i);
    var var_1 = var_0;
    var var_2 = arg_2;
    let var_3 = vec4<u32>(var_1.b, ~u_input.a.x, ~arg_3.b, ~(~1u)) & ~(~(~vec4<u32>(var_0.b, 21887u, 76748u, u_input.e)));
    let var_4 = !select(vec2<bool>(true, !(!var_1.a)), select(!vec2<bool>(var_1.a, true), select(select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, arg_3.a), false), vec2<bool>(true, var_0.a), !arg_3.a), any(!vec3<bool>(true, false, arg_3.a))), select(vec2<bool>(!arg_3.a, false), vec2<bool>(true, true), true));
    return Struct_4(arg_0, Struct_2(select(!(!vec4<bool>(var_1.a, true, false, false)), vec4<bool>(!var_0.a, -1174f < arg_1.x, false, u_input.e != arg_3.b), vec4<bool>(false, select(false, false, false), true, true))), Struct_2(vec4<bool>(var_0.a, var_0.a, all(var_4), var_0.a)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(680f, 539f, 504f), vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(-645f - 1000f), _wgslsmith_f_op_f32(max(203f, -512f)), -563f), select(func_2(true, vec2<f32>(-737f, -2356f), 654f, Struct_3(true, 0u, arg_1)).c.a.xyz, vec3<bool>(arg_0.a, false, arg_2.a.x), true))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 393f, -699f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(785f, -1080f, -1123f), vec3<f32>(-1133f, 1000f, -818f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-505f, 1799f, -1251f) + vec3<f32>(1877f, 1624f, 989f)), !arg_2.a.wwz))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1859f, -353f, 1359f)))));
    var var_1 = select(!select(vec2<bool>(func_2(arg_0.b.a.x, var_0.zy, -1948f, Struct_3(true, 2880u, arg_1)).b.a.x, !arg_0.b.a.x), arg_2.a.zy, arg_0.c.a.x), arg_2.a.zz, vec2<bool>((arg_2.a.x && all(vec4<bool>(true, false, true, arg_2.a.x))) && arg_2.a.x, false));
    var var_2 = Struct_3(any(select(!vec4<bool>(false, true, true, var_1.x), vec4<bool>(arg_1 != arg_1, !var_1.x, false, all(arg_2.a.yzy)), select(arg_0.b.a.x, arg_0.a, false) & var_1.x)), 4294967295u, -57627i);
    let var_3 = var_0.zy;
    var var_4 = false;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<bool> {
    let var_0 = vec2<u32>(~u_input.a.x, ~arg_1) >> (((u_input.a.zz ^ firstLeadingBit(~u_input.a.wx)) << (u_input.a.yw % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = func_4(func_2(false, vec2<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(sign(-1564f))), arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), 1f), Struct_3(true, ~53730u, -u_input.b.x)), ~u_input.b.x, Struct_1(select(vec4<bool>(all(vec3<bool>(true, false, false)), select(true, false, false), true, var_0.x < var_0.x), vec4<bool>(true, true, true, true), ~1u <= ~arg_1), ~0u));
    let var_2 = Struct_2(vec4<bool>(false, !var_1.a, !((u_input.a.x >> (123343u % 32u)) > u_input.a.x), !var_1.b.a.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + -103f), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-1450f + arg_0), arg_0) + vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), -1163f, _wgslsmith_f_op_f32(-arg_0))), vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1521f - arg_0) - _wgslsmith_f_op_f32(select(-915f, arg_0, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(arg_0)), all(vec4<bool>(var_1.a, var_1.b.a.x, false, var_1.b.a.x))))), !var_2.a)));
    var var_4 = _wgslsmith_div_f32(423f, arg_0);
    return !var_2.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, false, false), true)), !any(func_1(284f, firstLeadingBit(u_input.e))), true, false);
    let var_1 = Struct_2(vec4<bool>(!all(vec4<bool>(true, var_0.x, var_0.x, false)), false, select(any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)) & func_2(var_0.x, vec2<f32>(-251f, -628f), 1972f, Struct_3(false, u_input.a.x, u_input.b.x)).a, var_0.x, false), max(4533u, _wgslsmith_mod_u32(u_input.e, 10923u)) > 1u));
    let var_2 = var_1;
    let var_3 = func_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(134f)))) * -1558f)), ~u_input.e);
    var var_4 = func_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1518f, 532f) + vec2<f32>(600f, 385f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1346f, -1030f)), !var_2.a.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-385f, 1004f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-521f - _wgslsmith_f_op_f32(f32(-1f) * -1056f)) * _wgslsmith_f_op_f32(137f - -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-692f))))))), Struct_3(true, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(u_input.a, u_input.a, var_1.a.x), select(vec4<u32>(59745u, u_input.e, u_input.a.x, 45858u), vec4<u32>(4294967295u, 0u, 47703u, u_input.e), var_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.e, u_input.a.x), vec4<u32>(u_input.e, u_input.a.x, 1u, 1u))), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(91244i, -2147483647i), -u_input.c.x), u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -668f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(863f, 1350f, true)) + _wgslsmith_f_op_f32(abs(-104f))) * 675f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-518f)))), 705f)), ~(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-9781i, -44040i, -2147483647i, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, -1i, u_input.b.x)), countOneBits(vec4<i32>(2147483647i, 0i, u_input.c.x, -36203i))) << (~(vec4<u32>(4294967295u, u_input.e, u_input.e, 1u) & u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1057f, -644f, 1829f, -690f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-251f, -428f, -913f, -442f) - vec4<f32>(-1056f, -204f, 634f, -1161f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1261f, 1115f, 1325f, 1081f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(813f, -434f, -498f, -123f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-320f, -952f, -229f, 416f) * vec4<f32>(869f, 776f, -188f, -646f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, -2626f, 1302f, 1000f)))))));
}

