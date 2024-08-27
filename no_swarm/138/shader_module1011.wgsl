struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>) -> vec4<f32> {
    global0 = array<bool, 7>();
    var var_0 = arg_1.yz;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.e.a + vec4<f32>(1000f, arg_0.a.e.c.x, -678f, 620f)))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_4(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.c)), 738f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c + arg_2.c), _wgslsmith_div_f32(arg_2.c, arg_2.c)))), -1452f));
    let var_1 = Struct_3(arg_2.a, max(-11263i, arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c))), u_input.d);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -1294f, arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(417f)))))));
    let var_3 = vec2<u32>(arg_1.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, 11303u, 0u) & vec4<u32>(arg_3.x, arg_2.a.x, 1u, 64618u), var_1.a), _wgslsmith_dot_vec4_u32(~arg_2.a, arg_2.a))) | firstLeadingBit(_wgslsmith_add_vec2_u32(arg_3, _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, 39285u), arg_2.a.zx, _wgslsmith_add_vec2_u32(arg_2.a.zy, var_1.a.yz))));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_2(0u, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(16330u, 7u)]), 21785u, vec4<i32>(arg_0.x, arg_2.d, 48103i, 0i), Struct_1(var_2.a, arg_2.a, vec3<f32>(949f, var_2.a.x, var_0.a.x)))), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(30423u, 7u)]), vec3<bool>(true, true, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(arg_3.x, 7u)], global0[_wgslsmith_index_u32(arg_2.a.x, 7u)]))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)), vec4<u32>(abs(1u), var_3.x, 96797u, u_input.a ^ max(68518u, 70945u)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, arg_2.c, -334f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.wxz) + _wgslsmith_f_op_vec3_f32(-var_2.a.zww))), _wgslsmith_f_op_vec3_f32(var_2.a.yxz + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1197f, -472f, 1050f))))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<bool, 7>();
    let var_0 = Struct_3(vec4<u32>(arg_0.x, ~select(firstLeadingBit(u_input.c), abs(u_input.c), false), 13926u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstLeadingBit(1u), ~arg_0.x), arg_1.b.wyz)), firstTrailingBit(min(-2147483647i, firstTrailingBit(-1i) << (abs(49713u) % 32u))), _wgslsmith_f_op_f32(ceil(arg_3.a.x)), 2147483647i & _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(0i, 2147483647i)), vec2<i32>(arg_2, -13583i) ^ vec2<i32>(u_input.b, -24371i)), vec2<i32>(u_input.d, -arg_2)));
    var var_1 = firstLeadingBit(1i);
    var var_2 = 799f;
    return vec4<bool>(true, arg_0.x == ~(~arg_3.b.x), false, all(vec3<bool>(true, any(select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 7u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 7u)], true), true)), global0[_wgslsmith_index_u32(arg_0.x, 7u)])));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> i32 {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_0 = Struct_2(~abs(_wgslsmith_div_u32(~u_input.c, abs(41351u))), arg_2.zz, arg_1.x, firstLeadingBit(vec4<i32>(u_input.d, 34390i, -1i, -2147483647i) ^ vec4<i32>(u_input.d, 9191i, -1831i, u_input.d)) << (abs(select(~vec4<u32>(33952u, 4294967295u, arg_1.x, 1518u), ~vec4<u32>(0u, 76909u, u_input.a, u_input.a), true)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-434f, arg_0.x, true)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(103f - -958f), _wgslsmith_f_op_f32(-615f * arg_0.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(3293u, arg_1.x, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 42360u, 4294967295u, 0u), vec4<u32>(35582u, 69987u, arg_1.x, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-739f, arg_0.x, -374f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(906f, arg_0.x, arg_0.x))))));
    return 86950i;
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, -1076f, arg_0.c, 886f))))));
    let var_1 = !global0[_wgslsmith_index_u32(77624u, 7u)];
    let var_2 = arg_0.a.x;
    let var_3 = !(all(vec4<bool>(!global0[_wgslsmith_index_u32(arg_0.a.x, 7u)], !var_1, global0[_wgslsmith_index_u32(~0u, 7u)], any(vec2<bool>(true, true)))) | all(!(!vec3<bool>(var_1, false, var_1))));
    var var_4 = Struct_3(vec4<u32>(~(arg_1 | var_2) << (reverseBits(~4294967295u) % 32u), reverseBits(select(_wgslsmith_sub_u32(0u, arg_0.a.x), _wgslsmith_add_u32(arg_1, 2023u), select(false, true, var_3))), _wgslsmith_clamp_u32(arg_1, ~(arg_1 << (var_2 % 32u)), u_input.c), _wgslsmith_mod_u32(var_2, _wgslsmith_dot_vec3_u32(arg_0.a.wyy, vec3<u32>(var_2, arg_1, 32413u)) >> (_wgslsmith_dot_vec3_u32(arg_0.a.www, arg_0.a.xyz) % 32u))), abs(-arg_0.d), arg_0.c, max(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1125f, arg_0.c, -1589f, arg_0.c) * vec4<f32>(-541f, arg_0.c, arg_0.c, 847f)) + _wgslsmith_f_op_vec4_f32(step(var_0.a, vec4<f32>(-1400f, arg_0.c, 919f, arg_0.c)))), min(vec3<u32>(arg_1, u_input.a, var_2), _wgslsmith_mult_vec3_u32(arg_0.a.yxz, arg_0.a.zyx)), func_4(vec2<u32>(0u, 0u), Struct_1(var_0.a, vec4<u32>(1u, 17042u, u_input.c, u_input.c), vec3<f32>(1000f, 113f, arg_0.c)), u_input.b, func_2(vec2<i32>(0i, u_input.d), arg_0.a.xzx, Struct_3(vec4<u32>(37683u, 0u, 47655u, u_input.a), -18366i, 564f, arg_0.b), arg_0.a.zx))), _wgslsmith_div_i32(arg_0.b >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-21685i, u_input.b, 3337i, arg_0.b), -vec4<i32>(-2147483647i, -47361i, u_input.d, arg_0.d)))));
    return Struct_2(arg_1, func_4(select(vec2<u32>(_wgslsmith_div_u32(4294967295u, var_4.a.x), abs(0u)), vec2<u32>(u_input.c, 4294967295u), true), func_2(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(28470i, arg_0.d)), ~vec2<i32>(var_4.d, u_input.d), vec2<i32>(u_input.d, -2196i) & vec2<i32>(arg_0.b, var_4.b)), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, u_input.c, 20957u, 1u), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_1, 95857u)), 22496u), arg_0, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_4.a.wz, vec2<u32>(0u, var_4.a.x)), vec2<u32>(22662u, 25018u))), select(_wgslsmith_mult_i32(0i, arg_0.d), 2147483647i, false) | -1i, Struct_1(vec4<f32>(-1339f, 1758f, _wgslsmith_f_op_f32(var_4.c - 859f), -439f), vec4<u32>(_wgslsmith_div_u32(u_input.a, arg_1), arg_0.a.x, 1u, 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, -894f, 116f), var_0.a.zzw), _wgslsmith_f_op_vec3_f32(var_0.a.wzx * var_0.a.wxw), vec3<bool>(true, var_1, true))))).xy, 1u, ~vec4<i32>(-1i, _wgslsmith_mult_i32(i32(-1i) * -1i, func_5(var_0.a, vec3<u32>(0u, 2342u, u_input.a), vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 7u)], true, false, true))), firstTrailingBit(_wgslsmith_add_i32(u_input.d, -5738i)), ~(-14463i)), func_2(vec2<i32>(var_4.d, 0i), vec3<u32>(_wgslsmith_add_u32(65359u, arg_0.a.x << (u_input.a % 32u)), var_4.a.x, abs(arg_0.a.x ^ 1u)), Struct_3(var_4.a, ~1i, -1442f, var_4.b), arg_0.a.yz));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_5 {
    let var_0 = arg_1.d;
    let var_1 = 1i;
    global0 = array<bool, 7>();
    let var_2 = Struct_2(56740u, !arg_1.b, u_input.a | arg_0.a.c, select(vec4<i32>(~select(var_1, var_0.x, false), 24959i, _wgslsmith_div_i32(0i, var_1), u_input.b), ~arg_1.d << (func_2(-arg_1.d.wx, vec3<u32>(29213u, 57174u, 0u), Struct_3(vec4<u32>(1u, 46233u, 4294967295u, 0u), var_0.x, arg_0.a.e.a.x, 0i), abs(arg_1.e.b.zx)).b % vec4<u32>(32u)), vec4<bool>(!(!arg_0.a.b.x), arg_0.a.d.x > u_input.d, 5559i <= min(-1i, arg_1.d.x), global0[_wgslsmith_index_u32(~(~u_input.a), 7u)])), arg_1.e);
    let var_3 = arg_0.a.e.c.x;
    return arg_0;
}

