struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = vec4<u32>(10139u, min(u_input.b, min(u_input.a | ~u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, u_input.a), u_input.b << (52280u % 32u)))), u_input.a, ~u_input.a);
    global0 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, -140f))) + vec2<f32>(906f, 915f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, -124f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1700f, arg_1))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000f) * vec2<f32>(arg_1, arg_1)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, -1113f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -253f))))));
    var var_2 = reverseBits(-3420i);
    var var_3 = Struct_5(select(select(vec4<bool>(global1.x && true, true, any(vec4<bool>(true, arg_0, arg_0, false)), global1.x), !(!vec4<bool>(arg_0, true, arg_0, false)), true & arg_0), !vec4<bool>(true, true, global1.x, global1.x), arg_0), max(vec4<u32>(u_input.b, abs(reverseBits(0u)), firstLeadingBit(reverseBits(8322u)), reverseBits(_wgslsmith_dot_vec2_u32(var_0.wz, vec2<u32>(u_input.a, var_0.x)))), vec4<u32>(u_input.b, abs(~1u), firstTrailingBit(4294967295u), u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25853u, u_input.b, u_input.a, u_input.b), vec4<u32>(10564u, 1u, 4294967295u, u_input.b)), _wgslsmith_add_u32(0u, 81077u), 32715u) & abs(vec3<u32>(0u, u_input.b, var_0.x)), vec3<u32>(reverseBits(1u), 42247u, var_0.x)));
    return any(vec3<bool>(any(select(select(vec4<bool>(false, var_3.a.x, false, true), var_3.a, false), vec4<bool>(false, true, false, var_3.a.x), select(vec4<bool>(var_3.a.x, true, true, true), var_3.a, vec4<bool>(global1.x, false, false, true)))), any(!vec4<bool>(global1.x, false, false, true)), true));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f)))))) - _wgslsmith_f_op_f32(-arg_0.e.x)), 37383u, arg_0.c, arg_1, _wgslsmith_f_op_vec4_f32(-arg_0.e));
    let var_1 = ~countOneBits(abs(_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, 25897u, 12051u, 45373u), vec4<u32>(106314u, 4294967295u, 1u, var_0.b)), reverseBits(vec4<u32>(0u, 1u, 1u, 44151u)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-155f * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_sub_u32(40100u, min(~var_1.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.wz), vec2<u32>(arg_0.b, u_input.a)))), vec3<i32>(-2147483647i, ~var_0.c.x, _wgslsmith_dot_vec2_i32(var_0.c.xz, vec2<i32>(arg_0.c.x >> (11635u % 32u), countOneBits(-1i)))), arg_0.d, _wgslsmith_div_vec4_f32(arg_0.e, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(490f, var_0.a)), -1587f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + var_0.e.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a * var_0.e.x))), _wgslsmith_f_op_f32(min(-540f, _wgslsmith_f_op_f32(step(-712f, arg_0.a)))))));
    let var_3 = Struct_2(arg_0.e.x, _wgslsmith_f_op_vec3_f32(max(var_0.e.yyy, vec3<f32>(-1000f, 730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_div_f32(var_0.a, 1486f))))), any(vec2<bool>(any(select(vec3<bool>(false, global1.x, true), arg_2.wwz, false)), true)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, 4294967295u) << (_wgslsmith_clamp_u32(86928u, 72142u, var_0.b) % 32u), ~(~arg_0.b)), ~(~var_1.yyx)));
    var var_4 = ~(~vec2<u32>(44196u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_3.d.x, 24539u, 1u) << (vec4<u32>(40867u, 46287u, arg_0.b, 35450u) % vec4<u32>(32u)), vec4<u32>(arg_0.b, arg_0.b, 57587u, arg_0.b) << (vec4<u32>(var_2.b, 4294967295u, 1u, 54669u) % vec4<u32>(32u)))));
    return arg_2.wzz;
}

