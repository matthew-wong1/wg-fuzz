struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> f32 {
    global1 = select(false, true, !select(!all(vec4<bool>(false, false, true, true)), !all(vec2<bool>(false, false)), true));
    var var_0 = Struct_1(firstLeadingBit(select(vec4<i32>(1i, 1i, 1i, 1i), ~(vec4<i32>(-2147483647i, 1i, 0i, -37308i) << (vec4<u32>(u_input.a, 4294967295u, 6979u, u_input.a) % vec4<u32>(32u))), vec4<bool>(all(vec3<bool>(false, false, true)), select(false, true, true), true, true))));
    global1 = false;
    let var_1 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, !(_wgslsmith_f_op_f32(416f * arg_0) < _wgslsmith_f_op_f32(260f - -1012f))), !vec3<bool>(!all(vec4<bool>(true, true, true, false)), true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(-arg_0) < arg_0);
    var var_2 = var_1.zy;
    return -827f;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = !vec3<bool>(abs(~40806u) <= u_input.a, (1i != arg_0.x) | (_wgslsmith_f_op_f32(func_3(427f)) >= _wgslsmith_f_op_f32(f32(-1f) * -156f)), 27249u > ~_wgslsmith_clamp_u32(61045u, 0u, arg_1));
    global1 = true;
    global0 = -arg_0.x;
    let var_1 = vec3<u32>(arg_2.x, 4294967295u, select(4294967295u, select(_wgslsmith_dot_vec4_u32(arg_2, arg_2), u_input.a ^ ~arg_2.x, true), var_0.x));
    let var_2 = false;
    return Struct_3(_wgslsmith_dot_vec3_u32(arg_2.www, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a << (41792u % 32u), arg_1, arg_2.x), ~(arg_2.wxw & vec3<u32>(arg_1, 22954u, arg_2.x)))), false & var_2, Struct_1(abs(vec4<i32>(arg_0.x, ~0i, abs(-1i), -33181i))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = arg_3;
    var var_1 = vec3<bool>(-var_0.a.x >= firstTrailingBit(arg_3.d), all(select(select(vec2<bool>(arg_1.b, true), vec2<bool>(true, true), vec2<bool>(arg_1.b, true)), select(vec2<bool>(true, true), !vec2<bool>(arg_1.b, false), arg_1.b), select(!vec2<bool>(arg_1.b, true), vec2<bool>(true, false), select(vec2<bool>(arg_1.b, false), vec2<bool>(false, arg_1.b), vec2<bool>(true, arg_1.b))))), all(!vec4<bool>(true, true, true, any(vec2<bool>(false, arg_1.b)))));
    global1 = false;
    var var_2 = -abs(arg_2.a.x);
    let var_3 = select(select(vec4<u32>(~(~u_input.a), 4294967295u, arg_1.a, ~73511u), arg_0, select(var_0.b <= 751f, all(vec4<bool>(arg_1.b, true, false, arg_1.b)), arg_1.b || var_1.x) || false), vec4<u32>(~5677u, 0u, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_0.wyx, vec3<u32>(arg_1.a, 26404u, u_input.a)), ~(~vec3<u32>(30459u, arg_0.x, 97650u))), (~98274u << (arg_0.x % 32u)) >> (0u % 32u)), any(!(!select(var_1.zz, vec2<bool>(arg_1.b, arg_1.b), false))));
    return 290f > arg_2.b;
}