fn func_7(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> vec3<f32> {
    let var_0 = arg_1.a.d.x;
    global0 = array<bool, 7>();
    var var_1 = Struct_3(firstLeadingBit(arg_1.a.e.b), u_input.d, _wgslsmith_f_op_f32(exp2(arg_2.a.x)), -1i);
    let var_2 = func_6(Struct_5(func_6(Struct_5(arg_1.a), arg_1.a, arg_2.a).a), arg_1.a, arg_2.a).a;
    global0 = array<bool, 7>();
    return vec3<f32>(-217f, -1395f, arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_7(-1000f, func_6(Struct_5(Struct_2(u_input.a, vec2<bool>(false, global0[_wgslsmith_index_u32(3926u, 7u)]), 122804u, vec4<i32>(-44218i, u_input.b, 1i, -2147483647i), Struct_1(vec4<f32>(165f, -1298f, 139f, -1249f), vec4<u32>(50837u, 28321u, 244u, 1u), vec3<f32>(1188f, 1105f, -1168f)))), func_1(Struct_3(vec4<u32>(u_input.a, 4294967295u, 66926u, u_input.a), u_input.d, -583f, 0i), 52225u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(115f, -121f, 1423f, -335f))), Struct_4(vec4<f32>(962f, -2124f, -233f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_2(u_input.c, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 7u)]), u_input.a, vec4<i32>(15934i, -27163i, u_input.b, 0i), Struct_1(vec4<f32>(-1454f, 458f, -1671f, 1632f), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec3<f32>(283f, -2039f, 569f)))), vec3<bool>(false, global0[_wgslsmith_index_u32(21752u, 7u)], true))).zxz)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, 892f, -1005f))))));
    let var_1 = false;
    var var_2 = Struct_3(vec4<u32>(_wgslsmith_add_u32(~select(u_input.a, 91221u, global0[_wgslsmith_index_u32(4294967295u, 7u)]), countOneBits(u_input.c)), 4294967295u, u_input.c, ~(~func_6(Struct_5(Struct_2(u_input.c, vec2<bool>(false, true), 33049u, vec4<i32>(u_input.b, -1i, 37971i, u_input.b), Struct_1(vec4<f32>(var_0.x, var_0.x, -442f, 712f), vec4<u32>(u_input.a, u_input.a, u_input.a, 33319u), var_0))), Struct_2(u_input.c, vec2<bool>(var_1, var_1), 0u, vec4<i32>(u_input.d, u_input.b, u_input.b, 6423i), Struct_1(vec4<f32>(var_0.x, 976f, var_0.x, 1000f), vec4<u32>(20392u, 0u, 37775u, u_input.a), vec3<f32>(var_0.x, var_0.x, var_0.x))), vec4<f32>(-784f, var_0.x, var_0.x, 1332f)).a.a)), -u_input.b, -330f, 2147483647i);
    var var_3 = Struct_3(_wgslsmith_sub_vec4_u32(var_2.a, ~func_2(vec2<i32>(u_input.b, u_input.b), vec3<u32>(u_input.c, var_2.a.x, u_input.a) << (var_2.a.yzy % vec3<u32>(32u)), Struct_3(vec4<u32>(9091u, 1u, 1u, u_input.c), 25425i, var_0.x, 2147483647i), ~var_2.a.wy).b), var_2.b, _wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_sub_i32(var_2.b, max(-2147483647i, u_input.d) << (~u_input.c % 32u)) << (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_clamp_u32(var_2.a.x, 4294967295u, var_3.a.x >> (var_3.a.x % 32u))), select(48827u, 0u, true), var_3.a, var_3.a.xxx);
}

