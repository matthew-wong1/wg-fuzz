struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 9467i, 17306i, 1i);

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> u32 {
    let var_0 = vec3<u32>(~17377u, countOneBits(~(~1u)), 4294967295u >> ((abs(~41719u) >> (_wgslsmith_clamp_u32(1u, 0u, ~4294967295u) % 32u)) % 32u));
    let var_1 = Struct_2(vec3<bool>(true, ~(~global0.x) != _wgslsmith_add_i32(-2147483647i, ~global0.x), all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x, false, false), select(global1.x, true, true)))), _wgslsmith_mult_u32(var_0.x, ~var_0.x & countOneBits(abs(var_0.x))), Struct_1(~_wgslsmith_mod_i32(u_input.a.x ^ u_input.b, -11296i), false, vec2<f32>(819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1473f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, 320f, -609f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, -335f, 1118f) - vec3<f32>(-750f, 1000f, 405f)), any(vec4<bool>(true, true, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-281f, -1000f, -900f))), vec3<f32>(382f, 1000f, -1000f)))), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(var_0.x, var_0.x), vec2<u32>(2117u, var_0.x)), ~var_0.zz, _wgslsmith_mult_vec2_u32(var_0.xx, vec2<u32>(0u, 4294967295u))) << (var_0.zx % vec2<u32>(32u))), Struct_1(29424i, any(global1.zyz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-302f, 434f), vec2<f32>(-1734f, 579f))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 358f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-831f, -1392f, 719f) - vec3<f32>(586f, -758f, -1238f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(234f, -1724f, -1054f), vec3<f32>(-1322f, 120f, 128f))))), var_0.xz), _wgslsmith_mod_i32(0i, ~select(arg_1.x, _wgslsmith_mod_i32(arg_1.x, 1i), true)));
    let var_2 = var_1.d;
    var var_3 = Struct_2(!global1.zzw, ~abs(~var_2.e.x << (~var_0.x % 32u)), var_1.d, Struct_1(_wgslsmith_dot_vec2_i32(arg_1, global0.zy), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.c.x, -648f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.d, vec3<f32>(var_1.c.d.x, var_1.d.c.x, var_2.c.x))))), vec2<u32>(var_2.e.x, var_2.e.x)), ~var_1.e);
    var var_4 = var_1;
    return var_3.d.e.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = (firstTrailingBit(vec2<u32>(1u, 1u)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 37576u), vec3<u32>(4294967295u, 0u, 0u)), ~4294967295u), vec2<u32>(1u, 1u))) & _wgslsmith_mult_vec2_u32(vec2<u32>(func_3(select(vec2<bool>(global1.x, global1.x), vec2<bool>(arg_0.x, false), global1.yy), global0.xx), ~1u), vec2<u32>(~0u, firstLeadingBit(1u)));
    let var_1 = !(!vec4<bool>(global1.x, !(u_input.b >= 17608i), arg_0.x, any(vec2<bool>(false, arg_0.x))));
    var var_2 = true;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-544f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-241f)) * _wgslsmith_f_op_f32(f32(-1f) * -837f)), true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1104f, 1000f)) - -757f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1761f) + -1175f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(149f * 1724f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1263f - 1058f), _wgslsmith_f_op_f32(step(283f, -1000f)))))), _wgslsmith_f_op_f32(363f * _wgslsmith_f_op_f32(step(-131f, _wgslsmith_f_op_f32(min(-680f, 632f)))))));
    var_2 = arg_0.x;
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(global1.zx, !func_2(global1.yx, vec3<i32>(u_input.a.x, -global0.x, firstLeadingBit(arg_0.a))), global1.xx);
    let var_1 = abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x), vec3<u32>(1u, arg_0.e.x, arg_0.e.x), vec3<u32>(arg_0.e.x, arg_0.e.x, 26599u)), firstLeadingBit(vec3<u32>(arg_0.e.x, arg_0.e.x, 4294967295u))), vec3<u32>(_wgslsmith_clamp_u32(91856u, arg_0.e.x, 54911u), 4294967295u, arg_0.e.x)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x)), max(~vec3<u32>(0u, 50704u, arg_0.e.x), ~vec3<u32>(13459u, arg_0.e.x, 22096u)), select(vec3<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x) << (vec3<u32>(4294967295u, arg_0.e.x, 68060u) % vec3<u32>(32u)), ~vec3<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x), select(vec3<bool>(global1.x, arg_0.b, true), vec3<bool>(true, global1.x, global1.x), true))), reverseBits(reverseBits(firstLeadingBit(vec3<u32>(4294967295u, arg_0.e.x, arg_0.e.x))))));
    global1 = vec4<bool>(any(global1.yxw), any(!select(select(vec4<bool>(arg_0.b, true, var_0.x, false), vec4<bool>(arg_0.b, var_0.x, arg_0.b, false), vec4<bool>(false, arg_0.b, global1.x, true)), vec4<bool>(false, arg_0.b, var_0.x, global1.x), all(vec4<bool>(global1.x, var_0.x, arg_0.b, global1.x)))), all(select(select(!vec4<bool>(var_0.x, global1.x, var_0.x, arg_0.b), !vec4<bool>(true, var_0.x, false, var_0.x), all(vec4<bool>(var_0.x, var_0.x, false, arg_0.b))), !(!vec4<bool>(false, false, global1.x, true)), select(!vec4<bool>(false, arg_0.b, true, true), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, false, false, true), global1.x), vec4<bool>(false, arg_0.b, true, var_0.x)))), all(var_0) == false);
    var var_2 = Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, global0.x, arg_0.a, -2147483647i)), vec4<i32>(_wgslsmith_add_i32(arg_0.a, 26462i), arg_0.a, arg_0.a, ~0i)) ^ arg_0.a, 22282i < _wgslsmith_sub_i32(1i, arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, arg_0.c.x) + vec2<f32>(arg_0.d.x, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, 755f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2428f * -1057f))), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c.x))))), arg_0.e);
    var_2 = Struct_1(arg_0.a, !(!var_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1296f, 1745f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1338f, -508f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(1347f)), _wgslsmith_f_op_f32(step(849f, arg_0.d.x)), _wgslsmith_f_op_f32(min(118f, arg_0.c.x)))))), var_1.yz);
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(-u_input.b, !global1.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -104f)), arg_0.c.x))), vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), arg_0.c.x), ~(max(~arg_0.e, ~vec2<u32>(arg_0.e.x, 49033u)) ^ ~vec2<u32>(59087u, 4294967295u)));
    let var_1 = -203f;
    let var_2 = var_0.c.x;
    let var_3 = !vec4<bool>(!(arg_0.b && (arg_0.d.x < var_1)), global1.x, arg_0.c.x < 614f, !(firstLeadingBit(-1i) == (-30431i & u_input.b)));
    var var_4 = vec4<bool>(func_1(Struct_1(~var_0.a, !(!global1.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(392f, -1000f), _wgslsmith_f_op_vec2_f32(-arg_0.d.yx), vec2<bool>(global1.x, false))), vec3<f32>(_wgslsmith_f_op_f32(-349f + var_1), _wgslsmith_f_op_f32(-var_1), arg_0.c.x), select(vec2<u32>(74313u, 86173u), min(vec2<u32>(arg_0.e.x, 13025u), var_0.e), true))).b, select(abs(reverseBits(global0.x)) > _wgslsmith_clamp_i32(0i, u_input.b, 2147483647i), false, u_input.a.x <= u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(882f + arg_0.c.x)) + -1040f) > _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(max(var_0.d.x, var_1))))), (_wgslsmith_mod_i32(u_input.b >> (79452u % 32u), var_0.a) ^ _wgslsmith_sub_i32(1i, -u_input.b)) <= global0.x);
    return ~(1u << (countOneBits(~19673u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(global1.x, select(abs(28481u) >= func_4(func_1(Struct_1(-26925i, true, vec2<f32>(377f, 102f), vec3<f32>(598f, -879f, -601f), vec2<u32>(1u, 0u)))), false, global1.x), all(!vec3<bool>(false, true, global0.x != -1i)), global1.x);
    global0 = -vec4<i32>(_wgslsmith_div_i32(u_input.a.x & 0i, -countOneBits(1i)), u_input.b, -2147483647i, 19094i);
    var var_0 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1310f - 831f), _wgslsmith_f_op_f32(f32(-1f) * -204f))))));
    var var_1 = Struct_2(global1.zyy, max(15334u, ~max(21154u, ~0u)), Struct_1(~global0.x, !func_2(global1.wy, select(vec3<i32>(u_input.b, 1i, global0.x), vec3<i32>(u_input.b, u_input.b, global0.x), true)).x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, 517f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -616f) * vec2<f32>(696f, -622f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(238f, 1240f))))), vec3<f32>(1985f, -457f, func_1(func_1(Struct_1(70925i, true, vec2<f32>(460f, -436f), vec3<f32>(-1501f, -1046f, -1097f), vec2<u32>(1865u, 98721u)))).d.x), ~vec2<u32>(4294967295u, func_1(Struct_1(global0.x, global1.x, vec2<f32>(463f, 1000f), vec3<f32>(1117f, 354f, 656f), vec2<u32>(1u, 0u))).e.x)), func_1(func_1(func_1(func_1(Struct_1(2147483647i, true, vec2<f32>(1522f, -949f), vec3<f32>(-1000f, -310f, -649f), vec2<u32>(1u, 73054u)))))), u_input.a.x);
    let var_2 = vec3<i32>(-abs(global0.x), ~global0.x, global0.x);
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(-1f);
    var var_5 = func_1(func_1(var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a);
}

