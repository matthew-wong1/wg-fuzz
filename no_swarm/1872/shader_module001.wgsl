struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32) -> bool {
    global0 = _wgslsmith_dot_vec4_i32(arg_0.a.c, vec4<i32>(i32(-1i) * -39865i, -_wgslsmith_clamp_i32(arg_0.a.c.x, ~0i, _wgslsmith_mod_i32(arg_0.a.c.x, 2147483647i)), 1i, max(firstLeadingBit(select(arg_0.a.c.x, -35878i, false)), max(~(-30089i), _wgslsmith_mult_i32(u_input.c.x, 67655i)))));
    var var_0 = arg_2;
    let var_1 = _wgslsmith_dot_vec3_u32(arg_1.wzz, arg_0.a.b);
    let var_2 = u_input.c;
    var var_3 = max(arg_2, var_1) >> (~_wgslsmith_sub_u32(_wgslsmith_div_u32(select(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.d), arg_0.a.b.x & arg_0.a.b.x), arg_1.x | 45030u) % 32u);
    return true;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2099f);
    let var_1 = Struct_2(Struct_1(1140f, u_input.b << (u_input.b % vec3<u32>(32u)), -(~vec4<i32>(31082i, u_input.c.x, u_input.a, u_input.c.x)), !func_3(Struct_2(Struct_1(812f, u_input.b, vec4<i32>(u_input.c.x, u_input.a, -2147483647i, -2147483647i), true, u_input.c.x)), vec4<u32>(arg_0, 56552u, u_input.d, 4294967295u), 10145u), _wgslsmith_mult_i32(u_input.c.x, -67397i)));
    var var_2 = Struct_2(var_1.a);
    var_2 = var_1;
    var var_3 = false;
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1557f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1209f)), _wgslsmith_f_op_f32(f32(-1f) * -295f), arg_0.a, arg_1.b.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.e.a.a)), arg_0.b, countOneBits(~arg_1.b.c), true, ~arg_0.e)), arg_0.d, _wgslsmith_div_u32(arg_0.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.b.x, arg_0.b.x, 58865u), arg_0.b) ^ 74283u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.b.b, u_input.b), arg_0.b))), true);
    let var_1 = Struct_4(!(!(!select(vec4<bool>(arg_1.e.a.d, false, arg_1.e.a.d, false), vec4<bool>(true, var_0.c, true, arg_1.c.d), var_0.c))), 48441u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(207f, 1093f)))), ~(~vec3<u32>(arg_0.b.x, 0u, arg_1.a.x)), ~abs(var_0.b.a.c), false, -33748i), ~firstTrailingBit(arg_1.e.a.c), vec4<i32>(_wgslsmith_mult_i32(arg_1.b.e, _wgslsmith_div_i32(-28618i, -8339i)), ~arg_0.c.x, ~1i, _wgslsmith_add_i32(u_input.c.x, ~1i)));
    let var_2 = _wgslsmith_div_vec3_i32(-(~vec3<i32>(0i, arg_0.e, _wgslsmith_add_i32(2147483647i, u_input.a))), ~_wgslsmith_div_vec3_i32(arg_0.c.yxy, min(arg_0.c.wxw, var_0.b.a.c.xww)));
    global0 = arg_1.b.e;
    let var_3 = abs(vec3<u32>(var_0.d, arg_1.a.x, 4859u));
    return _wgslsmith_mult_i32(~func_2(~var_0.d).e >> (var_3.x % 32u), ~_wgslsmith_mult_i32(-_wgslsmith_clamp_i32(1i, 2147483647i, u_input.a), _wgslsmith_add_i32(arg_0.e, -8477i)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(func_4(func_2(0u), Struct_3(u_input.b, func_2(u_input.b.x), Struct_1(-1502f, vec3<u32>(4294967295u, u_input.b.x, 73247u), vec4<i32>(u_input.c.x, 25507i, 2147483647i, u_input.c.x), true, u_input.c.x), -32917i, Struct_2(Struct_1(435f, arg_0.zwz, vec4<i32>(-1731i, u_input.c.x, 32049i, u_input.a), false, u_input.a)))), ~u_input.a), -u_input.c);
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(47313u, _wgslsmith_mult_u32(u_input.b.x, countOneBits(u_input.d))), min(u_input.b.zy, vec2<u32>(u_input.b.x ^ arg_0.x, 4294967295u)) >> (vec2<u32>(max(21423u, 1u), 40197u << ((arg_0.x & 44361u) % 32u)) % vec2<u32>(32u)));
    global0 = u_input.c.x;
    var_0 = max(~(~u_input.b.xz), ~(~(~(~vec2<u32>(var_0.x, arg_0.x)))));
    let var_1 = vec2<u32>(min(~min(~5764u, abs(1u)), _wgslsmith_mod_u32(u_input.d, 1u)), ~(~(~(arg_0.x | 4294967295u))));
    return select(select(vec4<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), (-1285i >= u_input.a) & func_2(1u).d, false), vec4<bool>(true, !all(vec3<bool>(false, true, true)), !(arg_0.x == 85801u), true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), !select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(~vec4<u32>(u_input.d, u_input.d, 28237u, 1u) | firstLeadingBit(vec4<u32>(57918u, u_input.d, 7452u, u_input.b.x))), 4294967295u, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1609f * -414f), 227f)), firstLeadingBit(vec3<u32>(u_input.d, u_input.b.x, 11178u) >> (select(vec3<u32>(4294967295u, u_input.d, 114930u), u_input.b, true) % vec3<u32>(32u))), min(min(vec4<i32>(-29714i, u_input.c.x, -3219i, -16422i), vec4<i32>(u_input.a, -22155i, u_input.c.x, -1i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(13088u, 0u, 0u, 0u), vec4<u32>(25085u, u_input.b.x, 35676u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, u_input.a, 1i, u_input.a), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, 38982i))), all(vec3<bool>(true, false, false)), ~_wgslsmith_sub_i32(u_input.a, ~u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(17019i, min(u_input.c.x, 19841i), u_input.a, u_input.c.x) >> (vec4<u32>(~1u, u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 107710u), u_input.b.yx), 1u) % vec4<u32>(32u)), select(vec4<i32>(-28630i, min(2147483647i, 2147483647i), u_input.c.x, u_input.a), -vec4<i32>(1i, -58004i, u_input.a, -1i) >> (reverseBits(vec4<u32>(u_input.b.x, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u)), vec4<bool>(true, false, true, func_1(vec4<u32>(u_input.b.x, u_input.d, u_input.d, u_input.d)).x))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(2147483647i, u_input.a) ^ ~80627i), i32(-1i) * -_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(~(-2147483647i), 66291i), -(-59344i >> ((u_input.d << (u_input.b.x % 32u)) % 32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.a, 125f, -605f, var_0.c.a))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(998f, -188f, 231f, var_0.c.a), vec4<f32>(-665f, 105f, var_0.c.a, var_0.c.a))))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.c.a, 295f)))), var_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-104f, 268f)), _wgslsmith_f_op_f32(-var_0.c.a), var_0.c.a)));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, max(-(u_input.a >> (var_0.b % 32u)), -3388i), -1i), vec3<i32>(~abs(-25771i << (1u % 32u)), func_4(var_0.c, Struct_3(u_input.b, var_0.c, func_2(15367u), _wgslsmith_sub_i32(u_input.a, 1i), Struct_2(Struct_1(1528f, u_input.b, var_0.c.c, var_0.c.d, 17227i)))), max(var_0.d.x & select(3310i, 1i, true), func_4(Struct_1(429f, vec3<u32>(var_0.b, 21165u, 4294967295u), vec4<i32>(-1i, u_input.c.x, -10971i, 2147483647i), var_0.a.x, 1i), Struct_3(u_input.b, var_0.c, Struct_1(var_1.x, u_input.b, vec4<i32>(1i, -2147483647i, -16654i, u_input.a), true, u_input.a), 6284i, Struct_2(var_0.c))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(27365u, var_0.b, var_0.c.b.x, 0u), vec4<u32>(16338u, 0u, 1u, 66058u)) % 32u))));
    global0 = u_input.a;
    var var_3 = var_0;
    global0 = min(select(~_wgslsmith_dot_vec2_i32(var_3.c.c.xw, var_0.e.wz), 1500i, true), firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.e.x, 7716i), vec2<i32>(-2147483647i, -1i)), -var_3.e.zz))) << (~var_3.c.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, -320f, _wgslsmith_f_op_f32(trunc(1384f)), var_0.c.b.xy);
}

