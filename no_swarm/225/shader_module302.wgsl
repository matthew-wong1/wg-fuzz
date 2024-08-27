struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> bool {
    var var_0 = Struct_3(select(_wgslsmith_mod_vec2_i32(vec2<i32>(~2147483647i, _wgslsmith_sub_i32(1i, 2147483647i)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2073i, -2147483647i), vec2<i32>(arg_1, arg_1)), ~vec2<i32>(2147483647i, 2147483647i))), vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<i32>(arg_1, arg_1, 1i, arg_1) | vec4<i32>(0i, -25036i, -1i, arg_1))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true)))), vec3<f32>(_wgslsmith_div_f32(arg_0.x, 1183f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), Struct_1(abs(~vec4<u32>(u_input.a, 3586u, u_input.a, 1u)) << (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 25230u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 9282u, 4294967295u))) % vec4<u32>(32u))), vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), false));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.c.a, vec4<u32>(1u, 0u, var_0.c.a.x, u_input.a)), countOneBits(vec4<u32>(0u, var_0.c.a.x, 0u, 1u))) ^ ~vec4<u32>(var_0.c.a.x, u_input.a, 1u, var_0.c.a.x)));
    let var_2 = select(any(select(vec4<bool>(var_0.d.x, true, false, var_0.d.x), !select(vec4<bool>(false, false, var_0.d.x, true), vec4<bool>(var_0.d.x, false, false, var_0.d.x), var_0.d.x), !vec4<bool>(var_0.d.x, var_0.d.x, false, true))), true, !all(select(var_0.d.zz, var_0.d.xy, !var_0.d.x)));
    var_1 = Struct_1(var_1.a);
    let var_3 = any(select(select(select(select(var_0.d, var_0.d, var_0.d), select(var_0.d, vec3<bool>(var_2, var_0.d.x, true), true), var_0.c.a.x <= 4294967295u), vec3<bool>(!var_2, var_0.d.x, var_0.c.a.x >= 4294967295u), vec3<bool>(!var_2, true, true)), select(vec3<bool>(var_2, !var_0.d.x, any(vec4<bool>(var_0.d.x, var_0.d.x, false, var_2))), !select(var_0.d, var_0.d, vec3<bool>(true, var_2, var_0.d.x)), select(!var_0.d, vec3<bool>(true, true, true), true)), !var_0.d));
    return !(true & (var_1.a.x <= _wgslsmith_mult_u32(23683u, ~var_0.c.a.x)));
}

