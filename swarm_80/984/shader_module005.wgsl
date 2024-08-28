struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: array<u32, 11>;

var<private> global2: array<Struct_4, 22>;

var<private> global3: array<vec3<u32>, 30>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global1 = array<u32, 11>();
    global3 = array<vec3<u32>, 30>();
    global1 = array<u32, 11>();
    let var_0 = reverseBits(firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(u_input.c << (48352u % 32u), 0i >> (0u % 32u), arg_0.a), -(arg_0.a << (22950u % 32u)), ~_wgslsmith_add_i32(u_input.a, -22084i))));
    var var_1 = max(vec3<i32>(var_0.x, reverseBits(u_input.c), countOneBits(u_input.a)), var_0);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-721f, -347f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, 559f, -404f) - vec3<f32>(-1000f, 937f, -140f)))))), vec3<f32>(1959f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-899f + 693f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-286f)) * _wgslsmith_f_op_f32(ceil(569f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_4(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(11215u, ~(4294967295u << (global1[_wgslsmith_index_u32(arg_2.c.a.x, 11u)] % 32u)), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(arg_2.c.a, arg_2.c.a)), countOneBits(u_input.d << (1u % 32u))), vec4<u32>(arg_2.c.a.x, 1u, 63856u, ~arg_2.c.a.x >> (6758u % 32u))), arg_2.c.a);
    global1 = array<u32, 11>();
    var var_1 = ~(~1u);
    global3 = array<vec3<u32>, 30>();
    var var_2 = Struct_4(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~firstTrailingBit(1u), ~u_input.d, ~15024u, _wgslsmith_dot_vec3_u32(select(global3[_wgslsmith_index_u32(7906u, 30u)], global3[_wgslsmith_index_u32(38226u, 30u)], vec3<bool>(arg_2.c.d, false, arg_2.c.d)), ~vec3<u32>(u_input.b, 57148u, arg_2.c.a.x))), ~vec4<u32>(abs(4294967295u), 10828u, arg_2.c.a.x, u_input.b)), vec2<u32>(~0u, var_0.b));
    return var_0.a;
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = !select(select(vec3<bool>(true, arg_2 && arg_2, true), !select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2)), true), !select(vec3<bool>(true, true, false), !vec3<bool>(arg_2, true, false), select(false, false, true)), !(!(!vec3<bool>(arg_2, false, false))));
    let var_1 = arg_2 | (u_input.d <= u_input.b);
    let var_2 = select(select(!vec3<bool>(true, true, all(var_0.zx)), select(!vec3<bool>(arg_2, false, arg_2), select(vec3<bool>(false, var_0.x, true), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, false), arg_2), all(vec4<bool>(true, var_1, var_1, true))), !var_1), arg_2), select(select(select(vec3<bool>(arg_2, var_0.x, var_1), !vec3<bool>(true, false, var_0.x), select(vec3<bool>(false, arg_2, false), vec3<bool>(var_1, var_1, var_1), var_0.x)), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, arg_2), var_0.x), !vec3<bool>(var_1, arg_2, true), select(vec3<bool>(true, false, true), vec3<bool>(true, var_1, var_0.x), true)), arg_2), select(!(!vec3<bool>(false, var_1, var_0.x)), !vec3<bool>(true, arg_2, var_1), arg_2), select(all(select(var_0.xx, vec2<bool>(var_0.x, arg_2), vec2<bool>(var_1, true))), all(vec3<bool>(false, false, var_1)), all(select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, true, true, true))))), !select(vec3<bool>(arg_3 < 775f, false && arg_2, any(var_0.zz)), select(vec3<bool>(false, false, false), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, true), var_1), !vec3<bool>(true, var_1, false)), vec3<bool>(any(vec3<bool>(arg_2, false, arg_2)), true, false)));
    var var_3 = !select(var_0.zy, !var_2.xy, vec2<bool>(!var_1, true));
    var var_4 = vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.a);
    return ~(-_wgslsmith_mult_i32(select(~(-1i), var_4.x >> (arg_1 % 32u), all(var_2)), u_input.a));
}

