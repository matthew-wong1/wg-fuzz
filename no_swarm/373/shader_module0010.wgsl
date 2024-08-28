struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    global0 = array<Struct_1, 5>();
    let var_0 = Struct_1(max(_wgslsmith_sub_i32(-arg_0, _wgslsmith_sub_i32(firstTrailingBit(-1i), 1i)), arg_2.a), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.b.x, ~(-arg_1.b.x), 2147483647i), -vec3<i32>(2147483647i, -1i, i32(-1i) * -2147483647i)));
    global0 = array<Struct_1, 5>();
    var var_1 = arg_2;
    let var_2 = 4294967295u;
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<i32> {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = 460f;
    let var_1 = 675f;
    let var_2 = Struct_1(i32(-1i) * -_wgslsmith_div_i32(5581i, arg_0.b.x | -38201i), max(_wgslsmith_add_vec3_i32(vec3<i32>(-7715i, -39306i, u_input.c.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), arg_0.b), vec3<i32>(_wgslsmith_add_i32(arg_0.a, -1i), arg_0.a, countOneBits(u_input.c.x))) | -(-arg_0.b & vec3<i32>(8022i, -12841i, arg_0.a)));
    return -vec2<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, 3205i, u_input.c.x, u_input.c.x), vec4<i32>(-1i, u_input.c.x, arg_0.a, -13949i)), ~1i), 1i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = vec2<i32>(abs(max(-_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 2147483647i)), select(abs(2147483647i), 56902i, all(vec2<bool>(true, true))))), -40423i);
    let var_1 = ~func_4(Struct_1(func_3(arg_0.b.x, Struct_1(u_input.c.x, arg_1.b), Struct_1(arg_2.x, arg_2.wyy), vec3<f32>(-1207f, -1000f, -166f)) & ~(-2147483647i), arg_1.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1489f, 1062f, 1089f, 724f), vec4<f32>(1009f, 2119f, -142f, -188f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2463f, 300f, -2342f), vec3<f32>(-1092f, -764f, 255f)))) + vec3<f32>(1461f, _wgslsmith_div_f32(448f, 250f), _wgslsmith_f_op_f32(step(-789f, 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1420f, -1574f, -1383f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-237f, -793f, 702f))))))));
    var_0 = vec2<i32>(var_0.x | (~var_1.x & max(17885i >> (1u % 32u), -2147483647i >> (u_input.b.x % 32u))), ~(-1i));
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, u_input.b.x), 5u)];
    return -2147483647i;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~(1i >> ((countOneBits(u_input.b.x) ^ (u_input.b.x ^ 9428u)) % 32u)), vec3<i32>(~(~(-2147483647i)) | ~func_2(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], Struct_1(u_input.c.x, vec3<i32>(u_input.c.x, u_input.c.x, -25549i)), vec4<i32>(u_input.c.x, u_input.c.x, 10195i, u_input.c.x)), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_mult_i32(-1i, u_input.c.x)), select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -74549i), vec3<i32>(1i, u_input.c.x, u_input.c.x)), ~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), -(31012i >> (0u % 32u)), u_input.c.x >= func_3(-9709i, Struct_1(u_input.c.x, vec3<i32>(45405i, u_input.c.x, 5747i)), Struct_1(-21911i, vec3<i32>(-1i, u_input.c.x, u_input.c.x)), vec3<f32>(-1091f, 2176f, -1599f)))));
    var var_1 = u_input.b.x | abs(u_input.a.x);
    var_1 = firstTrailingBit(firstTrailingBit(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 95863u), vec4<u32>(u_input.a.x, 0u, 4294967295u, 29300u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x)))));
    var var_2 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(false, true))), any(vec2<bool>(true, true))));
    var var_3 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, var_0.a) | var_0.b.x, _wgslsmith_mult_i32(~u_input.c.x, firstLeadingBit(8829i))) & abs(_wgslsmith_mod_i32(reverseBits(35697i), var_0.a)), _wgslsmith_sub_vec3_i32(max(firstTrailingBit(vec3<i32>(u_input.c.x, 51298i, var_0.b.x)), reverseBits(var_0.b)) & vec3<i32>(41484i, -1i << (0u % 32u), _wgslsmith_clamp_i32(3814i, 1i, var_0.a)), abs(vec3<i32>(var_0.b.x, 1i, -875i))));
    return Struct_1(select(_wgslsmith_dot_vec4_i32(-vec4<i32>(-38701i, 87487i, var_3.b.x, u_input.c.x), ~abs(vec4<i32>(var_0.a, 6861i, 0i, 14626i))), _wgslsmith_clamp_i32(countOneBits(max(-5087i, var_3.a)), -reverseBits(-26914i), 1i << (1u % 32u)), ~abs(0u) <= ((u_input.b.x ^ u_input.b.x) & u_input.a.x)), vec3<i32>(-u_input.c.x, var_3.b.x ^ var_3.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(Struct_1(var_0.b.x, var_3.b), Struct_1(0i, var_3.b), vec4<i32>(2147483647i, -28932i, u_input.c.x, u_input.c.x)), var_0.a << (u_input.b.x % 32u)), vec2<i32>(_wgslsmith_mult_i32(var_0.a, -21255i), 43587i & var_3.b.x))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_1, 5>();
    let var_0 = ~vec3<u32>(1u, 1u, u_input.b.x);
    var var_1 = 1238f;
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~var_0, u_input.b), ~(~23914u));
    let var_3 = 20440i;
    return _wgslsmith_sub_i32((-1i | func_4(global0[_wgslsmith_index_u32(~1u, 5u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(804f, -127f, 1393f, -1803f) - vec4<f32>(181f, -952f, 377f, 1000f))).x) & firstTrailingBit(-2147483647i), arg_2);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, arg_1, -1361f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, 1350f))))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * 853f))))), _wgslsmith_f_op_f32(trunc(arg_1)), arg_1)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * 1979f)), _wgslsmith_f_op_f32(-746f + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, var_0.x, true)) + 1f));
    let var_1 = abs(~4294967295u);
    var_0 = vec3<f32>(-346f, -1741f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -875f) + 2331f) * 647f));
    return global0[_wgslsmith_index_u32((_wgslsmith_add_u32(u_input.b.x ^ 1u, var_1) >> (~(~_wgslsmith_clamp_u32(4294967295u, 29069u, u_input.a.x)) % 32u)) ^ ((_wgslsmith_dot_vec2_u32(vec2<u32>(35121u, arg_2), u_input.a) & 0u) << (_wgslsmith_sub_u32(~43326u, var_1 << (4294967295u % 32u)) % 32u)), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    let var_2 = func_6(Struct_1(func_5(vec3<bool>(true, false, false), true, abs(u_input.c.x), func_1()) | firstTrailingBit(12194i), vec3<i32>(i32(-1i) * -u_input.c.x, u_input.c.x, 2147483647i)), 407f, 40492u);
    var_0 = select(1i, ~_wgslsmith_mod_i32(-1i, var_2.b.x), !((5633u >> (u_input.a.x % 32u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4273u, 75540u, 4294967295u), vec4<u32>(62659u, u_input.a.x, u_input.a.x, u_input.b.x)))) & -2147483647i;
    let var_3 = !vec3<bool>(var_2.a > -(i32(-1i) * -26722i), false, true);
    global0 = array<Struct_1, 5>();
    var var_4 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_5 = select(~vec4<i32>(_wgslsmith_clamp_i32(var_2.b.x, _wgslsmith_mod_i32(var_2.b.x, -20761i), _wgslsmith_dot_vec3_i32(var_4.b, var_4.b)), 1782i, -1i, _wgslsmith_mult_i32(func_1().a, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(2147483647i, 16235i), countOneBits(2147483647i), func_5(vec3<bool>(var_3.x, var_3.x, var_3.x), true, var_2.a, Struct_1(var_4.a, var_2.b)), 1i) ^ min(vec4<i32>(var_4.a, -1i, -1101i, -1i) & vec4<i32>(u_input.c.x, u_input.c.x, var_2.b.x, var_2.b.x), firstLeadingBit(vec4<i32>(-34415i, u_input.c.x, var_2.b.x, var_4.b.x))), vec4<i32>(_wgslsmith_mult_i32(func_3(-2147483647i, var_2, Struct_1(27476i, var_4.b), vec3<f32>(var_1, var_1, var_1)), u_input.c.x), func_5(select(vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(false, var_3.x, var_3.x), var_3), true, -6730i, Struct_1(23883i, var_4.b)), var_4.b.x, func_1().b.x)), any(!select(select(var_3.zx, var_3.xz, true), var_3.xy, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~4294967295u, 0u), _wgslsmith_mult_u32(u_input.a.x, 86309u)), vec2<u32>(firstLeadingBit(33392u), 1u) & u_input.b.yz), ~271u, -1545i);
}