fn func_2() -> vec4<i32> {
    let var_0 = vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, 303f, -733f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, 1333f, -421f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, 1281f, -954f)))))), ~(~(-2147483647i))), -min(-2147483647i, countOneBits(2776i)) < ((-2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(37973i, -2147483647i, 0i), vec3<i32>(-29278i, -6161i, 1i))) ^ abs(i32(-1i) * -66730i)), !any(vec4<bool>(select(true, true, false), true, false, true)));
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a | 42186u, _wgslsmith_mod_u32(4294967295u, 4294967295u)) ^ global0[_wgslsmith_index_u32(select(max(~8252u, firstTrailingBit(u_input.a)), 1u, select(!var_0.x, true, false & var_0.x)), 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]);
    global0 = array<vec2<u32>, 1>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1749f))), Struct_1(vec4<u32>(u_input.a, 0u ^ select(4294967295u, 0u, true), firstTrailingBit(_wgslsmith_clamp_u32(11545u, 1u, 40701u)), ~42252u)), vec2<bool>(all(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), var_0.x)), true), Struct_1(countOneBits(vec4<u32>(~u_input.a, u_input.a, 2936u, _wgslsmith_div_u32(1u, u_input.a)))), Struct_1(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 54814u, 0u) ^ vec4<u32>(4294967295u, u_input.a, u_input.a, 83983u))));
    var var_3 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(12223u >> (~var_2.b.a.x % 32u), ~16554u));
    return -vec4<i32>(-countOneBits(-3903i), ~max(2147483647i, 3175i), ~abs(2147483647i), _wgslsmith_mult_i32(1i, 13234i)) << (vec4<u32>(~(~firstTrailingBit(4294967295u)), ~(~9361u), 0u, (_wgslsmith_dot_vec4_u32(var_2.e.a, vec4<u32>(var_2.d.a.x, 0u, 12322u, u_input.a)) >> (~0u % 32u)) << (u_input.a % 32u)) % vec4<u32>(32u));
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<u32>, 1>();
    let var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(~vec4<i32>(1i, 1i, 1i, 0i)), ~vec4<i32>(-53882i, 1i, 1i, 40316i) >> (abs(vec4<u32>(u_input.a, 17040u, 0u, 0u)) % vec4<u32>(32u))) ^ abs(~func_2());
    let var_1 = !(!select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_3(_wgslsmith_add_vec2_i32(firstTrailingBit(-select(vec2<i32>(var_0.x, -1i), var_0.ww, false)), var_0.yy), vec3<f32>(-357f, 1340f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a, 37890u, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) | (countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 57369u, 0u), vec4<u32>(0u, u_input.a, 4294967295u, 21176u)) % vec4<u32>(32u)))), var_1.yww);
    global0 = array<vec2<u32>, 1>();
    return Struct_2(_wgslsmith_f_op_f32(floor(-815f)), Struct_1(var_2.c.a), var_2.d.zx, Struct_1(firstTrailingBit(vec4<u32>(0u, ~15899u, _wgslsmith_div_u32(var_2.c.a.x, 2853u), _wgslsmith_div_u32(97239u, 36806u)))), var_2.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_mult_u32(select(~arg_0.e.a.x, u_input.a, any(select(!vec3<bool>(arg_0.c.x, arg_0.c.x, false), vec3<bool>(false, true, arg_0.c.x), select(vec3<bool>(false, false, arg_0.c.x), vec3<bool>(false, arg_0.c.x, true), vec3<bool>(false, false, arg_0.c.x))))), ~((firstTrailingBit(46737u) & ~u_input.a) | arg_0.d.a.x));
    var var_1 = arg_0.d;
    var_0 = ~(~_wgslsmith_mod_u32(select(32662u, 11381u, !arg_0.c.x), ~(~arg_0.e.a.x)));
    let var_2 = Struct_3(vec2<i32>(-1i, select(i32(-1i) * -45989i, ~(-2147483647i << (var_1.a.x % 32u)), arg_0.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, arg_0.a), func_1().b, vec3<bool>(!(!arg_0.c.x), false, false));
    let var_3 = 38301i;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 1>();
    let var_0 = -15963i;
    let var_1 = 1i;
    var var_2 = func_4(func_1(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-355f, -271f), vec2<f32>(1500f, -771f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1765f, -209f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(706f, -2049f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(641f, 1174f))), true)))), false)), ~_wgslsmith_add_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(70031u, 0u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 15989u), vec3<u32>(u_input.a, 62904u, 1u)), ~vec3<u32>(1u, 4294967295u, u_input.a)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(1u, 20091u, 95692u)), 4294967295u, 64938u)));
    var_2 = countOneBits(var_1);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2349f)) * 1265f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1554f + _wgslsmith_f_op_f32(sign(-386f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-647f, -886f), 1363f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, -1i, -var_0), _wgslsmith_mult_vec3_i32(~vec3<i32>(-38945i, 52582i, -5831i), _wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(33766i, -52655i, var_1), vec3<i32>(0i, var_1, 12630i), vec3<i32>(var_0, var_1, var_0)), -select(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, var_0, 3895i), true))), _wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(var_1, var_0), vec2<i32>(-2147483647i, var_1) >> (vec2<u32>(u_input.a, 78520u) % vec2<u32>(32u)), vec2<bool>(true, true))), ~(-_wgslsmith_add_vec2_i32(vec2<i32>(var_1, 72178i), vec2<i32>(var_1, -2391i)))), -vec4<i32>(var_0, ~func_4(Struct_2(-866f, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 53628u)), vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), Struct_1(vec4<u32>(36566u, 38570u, u_input.a, u_input.a))), var_3, vec3<u32>(96398u, 4294967295u, u_input.a)), 1i, -14227i), var_3.x);
}

