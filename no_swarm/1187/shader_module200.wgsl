struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> f32 {
    return arg_1.b.x;
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = -1072f;
    var var_1 = _wgslsmith_mult_vec2_i32(select(select(vec2<i32>(firstTrailingBit(u_input.a), ~u_input.a), ~(~vec2<i32>(u_input.a, -31359i)), true), _wgslsmith_sub_vec2_i32(~(vec2<i32>(-13513i, u_input.d) & vec2<i32>(u_input.d, -2360i)), abs(-vec2<i32>(-44455i, 2147483647i))), !(!(!arg_0.zw))), vec2<i32>(u_input.a, 0i));
    var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(~(~(vec2<i32>(var_1.x, -505i) >> (vec2<u32>(31155u, 3752u) % vec2<u32>(32u)))), min(select(~vec2<i32>(u_input.a, var_1.x), vec2<i32>(-2147483647i, u_input.d) | vec2<i32>(var_1.x, 17702i), !vec2<bool>(arg_0.x, true)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, u_input.b), vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.b, u_input.d)))), vec2<i32>(40497i, var_1.x)), vec2<i32>(-u_input.a, ~firstLeadingBit(134i)));
    let var_2 = abs(_wgslsmith_mult_vec3_u32(~min(_wgslsmith_div_vec3_u32(vec3<u32>(67709u, 75727u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 0u)), vec3<u32>(u_input.c.x, u_input.c.x, 40993u) ^ vec3<u32>(1u, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, u_input.c.x)), max(vec3<u32>(70690u, 1u, u_input.c.x), vec3<u32>(1u, 2234u, u_input.c.x))) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 8451u, u_input.c.x), vec3<u32>(4294967295u, 0u, u_input.c.x) | vec3<u32>(u_input.c.x, 92944u, u_input.c.x))));
    let var_3 = 1203f;
    return select(vec4<bool>(any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), arg_0.wwz), arg_0.xzw)), all(!arg_0.zx), u_input.c.x <= ~(~var_2.x), all(select(!arg_0.wx, select(arg_0.xw, vec2<bool>(false, arg_0.x), arg_0.zy), arg_0.yw))), arg_0, select(select(vec4<bool>(arg_0.x, all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), all(vec2<bool>(true, true)), arg_0.x), arg_0, !select(arg_0, vec4<bool>(true, arg_0.x, arg_0.x, true), true)), arg_0, vec4<bool>(true, (450f <= var_3) & arg_0.x, arg_0.x, true)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = abs(abs(u_input.b));
    let var_1 = _wgslsmith_sub_u32(u_input.c.x & ~(~(~u_input.c.x)), ~(~u_input.c.x));
    let var_2 = Struct_4(select(~firstTrailingBit(vec4<u32>(0u, u_input.c.x, 38579u, var_1)), vec4<u32>(countOneBits(4294967295u), u_input.c.x, _wgslsmith_mod_u32(4294967295u, 2549u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), var_1)), !(!arg_2.b)), Struct_3(arg_2, vec2<u32>(26276u, ~4294967295u), select(-firstLeadingBit(vec4<i32>(var_0, 51623i, 11114i, -2147483647i)), vec4<i32>(u_input.d, u_input.d, 1i, 37043i) >> (max(vec4<u32>(1u, u_input.c.x, 35204u, u_input.c.x), vec4<u32>(u_input.c.x, var_1, u_input.c.x, 0u)) % vec4<u32>(32u)), true), ~abs(vec4<u32>(u_input.c.x, 1557u, 1u, var_1)) ^ _wgslsmith_div_vec4_u32(select(vec4<u32>(var_1, 4294967295u, u_input.c.x, 12030u), vec4<u32>(0u, var_1, var_1, u_input.c.x), arg_2.b), ~vec4<u32>(27989u, 4294967295u, 40941u, 44627u))), func_3(vec4<bool>(any(!vec2<bool>(arg_2.a, arg_2.b.x)), arg_2.a, 18141i != u_input.a, true)).wxx);
    let var_3 = _wgslsmith_dot_vec3_i32(~countOneBits(var_2.b.c.wzz | var_2.b.c.zxz) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(var_2.b.c.x, -2147483647i)) << (4294967295u % 32u), var_2.b.c.x | (var_2.b.c.x | -30748i), ~_wgslsmith_mod_i32(-1i, var_2.b.c.x)), var_2.b.c.wxy);
    var var_4 = Struct_5(Struct_2(Struct_1(arg_2.b.x, arg_2.b), vec2<f32>(_wgslsmith_f_op_f32(min(-380f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(min(arg_1, arg_0))), all(!arg_2.b.yxy)), Struct_2(Struct_1(true, !select(vec4<bool>(var_2.b.a.b.x, arg_2.a, true, var_2.b.a.b.x), var_2.b.a.b, arg_2.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 189f), vec2<f32>(arg_0, arg_0))))), func_3(vec4<bool>(true, true, func_3(vec4<bool>(arg_2.b.x, var_2.b.a.a, var_2.c.x, false)).x, var_2.b.a.a)).x), Struct_3(var_2.b.a, vec2<u32>(28012u, _wgslsmith_mod_u32(4294967295u & var_2.b.d.x, 0u)), vec4<i32>(-var_2.b.c.x, abs(-27672i >> (var_2.b.b.x % 32u)), u_input.a, abs(var_2.b.c.x)), var_2.a));
    return var_2.b;
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_4(arg_0.a, arg_0.b, vec3<bool>(!arg_0.b.a.a, arg_0.c.x, any(arg_0.c) || arg_0.c.x));
    let var_1 = arg_0;
    let var_2 = 494f;
    let var_3 = reverseBits(~_wgslsmith_dot_vec4_i32(arg_0.b.c, select(~vec4<i32>(1i, var_0.b.c.x, -80315i, -2147483647i), select(var_1.b.c, vec4<i32>(-1i, -2147483647i, 1i, -28501i), var_1.c.x), var_1.b.c.x == var_0.b.c.x)));
    var var_4 = _wgslsmith_mult_u32(max(var_1.a.x ^ var_1.b.d.x, _wgslsmith_add_u32(var_1.b.b.x, var_0.a.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * var_2)))), _wgslsmith_f_op_f32(-var_2), func_4(var_2, -279f, Struct_1(false && var_0.c.x, select(var_1.b.a.b, vec4<bool>(false, false, true, arg_0.b.a.b.x), true))).a).d.x);
    return var_1.b;
}

