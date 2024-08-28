struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -743f);
    let var_1 = ~select(7494i, countOneBits(-2147483647i), false) < (i32(-1i) * -(-44490i >> (max(u_input.c.x, u_input.c.x) % 32u)));
    var var_2 = Struct_2(Struct_1(u_input.b, ~vec4<i32>(-1i, -1i, u_input.b.x, -2147483647i)), u_input.c.x ^ ~(~u_input.c.x), vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, 188f)) * _wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 1438f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))) * var_0)), !select(vec4<bool>(any(vec2<bool>(true, false)), 12308u <= u_input.c.x, -479f > var_0, !var_1), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, var_1), select(vec4<bool>(var_1, false, false, arg_0.x), vec4<bool>(var_1, false, arg_0.x, var_1), vec4<bool>(var_1, arg_0.x, false, true))), true), select(select(select(select(arg_0, arg_0, false), arg_0, true), !(!arg_0), arg_0), arg_0, select(vec3<bool>(false, var_1, true), select(select(vec3<bool>(true, false, arg_0.x), arg_0, false), !vec3<bool>(true, var_1, var_1), false), vec3<bool>(var_0 <= 322f, false, true))));
    let var_3 = Struct_4(_wgslsmith_mod_u32(~69319u, 50998u));
    let var_4 = vec3<i32>(var_2.a.b.x, 26968i, -firstLeadingBit(1i));
    return reverseBits(~1u);
}

