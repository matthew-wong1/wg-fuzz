struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_2 = Struct_2(-1i, vec2<u32>(0u, 52613u));

var<private> global2: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.b >> (select(firstTrailingBit(vec2<u32>(4294967295u, 17589u)), ~(~global1.b), select(arg_0.d.yy, vec2<bool>(true, true), global1.a == u_input.d.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2, abs(u_input.a)), 1u), ~global1.b.x));
    var var_1 = _wgslsmith_mod_vec3_u32(arg_0.b.yzz, min(min(vec3<u32>(u_input.b.x, 4294967295u, 41238u) & (vec3<u32>(global1.b.x, u_input.a, var_0) & vec3<u32>(95033u, 4294967295u, arg_0.c)), arg_0.b.xwy), _wgslsmith_mod_vec3_u32(vec3<u32>(~30445u, u_input.b.x, 0u >> (1u % 32u)), vec3<u32>(~77504u, ~21288u, arg_2 | u_input.a))));
    var var_2 = vec2<f32>(-1277f, -819f);
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -220f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-145f, -355f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1146f, var_2.x) - vec2<f32>(var_2.x, 1162f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-744f, var_2.x)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x))));
    global0 = -2147483647i;
    return all(vec4<bool>(!(-1i < arg_3), true, arg_0.a, !any(!vec4<bool>(false, true, arg_0.d.x, true))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.b.x;
    var var_1 = !(!vec4<bool>(any(vec3<bool>(true, arg_2.x, true)), false, false, arg_2.x));
    var_1 = vec4<bool>(select(true, all(vec2<bool>(false, !arg_2.x)), func_3(Struct_1(arg_2.x, _wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, arg_1.b.x, 1u), vec4<u32>(u_input.a, 54851u, arg_1.b.x, u_input.a)), 6937u << (0u % 32u), !vec3<bool>(true, true, arg_2.x), u_input.d.zzy ^ vec3<i32>(global1.a, -40544i, global1.a)), abs(u_input.d.xwy), 0u, -(~arg_1.a))), var_1.x, arg_2.x & true, false);
    global1 = arg_1;
    var var_2 = Struct_1(false, vec4<u32>(global1.b.x, 4294967295u, ~4294967295u, global1.b.x), ~arg_1.b.x >> (~0u % 32u), vec3<bool>(all(select(!var_1.wz, var_1.wx, !vec2<bool>(arg_2.x, true))), arg_2.x, any(vec4<bool>(var_1.x & var_1.x, true, var_1.x, true))), firstTrailingBit(vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d) << (0u % 32u), 0i)));
    return Struct_1(true, vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_2.b.xw), vec2<u32>(global1.b.x, _wgslsmith_dot_vec3_u32(var_2.b.yxx, vec3<u32>(arg_1.b.x, arg_1.b.x, global1.b.x)))), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30832u, 16079u, 0u, 0u), vec4<u32>(global1.b.x, u_input.a, 4294967295u, arg_1.b.x)), 0u), 1u), _wgslsmith_dot_vec2_u32(var_2.b.wz, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 73253u), global1.b, global1.b), vec2<u32>(38528u, 21626u) << (vec2<u32>(u_input.a, 27061u) % vec2<u32>(32u)))), u_input.b.x), 1u, var_1.zwz, vec3<i32>(-2147483647i, ~countOneBits(1i), ~arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(~global1.b.x, 1u);
    let var_1 = _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1395f, 866f))) + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f - 2005f)))))), arg_0.a));
    global0 = -29244i;
    let var_2 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)) + 1698f))));
    let var_3 = ~abs(arg_0.b.wyy) << (~(vec3<u32>(~68079u, _wgslsmith_add_u32(0u, u_input.b.x), arg_0.c) ^ ~(~vec3<u32>(u_input.b.x, arg_0.b.x, arg_0.b.x))) % vec3<u32>(32u));
    return Struct_3(0u, Struct_1(arg_0.d.x, arg_0.b, max(1u, reverseBits(~7926u)), !arg_0.d, vec3<i32>(_wgslsmith_mod_i32(arg_0.e.x, 1i), _wgslsmith_mod_i32(~u_input.c, u_input.c), u_input.d.x)));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    global1 = Struct_2(arg_2.b.e.x << (~(arg_3.c | ~4294967295u) % 32u), vec2<u32>(4278u, ~arg_3.b.x));
    let var_0 = Struct_2(~(u_input.d.x >> (_wgslsmith_div_u32(arg_1, min(1u, 51878u)) % 32u)), ((~vec2<u32>(arg_2.a, 0u) | vec2<u32>(30674u, global1.b.x)) & global1.b) << (arg_2.b.b.yz % vec2<u32>(32u)));
    let var_1 = Struct_2(-_wgslsmith_mult_i32(-u_input.d.x, _wgslsmith_mult_i32(1i, var_0.a)), select(~arg_3.b.wy, select(arg_2.b.b.wx << (~vec2<u32>(arg_3.c, var_0.b.x) % vec2<u32>(32u)), global1.b, func_2(-1i, Struct_2(arg_2.b.e.x, vec2<u32>(arg_2.a, arg_1)), func_4(Struct_1(false, arg_2.b.b, var_0.b.x, vec3<bool>(false, false, arg_3.d.x), vec3<i32>(arg_2.b.e.x, 0i, 1i)), vec2<f32>(-2760f, arg_0)).b.d.xz).d.zy), select(select(arg_3.d.zx, select(arg_2.b.d.zz, arg_2.b.d.zy, arg_2.b.d.yy), true), arg_3.d.yx, true)));
    let var_2 = _wgslsmith_add_u32(arg_2.a, 0u);
    global1 = Struct_2(global1.a, ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), var_1.b), var_2 >> (arg_2.b.c % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), 702f);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<f32>) -> vec2<bool> {
    global2 = u_input.d.x;
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(1916f - _wgslsmith_f_op_f32(exp2(arg_2.x))), 0u, func_4(func_2(24075i, Struct_2(u_input.d.x, vec2<u32>(3685u, global1.b.x)), vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(arg_2 * arg_2)), func_2(-global1.a, Struct_2(arg_0.x, vec2<u32>(1u, 0u)), vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(trunc(1599f)))));
    global0 = -_wgslsmith_mult_i32(2147483647i, 1i) >> (1u % 32u);
    var var_1 = -1692f;
    var var_2 = func_4(Struct_1(true, ~(~vec4<u32>(9755u, 0u, u_input.a, global1.b.x)), func_2(countOneBits(_wgslsmith_div_i32(-44723i, global1.a)), Struct_2(u_input.c, u_input.b << (vec2<u32>(u_input.b.x, global1.b.x) % vec2<u32>(32u))), vec2<bool>(true, true)).b.x, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), -(u_input.d.wxx >> (vec3<u32>(u_input.a, 4294967295u, 46544u) % vec3<u32>(32u)))), arg_2);
    return select(var_2.b.d.yx, var_2.b.d.yy, select(true, true, ~4999u < global1.b.x));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = func_2(~var_0, arg_0, func_2(u_input.d.x, arg_0, vec2<bool>(true, true)).d.yz);
    global0 = arg_0.a;
    var var_2 = u_input.d.zw;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)) + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(700f)), _wgslsmith_f_op_f32(min(-211f, -190f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(599f - 943f) + -544f)))));
    return Struct_2(u_input.d.x, abs(var_1.b.xy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(Struct_2(-global1.a, select(vec2<u32>(0u, firstLeadingBit(u_input.b.x)), u_input.b, select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(u_input.d.xy, 348f, vec2<f32>(-1527f, 1000f))))), ~(~(~reverseBits(vec3<u32>(0u, u_input.a, u_input.b.x)))));
    global0 = global1.a;
    var var_0 = func_4(Struct_1(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, 30229u, 29620u, u_input.a) | vec4<u32>(4294967295u, 987u, 4294967295u, 36434u), ~vec4<u32>(u_input.a, u_input.a, 1u, 0u) >> (~vec4<u32>(47392u, global1.b.x, u_input.a, 51933u) % vec4<u32>(32u))), global1.b.x, vec3<bool>(true, true, true), -max(_wgslsmith_mult_vec3_i32(u_input.d.zyy, u_input.d.wyx), ~vec3<i32>(-1i, global1.a, -56771i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -764f), 187f))).b;
    let var_1 = Struct_1(var_0.a, _wgslsmith_clamp_vec4_u32(var_0.b, var_0.b, ~min(var_0.b, vec4<u32>(u_input.a, u_input.b.x, 8795u, u_input.a))), ~u_input.b.x, func_4(func_2(u_input.c, func_6(func_6(Struct_2(-2147483647i, var_0.b.zy), vec3<u32>(8823u, var_0.c, u_input.b.x)), countOneBits(vec3<u32>(global1.b.x, 9528u, 1u))), !var_0.d.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, _wgslsmith_f_op_f32(f32(-1f) * -986f)))).b.d, vec3<i32>(1i, _wgslsmith_mod_i32(~0i >> (_wgslsmith_sub_u32(global1.b.x, global1.b.x) % 32u), -firstLeadingBit(-2147483647i)), ~u_input.d.x ^ ~(-u_input.c)));
    var_0 = func_2(abs(-_wgslsmith_add_i32(var_1.e.x, -1i)) ^ -21721i, func_6(Struct_2(_wgslsmith_mult_i32(~(-1i), -70894i), var_0.b.xx), abs(var_1.b.wyx)), func_4(Struct_1(true, var_0.b, ~39094u, vec3<bool>(var_0.a || true, true, any(var_1.d)), max(vec3<i32>(-5013i, global1.a, var_0.e.x), var_0.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))).b.d.xy);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(-1518f, 13139u, Struct_3(var_1.b.x, Struct_1(var_0.a, var_0.b, 12053u, vec3<bool>(true, true, false), var_1.e)), var_1)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-686f, -1000f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, -1002f), _wgslsmith_div_f32(318f, _wgslsmith_f_op_f32(f32(-1f) * -1219f)), var_0.a))));
    var_0 = Struct_1(true, ~abs(var_1.b), u_input.b.x, !func_4(Struct_1(false, var_0.b, countOneBits(1u), vec3<bool>(true, false, false), vec3<i32>(17996i, u_input.d.x, var_1.e.x) << (vec3<u32>(var_0.b.x, var_1.c, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, var_2))))).b.d, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(select(_wgslsmith_sub_vec3_u32(var_0.b.xxx, vec3<u32>(18752u, global1.b.x, 1u)), firstLeadingBit(var_1.b.yzy), true), ~(~(vec3<u32>(72818u, u_input.b.x, var_1.b.x) ^ vec3<u32>(1u, var_0.b.x, var_1.b.x)))), var_0.e, -reverseBits(var_1.e.x));
}

