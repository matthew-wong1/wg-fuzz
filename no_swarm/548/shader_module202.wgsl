struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(47461u, 17200u, 52253u), 0i, vec4<i32>(7289i, 4296i, 21604i, 3567i), -1i);

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(1767f, -522f, 1113f), vec3<f32>(-2027f, -157f, 124f), vec3<f32>(972f, 290f, 464f), vec3<f32>(-1000f, 1155f, -1730f), vec3<f32>(371f, -692f, -996f), vec3<f32>(-1542f, -576f, 553f), vec3<f32>(2251f, 1000f, 1232f), vec3<f32>(1987f, 1641f, -223f), vec3<f32>(-1000f, 687f, -1026f), vec3<f32>(205f, 940f, -782f), vec3<f32>(-134f, -157f, 1683f), vec3<f32>(483f, -814f, 640f), vec3<f32>(235f, 958f, 797f), vec3<f32>(398f, 590f, 1000f), vec3<f32>(329f, -623f, -646f), vec3<f32>(-225f, 1000f, 1091f), vec3<f32>(1155f, -603f, 1000f), vec3<f32>(-360f, 2156f, 494f), vec3<f32>(-757f, -762f, -1000f), vec3<f32>(250f, 1666f, 637f), vec3<f32>(-145f, -430f, 809f), vec3<f32>(1000f, -386f, 1000f), vec3<f32>(1000f, 2738f, -350f), vec3<f32>(-2357f, 122f, -548f), vec3<f32>(-103f, 1000f, -195f), vec3<f32>(-178f, -530f, 1170f), vec3<f32>(-1470f, -358f, -242f), vec3<f32>(1688f, -673f, -1075f), vec3<f32>(-1245f, -290f, 1000f));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_mult_i32(u_input.b, countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.c.x, global0.c.x, global3.c.x), firstLeadingBit(vec3<i32>(0i, u_input.b, -86151i))), abs(_wgslsmith_add_i32(global2.d, 52710i)))));
    var var_1 = vec3<u32>(global3.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9692u, 4294967295u, global2.a.x, 0u), vec4<u32>(arg_0, 0u, arg_0, 1u)), 4294967295u), _wgslsmith_sub_vec2_u32(~vec2<u32>(global2.a.x, global2.a.x), firstTrailingBit(global0.a.xx))), abs(~global3.a.x), 1612u);
    return reverseBits(~abs(global2.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_1(~vec3<u32>(36725u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_2.yz, vec2<u32>(0u, global3.a.x)), _wgslsmith_div_u32(1u, 1u)), ~58948u), firstLeadingBit(23723i), _wgslsmith_div_vec4_i32(-(global2.c | _wgslsmith_clamp_vec4_i32(vec4<i32>(-38776i, arg_0.d, -2147483647i, -1i), vec4<i32>(global2.c.x, 1i, 13265i, 0i), arg_0.c)), global3.c), global0.b);
    var var_1 = ~_wgslsmith_dot_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, global3.a.x, var_0.a.x, var_0.a.x), vec4<u32>(arg_0.a.x, arg_1.a.x, 51775u, arg_0.a.x)) ^ firstTrailingBit(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec4<u32>(_wgslsmith_add_u32(global2.a.x & arg_2.x, arg_2.x), global0.a.x, global0.a.x, arg_2.x));
    global3 = arg_0;
    let var_2 = -global2.c.wyz;
    let var_3 = min(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(arg_2.x, 13320u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(6527u, 1u, arg_0.a.x, global2.a.x), vec4<u32>(~1u, 0u, ~9193u, ~arg_1.a.x))), 0u);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b, global3.c.x, -u_input.a.x | abs(60668i), firstLeadingBit(arg_0.c.x)), vec4<i32>(2147483647i, -25759i, _wgslsmith_dot_vec4_i32(~global2.c, global0.c & vec4<i32>(global3.c.x, 13108i, global3.b, 2147483647i)), var_0.d), global0.c) ^ select(global3.c, global0.c, vec4<bool>(true, !(arg_3 > arg_3), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), true));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = Struct_1(vec3<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, max(1u, global0.a.x)), reverseBits(~global2.a.x)), countOneBits(arg_0) ^ ~arg_0), -1i, func_4(Struct_1(vec3<u32>(global3.a.x, func_3(global3.a.x, 102f), global3.a.x), firstLeadingBit(9053i), countOneBits(~vec4<i32>(988i, global0.d, -7491i, -20136i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, global0.c.x, u_input.a.x, 25678i), vec4<i32>(-24375i, u_input.a.x, u_input.a.x, global0.c.x), vec4<bool>(true, true, true, false)), global3.c)), Struct_1(~(~vec3<u32>(11398u, global3.a.x, 21303u)), global3.c.x, ~(~vec4<i32>(global0.c.x, 1i, 1i, global2.b)), -2147483647i), ~abs(~vec3<u32>(4294967295u, 7557u, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(950f + 1505f), all(vec3<bool>(false, false, false)))) + -396f)), ~u_input.b);
    global0 = Struct_1(arg_1, 24418i & _wgslsmith_dot_vec3_i32(reverseBits(select(global3.c.wzx, u_input.a, true)), firstLeadingBit(global3.c.wxz)), vec4<i32>(~0i, ~(~(global3.b >> (4294967295u % 32u))), ~_wgslsmith_mult_i32(max(-2147483647i, 2147483647i), _wgslsmith_div_i32(global0.b, -73168i)), u_input.a.x), 2147483647i);
    let var_0 = _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(abs(arg_0), 29u)], vec3<f32>(_wgslsmith_div_f32(-913f, _wgslsmith_f_op_f32(step(-581f, _wgslsmith_f_op_f32(-964f + 1642f)))), -846f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1598f + -1000f) * _wgslsmith_f_op_f32(-1221f + -1000f)))));
    global0 = Struct_1(_wgslsmith_add_vec3_u32(global2.a, vec3<u32>(0u, 28958u, 0u) ^ ~global3.a) & vec3<u32>(arg_1.x, ~(~0u), firstLeadingBit(arg_0)), 63702i, _wgslsmith_mod_vec4_i32(-global0.c & vec4<i32>(13095i, -27792i, u_input.a.x, 0i), global2.c) << (vec4<u32>(60623u, 1u, firstTrailingBit(min(0u, global3.a.x)), 9118u) % vec4<u32>(32u)), _wgslsmith_div_i32(max(global3.d, reverseBits(2147483647i)), countOneBits(global3.b << (global0.a.x % 32u))) << (1u % 32u));
    global1 = array<vec3<f32>, 29>();
    return Struct_1((~(vec3<u32>(global3.a.x, global2.a.x, 31760u) << (vec3<u32>(arg_1.x, 1u, arg_1.x) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, global3.a.x, 0u), vec3<u32>(1u, arg_1.x, arg_0) >> (vec3<u32>(16779u, 1u, global0.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) & global3.a, 2147483647i << (~arg_0 % 32u), -(global2.c ^ global2.c), 10635i);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    var var_0 = func_2(85065u, global3.a >> (vec3<u32>(arg_1.x, reverseBits(_wgslsmith_div_u32(4294967295u, global0.a.x)), countOneBits(global0.a.x)) % vec3<u32>(32u)));
    var var_1 = ~global0.c.ww;
    var var_2 = vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), global2.b > 4549i)) & true, 54063i != global3.c.x);
    let var_3 = global3.c;
    var var_4 = func_2(global3.a.x, ~select(vec3<u32>(reverseBits(1u), _wgslsmith_mod_u32(arg_1.x, 1u), ~63219u), vec3<u32>(global2.a.x, ~global2.a.x, ~var_0.a.x), vec3<bool>(select(false, true, var_2.x), any(vec2<bool>(var_2.x, var_2.x)), var_2.x)));
    return 10706i;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = ~(~_wgslsmith_div_u32(38887u, global2.a.x));
    global0 = arg_0;
    global0 = arg_0;
    global3 = arg_0;
    let var_1 = func_2(var_0, ~reverseBits(~select(vec3<u32>(57212u, arg_2.a.x, var_0), vec3<u32>(16311u, global0.a.x, 1u), false)));
    return 3903i;
}