fn func_3(arg_0: u32) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), 443f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-629f, _wgslsmith_f_op_f32(floor(419f))))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1075f, _wgslsmith_f_op_f32(sign(var_0.x)), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(198f, -173f)))))));
    var var_2 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(803i, -1i, u_input.a), vec3<i32>(u_input.b.x, u_input.a, 27934i))), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, i32(-1i) * -1i)), u_input.c.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(202f, var_0.x, var_0.x, var_1) - vec4<f32>(var_0.x, var_1, var_0.x, var_0.x))) - vec4<f32>(var_1, -171f, _wgslsmith_f_op_f32(-176f * var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)))))), select(vec4<bool>(_wgslsmith_f_op_f32(-var_1) < var_0.x, true, true, (var_1 == var_1) && all(vec2<bool>(true, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), true), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false))), vec3<bool>(true, !(any(vec2<bool>(true, false)) | false), true));
    return Struct_3(Struct_2(Struct_1(u_input.b, select(vec4<i32>(-41334i, 0i, 4463i, var_2.a.a.x), ~var_2.a.b, !vec4<bool>(true, true, var_2.d.x, true))), u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(107f, var_0.x, var_0.x, -129f) * _wgslsmith_f_op_vec4_f32(var_2.c * vec4<f32>(-2167f, -414f, var_0.x, -409f)))), select(!(!vec4<bool>(true, var_2.e.x, var_2.e.x, var_2.e.x)), select(!var_2.d, select(var_2.d, var_2.d, vec4<bool>(false, false, var_2.d.x, var_2.d.x)), false), arg_0 <= _wgslsmith_sub_u32(arg_0, 4294967295u)), var_2.e), Struct_2(var_2.a, u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1395f, var_1, -791f, 302f)) + vec4<f32>(var_0.x, -718f, var_0.x, 901f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-198f, 1647f, var_2.c.x, var_2.c.x)))), var_2.d, var_2.e), Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.a.x, u_input.b.x, -28032i), select(vec3<i32>(-1i, var_2.a.a.x, var_2.a.a.x), vec3<i32>(16511i, 18345i, var_2.a.b.x), var_2.d.wzy)), select(var_2.a.b, vec4<i32>(0i, 26302i, var_2.a.a.x, -21496i) & var_2.a.b, !var_2.e.x)), 1u ^ arg_0, var_2.c, !var_2.d, !select(select(vec3<bool>(var_2.d.x, var_2.d.x, false), vec3<bool>(var_2.d.x, false, var_2.e.x), vec3<bool>(false, var_2.d.x, var_2.d.x)), !vec3<bool>(true, var_2.e.x, false), var_2.a.b.x < u_input.a)));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = ~(~u_input.c);
    var_0 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(36813u, var_0.x), vec2<u32>(arg_0.a.b, _wgslsmith_clamp_u32(arg_0.b.b, u_input.c.x, var_0.x)) ^ (vec2<u32>(4294967295u, 1u) << ((u_input.c | vec2<u32>(4294967295u, arg_0.a.b)) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.c.c.xy)))))) + arg_0.a.c.ww);
    var_0 = u_input.c;
    var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_0.c.b, arg_0.c.b), ~var_0.x), u_input.c), vec2<u32>(11812u, _wgslsmith_div_u32(~(~46790u), 1u)));
    return func_3(~func_2(arg_0.a.e));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: u32) -> vec4<i32> {
    let var_0 = arg_1.a.a.b;
    let var_1 = min(-(~_wgslsmith_add_i32(1i, firstLeadingBit(u_input.a))), 26933i);
    var var_2 = abs(_wgslsmith_mod_vec2_u32(abs(~u_input.c) & ~(vec2<u32>(43700u, u_input.c.x) >> (u_input.c % vec2<u32>(32u))), vec2<u32>(8245u << ((4294967295u & arg_1.b.b) % 32u), 43157u)));
    var var_3 = Struct_5(arg_1.a, Struct_2(Struct_1(arg_1.b.a.b.xxy, ~(-arg_1.a.a.a.b)), ~var_0, vec4<f32>(784f, arg_1.a.b.c.x, arg_1.a.b.c.x, _wgslsmith_f_op_f32(161f - _wgslsmith_f_op_f32(select(-390f, -1106f, true)))), !vec4<bool>(func_3(23518u).a.e.x, arg_1.a.c.d.x, true, arg_1.b.d.x == arg_1.a.c.e.x), arg_1.b.e));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(func_1(var_3.a).c.c, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.c.x), _wgslsmith_f_op_f32(abs(arg_1.a.c.c.x)), arg_1.a.c.c.x, _wgslsmith_f_op_f32(round(var_3.a.c.c.x))), _wgslsmith_f_op_vec4_f32(arg_1.a.b.c - arg_1.b.c))), !arg_1.b.d.x)));
    return vec4<i32>(_wgslsmith_sub_i32(21324i, var_1), arg_1.b.a.a.x, var_1, abs(_wgslsmith_clamp_i32(23775i, -12120i, 70421i))) >> (vec4<u32>(func_1(var_3.a).c.b, 4412u, 1u, arg_1.a.c.b) % vec4<u32>(32u));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(679f))));
    return func_3(~(u_input.c.x ^ 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_i32(~(~u_input.a ^ 2147483647i), u_input.b.x);
    let var_1 = func_5(Struct_1(u_input.b, func_4(1i, Struct_5(func_1(Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, -25654i, -1i), vec4<i32>(15209i, var_0, var_0, 19594i)), u_input.c.x, vec4<f32>(487f, -1000f, 1677f, -491f), vec4<bool>(true, false, false, false), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<i32>(u_input.b.x, 2147483647i, 45669i), vec4<i32>(u_input.a, u_input.b.x, -35229i, 4361i)), 49356u, vec4<f32>(-563f, 1000f, 755f, 700f), vec4<bool>(false, false, true, false), vec3<bool>(false, false, false)), Struct_2(Struct_1(u_input.b, vec4<i32>(u_input.b.x, var_0, u_input.b.x, var_0)), 28318u, vec4<f32>(-916f, 394f, 163f, 652f), vec4<bool>(false, false, false, false), vec3<bool>(true, true, false)))), func_3(9276u).c), _wgslsmith_sub_u32(u_input.c.x, 0u) | func_3(u_input.c.x).a.b)));
    let var_2 = ~(abs(vec3<u32>(0u, u_input.c.x, _wgslsmith_add_u32(43492u, 83387u))) << (~vec3<u32>(76399u, func_2(vec3<bool>(var_1.c.d.x, var_1.c.d.x, false)), ~4294967295u) % vec3<u32>(32u)));
    let var_3 = var_1.a.a.b | _wgslsmith_div_vec4_i32(select(var_1.a.a.b, var_1.a.a.b, func_3(var_2.x).b.d.x) ^ _wgslsmith_div_vec4_i32(var_1.c.a.b, _wgslsmith_sub_vec4_i32(var_1.a.a.b, vec4<i32>(-1i, var_1.b.a.b.x, var_1.a.a.b.x, var_0))), var_1.b.a.b);
    var var_4 = all(func_3(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_mod_u32(var_1.a.b, abs(0u)))).c.d);
    var_4 = any(var_1.a.d) & !var_1.a.d.x;
    var var_5 = -2147483647i;
    var_4 = false;
    var var_6 = !vec2<bool>(var_1.c.e.x, all(!var_1.a.d.zxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-169f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.c.x, 653f), -1201f) * _wgslsmith_f_op_f32(sign(-306f))))), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b.x, -2939i, var_1.b.a.b.x, 40560i), var_3), vec4<i32>(var_0, var_3.x, -42122i, u_input.b.x)), func_1(func_1(Struct_3(var_1.c, func_3(u_input.c.x).a, Struct_2(var_1.b.a, var_2.x, var_1.a.c, var_1.c.d, vec3<bool>(var_1.b.e.x, var_6.x, var_6.x))))).c.c, u_input.c.x, max(var_1.b.b, 1u) & func_1(func_3(~0u)).b.b);
}