fn func_1() -> u32 {
    let var_0 = func_4(vec4<u32>(u_input.a, ~(u_input.a & _wgslsmith_dot_vec2_u32(vec2<u32>(66067u, u_input.a), vec2<u32>(13522u, 61749u))), 4294967295u, u_input.a), func_2(firstTrailingBit(min(~vec4<i32>(1i, -1i, 22505i, 2223i), firstLeadingBit(vec4<i32>(30664i, -32402i, 0i, 0i)))), 32655u, ~vec4<u32>(u_input.a, 1u, 1u, u_input.a) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a)) % vec4<u32>(32u)), vec2<bool>(true, true)), Struct_2(abs(~(-vec3<i32>(-21276i, 27665i, 0i))), _wgslsmith_f_op_f32(floor(-1649f)), Struct_1(vec4<i32>(0i, -2147483647i, ~(-25718i), 56487i)), firstTrailingBit(~_wgslsmith_sub_i32(1i, 0i))), Struct_2(max(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-21265i, 1i, -15438i), vec3<i32>(44414i, -49262i, 14306i), vec3<i32>(22957i, -1765i, 65824i)), firstTrailingBit(-vec3<i32>(-2147483647i, 1i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-693f + 190f)))), Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, -2147483647i, 25206i), select(vec4<i32>(51529i, -17992i, 0i, 39194i), vec4<i32>(-27370i, -2147483647i, 1i, -1597i), vec4<bool>(true, false, true, false)))), 1i));
    let var_1 = Struct_2(vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, 25655i), vec2<i32>(16187i, -4652i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(0i, -63812i)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-40473i, -22878i, 2810i), func_2(vec4<i32>(-14337i, -76671i, -4505i, -1i), 4294967295u, vec4<u32>(17502u, u_input.a, u_input.a, 13760u), vec2<bool>(var_0, true)).c.a.xwx), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 1i, 0i), vec3<i32>(30757i, 16321i, -1i), abs(vec3<i32>(0i, 2147483647i, 3422i))), reverseBits(vec3<i32>(-26938i, -69443i, 4916i)))), _wgslsmith_f_op_f32(f32(-1f) * -2831f), func_2(vec4<i32>(-23425i, 0i, -2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-670i, 1i, -39584i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))), ~min(~0u, u_input.a & 4294967295u), vec4<u32>(u_input.a, 60943u, select(40095u, ~25736u, true), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(23214u, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(15343u, u_input.a, 43035u) % vec3<u32>(32u)))), select(!vec2<bool>(false, var_0), select(vec2<bool>(false, var_0), !vec2<bool>(var_0, true), false), var_0)).c, -17164i);
    global0 = -1i;
    var var_2 = vec3<bool>(all(!vec4<bool>(!var_0, all(vec4<bool>(false, false, var_0, true)), var_0, false)), false || !(var_1.d <= firstLeadingBit(9644i)), true);
    var_2 = vec3<bool>(true, var_2.x, !select(!var_2.x | any(vec4<bool>(false, var_0, false, false)), true, true));
    return 77390u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!all(vec4<bool>(true, true, true, false)), false);
    let var_1 = func_1();
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(20380u, 4294967295u, var_1, 1u), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, var_1), vec4<u32>(4294967295u, u_input.a, 1u, var_1)))) | _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 44395u, 37089u, u_input.a), vec4<u32>(0u, var_1, var_1, 0u)) >> (~vec4<u32>(53589u, 4294967295u, u_input.a, var_1) % vec4<u32>(32u)), ~abs(vec4<u32>(var_1, 0u, var_1, 4294967295u))), ~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 41209u, 4294967295u), vec4<u32>(var_1, 62218u, u_input.a, 75043u), vec4<u32>(var_1, 4294967295u, var_1, var_1)), ~vec4<u32>(1u, 1u, 4294967295u, u_input.a), true)));
    var_0 = select(!select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(true, false)), vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, var_0.x)), vec2<bool>(all(vec4<bool>(var_0.x, true, true, var_0.x)), true), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), true)), vec2<bool>(any(select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)), vec2<bool>(false, true))), true), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-678f)), _wgslsmith_f_op_f32(1121f - 450f)) < _wgslsmith_f_op_f32(-1154f * _wgslsmith_f_op_f32(f32(-1f) * -1292f)), countOneBits(firstTrailingBit(11552i)) >= -1i));
    var var_3 = abs(~vec3<i32>(1i, 1i, 1i) ^ (select(vec3<i32>(8288i, -26446i, 32709i), vec3<i32>(-1i, 0i, -2147483647i), !vec3<bool>(true, var_0.x, true)) & (vec3<i32>(68838i, 0i, -13312i) | firstTrailingBit(vec3<i32>(2147483647i, 30968i, -13278i)))));
    let var_4 = !vec2<bool>(var_0.x, select(var_0.x, all(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, true, true, false), false)), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 32635i, -1i, 0i), vec4<i32>(var_3.x, -2147483647i, -1i, var_3.x)), firstTrailingBit(50989u), firstLeadingBit(vec4<u32>(64506u, var_1, 16153u, 35448u)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x))).b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(65736u, u_input.a), select(vec2<u32>(var_2, 1u), vec2<u32>(1u, 30815u), var_0.x)), vec2<u32>(1u, ~var_1))), ~vec4<i32>(i32(-1i) * -var_3.x, -1i, var_3.x, ~(-2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(39492i, var_3.x, -31042i), firstLeadingBit(abs(~vec3<i32>(16495i, 1i, var_3.x))), (vec3<i32>(0i, var_3.x, var_3.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 43317u, u_input.a), vec3<u32>(var_2, u_input.a, 14088u)) % vec3<u32>(32u))) ^ vec3<i32>(i32(-1i) * -2147483647i, ~(-1i), var_3.x)), _wgslsmith_f_op_f32(290f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))), 22059u);
}

