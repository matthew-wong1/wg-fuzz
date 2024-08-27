struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> u32 {
    global0 = arg_1.c;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, -2311f, -653f))))));
    var var_1 = !(arg_0.x || true);
    let var_2 = Struct_3(var_0.x, Struct_2(arg_1, vec2<bool>(true, all(vec3<bool>(arg_3, false, arg_0.x))), global0.x, arg_1, global0.zz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * 764f), _wgslsmith_f_op_f32(-var_0.x), arg_3)) - -495f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(trunc(474f))))), ~57931u, Struct_2(Struct_1(arg_1.a, ~_wgslsmith_add_vec2_i32(u_input.c, arg_1.b), firstLeadingBit(vec4<u32>(10522u, 130887u, global0.x, 30573u))), arg_0, ~(~(~u_input.d.x)), Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, -1i), u_input.a), -vec2<i32>(arg_1.b.x, u_input.b.x), vec4<u32>(abs(5222u), _wgslsmith_clamp_u32(arg_1.c.x, 4294967295u, 12073u), 10422u, 0u)), _wgslsmith_sub_vec2_u32(global0.wz, ~(arg_1.c.zx | vec2<u32>(global0.x, 4294967295u)))));
    var var_3 = vec4<i32>(var_2.b.a.b.x, abs(max(_wgslsmith_add_i32(arg_1.a, 1i), arg_1.b.x)), -36151i, ~(~countOneBits(arg_1.a) ^ _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_clamp_i32(u_input.a.x, var_2.b.d.b.x, u_input.c.x))));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    global0 = vec4<u32>(0u, ~(~(~func_3(vec2<bool>(false, true), Struct_1(1i, u_input.a, vec4<u32>(4294967295u, 0u, 1u, u_input.d.x)), 8469i, false))), _wgslsmith_dot_vec2_u32(~arg_1, ~vec2<u32>(min(57218u, global0.x), arg_1.x)), 4294967295u << (~arg_1.x % 32u));
    var var_0 = ~(abs(1i) | (-1i ^ u_input.a.x));
    var var_1 = 1u;
    var var_2 = -16522i;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(960f))), Struct_2(Struct_1(u_input.a.x, select(u_input.c, u_input.a, true), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, global0.x, arg_1.x, 1u), ~vec4<u32>(1u, arg_1.x, global0.x, 0u))), select(vec2<bool>(false, false), vec2<bool>(true, arg_0 || false), select(!vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), arg_0)), ~global0.x, Struct_1(_wgslsmith_mod_i32(-18741i, u_input.a.x << (0u % 32u)), u_input.a, vec4<u32>(0u << (1u % 32u), _wgslsmith_mult_u32(12149u, u_input.d.x), 6997u & global0.x, 106906u)), ~(select(vec2<u32>(u_input.d.x, 0u), global0.xw, vec2<bool>(arg_0, true)) | (vec2<u32>(u_input.d.x, arg_1.x) | vec2<u32>(1u, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), 4294967295u, Struct_2(Struct_1(~firstLeadingBit(u_input.b.x), firstLeadingBit(u_input.a), ~(~vec4<u32>(0u, 0u, 7143u, 26654u))), select(select(vec2<bool>(arg_0, false), !vec2<bool>(true, arg_0), arg_0 & false), select(!vec2<bool>(false, arg_0), select(vec2<bool>(false, true), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_0, true))), all(!vec2<bool>(false, arg_0))), _wgslsmith_mod_u32(~select(global0.x, 27803u, arg_0), global0.x), Struct_1(-1i ^ (u_input.a.x | 1i), ~u_input.c, vec4<u32>(_wgslsmith_add_u32(u_input.d.x, global0.x), firstTrailingBit(arg_1.x), reverseBits(4294967295u), ~arg_1.x)), vec2<u32>(~_wgslsmith_mod_u32(1701u, 4294967295u), 0u)));
    return _wgslsmith_dot_vec2_u32(countOneBits(min(~arg_1, var_3.b.a.c.wz | ~arg_1)), var_3.e.e);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_3 {
    global0 = select(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_1, 132528u, global0.x, 0u), vec4<u32>(global0.x, u_input.d.x, global0.x, arg_1), vec4<bool>(true, false, true, false)) << (~vec4<u32>(1u, arg_1, arg_1, 0u) % vec4<u32>(32u)), ~vec4<u32>(arg_1, 23934u, 4294967295u, 55211u)), firstLeadingBit(~(vec4<u32>(u_input.d.x, 33827u, 73133u, 49230u) << (abs(vec4<u32>(1u, 1u, u_input.d.x, arg_1)) % vec4<u32>(32u)))), arg_0);
    global0 = ~vec4<u32>(_wgslsmith_div_u32(1u ^ select(1u, global0.x, false), ~1740u), ~2655u, ~_wgslsmith_sub_u32(~u_input.d.x, ~u_input.d.x), ~func_2(select(true, arg_0.x, true), vec2<u32>(arg_1, 4294967295u)));
    let var_0 = vec3<i32>(u_input.a.x, _wgslsmith_add_i32(1i, -2147483647i), u_input.b.x);
    let var_1 = Struct_3(833f, Struct_2(Struct_1(~u_input.c.x, min(u_input.a | u_input.c, vec2<i32>(-51534i, u_input.b.x)), max(select(vec4<u32>(u_input.d.x, 0u, global0.x, u_input.d.x), vec4<u32>(arg_1, 25401u, arg_1, global0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), vec4<u32>(6946u, 1u, 1u, arg_1))), arg_0.yw, arg_1, Struct_1(-2485i, ~var_0.zx, max(firstLeadingBit(vec4<u32>(global0.x, arg_1, 0u, u_input.d.x)), vec4<u32>(arg_1, 0u, global0.x, 4294967295u))), u_input.d.zx), _wgslsmith_f_op_f32(589f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(540f))))), 7478u, Struct_2(Struct_1(var_0.x, vec2<i32>(0i, countOneBits(2147483647i)), vec4<u32>(1u, _wgslsmith_add_u32(arg_1, global0.x), u_input.d.x ^ 0u, 1u)), !arg_0.zz, arg_1, Struct_1(-23312i ^ var_0.x, _wgslsmith_add_vec2_i32(var_0.yx & var_0.yz, u_input.b), vec4<u32>(68751u, select(11712u, 0u, true), ~733u, ~u_input.d.x)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), global0.zy))));
    let var_2 = Struct_2(var_1.b.a, select(vec2<bool>(var_1.b.b.x, any(select(arg_0.xx, var_1.b.b, arg_0.x))), !vec2<bool>(true, var_1.e.b.x), true & any(vec3<bool>(false, true, var_1.e.b.x))), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d.x, 16141u), arg_1), Struct_1(u_input.b.x, vec2<i32>(~(~2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.a.b.x, u_input.b.x, var_0.x, 2147483647i), vec4<i32>(var_0.x, -2147483647i, -1i, var_1.b.d.a)), select(u_input.a.x, 0i, arg_0.x))), select(select(~var_1.b.a.c, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, arg_1, arg_1), var_1.e.d.c), arg_0), vec4<u32>(arg_1, _wgslsmith_dot_vec3_u32(var_1.e.d.c.xzx, var_1.b.d.c.ywz), _wgslsmith_add_u32(46349u, 0u), u_input.d.x), !vec4<bool>(var_1.b.b.x, true, false, var_1.b.b.x))), var_1.e.a.c.zy);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c)) + _wgslsmith_div_f32(363f, var_1.a)), Struct_2(Struct_1(1i, -(vec2<i32>(var_2.d.b.x, -3343i) >> (u_input.d.zx % vec2<u32>(32u))), var_1.b.d.c), arg_0.zy, _wgslsmith_mult_u32(~_wgslsmith_div_u32(0u, 4294967295u), u_input.d.x >> (4294967295u % 32u)), Struct_1(_wgslsmith_mult_i32(~u_input.a.x, -1i), max(vec2<i32>(2147483647i, var_2.a.b.x), vec2<i32>(var_0.x, -1i)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.d.c.x, 0u, arg_1, 7127u), var_1.e.a.c)), ~(~var_1.e.a.c.yz)), var_1.c, _wgslsmith_mult_u32(10061u, u_input.d.x), var_1.b);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = u_input.d.x;
    var_0 = ~u_input.d.x & (1u & u_input.d.x);
    let var_1 = arg_0;
    global0 = vec4<u32>(_wgslsmith_dot_vec3_u32(abs(countOneBits(~vec3<u32>(global0.x, 4294967295u, 4294967295u))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.d.x, 0u, 50958u) << (vec3<u32>(1u, 44403u, arg_0.b.d.c.x) % vec3<u32>(32u))), func_1(vec4<bool>(true, true, arg_0.b.b.x, var_1.b.b.x), _wgslsmith_sub_u32(arg_0.d, global0.x)).b.a.c.wzx)), reverseBits(var_1.e.c), global0.x >> (min(1194u, ~4294967295u) % 32u), u_input.d.x | select(~_wgslsmith_mult_u32(1u, u_input.d.x), var_1.e.c, any(vec3<bool>(false, false, true))));
    var var_2 = Struct_1(73868i, -u_input.c, max(var_1.e.a.c, select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, 11482u, 64787u, global0.x), vec4<u32>(1u, u_input.d.x, var_1.d, u_input.d.x)), ~select(vec4<u32>(global0.x, var_1.b.d.c.x, arg_0.d, 7689u), var_1.b.a.c, arg_0.b.b.x), select(false, true, true))));
    return var_1.b;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(arg_0.x)), func_4(Struct_3(585f, arg_2, arg_0.x, 4294967295u, arg_2)), _wgslsmith_f_op_f32(arg_3.x + 136f), _wgslsmith_mod_u32(reverseBits(~4294967295u), _wgslsmith_mod_u32(~(~40338u), arg_2.a.c.x)), Struct_2(Struct_1(-1i, -_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(arg_2.a.b.x, arg_2.d.b.x)), _wgslsmith_mult_vec4_u32(arg_2.a.c, vec4<u32>(u_input.d.x, 1u, arg_2.e.x, u_input.d.x)) << (_wgslsmith_add_vec4_u32(arg_2.d.c, arg_2.d.c) % vec4<u32>(32u))), vec2<bool>(false, all(!arg_1)), global0.x, arg_2.d, ~(~vec2<u32>(14275u, u_input.d.x))));
    let var_1 = arg_0.x;
    let var_2 = var_0.e.d;
    let var_3 = func_1(vec4<bool>(true, all(vec2<bool>(true, true)), true, _wgslsmith_sub_u32(~global0.x, var_2.c.x) >= _wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(4294967295u, 28139u, 27417u) >> (vec3<u32>(u_input.d.x, 1524u, global0.x) % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(global0.xx | ~vec2<u32>(var_2.c.x, u_input.d.x), func_4(Struct_3(_wgslsmith_f_op_f32(758f * 1516f), Struct_2(Struct_1(2147483647i, var_2.b, vec4<u32>(4294967295u, var_0.d, 4294967295u, global0.x)), vec2<bool>(false, true), 4294967295u, var_0.b.d, var_0.e.d.c.wz), -1044f, 1u, func_1(arg_1, u_input.d.x).e)).a.c.yz)).e;
    let var_4 = Struct_2(func_4(func_1(arg_1, reverseBits(22859u))).a, vec2<bool>(func_1(arg_1, 34685u).e.b.x, all(arg_1)), ~func_3(!var_3.b, func_1(arg_1, ~global0.x).b.a, _wgslsmith_sub_i32(-2147483647i >> (var_3.c % 32u), ~u_input.c.x), (arg_1.x | true) && true), Struct_1(~func_4(Struct_3(107f, var_3, var_1, 4294967295u, arg_2)).a.a, vec2<i32>(13589i, -arg_2.a.b.x >> ((var_2.c.x << (0u % 32u)) % 32u)), func_1(vec4<bool>(-2147483647i < u_input.b.x, all(vec3<bool>(true, true, var_0.e.b.x)), !arg_2.b.x, true), var_2.c.x).e.d.c), min(~_wgslsmith_mod_vec2_u32(reverseBits(u_input.d.yy), u_input.d.yy >> (global0.yz % vec2<u32>(32u))), ~min(_wgslsmith_mult_vec2_u32(arg_2.e, var_2.c.zz), vec2<u32>(var_3.e.x, 0u))));
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -965f), func_4(func_1(arg_1, _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, 1023u), reverseBits(1u)))), var_0.a, 48012u, Struct_2(func_1(!arg_1, 45589u).e.a, var_4.b, var_4.a.c.x, func_4(Struct_3(1059f, Struct_2(var_4.d, arg_2.b, 90443u, Struct_1(2147483647i, u_input.c, vec4<u32>(var_0.d, 4294967295u, var_0.e.d.c.x, 4294967295u)), vec2<u32>(var_0.e.c, 1u)), var_1, 4294967295u, var_3)).d, ~(~vec2<u32>(4294967295u, 9988u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-u_input.a.x, _wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), u_input.c), vec2<i32>(-38956i, 0i) >> (global0.wx % vec2<u32>(32u)), ~u_input.c), _wgslsmith_clamp_vec2_i32(~min(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(0i, -1i) << (_wgslsmith_mod_vec2_u32(vec2<u32>(49225u, 4294967295u), u_input.d.zy) % vec2<u32>(32u)), -_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(12511i, -9693i)))), ~firstLeadingBit(~vec4<u32>(36573u, global0.x, u_input.d.x, u_input.d.x)));
    let var_1 = var_0;
    var var_2 = ~(~vec2<u32>(global0.x, ~u_input.d.x));
    let var_3 = -firstLeadingBit(var_1.b & -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_1.b.x), vec2<i32>(var_1.a, var_0.a)));
    var var_4 = Struct_1(u_input.a.x, _wgslsmith_mult_vec2_i32(var_1.b, ~vec2<i32>(~var_3.x, ~0i)), var_0.c >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.d.x, var_1.c.x), ~var_0.c) % vec4<u32>(32u)));
    var_2 = _wgslsmith_add_vec2_u32(var_1.c.zy, ~vec2<u32>(~global0.x, ~_wgslsmith_mod_u32(21588u, 25063u)));
    let var_5 = func_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(-347f)), -1003f, 945f))), vec4<bool>(true, select(!any(vec2<bool>(false, true)), true, true), any(vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), true), func_4(func_1(vec4<bool>(false, all(vec3<bool>(true, false, false)), true, true), ~_wgslsmith_div_u32(71778u, var_4.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)))));
    let var_6 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_4.c.x, _wgslsmith_dot_vec3_u32(var_4.c.yzx & u_input.d, var_1.c.xzw << (var_1.c.yzx % vec3<u32>(32u))), ~(u_input.d.x | 58345u)) ^ (firstLeadingBit(select(var_1.c.zyz, vec3<u32>(40052u, u_input.d.x, 52848u), false)) ^ ~vec3<u32>(global0.x, 4294967295u, var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(vec4<bool>(false, false, var_5.b.b.x, var_5.b.b.x), u_input.d.x).c, var_5.a, _wgslsmith_f_op_f32(var_5.c + -1484f), _wgslsmith_f_op_f32(-var_5.a))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_5.c, var_5.a, var_5.c, -237f))))))), vec3<i32>(var_5.e.a.b.x, ~var_4.b.x >> (22614u % 32u), -15664i), ~abs(abs(~vec4<i32>(var_1.b.x, var_5.b.d.a, -2147483647i, var_5.e.d.b.x))));
}

