struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 4294967295u, 52497u), vec2<i32>(1i, 1i), -24770i), Struct_1(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 82872u, 1u), vec2<i32>(-1i, 1i), -12565i), Struct_1(vec3<bool>(false, false, false), vec3<u32>(25221u, 1706u, 34408u), vec2<i32>(-65334i, i32(-2147483648)), -10776i), Struct_1(vec3<bool>(false, true, true), vec3<u32>(0u, 20458u, 25883u), vec2<i32>(88127i, i32(-2147483648)), 0i), Struct_1(vec3<bool>(true, false, true), vec3<u32>(34461u, 0u, 1u), vec2<i32>(-11216i, 1i), 0i), Struct_1(vec3<bool>(false, false, true), vec3<u32>(47345u, 60016u, 1u), vec2<i32>(i32(-2147483648), 37607i), 23359i), Struct_1(vec3<bool>(false, true, true), vec3<u32>(21198u, 44940u, 56916u), vec2<i32>(-2772i, -10855i), 2147483647i), Struct_1(vec3<bool>(false, false, false), vec3<u32>(19838u, 0u, 0u), vec2<i32>(-49988i, 1i), -5598i), Struct_1(vec3<bool>(false, false, false), vec3<u32>(58874u, 4294967295u, 4560u), vec2<i32>(-2598i, -1305i), 60541i), Struct_1(vec3<bool>(false, true, false), vec3<u32>(0u, 62382u, 40143u), vec2<i32>(1i, -49691i), 22126i), Struct_1(vec3<bool>(true, false, true), vec3<u32>(13251u, 42493u, 4294967295u), vec2<i32>(-23840i, i32(-2147483648)), 2147483647i), Struct_1(vec3<bool>(false, true, false), vec3<u32>(0u, 1u, 14033u), vec2<i32>(0i, -4644i), -21727i), Struct_1(vec3<bool>(true, true, true), vec3<u32>(7267u, 72904u, 56452u), vec2<i32>(2147483647i, -33085i), -1i), Struct_1(vec3<bool>(true, false, true), vec3<u32>(84876u, 72338u, 1u), vec2<i32>(-1i, 1012i), -64601i), Struct_1(vec3<bool>(false, false, true), vec3<u32>(4294967295u, 17589u, 14196u), vec2<i32>(1i, 2147483647i), -1i), Struct_1(vec3<bool>(true, true, true), vec3<u32>(55795u, 16457u, 0u), vec2<i32>(-10768i, 0i), 0i), Struct_1(vec3<bool>(false, true, false), vec3<u32>(1u, 10325u, 68397u), vec2<i32>(36607i, -1i), 22832i), Struct_1(vec3<bool>(true, false, false), vec3<u32>(1u, 15089u, 0u), vec2<i32>(-1i, 0i), 1i), Struct_1(vec3<bool>(true, false, true), vec3<u32>(1u, 0u, 1u), vec2<i32>(2147483647i, -5779i), 1i), Struct_1(vec3<bool>(false, false, true), vec3<u32>(4294967295u, 17951u, 24141u), vec2<i32>(7313i, 8856i), 1114i), Struct_1(vec3<bool>(true, false, true), vec3<u32>(12027u, 50041u, 1u), vec2<i32>(21954i, -12578i), 26819i), Struct_1(vec3<bool>(false, false, true), vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(5990i, 22736i), i32(-2147483648)), Struct_1(vec3<bool>(false, false, false), vec3<u32>(2415u, 61976u, 4294967295u), vec2<i32>(-1i, 2147483647i), -1i), Struct_1(vec3<bool>(false, true, false), vec3<u32>(1u, 37323u, 0u), vec2<i32>(i32(-2147483648), 1i), -83709i), Struct_1(vec3<bool>(true, false, false), vec3<u32>(6016u, 8907u, 51230u), vec2<i32>(-1i, 2147483647i), 2147483647i), Struct_1(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1516u, 91852u), vec2<i32>(-11499i, i32(-2147483648)), 24065i), Struct_1(vec3<bool>(true, true, false), vec3<u32>(15218u, 131181u, 10549u), vec2<i32>(-9063i, 0i), -12446i), Struct_1(vec3<bool>(true, true, false), vec3<u32>(7653u, 1u, 19304u), vec2<i32>(-1i, 1i), 2147483647i), Struct_1(vec3<bool>(false, true, false), vec3<u32>(0u, 1u, 4294967295u), vec2<i32>(-23483i, 0i), 0i), Struct_1(vec3<bool>(true, false, true), vec3<u32>(17264u, 63492u, 56509u), vec2<i32>(1i, -18498i), 0i));

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(877f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-839f)))), arg_2);
    global2 = array<Struct_1, 22>();
    global1 = array<Struct_1, 30>();
    let var_1 = select(_wgslsmith_sub_vec3_u32(select(~_wgslsmith_add_vec3_u32(vec3<u32>(30237u, u_input.a.x, u_input.a.x), vec3<u32>(arg_0.d, u_input.a.x, 18978u)), ~firstLeadingBit(arg_0.b.b), false), _wgslsmith_mult_vec3_u32(~vec3<u32>(15729u, arg_0.d, arg_0.d), arg_0.b.b)), ~vec3<u32>(firstTrailingBit(23207u), u_input.a.x & 4988u, 1u) >> (vec3<u32>(18666u, max(1u, 0u), u_input.a.x) % vec3<u32>(32u)), select(!vec3<bool>(true | arg_0.b.a.x, true, u_input.a.x < arg_0.b.b.x), arg_0.b.a, vec3<bool>(!arg_0.b.a.x, false, !arg_0.b.a.x)));
    let var_2 = arg_0.b;
    return any(vec3<bool>(arg_0.b.b.x < (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, 1642u), var_2.b.xz) >> (var_1.x % 32u)), all(!(!vec4<bool>(false, var_2.a.x, arg_0.b.a.x, arg_3.x))), false));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(!select(vec3<bool>(true, func_3(Struct_2(-647f, Struct_1(vec3<bool>(true, false, false), arg_1, u_input.c, arg_2.x), vec2<i32>(u_input.b, -19813i), arg_0), u_input.c, -1036f, vec2<bool>(false, true)), select(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), true), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(3398u, 1089u, abs(arg_1.x)), arg_1), u_input.a.x, _wgslsmith_sub_u32(arg_0, arg_1.x)), vec2<i32>(-6088i & abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -74025i), vec2<i32>(1i, 47365i))), -_wgslsmith_sub_i32(-2147483647i, arg_2.x) >> (abs(6826u) % 32u)), 2147483647i);
    var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 22u)];
    var var_1 = _wgslsmith_mod_i32(-1i | (~_wgslsmith_mult_i32(u_input.d, 11603i) << (var_0.b.x % 32u)), -1i);
    var var_2 = u_input.a;
    var_1 = var_0.c.x;
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -770f))), 1f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_div_vec2_u32(~(~(~select(u_input.a, u_input.a, false))), countOneBits(u_input.a));
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, ~u_input.a.x), abs(min(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.x), firstTrailingBit(u_input.a)), u_input.a)));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-814f))), -349f), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1081f))));
    let var_3 = all(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) | true;
    return ~(u_input.a.x & var_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    var var_0 = func_4(vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(arg_0.b.c, vec2<i32>(arg_0.c.x, u_input.d)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(countOneBits(arg_0.c.x), arg_2.x, 20885i), -2147483647i), -(arg_1.b.d | arg_0.b.c.x), _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.b), arg_2)) & ~(-2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(func_2(67409u, arg_0.b.b, _wgslsmith_sub_vec2_i32(arg_2, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c.x, u_input.b), arg_2)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-arg_0.a), 2057f));
    var_0 = u_input.a.x;
    let var_1 = 2147483647i << (arg_0.b.b.x % 32u);
    global1 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(arg_1.a, -1041f))));
    return _wgslsmith_f_op_f32(trunc(var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 22>();
    global1 = array<Struct_1, 30>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-477f * 434f) - 1455f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2008f * _wgslsmith_f_op_f32(abs(-255f)))), _wgslsmith_f_op_f32(func_1(Struct_2(-253f, global1[_wgslsmith_index_u32(1u, 30u)], vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -29637i), u_input.c), -42322i), 0u), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(676f + -1789f), 1710f), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, u_input.a.x), 30u)], -vec2<i32>(u_input.c.x, u_input.d) << (abs(u_input.a) % vec2<u32>(32u)), (u_input.a.x ^ u_input.a.x) >> (~1u % 32u)), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.c ^ vec2<i32>(-1i, 37525i)) & vec2<i32>(-15558i, _wgslsmith_mod_i32(u_input.c.x, u_input.d)), _wgslsmith_f_op_vec2_f32(var_0.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz - vec2<f32>(var_0.x, -991f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), firstLeadingBit(reverseBits(max(reverseBits(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, 3030i), vec3<i32>(u_input.b, -39449i, 18058i))))), var_0.xz);
}

