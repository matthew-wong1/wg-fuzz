struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(312f, -299f, 1185f, 367f), vec3<i32>(i32(-2147483648), -1i, -1i), -1200f);

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<f32>(-113f, 275f, -212f, 1904f), vec3<i32>(-54807i, 76723i, 1i), 657f), Struct_1(vec4<f32>(107f, -2045f, 558f, -577f), vec3<i32>(-7544i, 2147483647i, 2147483647i), -1000f), Struct_1(vec4<f32>(987f, 582f, -953f, -1494f), vec3<i32>(2147483647i, 6323i, -6587i), -912f));

var<private> global3: array<Struct_1, 24>;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(311f, -950f, 484f, -1152f), vec3<i32>(-40850i, -42509i, 27735i), 883f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~firstTrailingBit(u_input.c.x), -global4.b.x ^ max(global0.b.x, -2147483647i)), ~vec2<i32>(~global4.b.x, global4.b.x)) <= -2147483647i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, _wgslsmith_f_op_f32(-661f + -149f), -321f, _wgslsmith_f_op_f32(-global0.c)))), vec3<i32>(u_input.e, ~_wgslsmith_sub_i32(u_input.d.x | global0.b.x, -1i), min(global4.b.x >> (~30752u % 32u), 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2258f, _wgslsmith_f_op_f32(-global4.c), any(vec4<bool>(var_0, var_0, false, true))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1625f + _wgslsmith_f_op_f32(-global4.c)), global0.a.x, false))));
    var var_2 = Struct_1(global4.a, vec3<i32>(reverseBits(global0.b.x), -25716i, _wgslsmith_div_i32(33919i, countOneBits(-1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(507f)) + var_1.c))));
    global0 = Struct_1(global4.a, abs(vec3<i32>(-2147483647i, 0i, global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(floor(global4.a.x)))))) * 1144f));
    let var_3 = vec4<bool>(any(select(select(vec3<bool>(false, var_0, false), !vec3<bool>(true, true, var_0), false), vec3<bool>(false, true, var_0), vec3<bool>(any(vec4<bool>(var_0, var_0, var_0, var_0)), true, var_0))), select(any(vec4<bool>(false, var_0, true, var_0)), (var_0 & true) == true, true) | (_wgslsmith_f_op_f32(step(-271f, -300f)) < var_2.a.x), all(vec3<bool>(!var_0, true, any(select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, var_0))))), true);
    return global4.b.x << (abs(_wgslsmith_mod_u32(1u, ~(~33605u))) % 32u);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.a) + global0.a))), vec3<i32>(_wgslsmith_add_i32(global0.b.x, -_wgslsmith_sub_i32(u_input.b.x, 1i)), ~select(func_3(), ~global4.b.x, any(vec3<bool>(false, false, false))), -(~(~1i))), global4.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2001f, global4.c, global4.c, global0.a.x)))))), select(_wgslsmith_mult_vec3_i32(-var_0.b, select(global0.b, var_0.b, vec3<bool>(false, false, false))) ^ global0.b, -_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_0.b.x, 2147483647i), vec3<i32>(u_input.d.x, u_input.b.x, 0i)), select(vec3<bool>(false, -1236f >= var_0.a.x, global0.b.x <= 74469i), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true)), global0.a.x);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global4.c - var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -660f), global4.a.x, _wgslsmith_f_op_f32(global0.a.x * -1034f))), u_input.a, _wgslsmith_f_op_f32(-global0.a.x));
    global3 = array<Struct_1, 24>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + 1099f)), global4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(var_1.c - -228f))) + var_1.a), min(select(reverseBits(global0.b), abs(vec3<i32>(global4.b.x, global4.b.x, 5446i)), true), vec3<i32>(firstTrailingBit(1i), ~countOneBits(global4.b.x), -_wgslsmith_div_i32(var_1.b.x, -44695i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-936f, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(max(-797f, 296f)))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_3.a))))))), global4.b, 1000f);
    global4 = arg_0;
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a) * _wgslsmith_f_op_vec4_f32(global0.a * global4.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1182f, 2083f, arg_0.a.x, -268f) * global4.a) * _wgslsmith_f_op_vec4_f32(sign(global4.a))))), ~global4.b, _wgslsmith_f_op_f32(step(global4.c, -1288f)));
    var var_1 = ~(~vec4<u32>(7168u, abs(~1u), _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 31343u), ~42739u), abs(4294967295u)));
    let var_2 = 991f;
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-428f, arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_f32(f32(-1f) * -337f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = true;
    global2 = array<Struct_1, 3>();
    var var_1 = vec4<i32>(-(~_wgslsmith_sub_i32(arg_2.b.x ^ 38910i, 2135i)), 0i, ~(-3361i), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_div_i32(1i, max(1i, 1i) ^ _wgslsmith_clamp_i32(global0.b.x, global0.b.x, global4.b.x))));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(global2[_wgslsmith_index_u32(33094u, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), vec3<i32>(u_input.c.x, global0.b.x, arg_1), _wgslsmith_f_op_f32(-global4.a.x)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(206f, _wgslsmith_f_op_f32(f32(-1f) * -1267f), 517f, 1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-485f, -910f, 221f, arg_2.a.x)))))), arg_2.b, -753f);
    return _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.b.x, u_input.e, 0i), vec4<i32>(1i, global4.b.x, var_3.b.x, 1i)), i32(-1i) * -1i, -33523i), arg_1);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(~arg_0), arg_0), 3u)];
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, _wgslsmith_f_op_f32(-578f * -2381f)) * arg_1.a.ww)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x * arg_1.a.x), -1306f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.c, arg_1.c)))))));
    global2 = array<Struct_1, 3>();
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = func_5(~1u, func_5(~(37559u >> (_wgslsmith_div_u32(49379u, arg_1.x) % 32u)), Struct_1(global0.a, func_5(reverseBits(15931u), Struct_1(vec4<f32>(global0.a.x, -1014f, global0.c, 1464f), u_input.d, global4.a.x), global4.b.x).b, -1314f), abs(-firstLeadingBit(global0.b.x))), reverseBits(18126i));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~arg_1 | vec2<u32>(arg_1.x, 1u)), arg_1), 24u)];
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 0u), arg_1.x & ((arg_1.x & ~26297u) & arg_1.x));
    var var_3 = vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.b.zy, arg_0.b.yz, arg_0.b.yy), firstLeadingBit(vec2<i32>(global4.b.x, -1i))) >> (~max(~arg_1.x, _wgslsmith_sub_u32(var_2, arg_1.x)) % 32u), 21367i ^ firstTrailingBit(arg_0.b.x), var_0.b.x);
    var var_4 = var_1.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * _wgslsmith_f_op_vec4_f32(-arg_0.a))))), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, 2147483647i, var_0.b.x), u_input.a), _wgslsmith_f_op_f32(-var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(max(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 13046u, 52900u), vec4<u32>(81470u, 0u, 0u, 4294967295u))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~countOneBits(11351u), ~(~1u)), 3u)], _wgslsmith_sub_i32(func_1(vec2<f32>(global4.a.x, global0.c), 1i, global3[_wgslsmith_index_u32(4294967295u, 24u)]), ~(-11214i)) << (~1u % 32u)), ~vec2<u32>(1u, _wgslsmith_sub_u32(firstLeadingBit(42645u), _wgslsmith_mod_u32(4294967295u, 1u))));
    let var_0 = _wgslsmith_mod_vec2_u32(~(~select(select(vec2<u32>(78591u, 6080u), vec2<u32>(1u, 1u), vec2<bool>(false, false)), ~vec2<u32>(1u, 4294967295u), false)), vec2<u32>(min(4294967295u, ~1u), ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(16590u, 0u, 1u), global1[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(27063u, 38259u, 9579u), global1[_wgslsmith_index_u32(32911u, 25u)]))));
    global2 = array<Struct_1, 3>();
    var var_1 = Struct_1(func_5(~1u, Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(max(global4.a, vec4<f32>(global4.c, 253f, global4.c, global0.c)))), _wgslsmith_clamp_vec3_i32(global4.b, ~vec3<i32>(global0.b.x, 43259i, -37261i), vec3<i32>(-2147483647i, global4.b.x, -22371i)), -543f), -35040i).a, ~countOneBits(global0.b), global4.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(13855u, 25u)] << (global1[_wgslsmith_index_u32(var_0.x, 25u)] % vec3<u32>(32u)), vec3<u32>(0u, 25114u, var_0.x))), global1[_wgslsmith_index_u32(var_0.x, 25u)] ^ max(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(var_0.x >> (1u % 32u), 25u)]), ~global1[_wgslsmith_index_u32(min(~0u, 4294967295u >> (1u % 32u)), 25u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, var_1.a.x, 2372f) + vec3<f32>(global4.c, global0.a.x, 364f)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * var_1.a.x) - -188f)), global0.b.x);
}

