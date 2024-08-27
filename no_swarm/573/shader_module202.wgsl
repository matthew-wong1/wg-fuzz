struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(603f, vec3<i32>(i32(-2147483648), 37914i, 0i), 14078u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = Struct_1(_wgslsmith_f_op_f32(-214f + var_0), u_input.c, _wgslsmith_add_u32(66071u, firstLeadingBit(u_input.d.x)), vec3<u32>(min(_wgslsmith_clamp_u32(~1u, abs(72788u), u_input.a), reverseBits(34651u & global0.c)), global0.d.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~global0.d.x), _wgslsmith_mod_u32(~global0.c, 0u))), !vec4<bool>(global0.e.x, true, true, any(select(vec4<bool>(true, global0.e.x, false, false), vec4<bool>(false, true, false, false), false))));
    var var_1 = Struct_1(-1592f, vec3<i32>(countOneBits(2147483647i), ~abs(~global0.b.x), _wgslsmith_add_i32(abs(global0.b.x ^ u_input.c.x), _wgslsmith_div_i32(global0.b.x, i32(-1i) * -1i))), 1u, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 28836u, ~44708u), ~vec3<u32>(0u | u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 0u), 73613u)), !select(vec4<bool>(u_input.d.x >= 1u, global0.e.x, all(vec2<bool>(true, global0.e.x)), global0.e.x || false), vec4<bool>(global0.e.x, global0.e.x, true, global0.e.x), all(vec3<bool>(false, true, global0.e.x))));
    var var_2 = u_input.c.x;
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(0i, u_input.c.x), -var_1.b.x, 39176i, _wgslsmith_clamp_i32(firstLeadingBit(var_1.b.x), global0.b.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, -2147483647i, u_input.c.x) >> (vec3<u32>(var_1.c, var_1.d.x, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(global0.b, vec3<i32>(-1i, 1i, global0.b.x))), var_1.b.x));
    return abs((((vec3<i32>(-2147483647i, u_input.c.x, global0.b.x) & vec3<i32>(-82304i, -1i, global0.b.x)) & ~var_1.b) << ((vec3<u32>(39290u, 58197u, 57696u) >> ((vec3<u32>(global0.d.x, 82938u, 11868u) | vec3<u32>(4294967295u, var_1.c, 43398u)) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ (u_input.c << (firstLeadingBit(~vec3<u32>(global0.c, var_1.d.x, global0.d.x)) % vec3<u32>(32u))));
}

fn func_2() -> i32 {
    let var_0 = u_input.c >> (_wgslsmith_mod_vec3_u32(vec3<u32>(min(~global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(20178u, u_input.b.x, 1u, 16551u), vec4<u32>(26399u, u_input.b.x, 57572u, 4906u))), ~_wgslsmith_mod_u32(u_input.b.x, u_input.d.x), ~_wgslsmith_clamp_u32(global0.c, 0u, global0.c)), ~u_input.b) % vec3<u32>(32u));
    let var_1 = Struct_1(1f, global0.b, 45194u, ~vec3<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global0.c) & vec2<u32>(43232u, u_input.b.x), global0.d.zy)), select(global0.e, vec4<bool>(global0.b.x <= max(var_0.x, var_0.x), global0.e.x, !(!global0.e.x), global0.e.x), select(vec4<bool>(global0.e.x, global0.e.x, -15040i >= global0.b.x, global0.a >= global0.a), global0.e, vec4<bool>(false, false, true || global0.e.x, global0.b.x == 2147483647i))));
    var var_2 = false;
    global0 = Struct_1(578f, func_3(1077f), 4294967295u, _wgslsmith_sub_vec3_u32(vec3<u32>(~firstLeadingBit(51599u), u_input.a, global0.c), u_input.d), !select(!vec4<bool>(true, var_1.e.x, true, true), !(!global0.e), true));
    let var_3 = -888f;
    return u_input.c.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = arg_2.c;
    var_0 = ~global0.c << (~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.d.x, global0.c, 64215u, 20786u), countOneBits(vec4<u32>(1u, arg_2.d.x, 4484u, arg_2.c))), arg_2.c) % 32u);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32((global0.d | u_input.d) & ~vec3<u32>(53196u, global0.c, global0.d.x), vec3<u32>(26349u >> (arg_2.c % 32u), ~14967u, _wgslsmith_add_u32(47153u, u_input.d.x))), u_input.a) << (50290u % 32u);
    let var_2 = true;
    let var_3 = global0.e;
    return arg_2;
}

