struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-483f, -2667f, 118f, 1393f), vec4<f32>(2151f, 983f, -407f, 469f), vec4<f32>(1720f, -500f, -1358f, 1498f), vec4<f32>(-275f, -872f, -989f, -237f), vec4<f32>(-470f, 1309f, -428f, -643f), vec4<f32>(1229f, 870f, -432f, -799f), vec4<f32>(-1812f, 793f, -287f, -565f), vec4<f32>(492f, -511f, 371f, -883f), vec4<f32>(1098f, 515f, -1609f, 672f), vec4<f32>(1226f, 449f, -1488f, 175f), vec4<f32>(1116f, 467f, -1142f, -967f), vec4<f32>(-929f, -959f, -1642f, 203f), vec4<f32>(256f, -924f, 493f, -1188f), vec4<f32>(-534f, 1731f, -438f, -633f), vec4<f32>(-2247f, -1467f, -790f, 1298f), vec4<f32>(-881f, -1044f, 737f, 1738f), vec4<f32>(-169f, 1151f, 650f, 921f), vec4<f32>(562f, -1587f, -1000f, -621f), vec4<f32>(237f, 2526f, -260f, -1071f), vec4<f32>(480f, 476f, 1000f, 4791f), vec4<f32>(1182f, 676f, -829f, 1754f), vec4<f32>(956f, 342f, -856f, -2472f), vec4<f32>(434f, -1000f, -1080f, -1271f));