fn func_2() -> f32 {
    var var_0 = ~_wgslsmith_dot_vec3_i32(abs(~countOneBits(vec3<i32>(-46882i, -70689i, u_input.c))), vec3<i32>(u_input.c, _wgslsmith_div_i32(1i, -u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.c, 3340i), vec4<i32>(u_input.c, u_input.a, u_input.c, 0i) << (vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(0u, 11u)], u_input.d, global1[_wgslsmith_index_u32(u_input.b, 11u)]) % vec4<u32>(32u)))));
    global1 = array<u32, 11>();
    global3 = array<vec3<u32>, 30>();
    var var_1 = vec3<i32>(abs(1i) & (_wgslsmith_dot_vec4_i32(max(vec4<i32>(18238i, -2147483647i, -30213i, u_input.a), vec4<i32>(-17011i, 24219i, u_input.c, 1i)), vec4<i32>(u_input.a, u_input.a, 1i, 1i)) ^ u_input.a), func_5(Struct_4(~(~23812u), 0u, firstLeadingBit(vec2<u32>(60561u, 0u))), func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1676f, -576f), vec2<f32>(-1443f, -1362f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(12349i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, -801f, -1052f) * vec3<f32>(-806f, -118f, -389f))), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(63946i, u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(573f, 323f) * vec2<f32>(1244f, 1051f)), Struct_1(vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(12984u, 11u)]), vec3<i32>(u_input.c, u_input.a, u_input.c), vec4<f32>(-611f, 1012f, 889f, -801f), true), -1350f)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1264f + -212f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -845f) + -1706f))), 31739i);
    global3 = array<vec3<u32>, 30>();
    return _wgslsmith_f_op_f32(round(1317f));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = 22991u;
    let var_2 = -10811i;
    let var_3 = ~reverseBits(vec2<u32>(abs(arg_0.x), ~global1[_wgslsmith_index_u32(1u, 11u)])) << (~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(1u, 11u)]) ^ ~vec2<u32>(arg_0.x, 31092u), abs(arg_0) | vec2<u32>(25494u, u_input.b)) % vec2<u32>(32u));
    var var_4 = Struct_1(arg_0, vec3<i32>(~(-47393i), ~1i, arg_1), arg_2, any(vec2<bool>(true, !select(false, true, false))));
    return Struct_1(vec2<u32>(firstLeadingBit(select(_wgslsmith_mult_u32(58493u, global1[_wgslsmith_index_u32(var_4.a.x, 11u)]), 37341u, !var_4.d)), ~max(_wgslsmith_mult_u32(arg_0.x, 2620u), arg_0.x)), vec3<i32>(arg_1, 1i, ~var_4.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(549f, arg_2.x)) + -1110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-868f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_4.c.x)))))), true);
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_4(u_input.b, u_input.b, vec2<u32>(~((global1[_wgslsmith_index_u32(4294967295u, 11u)] | 3792u) ^ ~1u), u_input.b));
    let var_1 = !(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, 20187i), 1i)) >= -1i);
    let var_2 = Struct_4(4294967295u, ~u_input.b, var_0.c);
    let var_3 = -_wgslsmith_dot_vec4_i32(~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-1799i, u_input.a, 4588i, u_input.a), vec4<i32>(1i, u_input.c, u_input.c, 1i))), vec4<i32>(~reverseBits(12034i), -1i, -(u_input.c & 2147483647i), u_input.c));
    let var_4 = func_6(vec2<u32>(47422u, max(~_wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(40793u, 33199u)), u_input.b)), _wgslsmith_mod_i32(select(_wgslsmith_mod_i32(-var_3, ~(-1i)), ~u_input.c & _wgslsmith_sub_i32(var_3, 4619i), all(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(false, var_1)))), -10180i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 802f, arg_0.x, 1819f)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, 218f, -1717f) + vec4<f32>(arg_0.x, -386f, 237f, arg_0.x))))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(458f + 445f), _wgslsmith_f_op_f32(func_2()), 205f)));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-314f, _wgslsmith_f_op_vec3_f32(func_3(Struct_3(var_4.b.x))).x), arg_0)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.x)))))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = arg_0;
    global1 = array<u32, 11>();
    var var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, var_0.c.a.x, global1[_wgslsmith_index_u32(arg_1.a.x, 11u)]), global3[_wgslsmith_index_u32(arg_1.a.x, 30u)], vec3<bool>(true, true, arg_0.c.d)), vec3<u32>(arg_1.a.x, var_0.c.a.x, 8544u)), ~(~17764u))), 22u)];
    global1 = array<u32, 11>();
    global0 = array<Struct_3, 26>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.c.c, _wgslsmith_f_op_vec4_f32(-func_6(~var_1.c, 1i, arg_1.c).c))), var_0.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~(~(~vec2<u32>(32542u, 46652u)))), (~(vec3<i32>(4232i, u_input.a, 2147483647i) ^ vec3<i32>(19543i, u_input.c, u_input.a)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 54345u, 97067u), ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], u_input.d, global1[_wgslsmith_index_u32(u_input.d, 11u)])) % vec3<u32>(32u))) >> (~global3[_wgslsmith_index_u32(1u, 30u)] % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_7(Struct_2(abs(vec2<i32>(u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(571f, -331f))), Struct_1(vec2<u32>(11980u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)]), vec3<i32>(2147483647i, u_input.a, u_input.c), vec4<f32>(1028f, -561f, -1256f, 161f), false), _wgslsmith_f_op_f32(round(-901f))), Struct_1(~vec2<u32>(u_input.d, u_input.b), countOneBits(vec3<i32>(-1i, u_input.a, -1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -279f, 143f, 311f)), true), vec3<bool>(true, false, true))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_7(Struct_2(vec2<i32>(u_input.c, u_input.c), vec2<f32>(-975f, 1171f), Struct_1(vec2<u32>(0u, global1[_wgslsmith_index_u32(10952u, 11u)]), vec3<i32>(u_input.a, u_input.c, -1i), vec4<f32>(-837f, -140f, 978f, 456f), true), 175f), func_6(vec2<u32>(5250u, u_input.d), -39728i, vec4<f32>(-1024f, 472f, 148f, -1101f)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, 757f, -355f, 682f))))))), true);
    var var_1 = Struct_1(var_0.a >> (_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(11139u, 11u)])), ~(~var_0.a)) % vec2<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, u_input.a), ~(-1i), u_input.a), select(var_0.b, -(vec3<i32>(var_0.b.x, 1i, var_0.b.x) ^ var_0.b), func_6(abs(var_0.a), -2147483647i, var_0.c).d), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, var_0.b.x) ^ vec3<i32>(var_0.b.x, 27560i, -29204i), vec3<i32>(2147483647i, -2147483647i, u_input.c)), vec3<i32>(var_0.b.x, -1i, var_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -158f, -629f, var_0.c.x)), vec4<f32>(var_0.c.x, 1261f, _wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, false)), _wgslsmith_f_op_f32(212f - -513f)), !(var_0.d && true))) * vec4<f32>(-1941f, -1018f, -1000f, var_0.c.x)), var_0.d);
    var_1 = var_0;
    var var_2 = func_5(Struct_4(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 36255u, u_input.d), global3[_wgslsmith_index_u32(var_0.a.x, 30u)]), ~var_0.a.x, select(var_0.d, true, var_0.d)), (21969u | var_0.a.x) >> (~0u % 32u), vec2<u32>(~var_1.a.x, _wgslsmith_mod_u32(var_1.a.x, 26494u))), _wgslsmith_add_u32(u_input.d | global1[_wgslsmith_index_u32(1u, 11u)], var_1.a.x), (true & !var_0.d) || !var_1.d, var_1.c.x) ^ var_1.b.x;
    var var_3 = ~(~(4294967295u | var_1.a.x));
    let var_4 = _wgslsmith_div_i32(-var_0.b.x, var_1.b.x);
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-var_4, ~var_4, ~var_0.b.x, 0i), ~(~((var_0.a | vec2<u32>(u_input.b, u_input.b)) << (firstTrailingBit(var_0.a) % vec2<u32>(32u)))), var_0.a);
}