fn func_1() -> vec2<i32> {
    let var_0 = countOneBits(vec3<u32>(u_input.a, _wgslsmith_add_u32(~u_input.d.x, ~(u_input.a & u_input.d.x)), global0.c));
    let var_1 = func_4(vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, abs(u_input.c.x) << (u_input.b.x % 32u)), func_2(), ~(firstLeadingBit(u_input.c.x) ^ 2147483647i), _wgslsmith_sub_i32(2147483647i, global0.b.x)), vec4<i32>(firstTrailingBit(-u_input.c.x), 2147483647i, -57412i | reverseBits(global0.b.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.b.yz, global0.b.yx), ~u_input.c.x), ~global0.b.x, abs(59592i))), Struct_1(global0.a, select(vec3<i32>(1i, _wgslsmith_div_i32(global0.b.x, u_input.c.x), _wgslsmith_clamp_i32(u_input.c.x, -16190i, -55358i)), -select(u_input.c, vec3<i32>(15196i, global0.b.x, global0.b.x), global0.e.yxz), true), 4294967295u, u_input.d, select(global0.e, global0.e, select(global0.e, select(global0.e, vec4<bool>(global0.e.x, false, global0.e.x, false), vec4<bool>(true, true, global0.e.x, global0.e.x)), select(vec4<bool>(false, true, false, global0.e.x), vec4<bool>(global0.e.x, global0.e.x, global0.e.x, false), global0.e)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1114f, global0.a, global0.a))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a, 1049f, -822f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1200f, global0.a, 1000f)), global0.e.x & global0.e.x)))));
    var var_2 = global0.a;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(861f * _wgslsmith_f_op_f32(-var_1.a)), firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(2147483647i, u_input.c.x), -4532i, -2147483647i)) | -countOneBits(~vec3<i32>(-32331i, 1i, 3305i)), abs(5742u), ~var_0, global0.e);
    var_2 = -853f;
    return func_4((-reverseBits(vec4<i32>(-1i, -28674i, var_3.b.x, global0.b.x)) | vec4<i32>(-var_3.b.x, firstTrailingBit(var_1.b.x), global0.b.x, var_3.b.x & global0.b.x)) << (countOneBits((vec4<u32>(0u, 57451u, var_1.c, var_3.c) >> (vec4<u32>(98190u, 39834u, 33158u, var_0.x) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(global0.c, 0u, var_3.d.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(min(var_3.b.x, ~u_input.c.x), countOneBits(func_3(-388f).x), -33022i, func_4(vec4<i32>(-17659i, u_input.c.x, var_1.b.x, -6048i), vec4<i32>(u_input.c.x, -2147483647i, var_1.b.x, u_input.c.x), func_4(vec4<i32>(-1i, -6973i, var_3.b.x, u_input.c.x), vec4<i32>(1i, global0.b.x, 52264i, var_1.b.x), var_1, vec3<f32>(var_1.a, var_1.a, global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -1254f, 989f))).b.x), func_4(firstLeadingBit(vec4<i32>(1i, _wgslsmith_clamp_i32(var_3.b.x, -44048i, u_input.c.x), _wgslsmith_add_i32(34695i, u_input.c.x), 6006i)), -vec4<i32>(1i, global0.b.x, -2147483647i, u_input.c.x) & -vec4<i32>(var_3.b.x, -26731i, 1i, var_3.b.x), func_4(-(vec4<i32>(var_3.b.x, -256i, 9652i, -11900i) >> (vec4<u32>(0u, var_3.c, 97654u, u_input.a) % vec4<u32>(32u))), select(firstTrailingBit(vec4<i32>(global0.b.x, var_1.b.x, 42843i, global0.b.x)), -vec4<i32>(u_input.c.x, global0.b.x, -2118i, -45170i), true), func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(57237i, 35578i, u_input.c.x, -2147483647i), vec4<i32>(61581i, -2553i, 2147483647i, global0.b.x), vec4<i32>(-45770i, -39360i, var_1.b.x, 14146i)), countOneBits(vec4<i32>(var_1.b.x, var_1.b.x, var_3.b.x, var_1.b.x)), Struct_1(var_3.a, vec3<i32>(u_input.c.x, 1i, -4790i), var_1.d.x, vec3<u32>(var_3.d.x, u_input.d.x, 48956u), vec4<bool>(global0.e.x, true, var_3.e.x, false)), vec3<f32>(var_3.a, global0.a, 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 562f, var_3.a)) + vec3<f32>(-1970f, 1138f, var_1.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 1283f, 758f) * vec3<f32>(var_1.a, 1220f, 1000f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(206f, var_3.a, 1000f))), any(vec2<bool>(var_3.e.x, var_3.e.x))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, global0.a, global0.a) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-517f, var_3.a, var_3.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-308f, 914f, -322f)))))))))).b.yx;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(-1000f, global0.a)), !arg_2.x))) + _wgslsmith_f_op_f32(-1166f - _wgslsmith_f_op_f32(abs(-814f)))), ~vec3<i32>(-26940i, arg_3.b.x, -31230i), 4294967295u, ~vec3<u32>(~55302u ^ (u_input.d.x | 13615u), ~select(arg_3.d.x, 4294967295u, true), global0.d.x), arg_3.e);
    let var_0 = arg_3;
    global0 = var_0;
    let var_1 = any(arg_3.e.wzx);
    let var_2 = func_4(~_wgslsmith_mult_vec4_i32(~vec4<i32>(-86539i, arg_3.b.x, -21042i, arg_3.b.x), vec4<i32>(u_input.c.x, select(global0.b.x, global0.b.x, true), ~1i, ~arg_1.x)), abs(vec4<i32>(func_2(), _wgslsmith_dot_vec2_i32(func_3(-107f).xy, min(vec2<i32>(10077i, -1i), vec2<i32>(2147483647i, 84471i))), ~min(2147483647i, var_0.b.x), -18711i)), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(-var_0.b.x, ~arg_3.b.x, _wgslsmith_div_i32(u_input.c.x, 2147483647i), global0.b.x), -vec4<i32>(var_0.b.x, var_0.b.x, global0.b.x, 1i)), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(-1i, var_0.b.x), ~arg_1.x, -1i, _wgslsmith_clamp_i32(global0.b.x, 2147483647i, global0.b.x))), var_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1296f, var_0.a, 177f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-353f, -178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-721f)) - _wgslsmith_f_op_f32(round(arg_3.a))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global0.e, global0.b.xz & _wgslsmith_add_vec2_i32(select(u_input.c.yy ^ vec2<i32>(u_input.c.x, global0.b.x), func_1(), global0.e.x), vec2<i32>(min(global0.b.x, global0.b.x), 10062i << (global0.d.x % 32u))), global0.e, func_4(~(~vec4<i32>(global0.b.x, global0.b.x, -18156i, -22215i)), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(-6593i, 0i), -34246i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.b.x, 18616i), u_input.c), u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))), u_input.c, 68519u, u_input.b, vec4<bool>(true, true, true, global0.e.x || global0.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, 1420f) - vec3<f32>(-708f, 1133f, -1498f))))));
    var_0 = Struct_1(global0.a, global0.b, u_input.b.x, vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5924u, var_0.c, var_0.c), vec4<u32>(var_0.c, global0.c, 50594u, 4294967295u)), 1u), u_input.a | select(select(18825u, 25443u, false), 1u, all(vec2<bool>(false, var_0.e.x))), 31450u), func_4(_wgslsmith_mult_vec4_i32(~vec4<i32>(12906i, 0i, 2147483647i, -1i), -vec4<i32>(global0.b.x, global0.b.x, var_0.b.x, 1i)) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.x, var_0.b.x, global0.b.x, 19744i), vec4<i32>(var_0.b.x, 38574i, 4969i, u_input.c.x)), vec4<i32>(u_input.c.x, select(global0.b.x, global0.b.x & -40567i, 439f != var_0.a), global0.b.x, reverseBits(1i)), Struct_1(var_0.a, abs(global0.b), _wgslsmith_mult_u32(global0.c, 1u), var_0.d, func_5(!global0.e, select(vec2<i32>(-12733i, -1i), u_input.c.zz, global0.e.yw), func_5(global0.e, vec2<i32>(global0.b.x, global0.b.x), vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x), Struct_1(251f, u_input.c, 9506u, var_0.d, global0.e)).e, Struct_1(var_0.a, vec3<i32>(61864i, var_0.b.x, 45539i), 67580u, vec3<u32>(1u, var_0.d.x, u_input.b.x), var_0.e)).e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a, var_0.a, var_0.a))))).e);
    var var_1 = func_5(vec4<bool>(!var_0.e.x, func_5(!vec4<bool>(true, true, var_0.e.x, var_0.e.x), global0.b.yz, select(func_5(vec4<bool>(false, true, global0.e.x, true), vec2<i32>(-1i, var_0.b.x), global0.e, Struct_1(var_0.a, vec3<i32>(var_0.b.x, 11578i, var_0.b.x), var_0.d.x, var_0.d, vec4<bool>(false, global0.e.x, false, global0.e.x))).e, global0.e, false), func_5(vec4<bool>(var_0.e.x, var_0.e.x, global0.e.x, global0.e.x), -var_0.b.yx, func_4(vec4<i32>(1i, 2147483647i, -20803i, u_input.c.x), vec4<i32>(u_input.c.x, global0.b.x, -20897i, global0.b.x), Struct_1(var_0.a, u_input.c, 32501u, u_input.d, global0.e), vec3<f32>(var_0.a, var_0.a, var_0.a)).e, func_4(vec4<i32>(13437i, 3603i, 2147483647i, var_0.b.x), vec4<i32>(global0.b.x, global0.b.x, var_0.b.x, u_input.c.x), Struct_1(321f, vec3<i32>(-25397i, 6565i, var_0.b.x), 62646u, vec3<u32>(global0.d.x, 4294967295u, u_input.b.x), vec4<bool>(true, global0.e.x, false, true)), vec3<f32>(var_0.a, global0.a, 1313f)))).e.x, true, var_0.e.x | var_0.e.x), vec2<i32>(~(~5798i), -u_input.c.x), vec4<bool>(true, !all(!var_0.e), !any(global0.e), false), func_5(select(!(!vec4<bool>(var_0.e.x, true, true, var_0.e.x)), select(select(global0.e, global0.e, global0.e), vec4<bool>(true, true, global0.e.x, true), false), any(select(var_0.e.yx, var_0.e.zw, global0.e.x))), -vec2<i32>(11481i, 15844i) & vec2<i32>(-2147483647i, global0.b.x), !vec4<bool>(true & global0.e.x, true, true, true), func_4(-vec4<i32>(u_input.c.x, 2147483647i, var_0.b.x, var_0.b.x), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, global0.b.x, 0i, -48790i), vec4<i32>(u_input.c.x, global0.b.x, 2147483647i, global0.b.x), vec4<i32>(global0.b.x, 2147483647i, global0.b.x, 36717i))), func_5(!global0.e, abs(vec2<i32>(u_input.c.x, -1i)), !global0.e, Struct_1(var_0.a, vec3<i32>(var_0.b.x, u_input.c.x, 31849i), u_input.a, vec3<u32>(1u, 1u, var_0.c), global0.e)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -722f, 359f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, 1601f)))))));
    var var_2 = _wgslsmith_f_op_f32(var_1.a * global0.a);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -2161f, 119f, var_1.a) - vec4<f32>(930f, var_1.a, 1700f, 644f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, -956f, global0.a, -101f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.a, -210f)), -788f, _wgslsmith_f_op_f32(1150f * 1328f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-539f, 237f, 534f, global0.a) * vec4<f32>(-748f, 253f, var_0.a, var_0.a)) - vec4<f32>(var_1.a, 225f, -123f, var_0.a))))), ~func_4(vec4<i32>(~(-10998i), _wgslsmith_sub_i32(-43040i, 55011i), _wgslsmith_mod_i32(global0.b.x, -58435i), _wgslsmith_mod_i32(var_0.b.x, var_1.b.x)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(14170i, 2147483647i, var_0.b.x, 2147483647i)), countOneBits(vec4<i32>(0i, global0.b.x, var_0.b.x, 44332i))), Struct_1(-1347f, -vec3<i32>(-2494i, u_input.c.x, 5411i), 22262u, vec3<u32>(4294967295u, 4294967295u, 0u), select(var_0.e, vec4<bool>(var_1.e.x, true, true, true), var_0.e.x)), vec3<f32>(_wgslsmith_f_op_f32(var_1.a + -357f), var_1.a, var_1.a)).d.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(global0.a, var_1.a)) - var_0.a), 654f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a))))), reverseBits(abs(var_0.d.x)));
}

