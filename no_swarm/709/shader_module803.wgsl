struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(38316u, u_input.d.x, 0u, u_input.d.x)), ~vec4<u32>(61463u, 59603u, u_input.c.x, u_input.c.x)), abs(max(vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 47069u))))), ~max(abs(~vec4<u32>(4294967295u, u_input.d.x, 19607u, 1u)), vec4<u32>(0u, u_input.c.x & 0u, 48742u, 76264u)));
    global0 = Struct_1(!(!select(vec2<bool>(true, global0.a.x), select(global0.a, vec2<bool>(true, global0.b.x), vec2<bool>(false, arg_0)), all(vec4<bool>(true, global0.a.x, true, true)))), !select(!vec3<bool>(global0.a.x, true, false), select(!vec3<bool>(arg_0, arg_0, global0.a.x), vec3<bool>(true, true, true), arg_0), all(vec2<bool>(arg_0, arg_0))));
    let var_1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1118f)) - _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))));
    let var_2 = Struct_1(!select(select(select(global0.a, global0.b.xz, vec2<bool>(arg_0, true)), select(vec2<bool>(true, true), vec2<bool>(global0.b.x, global0.a.x), true), arg_0), select(!vec2<bool>(arg_0, arg_0), !global0.b.xz, select(vec2<bool>(arg_0, global0.a.x), vec2<bool>(global0.b.x, arg_0), global0.a)), _wgslsmith_f_op_f32(var_1 + var_1) < _wgslsmith_f_op_f32(f32(-1f) * -145f)), select(vec3<bool>(arg_0, any(select(vec4<bool>(global0.b.x, false, false, arg_0), vec4<bool>(arg_0, arg_0, global0.b.x, true), global0.b.x)), !global0.a.x), select(select(select(global0.b, global0.b, arg_0), select(vec3<bool>(true, global0.b.x, arg_0), global0.b, false), false), vec3<bool>(!arg_0, true, arg_0), !select(global0.b, vec3<bool>(false, true, global0.a.x), global0.b)), global0.a.x));
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, ~(~u_input.d.x) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.yz, var_0.ww), u_input.d.x) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~16358u, ~u_input.c.x), ~vec2<u32>(54682u, 0u)), abs(reverseBits(~u_input.c.x))), ~(~(~(~vec4<u32>(u_input.d.x, var_0.x, var_0.x, var_0.x)))));
    return countOneBits(vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(max(-16459i, 5732i), -u_input.b.x), -(-6411i ^ _wgslsmith_mult_i32(u_input.a.x, -1i))));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_4) -> vec2<i32> {
    global0 = Struct_1(select(select(arg_3.b.a, global0.a, true), !arg_3.b.b.xy, true), arg_3.b.b);
    var var_0 = -1000f;
    global0 = arg_3.b;
    global0 = arg_3.b;
    let var_1 = Struct_3(-arg_0, Struct_2(16409i, 1u, vec3<bool>(arg_3.b.b.x, _wgslsmith_f_op_f32(sign(-274f)) >= -1191f, !global0.a.x && (global0.a.x & arg_3.b.a.x))), u_input.b, ~vec4<u32>(83912u, u_input.d.x, 4457u, ~(~4294967295u)), Struct_1(arg_3.b.b.xy, vec3<bool>(global0.b.x, global0.b.x, true)));
    return -var_1.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_3 {
    global0 = Struct_1(global0.b.xx, !(!(!vec3<bool>(global0.a.x, arg_1.x, true))));
    let var_0 = Struct_1(arg_1, !global0.b);
    let var_1 = all(vec2<bool>(false, !arg_1.x));
    let var_2 = select(41669u, reverseBits(u_input.d.x & u_input.d.x), any(arg_1) | false);
    var var_3 = 1000f;
    return Struct_3(u_input.b.x, Struct_2(_wgslsmith_add_i32(u_input.b.x, ~(~u_input.b.x)), 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 15253u, arg_0.x, var_2), vec4<u32>(u_input.d.x, var_2, arg_0.x, arg_0.x) >> (vec4<u32>(var_2, u_input.d.x, 6417u, var_2) % vec4<u32>(32u))) % 32u), vec3<bool>(var_0.b.x, var_0.a.x || any(vec4<bool>(global0.b.x, true, true, var_0.a.x)), var_0.b.x)), ~func_4(_wgslsmith_dot_vec2_i32(~u_input.a.zw, u_input.a.wx), _wgslsmith_mult_vec3_i32(u_input.a.yzy, _wgslsmith_add_vec3_i32(u_input.a.zwz, u_input.a.zyw)), _wgslsmith_mult_vec3_i32(func_3(true, vec3<f32>(305f, -1001f, 520f)), _wgslsmith_mult_vec3_i32(u_input.a.wzy, u_input.a.wxx)), Struct_4(vec3<u32>(22018u, 32994u, 0u) ^ u_input.d, Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), var_0.b))), min(_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_0.x, arg_0.x, 7813u, 1u)), reverseBits(vec4<u32>(arg_0.x, var_2, u_input.d.x, u_input.c.x)) << (max(vec4<u32>(18214u, 0u, u_input.c.x, arg_0.x), vec4<u32>(4294967295u, 4647u, 1u, u_input.c.x)) % vec4<u32>(32u))), vec4<u32>(50555u, max(u_input.d.x, var_2), var_2, max(u_input.c.x, ~32516u))), var_0);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(vec2<u32>(~_wgslsmith_div_u32(abs(73981u), countOneBits(u_input.d.x)), ~u_input.c.x), global0.a);
    global0 = func_2(_wgslsmith_div_vec2_u32(abs(vec2<u32>(~4294967295u, 0u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_0.d.xw, u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d.x, var_0.b.b), vec2<u32>(21610u, 1u)))), select(func_2(firstLeadingBit(vec2<u32>(u_input.d.x, u_input.c.x)), !var_0.b.c.yy).b.c.xy, vec2<bool>(true, all(select(vec3<bool>(arg_1.x, true, var_0.e.a.x), global0.b, vec3<bool>(var_0.e.b.x, true, true)))), select(!select(vec2<bool>(var_0.b.c.x, global0.b.x), vec2<bool>(global0.a.x, false), vec2<bool>(arg_1.x, false)), !select(var_0.b.c.yy, var_0.b.c.zz, vec2<bool>(global0.b.x, global0.a.x)), true))).e;
    var var_1 = firstTrailingBit(func_2(_wgslsmith_sub_vec2_u32(select(_wgslsmith_add_vec2_u32(var_0.d.zx, vec2<u32>(var_0.b.b, var_0.d.x)), vec2<u32>(u_input.c.x, var_0.d.x), arg_0.x <= arg_0.x), u_input.c), arg_1).b.b);
    var var_2 = Struct_3(var_0.c.x, var_0.b, vec2<i32>(-1i) * -vec2<i32>(var_0.b.a, u_input.b.x), vec4<u32>(var_0.b.b, u_input.d.x, var_0.d.x, firstLeadingBit(_wgslsmith_add_u32(u_input.d.x, 55014u))), Struct_1(select(func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.b, u_input.c.x), var_0.d.xx), !global0.b.yx).b.c.zx, func_2(select(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(global0.b.x, true)), vec2<bool>(true, true)).e.b.zz, vec2<bool>(true, false)), func_2(u_input.c, vec2<bool>(var_0.b.c.x, !global0.b.x)).b.c));
    var var_3 = u_input.a.xyy;
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(i32(-1i) * -2147483647i, ~u_input.b.x, ~(-23141i) ^ u_input.b.x);
    let var_1 = -var_0.x;
    let var_2 = vec4<bool>(global0.b.x, !global0.a.x, _wgslsmith_sub_i32(~2802i, _wgslsmith_dot_vec4_i32(u_input.a | u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, u_input.a))) <= max(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, var_1, u_input.b.x), var_0), var_0.x), false);
    let var_3 = global0.b.x;
    var var_4 = Struct_4(~_wgslsmith_add_vec3_u32(u_input.d, u_input.d), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1175f, -751f, 1579f))), vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(min(430f, -706f)), -809f)), global0.a));
    let var_5 = Struct_4(_wgslsmith_sub_vec3_u32(u_input.d, func_2(_wgslsmith_div_vec2_u32(var_4.a.zx, vec2<u32>(var_4.a.x, 1u)), func_2(~var_4.a.zy, select(vec2<bool>(false, var_2.x), global0.b.xz, var_2.x)).e.a).d.wxz), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_4.a, reverseBits(vec3<u32>(0u, 34114u, var_4.a.x))), var_5.a), ~var_5.a.x, ~(~33659u), 25228u), vec2<i32>(-27403i, func_3(any(vec2<bool>(true, var_5.b.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(136f, -487f, -1002f))).x) << (vec2<u32>(_wgslsmith_mod_u32(24087u ^ var_4.a.x, _wgslsmith_sub_u32(u_input.c.x, var_5.a.x)), u_input.d.x) % vec2<u32>(32u)), func_3(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-834f, -1831f, _wgslsmith_f_op_f32(-623f + -704f)))).x, -641f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-426f + -855f), _wgslsmith_f_op_f32(-1143f * 2054f))), _wgslsmith_f_op_f32(select(-767f, _wgslsmith_f_op_f32(-1287f - -592f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(901f, -712f, var_5.b.b.x)) - _wgslsmith_f_op_f32(min(116f, -487f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f + 1000f) * 1295f))));
}

