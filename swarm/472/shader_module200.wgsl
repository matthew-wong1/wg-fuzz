struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false));

var<private> global1: array<vec4<f32>, 15>;

var<private> global2: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: array<Struct_3, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f), 1668f), 188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1452f))))) * 2666f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -979f))))))));
    return _wgslsmith_mult_u32(u_input.b, ~abs(~0u));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.a.zx, vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.d, 54474i), vec3<i32>(arg_0.d, 6164i, 2147483647i)), arg_0.d), -1138i >> (_wgslsmith_div_u32(u_input.b, 47250u) % 32u))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -15759i, countOneBits(arg_0.d)), _wgslsmith_dot_vec3_i32(arg_0.a << (arg_0.b % vec3<u32>(32u)), vec3<i32>(2147483647i, 69293i, 1i) ^ arg_0.a)));
    var var_1 = arg_0;
    var_0 = 0i;
    let var_2 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.e, ~arg_0.e), 8289i), -min(2147483647i & var_1.d, 3315i)), 0i, var_1.d, ~(-29228i));
    let var_3 = Struct_1(~reverseBits(vec3<i32>(-var_2.x, 1i, arg_0.d | 2147483647i)), ~abs(var_1.b ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0.b.x, var_1.b.x), vec3<u32>(var_1.b.x, u_input.a, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, -335f), vec3<f32>(var_1.c.x, -1267f, 696f)), var_1.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) * _wgslsmith_f_op_vec3_f32(select(arg_0.c, vec3<f32>(-853f, var_1.c.x, arg_0.c.x), true))))), max(countOneBits(24881i), 1i), -var_2.x);
    return var_2;
}

fn func_2() -> vec3<i32> {
    global3 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1208f)));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(func_3(Struct_1(vec3<i32>(1i, 1i, 1i), vec3<u32>(56989u, u_input.b, u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-498f, 544f, 1335f), vec3<f32>(518f, 373f, 721f), vec3<bool>(false, true, true))), ~11219i, 39957i << (u_input.a % 32u))), ~vec4<i32>(i32(-1i) * -7835i, ~19427i, select(0i, -45107i, true), -13486i)), -33900i, ~(-50853i), 1i);
    let var_2 = Struct_1(abs(var_1.xyy), vec3<u32>(u_input.a, countOneBits(select(u_input.a ^ 12641u, 36430u, select(false, false, false))), u_input.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-460f, 869f, -1028f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(137f, 2240f, -204f) * vec3<f32>(-1350f, -170f, 1260f)))))), -(~(-var_1.x)), abs(2147483647i));
    var_0 = var_2.c.x;
    return _wgslsmith_add_vec3_i32(vec3<i32>(~(~var_1.x), func_3(Struct_1(vec3<i32>(2147483647i, -12394i, var_1.x), var_2.b, var_2.c, var_1.x, var_2.a.x)).x ^ var_1.x, -(~var_2.a.x)), vec3<i32>(~var_2.d, select(11042i, _wgslsmith_dot_vec2_i32(var_1.zz, var_1.zy), true), _wgslsmith_mod_i32(1i, var_1.x | var_2.e))) & var_1.xwy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~reverseBits(1u), 6u)];
    var var_1 = _wgslsmith_div_u32(128092u, u_input.b);
    let var_2 = !(1i >= ~var_0.a);
    var var_3 = vec2<u32>(u_input.a >> (9702u % 32u), (4294967295u & u_input.b) & ~func_1());
    var var_4 = _wgslsmith_sub_vec3_i32(func_2(), select(_wgslsmith_mult_vec3_i32(func_3(Struct_1(vec3<i32>(-20343i, -48726i, 67187i), vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<f32>(1000f, -402f, 614f), var_0.a, var_0.a)).xxx, -vec3<i32>(-2147483647i, var_0.a, var_0.a)), vec3<i32>(var_0.a ^ var_0.a, _wgslsmith_sub_i32(var_0.a, var_0.a), -62183i), select(!vec3<bool>(var_2, var_2, false), select(vec3<bool>(var_2, var_2, true), vec3<bool>(var_2, var_2, var_2), var_2), vec3<bool>(var_2, var_2, false)))) | func_3(Struct_1(~vec3<i32>(-6827i, var_0.a, -27519i), select(firstLeadingBit(vec3<u32>(u_input.a, var_3.x, u_input.a)), ~vec3<u32>(var_3.x, 14477u, var_3.x), select(vec3<bool>(false, var_2, true), vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-456f, -743f, 545f) + vec3<f32>(632f, 1708f, 442f))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, var_0.a, -1i, -10791i), select(vec4<i32>(-19219i, var_0.a, var_0.a, var_0.a), vec4<i32>(var_0.a, var_0.a, 2147483647i, 25830i), var_2)), _wgslsmith_mod_i32(var_0.a, var_0.a) | countOneBits(2147483647i))).xwy;
    global0 = array<vec4<bool>, 19>();
    var var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(727f, _wgslsmith_f_op_f32(select(-293f, 248f, true)), _wgslsmith_f_op_f32(min(620f, -1596f)), _wgslsmith_div_f32(-567f, 368f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(1u, 19u)]))))), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(firstLeadingBit(1u >> (u_input.a % 32u)), 15u)] + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, -1149f, -2557f, -1357f) - vec4<f32>(945f, 967f, -542f, 2230f)))), select(vec4<bool>(false, !var_2, !var_2, true), global0[_wgslsmith_index_u32(var_3.x, 19u)], vec4<bool>(true, true, any(vec2<bool>(var_2, false)), true)))), var_2, ~(-((-43959i & var_4.x) ^ min(var_0.a, 2147483647i))));
    global3 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(26834i, 2147483647i, -52542i, 1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, 15410i, var_4.x), vec3<i32>(var_0.a, var_4.x, -126i))), max(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 6063i, var_5.c, var_4.x), vec4<i32>(1169i, var_4.x, -2147483647i, var_5.c)) & vec4<i32>(1i, 1i, var_5.c, var_5.c), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_4.x, var_5.c, var_0.a), -vec4<i32>(var_4.x, var_5.c, 53128i, var_4.x)))), vec4<i32>(_wgslsmith_add_i32(~(-15148i), -4456i), 1i, var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(max(-2147483647i, -2147483647i), var_4.x >> (var_3.x % 32u)), countOneBits(-vec2<i32>(var_0.a, var_4.x)))), vec3<i32>(var_4.x, var_4.x, var_0.a));
}

