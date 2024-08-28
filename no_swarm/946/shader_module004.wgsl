struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1i, vec3<i32>(8212i, 3217i, 10720i), vec4<bool>(true, false, false, false)), Struct_1(-27776i, vec3<i32>(i32(-2147483648), 0i, -6013i), vec4<bool>(true, true, true, false)), Struct_1(-32168i, vec3<i32>(2147483647i, 2147483647i, 1i), vec4<bool>(true, true, true, true)), Struct_1(3703i, vec3<i32>(22578i, 61887i, -28089i), vec4<bool>(true, false, false, true)), Struct_1(0i, vec3<i32>(18549i, 51983i, 0i), vec4<bool>(false, true, false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: bool) -> vec3<f32> {
    global3 = array<Struct_1, 5>();
    var var_0 = !(true && any(global0.c));
    global3 = array<Struct_1, 5>();
    var var_1 = abs(_wgslsmith_clamp_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(-2147483647i, -2147483647i, -45282i, global2.x) | vec4<i32>(9768i, u_input.c, global2.x, global0.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, max(0i, global0.a), 9709i, global2.x), select(vec4<i32>(global0.b.x, 12506i, global2.x, global2.x), vec4<i32>(global2.x, global0.b.x, global2.x, 2147483647i), vec4<bool>(true, false, global0.c.x, global0.c.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_2.x, 30252u, 4294967295u), vec4<u32>(u_input.b.x, 0u, arg_0, 31344u)) % vec4<u32>(32u)), ~(~vec4<i32>(global2.x, 13885i, u_input.d, u_input.d))), reverseBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a, global0.b.x, u_input.d, global2.x), vec4<i32>(2147483647i, 2147483647i, u_input.d, u_input.c)), abs(vec4<i32>(-2147483647i, u_input.c, global2.x, global0.a)), arg_3))));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(select(firstLeadingBit(vec2<u32>(82512u, arg_1)) | select(vec2<u32>(arg_0, arg_0), arg_2.wz, vec2<bool>(arg_3, arg_3)), abs(~u_input.b), true), vec2<u32>(~_wgslsmith_div_u32(27679u, arg_1), _wgslsmith_clamp_u32(4294967295u, select(0u, 0u, arg_3), 17383u))), ~u_input.a), 5u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1847f, 810f, 783f), vec3<f32>(151f, 599f, -1121f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1663f, 349f, 466f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-763f, -1580f, 1340f), vec3<f32>(-638f, -521f, 1904f), global0.c.yzz)), vec3<f32>(-1272f, -553f, 1037f)))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = Struct_1(7080i, ~_wgslsmith_mod_vec3_i32(countOneBits(global0.b), abs(arg_2)), global0.c);
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(33992u, 37976u, u_input.a) ^ vec3<u32>(66295u, u_input.b.x, arg_0), ~vec3<u32>(1u, 1u, 1u))), _wgslsmith_dot_vec2_u32(~(u_input.b << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), vec2<u32>(~arg_0, ~u_input.a)), _wgslsmith_div_u32(4294967295u, min(1u >> (arg_0 % 32u), 19251u))), ~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, arg_0, u_input.a, 79427u)), abs(vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.a)))));
    var_1 = select(firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(25385u, var_1.x, 0u, 4294967295u), firstLeadingBit(vec4<u32>(arg_0, 5548u, var_1.x, u_input.b.x)))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(arg_0, 0u, 0u, 38439u), select(vec4<u32>(u_input.a, 18327u, u_input.b.x, 0u), vec4<u32>(var_1.x, var_1.x, u_input.b.x, arg_0), false), select(var_0.c, global0.c, var_0.c)), reverseBits(vec4<u32>(u_input.b.x, 69959u, u_input.b.x, u_input.a)), vec4<u32>(~arg_0, abs(arg_0), ~57480u, 6247u)), firstLeadingBit(select(~vec4<u32>(arg_0, u_input.a, var_1.x, var_1.x), ~vec4<u32>(arg_0, 74362u, 22896u, 0u), !vec4<bool>(true, true, global0.c.x, var_0.c.x)))), vec4<bool>(true, global0.c.x, any(vec3<bool>(false, 342f != arg_1.x, false)), all(!select(global0.c.yzy, vec3<bool>(false, global0.c.x, true), var_0.c.x))));
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))))));
    return _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global2.x ^ min(8110i ^ arg_2.x, min(0i, global0.a)), _wgslsmith_clamp_i32(global2.x, 2147483647i, global2.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, u_input.c, global0.a, -2147483647i), vec4<i32>(arg_2.x, -1156i, -2147483647i, arg_2.x)))), global2.x, arg_2.x >> (_wgslsmith_sub_u32(19191u, ~arg_0 << ((var_2 & 102671u) % 32u)) % 32u));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(arg_0, arg_0, arg_0))) | vec3<u32>(u_input.a, arg_0, 3728u), firstTrailingBit(min(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(arg_0, 4294967295u, u_input.a)) ^ firstTrailingBit(vec3<u32>(0u, 0u, u_input.b.x))) >> ((select(~vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(arg_0, 1u, u_input.a), 1601i >= global2.x) << (~(~vec3<u32>(u_input.b.x, 4294967295u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u))), 5u)];
    let var_1 = true;
    var var_2 = global3[_wgslsmith_index_u32(0u, 5u)];
    let var_3 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.b.zy, ~var_0.b.zx), var_0.a) | -21151i, vec3<i32>(func_4(select(u_input.a, 69163u, var_2.c.x), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_u32(arg_0, 26233u), arg_0, firstLeadingBit(vec4<u32>(4294967295u, 1u, u_input.b.x, 50957u)), select(true, false, global0.c.x))), -(~var_2.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(347f, 1325f, -748f) - vec3<f32>(-689f, 824f, -584f))))), u_input.c, -34082i), vec4<bool>(any(vec3<bool>(any(global0.c.zy), all(var_0.c.wxz), global0.c.x)), !select(true, false, any(vec2<bool>(true, global0.c.x))), all(!select(vec4<bool>(true, var_2.c.x, true, var_2.c.x), var_2.c, var_2.c)), var_0.c.x));
    global1 = 3024u;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(615f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1096f + _wgslsmith_f_op_vec3_f32(func_3(arg_0, u_input.a, vec4<u32>(u_input.a, arg_0, arg_0, arg_0), var_2.c.x)).x) * _wgslsmith_f_op_f32(f32(-1f) * -797f))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    var var_0 = firstLeadingBit(u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1u)));
    let var_2 = select(select(vec4<bool>(all(global0.c.zwy), all(select(vec3<bool>(arg_0, true, true), vec3<bool>(true, true, arg_0), global0.c.x)), false, true), select(global0.c, select(vec4<bool>(false, false, false, false), global0.c, select(global0.c, vec4<bool>(true, global0.c.x, false, true), true)), global0.c.x), select(true, all(!vec4<bool>(arg_0, false, true, arg_0)), global0.c.x)), global0.c, global0.c);
    let var_3 = _wgslsmith_add_i32(func_4(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(-109f, arg_2.x, 553f))), vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(34344i, global2.x, 39464i)), vec3<f32>(_wgslsmith_f_op_f32(-arg_3), arg_2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x), -426f))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(35566i, u_input.c, global2.x, -7571i), reverseBits(vec4<i32>(global2.x, u_input.c, 9301i, -65606i))), ~reverseBits(arg_1)));
    let var_4 = Struct_1(_wgslsmith_add_i32(-39023i, _wgslsmith_div_i32(abs(1i), -reverseBits(u_input.d))), firstTrailingBit(~global0.b), global0.c);
    return _wgslsmith_sub_u32(8488u, var_0.x) | _wgslsmith_add_u32(38873u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_0.x, var_0.x), ~vec4<u32>(var_0.x, u_input.b.x, u_input.b.x, u_input.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 5u)];
    let var_2 = firstLeadingBit(~(~(~vec4<i32>(arg_0.b.x, -1i, var_1.b.x, 10559i) ^ (vec4<i32>(-2147483647i, arg_0.a, -17497i, 19089i) >> (vec4<u32>(u_input.a, 1u, 4294967295u, u_input.b.x) % vec4<u32>(32u))))));
    var var_3 = !any(vec3<bool>(any(arg_0.c.xxz) != arg_0.c.x, -47145i != var_2.x, false));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1450f * -150f) - _wgslsmith_f_op_f32(f32(-1f) * -1015f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1166f, -472f), -864f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1232f, 751f, -797f) + vec3<f32>(-260f, 1000f, -898f)), vec3<f32>(-2511f, 685f, 1281f), select(arg_0.c.yzz, arg_1.c.xzz, vec3<bool>(arg_0.c.x, var_1.c.x, arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(749f, 1000f, -1000f), vec3<f32>(778f, -1000f, 949f)) - vec3<f32>(1000f, 1166f, 1109f)), arg_0.c.xzx))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-305f, -236f, 1931f) * vec3<f32>(-1000f, -1205f, -350f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-835f, -242f, -2149f)))))));
    return Struct_1(var_2.x, vec3<i32>(-1i) * -abs(countOneBits(arg_0.b)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~8622u), ~func_1(true, ~2147483647i, vec3<f32>(-1020f, 1830f, 262f), -1000f)), 5u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~(~u_input.a), ~1u, 1u), _wgslsmith_mod_u32(0u, u_input.a)), 5u)]);
    global1 = ~(_wgslsmith_add_u32(~4294967295u, abs(u_input.a)) & ~reverseBits(min(31043u, u_input.a)));
    global0 = global3[_wgslsmith_index_u32(min(u_input.a, select(0u, abs(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a ^ u_input.a)), global0.c.x)), 5u)];
    global3 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_div_u32(11690u, 69666u), ~u_input.b.x, 4294967295u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u))), ~vec4<u32>(u_input.b.x, 55244u, ~22673u, 1u)), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(48717u, 4294967295u, 4294967295u, 4294967295u)), firstTrailingBit(abs(vec4<u32>(u_input.b.x, u_input.a, 1u, 0u)))));
    let var_2 = Struct_1(var_0.b.x, global0.b, func_5(global3[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_sub_u32(var_1.x, u_input.b.x)), 5u)], func_5(Struct_1(firstTrailingBit(global0.b.x), global0.b, !var_0.c), Struct_1(-u_input.c, _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(u_input.c, 0i, u_input.c)), vec4<bool>(true, false, true, var_0.c.x)))).c);
    var_0 = func_5(global3[_wgslsmith_index_u32(select(1u, min(~firstTrailingBit(119970u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(33007u, u_input.b.x, 25308u), 1u & var_1.x)), !var_0.c.x & var_0.c.x), 5u)], func_5(Struct_1(i32(-1i) * -5629i, -vec3<i32>(2147483647i, var_0.a, global0.b.x) >> (~vec3<u32>(0u, u_input.a, var_1.x) % vec3<u32>(32u)), !(!vec4<bool>(var_2.c.x, false, false, var_2.c.x))), func_5(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(23692u, 15678u)), 5u)], Struct_1(abs(global2.x), select(var_0.b, vec3<i32>(5695i, -2147483647i, 2147483647i), true), !var_0.c))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1280f)), -1300f);
    var var_4 = ~_wgslsmith_mult_vec2_u32(~(~var_1.yy) & countOneBits(_wgslsmith_div_vec2_u32(var_1.yz, vec2<u32>(39828u, 26945u))), vec2<u32>(var_1.x, _wgslsmith_mod_u32(0u >> (u_input.a % 32u), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a, 1u, 1u)) & (vec4<u32>(u_input.b.x, 0u, 16269u, 79127u) | vec4<u32>(16871u, 1u, u_input.b.x, 105247u)), ~(~vec4<u32>(1u, 1u, 1u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, 117538u, 48605u, var_4.x) & vec4<u32>(1u, 1u, 10559u, 16803u), vec4<u32>(90154u, var_1.x, 41081u, u_input.a) >> (vec4<u32>(50386u, 1u, var_1.x, 86647u) % vec4<u32>(32u)), select(vec4<u32>(60215u, 1u, u_input.a, u_input.a), vec4<u32>(52255u, 0u, var_4.x, 44488u), var_0.c.x))), vec4<u32>(~8515u, var_1.x, firstLeadingBit(_wgslsmith_div_u32(83177u, var_4.x)), 0u)));
}