fn func_1(arg_0: u32) -> vec2<i32> {
    let var_0 = func_5(Struct_4(~vec4<u32>(u_input.c.x, ~8399u, ~arg_0, arg_0 << (0u % 32u)), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_4(vec4<u32>(4294967295u, u_input.c.x, 54806u, 14256u), Struct_3(Struct_1(false, vec4<bool>(false, true, true, true)), vec2<u32>(arg_0, arg_0), vec4<i32>(2057i, u_input.a, u_input.b, u_input.a), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u)), vec3<bool>(false, false, true)), Struct_2(Struct_1(false, vec4<bool>(false, false, false, false)), vec2<f32>(228f, -131f), false), u_input.b, vec3<u32>(51512u, arg_0, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(614f - 586f) - -323f), Struct_1(false, func_3(vec4<bool>(true, false, false, false)))), select(func_3(vec4<bool>(true, true, true, true)).yyw, vec3<bool>(func_3(vec4<bool>(true, true, true, false)).x, true, all(vec2<bool>(true, false))), any(vec4<bool>(false, false, false, false)))));
    let var_1 = all(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f + _wgslsmith_f_op_f32(step(732f, -1126f)))), 242f, var_0.a).a.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) - 1363f);
    var var_3 = 57737u;
    let var_4 = reverseBits(vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(var_0.b.x, 41930u | func_4(692f, 179f, var_0.a).b.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(0u, 88927u, 106283u)))));
    return vec2<i32>(var_0.c.x, 43686i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), ~max(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(u_input.b, u_input.a)), -select(vec2<i32>(1i, u_input.d), vec2<i32>(45304i, -16535i), true)));
    var var_1 = -1532f;
    var_0 = func_1(u_input.c.x);
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1533f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1031f)))), u_input.a <= ~min(var_0.x, -2147483647i)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-175f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(82626u, 9518u, u_input.c.x, u_input.c.x), vec4<u32>(1663u, u_input.c.x, 4711u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 25975u)), ~reverseBits(u_input.c.x))), ~vec4<u32>(func_4(1219f, _wgslsmith_f_op_f32(sign(936f)), func_5(Struct_4(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), Struct_3(Struct_1(false, vec4<bool>(true, true, false, false)), u_input.c, vec4<i32>(u_input.a, u_input.a, -87862i, -28791i), vec4<u32>(67359u, 26911u, 43695u, u_input.c.x)), vec3<bool>(true, true, false))).a).d.x, (u_input.c.x | u_input.c.x) >> (32006u % 32u), u_input.c.x, 56782u), ~(countOneBits(1i) | ((i32(-1i) * -31191i) ^ u_input.d)), _wgslsmith_sub_u32(4294967295u, ~u_input.c.x), max(abs(vec2<u32>(24120u, 91831u)), _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(56275u, u_input.c.x))) | ((u_input.c | ~vec2<u32>(4294967295u, 1u)) | _wgslsmith_add_vec2_u32(~u_input.c, u_input.c)));
}

