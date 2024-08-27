struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(max(-609f, 1293f));
    var var_0 = Struct_1(all(vec2<bool>(arg_0.x, false)));
    var var_1 = Struct_2(!arg_0.x, false, Struct_1(false), Struct_1(true), ~abs(firstTrailingBit(abs(vec4<u32>(2319u, u_input.c.x, u_input.b, 57897u)))));
    var var_2 = var_1.e.x;
    let var_3 = var_1.c;
    return _wgslsmith_f_op_f32(2333f + 1000f);
}

fn func_2() -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(533f - _wgslsmith_f_op_f32(func_3(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -392f)) * 1f) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -668f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-265f))))), (~(38544u << (0u % 32u)) == ~firstLeadingBit(u_input.b)) != true, false, true);
    var_0 = !vec4<bool>(any(select(var_0.zw, !var_0.yy, select(var_0.ww, vec2<bool>(var_0.x, false), var_0.yz))), all(var_0.xz), all(select(var_0.zx, var_0.wz, var_0.x)) & var_0.x, all(select(var_0.xz, var_0.zy, vec2<bool>(var_0.x, true))));
    let var_1 = Struct_2(var_0.x, false, Struct_1(false), Struct_1(!(!all(vec3<bool>(true, var_0.x, true)))), ~(~vec4<u32>(_wgslsmith_add_u32(18908u, 0u), min(u_input.b, u_input.c.x), u_input.b, ~4294967295u)));
    var var_2 = ~_wgslsmith_mult_i32(-4442i, u_input.a.x);
    return ~var_1.e;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global0 = -1479f;
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~func_2(), vec4<u32>(~u_input.c.x, _wgslsmith_add_u32(1u, u_input.b), 33636u, func_2().x)), u_input.c.x);
    let var_1 = Struct_1(true && (_wgslsmith_add_u32(4294967295u, 22681u << (u_input.b % 32u)) > func_2().x));
    var var_2 = func_2().x;
    var var_3 = ~u_input.c;
    return var_1.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f - -798f)) * -656f);
    var var_1 = vec4<u32>(35761u, ~_wgslsmith_add_u32(~firstTrailingBit(17443u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 74892u, u_input.b), vec4<u32>(arg_1, 4294967295u, 1276u, 43964u)) >> (arg_1 % 32u)), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(~arg_1, arg_1), 6690u)), arg_1);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1016f)))))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)), _wgslsmith_f_op_f32(min(-2028f, _wgslsmith_f_op_f32(f32(-1f) * -1464f)))))), -1797f));
    let var_2 = min((~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(1i, 5146i), u_input.e.xx) << (vec2<u32>(u_input.b, _wgslsmith_clamp_u32(36568u, var_1.x, u_input.b)) % vec2<u32>(32u))) >> (vec2<u32>(arg_1, abs(var_1.x)) % vec2<u32>(32u)), vec2<i32>(-1i) * -u_input.e.zz);
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(-u_input.a, max(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.e.zy, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.a)), vec2<i32>(min(u_input.e.x, -2147483647i), _wgslsmith_sub_i32(u_input.a.x, -2147483647i))), vec2<i32>(-45963i, -24734i)));
    let var_1 = Struct_1(!(u_input.a.x <= (var_0 & var_0)) || !(~u_input.b != u_input.c.x));
    var var_2 = vec4<u32>(u_input.b, 50016u, u_input.b, 0u);
    let var_3 = vec4<i32>(~var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x ^ var_0, -1i ^ var_0), 4030i, max(8518i, u_input.a.x) >> (firstTrailingBit(18973u) % 32u)), vec3<i32>(-min(-1i, -1i), var_0, -2147483647i)), u_input.d, -18503i);
    var var_4 = var_1;
    let var_5 = var_4.a;
    let var_6 = func_4(!select(vec2<bool>(true, func_1(var_3)), vec2<bool>(true, true), vec2<bool>(!var_4.a, u_input.b == var_2.x)), 0u, true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true)))));
    let var_7 = Struct_2(!any(!vec2<bool>(var_1.a, false)), var_6.a, func_4(select(vec2<bool>(true, var_1.a), select(select(vec2<bool>(var_4.a, false), vec2<bool>(var_4.a, false), vec2<bool>(false, false)), !vec2<bool>(var_4.a, var_4.a), !vec2<bool>(var_4.a, var_4.a)), vec2<bool>(!var_1.a, !var_4.a)), 46749u, var_6.a), var_6, vec4<u32>(countOneBits(var_2.x), ~max(_wgslsmith_sub_u32(4294967295u, u_input.c.x), _wgslsmith_sub_u32(36850u, u_input.c.x)), 4294967295u, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(12314i, var_0), abs(var_3.wxw), countOneBits(select(u_input.c, abs(select(u_input.c, var_7.e.xww, var_4.a)), var_7.a)), _wgslsmith_f_op_f32(703f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_6.a, var_1.a, var_1.a))) + 1f)));
}

