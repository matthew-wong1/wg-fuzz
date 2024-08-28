struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2683f)) * _wgslsmith_f_op_f32(f32(-1f) * -593f)), _wgslsmith_f_op_f32(208f - _wgslsmith_f_op_f32(-1152f - -1000f)))), any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b | arg_0.b)) && (!arg_0.b | true), vec4<f32>(-924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f - -250f)), _wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(1f + -741f)), -184f), Struct_1(~(~vec4<u32>(arg_2.x, 46664u, 14327u, 36719u)), firstLeadingBit(-arg_0.c.b), arg_0.d.c), Struct_2(arg_0.d.b.x >> (~4294967295u % 32u), arg_0.b, arg_0.d, Struct_1(arg_0.d.a, _wgslsmith_mod_vec2_i32(arg_1, vec2<i32>(-28812i, arg_0.c.b.x)), u_input.b.wy), vec2<u32>(arg_0.e.x, _wgslsmith_sub_u32(reverseBits(arg_0.e.x), ~arg_2.x))));
    let var_1 = Struct_1(vec4<u32>(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.c.x, u_input.b.x, var_0.e.e.x, 5106u), u_input.b)), ~(~abs(u_input.a)), 3106u, select(u_input.b.x, arg_2.x, var_0.b)), ~_wgslsmith_sub_vec2_i32(arg_0.c.b, vec2<i32>(arg_0.d.b.x, -2147483647i)), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, u_input.b.x), _wgslsmith_clamp_vec2_u32(firstLeadingBit(arg_2), min(vec2<u32>(var_0.e.c.a.x, 0u), vec2<u32>(arg_2.x, var_0.d.a.x)), vec2<u32>(arg_2.x, 77486u) >> (vec2<u32>(u_input.b.x, arg_2.x) % vec2<u32>(32u))))));
    var var_2 = select(vec2<bool>(arg_0.b, !(~var_0.d.c.x <= _wgslsmith_mult_u32(45452u, var_1.c.x))), select(select(!global0[_wgslsmith_index_u32(44883u, 26u)], vec2<bool>(true, false | var_0.b), any(select(vec3<bool>(var_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, var_0.b), true))), select(!select(global0[_wgslsmith_index_u32(4294967295u, 26u)], vec2<bool>(false, var_0.e.b), var_0.e.b), global0[_wgslsmith_index_u32(firstLeadingBit(~arg_0.c.c.x), 26u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.d.a.x, arg_0.c.c.x), 26u)]), var_0.b), vec2<bool>((var_1.b.x & _wgslsmith_mult_i32(var_1.b.x, 25510i)) != abs(~arg_0.c.b.x), false));
    global0 = array<vec2<bool>, 26>();
    let var_3 = arg_0.c;
    return arg_1.x;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_2((_wgslsmith_clamp_i32(func_3(Struct_2(43879i, true, Struct_1(u_input.b, vec2<i32>(-42606i, 1i), u_input.b.xw), Struct_1(u_input.b, vec2<i32>(-13786i, 2147483647i), u_input.b.xw), vec2<u32>(15997u, 1u)), vec2<i32>(-1i, -34940i), u_input.b.wy), _wgslsmith_mult_i32(-58125i, 1i), 1i) | firstLeadingBit(_wgslsmith_div_i32(2147483647i, 1595i))) >> (countOneBits(countOneBits(max(5692u, 4294967295u))) % 32u), !(countOneBits(select(-1i, 1i, false)) != 6044i), Struct_1(vec4<u32>(~_wgslsmith_mod_u32(1u, u_input.b.x), ~u_input.b.x, u_input.a, arg_0 | reverseBits(arg_0)), -(~(-vec2<i32>(-24743i, 16563i))), ~vec2<u32>(arg_0 | u_input.a, 0u)), Struct_1(~(~vec4<u32>(u_input.b.x, arg_0, u_input.a, u_input.a)), ~select(vec2<i32>(-22065i, 1i), vec2<i32>(9383i, 1i), false) << (vec2<u32>(u_input.a, ~u_input.a) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.a)), min(abs(~u_input.b.wx), ~(~(~u_input.b.xx))));
    global0 = array<vec2<bool>, 26>();
    let var_1 = 1000f;
    let var_2 = vec4<u32>(~min(u_input.b.x << (~arg_0 % 32u), ~4294967295u), arg_0 << (min(~countOneBits(var_0.e.x), 0u << (_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(65503u, arg_0)) % 32u)) % 32u), _wgslsmith_dot_vec4_u32(var_0.d.a, _wgslsmith_add_vec4_u32(u_input.b, ~select(var_0.c.a, vec4<u32>(4294967295u, u_input.b.x, 0u, arg_0), true))), u_input.a << (var_0.e.x % 32u));
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(var_0.d.b, -(~firstTrailingBit(var_0.c.b))), var_0.b, var_0.c, Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.e.x, 43078u, arg_0), var_2), 131531u | u_input.b.x, var_2.x), u_input.b), var_0.c.b, var_2.yw), abs(var_0.d.c));
    return -1306f;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = reverseBits(~arg_3.a);
    global0 = array<vec2<bool>, 26>();
    var var_1 = -arg_3.d.b.x;
    var_1 = _wgslsmith_mult_i32(arg_1.c.b.x, _wgslsmith_dot_vec3_i32(min(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_3.d.b.x, arg_2.x, arg_1.d.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, -1i, 11160i), vec3<i32>(17315i, arg_3.a, arg_1.c.b.x)), -vec3<i32>(var_0, arg_2.x, var_0)), -vec3<i32>(var_0, 1i, var_0)), vec3<i32>(_wgslsmith_div_i32(abs(-32469i), countOneBits(2147483647i)), var_0 >> (~37048u % 32u), -1i & _wgslsmith_mult_i32(-36071i, arg_3.a))));
    global0 = array<vec2<bool>, 26>();
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(925f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f - -595f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1u))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(247f, -613f))) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(min(1577f, 1622f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2020f)) + _wgslsmith_f_op_f32(round(-515f))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-179f * arg_1.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_4(true, u_input.b.x), arg_2.e, arg_2.e.d.b, Struct_2(-5509i, false, Struct_1(vec4<u32>(17538u, u_input.a, arg_3, arg_3), vec2<i32>(9781i, -1i), u_input.b.zx), arg_2.d, vec2<u32>(arg_3, 32821u)))).x), ~max(select(4294967295u, 3409u, arg_2.e.b), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(14372u, 3074u, 1u, u_input.a), arg_2.e.c.a))));
    let var_1 = arg_2.e.c.a.wwy;
    var var_2 = abs(~firstLeadingBit(_wgslsmith_add_u32(4718u, 0u))) == var_1.x;
    var_2 = all(select(select(!(!global0[_wgslsmith_index_u32(u_input.a, 26u)]), select(vec2<bool>(true, arg_2.e.b), global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(abs(u_input.a), 26u)]), arg_2.e.b), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(var_0.a, true, arg_2.e.b, arg_2.e.b))), global0[_wgslsmith_index_u32(reverseBits(~9144u), 26u)]), !(!var_0.a)));
    let var_3 = Struct_4(all(vec3<bool>(false, _wgslsmith_div_u32(arg_2.e.d.a.x, 28113u) >= _wgslsmith_mod_u32(54784u, 27536u), var_0.a)), var_0.b);
    return Struct_2(arg_2.d.b.x, var_0.a, Struct_1(~(~vec4<u32>(1u, 4294967295u, var_1.x, arg_2.d.a.x)), vec2<i32>(-(arg_2.d.b.x & arg_0), ~arg_0), vec2<u32>(~0u, 9647u) | u_input.b.yw), arg_2.d, ~max(var_1.zz, min(~u_input.b.zz, vec2<u32>(u_input.a, 80932u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(-1i) >> (max(select(u_input.a & u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.b.x), true), u_input.b.x) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(283f, 419f, 688f))), all(vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1516f, 105f, -740f, 906f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(true, u_input.b.x), Struct_2(678i, true, Struct_1(u_input.b, vec2<i32>(-1i, -14065i), u_input.b.yy), Struct_1(u_input.b, vec2<i32>(-28675i, 39256i), u_input.b.xz), vec2<u32>(u_input.b.x, 1u)), vec2<i32>(11440i, -9524i), Struct_2(-2147483647i, true, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 33248u, 18739u), vec2<i32>(-2147483647i, -21299i), vec2<u32>(u_input.a, u_input.a)), Struct_1(u_input.b, vec2<i32>(-24351i, 0i), vec2<u32>(21118u, 0u)), vec2<u32>(70423u, 0u)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(661f, 1153f, 539f, -666f), vec4<f32>(1005f, -1988f, -1120f, 1000f))))), Struct_1(u_input.b, firstTrailingBit(select(vec2<i32>(-23440i, 1i), vec2<i32>(2147483647i, -22018i), true)), u_input.b.xx), Struct_2(-select(2147483647i, -6014i, true), true, Struct_1(select(u_input.b, vec4<u32>(1u, 0u, u_input.b.x, 1u), vec4<bool>(false, false, true, true)), vec2<i32>(50952i, -1i), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b.xx)), Struct_1(countOneBits(u_input.b), vec2<i32>(-2147483647i, 56696i), _wgslsmith_mult_vec2_u32(vec2<u32>(4401u, u_input.b.x), vec2<u32>(59802u, 42693u))), vec2<u32>(1u, 7135u))), 4294967295u >> (u_input.a % 32u));
    global0 = array<vec2<bool>, 26>();
    var_0 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.d.b.x, -22046i, -28053i << (1u % 32u), _wgslsmith_div_i32(var_0.d.b.x, 25418i)) & vec4<i32>(_wgslsmith_clamp_i32(var_0.d.b.x, var_0.c.b.x, var_0.c.b.x), -var_0.d.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-12319i, var_0.d.b.x, var_0.c.b.x), vec3<i32>(-37818i, var_0.d.b.x, var_0.a)), -29171i), vec4<i32>(var_0.a ^ ~var_0.a, -_wgslsmith_sub_i32(2704i, -8791i), var_0.c.b.x, _wgslsmith_mult_i32(~42342i, 1i))), false, var_0.c, var_0.c, var_0.c.c);
    var var_1 = vec2<bool>(all(!select(select(vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b), true), vec2<bool>(true, var_0.b), global0[_wgslsmith_index_u32(select(0u, 1u, true), 26u)])), !((_wgslsmith_div_u32(var_0.c.c.x, var_0.d.c.x) ^ u_input.a) < _wgslsmith_dot_vec4_u32(var_0.d.a, vec4<u32>(26574u, 4294967295u, var_0.e.x, var_0.d.c.x))));
    var var_2 = var_0.c.b.x;
    let var_3 = vec3<bool>(false, true, var_1.x);
    let var_4 = !vec3<bool>(var_1.x, !var_1.x, (var_0.d.b.x < (-16425i & var_0.c.b.x)) || (countOneBits(80474u) == ~var_0.c.c.x));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-719f - 686f), 1862f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.c, ~0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, 963f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5))) + 502f), -(~_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_0.d.b.x, var_0.c.b.x, -23945i)), vec3<i32>(0i, 16602i, var_0.a))));
}