fn func_6(arg_0: u32, arg_1: i32) -> vec3<u32> {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(arg_0, 46188u), firstTrailingBit(global0.a.x), 27314u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 1i, -57447i, global2.d) >> (abs(vec4<u32>(4294967295u, global0.a.x, arg_0, global0.a.x) & vec4<u32>(1u, global2.a.x, 19313u, 39030u)) % vec4<u32>(32u)), max(vec4<i32>(0i, func_2(global3.a.x, global2.a).c.x, 1441i, global3.b), global3.c)), vec4<i32>(u_input.b, _wgslsmith_add_i32(i32(-1i) * -2147483647i, global0.d >> (global2.a.x % 32u)), ~_wgslsmith_mod_i32(~arg_1, global3.d >> (global3.a.x % 32u)), -(~_wgslsmith_mult_i32(1i, arg_1))), -34884i);
    let var_1 = ~countOneBits(~global3.a);
    global3 = Struct_1(global0.a, (_wgslsmith_mod_i32(0i, func_5(Struct_1(vec3<u32>(1u, var_0.a.x, global3.a.x), var_0.c.x, vec4<i32>(global0.b, var_0.b, -1i, -1i), -1i), -261f, Struct_1(vec3<u32>(var_1.x, global3.a.x, global0.a.x), global0.b, vec4<i32>(36184i, 0i, global0.b, var_0.d), 1i))) << ((min(var_1.x, 0u) ^ 1u) % 32u)) & -_wgslsmith_mod_i32(-u_input.b, func_5(Struct_1(global2.a, arg_1, vec4<i32>(-52529i, 0i, arg_1, arg_1), -48826i), 118f, Struct_1(global3.a, arg_1, vec4<i32>(36606i, u_input.a.x, global2.c.x, 14309i), var_0.b))), vec4<i32>(~(25371i ^ ~global0.b), (max(arg_1, u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 4294967295u, global2.a.x), vec3<u32>(4294967295u, 4294967295u, 35785u)) % 32u)) ^ 0i, -firstTrailingBit(-var_0.d), reverseBits(var_0.b)), select(-9307i, func_1(_wgslsmith_sub_i32(1i ^ var_0.d, _wgslsmith_add_i32(-30265i, global3.c.x)), vec3<u32>(~arg_0, _wgslsmith_div_u32(var_1.x, var_0.a.x), func_3(1u, -224f))), !all(vec3<bool>(true, true, false))));
    var var_2 = 0i;
    let var_3 = func_2(var_0.a.x, ~(~abs(~var_1)));
    return ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 4294967295u, 19600u, global0.a.x)), select(vec4<u32>(global3.a.x, var_0.a.x, global0.a.x, global2.a.x), vec4<u32>(4294967295u, 1u, var_0.a.x, arg_0), true)), 0u), ~var_0.a.x, ~_wgslsmith_div_u32(var_1.x >> (var_1.x % 32u), 35906u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(4294967295u, func_5(Struct_1(vec3<u32>(global2.a.x, global3.a.x, 10059u), u_input.a.x, vec4<i32>(global0.d, global2.c.x, global0.b, global2.b), func_1(-2147483647i, vec3<u32>(0u, 4294967295u, global3.a.x))), -1371f, func_2(29989u << (global2.a.x % 32u), vec3<u32>(global2.a.x, 13767u, 10140u)))) | global3.a;
    var var_1 = all(select(vec2<bool>(true, true), !vec2<bool>(select(false, false, false), true), true));
    var var_2 = -global0.c;
    var var_3 = Struct_1(~(vec3<u32>(func_3(global2.a.x, 720f), global3.a.x, 2211u) ^ global0.a), ~(~1i), -vec4<i32>(1i, 57892i, -var_2.x, i32(-1i) * -1i), -2147483647i);
    var_1 = all(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), false));
    var var_4 = vec4<bool>(all(vec3<bool>(false, !any(vec3<bool>(true, false, false)), true)), any(vec3<bool>(global2.c.x != ~44140i, -29100i == global3.b, false)), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)) | any(vec4<bool>(true, true, true, true)));
    var var_5 = vec2<u32>(var_0.x, global2.a.x);
    global0 = func_2(var_3.a.x, vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(func_6(var_3.a.x, u_input.b).xy, vec2<u32>(global0.a.x, global2.a.x)), 60269u));
    let x = u_input.a;
    s_output = StorageBuffer(max(func_2(min(_wgslsmith_dot_vec3_u32(vec3<u32>(47426u, global3.a.x, global0.a.x), global0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(51406u, global2.a.x, global3.a.x), vec3<u32>(42684u, 4767u, var_3.a.x))), ~abs(global0.a)).b, ~((i32(-1i) * -35618i) >> (var_3.a.x % 32u))), ~_wgslsmith_mult_u32(34614u, var_0.x), global1[_wgslsmith_index_u32(func_2(reverseBits(0u), global0.a).a.x, 29u)]);
}

