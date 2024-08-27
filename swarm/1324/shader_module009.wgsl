struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = true;
    let var_1 = Struct_1(u_input.b.yx, all(vec4<bool>(select(arg_3.a.x > 1i, arg_3.b, arg_3.b || true), select(select(arg_3.b, true, arg_3.b), 32249i != arg_2, true), arg_3.b, true && arg_3.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-624f)), -647f, -799f, _wgslsmith_div_f32(972f, -1081f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1448f, -329f, 1416f, 199f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1295f, 590f, 477f), vec4<f32>(771f, 1673f, 1158f, -636f)))))));
    let var_3 = Struct_2(~(~min(select(4294967295u, 100520u, var_1.b), ~arg_0.x)), var_1, Struct_1(u_input.b.xy, var_1.b));
    var var_4 = ~(~_wgslsmith_div_u32(max(firstTrailingBit(0u), var_3.a | arg_1.x), reverseBits(firstLeadingBit(arg_0.x))));
    return -abs(abs(-1i));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-7299i, u_input.b.x >> (1u % 32u), -20493i), func_3(vec4<u32>(52009u, u_input.a.x, 0u, u_input.a.x) ^ vec4<u32>(11899u, u_input.a.x, 4294967295u, 1u), vec3<u32>(0u, u_input.a.x, 0u), u_input.b.x, Struct_1(u_input.b.zy, false))), u_input.b.x, u_input.b.x);
    let var_1 = true;
    var_0 = u_input.b;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(12717i, var_0.x >> (56225u % 32u)), u_input.b.x), -23056i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.b, reverseBits(u_input.b)), -u_input.b << (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_div_i32(select(-51337i, -2166i, var_1 && true), countOneBits(var_0.x)), var_0.x, -var_0.x));
    let var_3 = Struct_1(-var_2.xz, all(select(!(!vec3<bool>(var_1, var_1, true)), !(!vec3<bool>(true, true, var_1)), !(!vec3<bool>(var_1, true, false)))));
    return 1u;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = reverseBits(u_input.b);
    let var_1 = 0i;
    var_0 = ~min(-(~(vec3<i32>(18714i, var_0.x, u_input.b.x) >> (vec3<u32>(1u, u_input.a.x, 41212u) % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_1.x, -2147483647i, var_1), _wgslsmith_sub_vec3_i32(~u_input.b, select(u_input.b, u_input.b, false))));
    var_0 = vec3<i32>(7727i, _wgslsmith_mod_i32(-u_input.b.x, -1i), arg_1.x << (abs(u_input.a.x) % 32u));
    let var_2 = u_input.a.x ^ (countOneBits(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1105f, 1503f, 860f))))) << (abs(_wgslsmith_add_u32(min(u_input.a.x, 91223u), u_input.a.x)) % 32u));
    return !(!vec4<bool>(all(vec4<bool>(true, true, true, true)) && true, true, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_clamp_vec3_u32(max(~reverseBits(vec3<u32>(arg_2.a, 26487u, 6461u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(3292u, u_input.a.x, 0u) ^ vec3<u32>(arg_2.a, u_input.a.x, arg_2.a), ~vec3<u32>(1u, u_input.a.x, 14681u)), vec3<u32>(~26812u, ~arg_2.a, 35755u))), ~_wgslsmith_clamp_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, arg_2.a), vec3<u32>(25268u, u_input.a.x, 0u)), firstLeadingBit(vec3<u32>(arg_2.a, 85555u, arg_2.a)), !arg_2.c.b), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a, 0u, arg_2.a), vec3<u32>(27537u, u_input.a.x, arg_2.a)), vec3<u32>(func_2(vec3<f32>(arg_0.x, -1039f, 1000f)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.a), vec2<u32>(65546u, 4294967295u)), max(u_input.a.x, arg_2.a))), select(~(~countOneBits(vec3<u32>(arg_2.a, 29729u, u_input.a.x))), ~vec3<u32>(4294967295u, abs(arg_2.a), arg_2.a), select(vec3<bool>(true, true, true), arg_1.zyy, false)));
    var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x | 1u, arg_2.a, abs(4294967295u)), vec3<u32>(~u_input.a.x, 9204u ^ var_1.x, min(u_input.a.x, 61370u))), var_1.x), _wgslsmith_add_u32(11384u, _wgslsmith_add_u32(firstLeadingBit(arg_2.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 28410u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, arg_2.a, u_input.a.x), vec3<u32>(1u, 9225u, u_input.a.x))))), ~arg_2.a);
    var_0 = u_input.b.x <= arg_2.c.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1310f, arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) + vec2<f32>(_wgslsmith_div_f32(arg_0.x, -750f), _wgslsmith_f_op_f32(-arg_0.x))), u_input.a.x > 1u)) - vec2<f32>(_wgslsmith_f_op_f32(sign(1180f)), 1327f));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-203f, 966f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -431f))))), func_1(u_input.b.x, vec2<i32>((-53507i & u_input.b.x) | u_input.b.x, countOneBits(u_input.b.x << (4294967295u % 32u)))), Struct_2(u_input.a.x, Struct_1(~(u_input.b.yy >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), func_1(1i, vec2<i32>(1i, 1i)).x), Struct_1(_wgslsmith_mod_vec2_i32(~u_input.b.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b.yx)), true)));
    var var_2 = Struct_2(u_input.a.x, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 1f)), func_1(~abs(-11198i), countOneBits(var_1.a << (u_input.a % vec2<u32>(32u)))), Struct_2(7224u, Struct_1(vec2<i32>(2147483647i, 27627i), func_1(u_input.b.x, vec2<i32>(1697i, u_input.b.x)).x), Struct_1(min(u_input.b.yx, u_input.b.yx), var_1.b))), Struct_1(vec2<i32>(func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-926f, 823f), vec2<f32>(1245f, -477f))), vec4<bool>(var_1.b, var_1.b, var_1.b, true), Struct_2(u_input.a.x, Struct_1(u_input.b.zx, var_1.b), Struct_1(vec2<i32>(23879i, var_1.a.x), var_1.b))).a.x, u_input.b.x), all(vec3<bool>(var_1.b, var_1.b != true, true))));
    var var_3 = Struct_2(~u_input.a.x, Struct_1(-reverseBits(_wgslsmith_clamp_vec2_i32(u_input.b.yz, u_input.b.xx, var_2.b.a)), all(!(!vec2<bool>(var_2.c.b, false)))), func_4(vec2<f32>(1f, 1274f), select(!vec4<bool>(false, var_2.b.b, true, true), vec4<bool>(var_2.b.b, true, var_2.c.b, all(vec2<bool>(false, false))), false), Struct_2(u_input.a.x, func_4(_wgslsmith_div_vec2_f32(vec2<f32>(603f, 1000f), vec2<f32>(821f, -986f)), !vec4<bool>(var_2.c.b, false, false, false), Struct_2(33392u, var_2.b, var_2.b)), func_4(vec2<f32>(-1434f, -862f), func_1(var_1.a.x, vec2<i32>(25716i, var_2.b.a.x)), Struct_2(var_2.a, var_2.b, var_2.b)))));
    var_1 = Struct_1(func_4(vec2<f32>(-1097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1135f, -242f)))), !(!select(vec4<bool>(true, true, var_3.b.b, var_2.b.b), vec4<bool>(false, false, false, var_3.b.b), var_1.b)), Struct_2(_wgslsmith_sub_u32(~0u, ~1u), Struct_1(~vec2<i32>(var_1.a.x, -19636i), !var_2.c.b), Struct_1(vec2<i32>(var_1.a.x, -10112i) ^ vec2<i32>(-65629i, var_1.a.x), all(vec4<bool>(var_1.b, true, false, true))))).a, !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-826f * 841f), _wgslsmith_f_op_f32(-1000f - 1190f), true & var_2.b.b)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) - _wgslsmith_f_op_f32(f32(-1f) * -863f))));
    var_2 = Struct_2(~6838u, func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1209f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -930f), -448f))), vec4<bool>(true, true, true, true), Struct_2(1u, var_2.b, var_3.b)), Struct_1(vec2<i32>(-7485i, -53237i), true));
    let x = u_input.a;
    s_output = StorageBuffer(63904u);
}