fn func_2(arg_0: bool, arg_1: i32) -> vec3<bool> {
    var var_0 = 1u;
    global1 = select(!vec3<bool>(arg_0, false || global1.x, any(select(vec3<bool>(true, false, false), vec3<bool>(true, global1.x, false), vec3<bool>(arg_0, false, true)))), vec3<bool>(arg_0, arg_0, !((u_input.a & u_input.b) != abs(u_input.b))), select(func_4(Struct_1(_wgslsmith_f_op_f32(select(1128f, 445f, global1.x)), ~34426u, vec3<i32>(arg_1, 36491i, arg_1) & vec3<i32>(0i, -31939i, arg_1), func_3(arg_0, -379f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-995f, -1794f, -1350f, 1175f))), all(vec2<bool>(global1.x, false)) & !arg_0, select(vec4<bool>(global1.x, true, false, false), !vec4<bool>(arg_0, arg_0, true, true), true)), !select(!vec3<bool>(false, true, arg_0), !vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(global1.x, true, true), vec3<bool>(false, global1.x, false), global1.x)), vec3<bool>(true, any(select(vec4<bool>(global1.x, true, arg_0, global1.x), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(global1.x, false, false, arg_0))), any(vec3<bool>(true, arg_0, arg_0)) & false)));
    var var_1 = 77257u;
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 68323u, 0u) ^ vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(101051u, 43641u, u_input.b) & vec3<u32>(u_input.b, 1u, u_input.a)) | _wgslsmith_add_u32(u_input.b ^ 1u, ~1u)), 22u)];
    global1 = vec3<bool>(!any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, global1.x, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(var_2.d, global1.x, false)), var_2.d)), !((var_2.c.x == (arg_1 >> (0u % 32u))) & var_2.d), global1.x);
    return vec3<bool>(true, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1326f))) >= var_2.e.x) || all(vec2<bool>(true, global1.x)), all(!select(vec4<bool>(global1.x, global1.x, var_2.d, true), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(arg_0, false, true, false))) | global1.x);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = -1000f;
    let var_1 = 10282u;
    global1 = !func_2(!(!(!global1.x)), 1i);
    var var_2 = vec2<i32>(2147483647i, abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0))) >> (firstTrailingBit(var_1) % 32u));
    var var_3 = Struct_5(select(select(select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, false, true, false), all(vec4<bool>(false, global1.x, global1.x, true))), vec4<bool>(true, false, true, true), func_3(1565f != var_0, _wgslsmith_f_op_f32(var_0 - var_0))), vec4<bool>(global1.x, !any(global1.zx), all(select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, global1.x, false, global1.x), true)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 2147483647i, 18681i), vec4<i32>(var_2.x, var_2.x, 56861i, var_2.x)) == var_2.x), true), ~reverseBits(abs(min(vec4<u32>(4294967295u, 23098u, 1u, 30052u), vec4<u32>(45867u, 4294967295u, u_input.b, 1u)))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, min(var_1, 4294967295u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.b), 21363u << (0u % 32u), max(var_1, u_input.b))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1, var_1), select(vec2<u32>(var_1, var_1), vec2<u32>(1u, 0u), vec2<bool>(false, global1.x)), min(vec2<u32>(139786u, 38744u), vec2<u32>(12278u, u_input.a))), vec2<u32>(0u, var_1)), ~(~1u)));
    return Struct_2(_wgslsmith_f_op_f32(round(var_0)), vec3<f32>(-109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), 1000f), all(select(vec4<bool>(true, var_3.a.x, var_3.a.x, true), select(var_3.a, var_3.a, var_3.a), vec4<bool>(var_3.a.x, true, global1.x, var_3.a.x))) || (-var_2.x <= arg_0), _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(var_1, u_input.b, 0u), 1u, ~u_input.b), ~max(~var_3.b.wyw, max(var_3.c, var_3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(_wgslsmith_div_f32(-701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(481f)) - -290f)), vec3<f32>(-343f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(287f - 1539f))), 600f), !select(global1.x, false, true), min(~(~vec3<u32>(1u, 0u, 46310u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, 35729u), firstLeadingBit(vec3<u32>(68255u, 61247u, 4294967295u))))), func_1(-39854i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2230f, 1296f), vec2<f32>(-592f, 1260f), global1.yx)), vec2<f32>(1743f, -957f), any(vec4<bool>(true, true, true, global1.x))))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(1029f)), _wgslsmith_f_op_f32(round(508f)))))), func_1(-2147483647i), global0[_wgslsmith_index_u32(~58024u >> (u_input.b % 32u), 22u)]);
    let var_1 = Struct_3(func_1(-countOneBits(~(-1i))), func_1(~((i32(-1i) * -2147483647i) & ~var_0.e.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.b.a)), 270f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1804f) * var_0.c.x))), func_1(-1494i), global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(0u, var_0.d.d.x)), 22u)]);
    var_0 = var_1;
    var_0 = var_1;
    global0 = array<Struct_1, 22>();
    var_0 = Struct_3(var_0.b, var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.a, var_1.c.x)))), func_1(var_1.e.c.x << (~(~77134u) % 32u)), global0[_wgslsmith_index_u32(abs(~select(81708u, 479u, !var_1.e.d)), 22u)]);
    global1 = vec3<bool>(global1.x, var_1.a.c, func_1(_wgslsmith_clamp_i32(-(~var_1.e.c.x), -min(2147483647i, var_1.e.c.x), var_0.e.c.x)).c);
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_1.b.d.yx >> (~var_1.d.d.xy % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c.x, var_0.c.x, -1000f))))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.b.x))), _wgslsmith_f_op_f32(-503f + _wgslsmith_f_op_f32(var_1.d.a - var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1066f, -1000f))))), _wgslsmith_dot_vec4_i32(~vec4<i32>(max(-1i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.c.x, var_0.e.c.x, -8397i), vec3<i32>(2147483647i, var_0.e.c.x, -41791i)), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.c.x, 23328i), var_0.e.c.yx)), vec4<i32>(-2147483647i, 4568i, var_1.e.c.x ^ _wgslsmith_div_i32(-89706i, -1i), -1i)));
}