var<private> global2: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(select(select(vec2<bool>(all(vec3<bool>(global2.a.x, global2.a.x, true)), false & global2.c.x), !vec2<bool>(true, global2.a.x), vec2<bool>(global2.a.x, !global2.a.x)), global2.a, true || global2.c.x), reverseBits(-countOneBits(_wgslsmith_clamp_vec4_i32(global2.b, vec4<i32>(u_input.e.x, -2147483647i, u_input.c.x, -49542i), vec4<i32>(global2.b.x, global2.b.x, u_input.b.x, -3491i)))), global2.a);
    var_0 = Struct_1(!vec2<bool>(!all(vec2<bool>(false, false)), true), abs(global2.b), global2.a);
    return Struct_1(select(vec2<bool>(global2.c.x, false), !var_0.c, any(!select(vec3<bool>(var_0.c.x, global2.c.x, false), vec3<bool>(global2.c.x, false, false), true))), var_0.b, global2.c);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = func_2();
    global2 = arg_1;
    let var_1 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(_wgslsmith_mult_u32(u_input.a, 0u), 1u)), _wgslsmith_add_vec2_u32(~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), vec2<u32>(1u, u_input.a))), select(abs(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(142376u, 40877u), vec2<u32>(u_input.a, u_input.a)), global2.c) >> ((~vec2<u32>(u_input.a, u_input.a) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-279f, _wgslsmith_f_op_f32(f32(-1f) * -383f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-852f)), _wgslsmith_div_f32(225f, 569f)), 350f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) + -1899f)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f - _wgslsmith_f_op_f32(f32(-1f) * -930f)) + 555f);
    return _wgslsmith_div_vec4_i32(~arg_1.b, _wgslsmith_div_vec4_i32(~(func_2().b ^ -vec4<i32>(29705i, -6917i, 0i, u_input.b.x)), countOneBits((arg_1.b >> (vec4<u32>(var_1, 19633u, 4294967295u, var_1) % vec4<u32>(32u))) ^ -vec4<i32>(43701i, arg_1.b.x, arg_1.b.x, global2.b.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(!vec2<bool>(any(!vec3<bool>(false, true, arg_2.a.x)), true), _wgslsmith_add_vec4_i32(max(u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.b.x, -2147483647i, -1i, global2.b.x), vec4<i32>(arg_3.b.x, arg_2.b.x, 2147483647i, arg_1.b.x))), vec4<i32>(arg_2.b.x, abs(2147483647i), ~44657i, -2147483647i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(110194u & arg_0.x, reverseBits(0u), abs(arg_0.x), select(33832u, u_input.a, global2.a.x)), ~(vec4<u32>(u_input.a, arg_0.x, u_input.a, u_input.a) ^ vec4<u32>(0u, arg_0.x, 49173u, 19528u))) % vec4<u32>(32u)), global2.c);
    let var_1 = func_2();
    global2 = var_1;
    var var_2 = ~vec4<u32>(~0u, 21849u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 5085u, u_input.a, u_input.a), vec4<u32>(10540u, arg_0.x, 4294967295u, 0u)) | _wgslsmith_mod_u32(arg_0.x, u_input.a), 19756u >> (~arg_0.x % 32u)) ^ ~(~select(~vec4<u32>(7544u, 0u, 55431u, 15168u), reverseBits(vec4<u32>(u_input.a, 19526u, arg_0.x, 1u)), true));
    global1 = array<vec4<f32>, 23>();
    return firstTrailingBit(-23441i);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(all(vec2<bool>(global2.c.x, arg_1.c.x)), true), -vec4<i32>(arg_1.b.x, -92442i, -2147483647i, max(_wgslsmith_mod_i32(global2.b.x, global2.b.x), u_input.d)), global2.c);
    global2 = var_0;
    var var_1 = _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a, firstTrailingBit(u_input.a | 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 1u, u_input.a)))), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 37334u, 0u), vec3<u32>(66902u, 22153u, 1u)) ^ ~vec3<u32>(u_input.a, 1u, u_input.a)) ^ ~max(vec3<u32>(8052u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 55608u, u_input.a)));
    var_1 = ~(~vec3<u32>(var_1.x, u_input.a, 0u) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_1.x, 15121u), vec3<u32>(26746u, var_1.x, 29312u)) % vec3<u32>(32u))) ^ (~reverseBits(min(vec3<u32>(0u, 0u, var_1.x), vec3<u32>(4294967295u, 26569u, 5257u))) | select(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 69008u, var_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(var_1.x, 13094u, u_input.a))), abs(vec3<u32>(u_input.a, u_input.a, 44044u) & vec3<u32>(var_1.x, u_input.a, u_input.a)), !(!vec3<bool>(true, global2.a.x, var_0.c.x))));
    let var_2 = var_1.x;
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = 42125u;
    global2 = func_5(vec3<i32>(func_4(vec3<u32>(var_0, var_0, 38423u), func_2(), Struct_1(!vec2<bool>(global2.c.x, false), func_3(global2.b.xz, Struct_1(global2.a, vec4<i32>(global2.b.x, global2.b.x, global2.b.x, 1i), vec2<bool>(true, global2.c.x)), vec3<bool>(global2.c.x, global2.c.x, false)), vec2<bool>(true, global2.c.x)), func_2()), countOneBits(global2.b.x), global2.b.x), Struct_1(!global2.c, global2.b, global2.a));
    var var_1 = Struct_1(!select(global2.a, !vec2<bool>(true, global2.a.x), true), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(24849i & global2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 30177i, u_input.c.x, u_input.d), global2.b), -2147483647i, _wgslsmith_add_i32(0i, u_input.d)), global2.b), global2.b, func_2().b), select(global2.c, global2.a, !(!any(vec3<bool>(global2.a.x, true, global2.c.x)))));
    global1 = array<vec4<f32>, 23>();
    var var_2 = 0i;
    return Struct_1(!select(!(!vec2<bool>(false, var_1.a.x)), vec2<bool>(true, true), global2.a), -global2.b, var_1.c);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = func_5(arg_0.b.ywz, func_1());
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(35853i, 49631i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), firstLeadingBit(global2.b.ww)), -arg_1.b.yw), func_3(vec2<i32>(~1720i, arg_0.b.x), func_2(), !vec3<bool>(global2.c.x, true, true)).wz), global2.b.x, abs(arg_1.b.x));
    var var_1 = arg_1.b.x;
    var var_2 = arg_2;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(min(-1i, -1i), 1i), func_2().b.x);
    return func_5(vec3<i32>(1i, max(-33562i, -abs(23414i)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(func_5(arg_2.b.zwx, arg_2).b.x, _wgslsmith_mult_i32(-2147483647i, arg_1.b.x), 42031i), _wgslsmith_add_i32(func_2().b.x, ~(-17805i)))), func_2());
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global2.a;
    var var_1 = arg_1.x;
    let var_2 = Struct_1(vec2<bool>(true, arg_0.a.x), ~(~arg_0.b), func_1().c);
    var var_3 = 1u;
    var var_4 = u_input.a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_1(), func_2(), func_2()), global1[_wgslsmith_index_u32(33610u, 23u)], func_5(global2.b.wyz, Struct_1(vec2<bool>(true, global2.a.x), vec4<i32>(-1i, 1i, global2.b.x, -28650i) | global2.b, global2.c)));
    var var_1 = func_6(Struct_1(vec2<bool>(!var_0.a.x, false & all(vec2<bool>(true, true))), firstTrailingBit(firstLeadingBit(abs(u_input.b))), func_1().a), func_6(Struct_1(!select(var_0.c, var_0.a, vec2<bool>(global2.a.x, global2.c.x)), var_0.b, select(global2.a, vec2<bool>(true, var_0.c.x), true)), func_2(), func_2()), Struct_1(!func_6(Struct_1(vec2<bool>(var_0.c.x, global2.c.x), var_0.b, global2.a), func_5(var_0.b.zzw, Struct_1(vec2<bool>(var_0.a.x, false), global2.b, vec2<bool>(global2.c.x, var_0.c.x))), func_2()).c, vec4<i32>(var_0.b.x | -1i, u_input.c.x ^ reverseBits(u_input.d), -15275i, abs(global2.b.x)), global2.a));
    global2 = Struct_1(global2.c, var_1.b, var_0.c);
    var_1 = func_5(_wgslsmith_mult_vec3_i32(vec3<i32>(max(u_input.b.x, 0i), global2.b.x >> (4294967295u % 32u), -70942i), var_0.b.zxw) ^ ~(_wgslsmith_add_vec3_i32(global2.b.wwz, u_input.c.wyw) << (vec3<u32>(4294967295u, 47280u, u_input.a) % vec3<u32>(32u))), func_7(Struct_1(!vec2<bool>(global2.c.x, false), var_0.b, func_7(func_6(Struct_1(vec2<bool>(true, var_1.a.x), vec4<i32>(1i, 30726i, -2147483647i, -29136i), var_0.c), Struct_1(vec2<bool>(false, true), var_1.b, vec2<bool>(false, true)), Struct_1(vec2<bool>(global2.c.x, var_1.a.x), vec4<i32>(var_1.b.x, var_1.b.x, var_0.b.x, u_input.e.x), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, -962f, -1031f, -802f)), Struct_1(global2.a, u_input.c, var_1.a)).a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(177f, 926f)), _wgslsmith_div_f32(472f, -662f), -406f, _wgslsmith_div_f32(-1170f, 103f)))), func_7(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(143f, 590f, -646f, -205f) * global1[_wgslsmith_index_u32(0u, 23u)])), Struct_1(vec2<bool>(global2.a.x, true), global2.b, var_1.a))));
    var var_2 = false;
    let var_3 = var_0.b.x;
    var var_4 = vec4<u32>(~(~u_input.a), u_input.a & u_input.a, select(~_wgslsmith_add_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.a, 1u, 20306u)), u_input.a, all(vec2<bool>(u_input.e.x < 27188i, true))), u_input.a);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -313f)));
    var var_6 = Struct_1(global2.a, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, var_1.b.x, 7264i, -2147483647i), vec4<i32>(1i, 18368i, -2147483647i, 28043i)), var_1.b), vec4<i32>(func_4(~var_4.xwx, func_1(), func_2(), func_7(Struct_1(global2.a, global2.b, var_1.c), global1[_wgslsmith_index_u32(40748u, 23u)], Struct_1(global2.c, var_0.b, var_1.a))), select(global2.b.x, 17310i, !global2.a.x), u_input.c.x, abs(func_5(var_1.b.xxz, Struct_1(vec2<bool>(false, false), var_0.b, var_0.c)).b.x))), vec2<bool>(all(vec2<bool>(true == var_0.a.x, !var_1.c.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_1(!vec2<bool>(var_0.c.x, false), select(_wgslsmith_add_vec4_i32(var_0.b, global2.b), global2.b, vec4<bool>(var_1.c.x, true, true, global2.a.x)), vec2<bool>(!var_0.a.x, false)), func_7(func_6(func_1(), Struct_1(var_1.a, u_input.c, global2.c), Struct_1(vec2<bool>(false, global2.c.x), u_input.b, vec2<bool>(global2.a.x, global2.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(39669u, 23u)]))), func_7(func_6(Struct_1(vec2<bool>(var_1.a.x, false), u_input.c, global2.a), Struct_1(vec2<bool>(global2.a.x, true), vec4<i32>(var_1.b.x, u_input.b.x, -2147483647i, global2.b.x), var_1.a), Struct_1(var_0.a, var_6.b, vec2<bool>(false, var_0.c.x))), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(var_4.x, 23u)] + vec4<f32>(var_5, 667f, var_5, 838f)), func_6(Struct_1(var_1.c, vec4<i32>(-1i, 0i, var_6.b.x, 2147483647i), global2.a), Struct_1(vec2<bool>(false, false), vec4<i32>(global2.b.x, -2147483647i, var_1.b.x, 9452i), vec2<bool>(true, var_6.a.x)), Struct_1(var_0.a, vec4<i32>(var_1.b.x, 2147483647i, var_1.b.x, u_input.b.x), vec2<bool>(false, true))))), func_2()).b.x, _wgslsmith_f_op_f32(min(1588f, -1000f)));
}

