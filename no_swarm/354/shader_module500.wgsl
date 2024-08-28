struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2.e;
    var var_1 = firstLeadingBit(u_input.a.x);
    var var_2 = (~1i >> (u_input.a.x % 32u)) != min(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.e.a, -2713i, var_0.a), vec3<i32>(-17483i, -13373i, var_0.a)) >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), arg_2.d >> (~u_input.a.x % 32u)), arg_2.d);
    return arg_2.e;
}

fn func_1() -> u32 {
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2052f, -1168f, -620f, 437f))))));
    var var_2 = select(any(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(33386u, 18u)])), !select(vec3<bool>(global0[_wgslsmith_index_u32(24315u, 18u)], true, global0[_wgslsmith_index_u32(40078u, 18u)]), vec3<bool>(false, true, true), true), global0[_wgslsmith_index_u32(min(u_input.a.x, var_0), 18u)])), global0[_wgslsmith_index_u32(124593u, 18u)], -((2147483647i << (u_input.a.x % 32u)) ^ ~(-12387i)) != -1i);
    var var_3 = func_2(select(!vec4<bool>(true, any(vec2<bool>(true, false)), select(false, false, true), true), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(var_0, 18u)], false, global0[_wgslsmith_index_u32(var_0, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, global0[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(8083u, 18u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xwx, _wgslsmith_add_vec3_u32(~u_input.a.zwx, countOneBits(u_input.a.zzz))), 18u)]), !vec4<bool>(true, !global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), u_input.a.yzw), 18u)], true), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xx))), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], var_1.x > var_1.x, all(vec3<bool>(false, true, true))), vec4<bool>(true, true, global0[_wgslsmith_index_u32(~var_0, 18u)], true), select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 18u)]), global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global0[_wgslsmith_index_u32(4294967295u, 18u)], false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0, 18u)], false), global0[_wgslsmith_index_u32(0u, 18u)]))), !select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(false, global0[_wgslsmith_index_u32(var_0, 18u)])), 1i, Struct_1(1i, vec2<f32>(1692f, _wgslsmith_f_op_f32(exp2(var_1.x))))));
    var_2 = true;
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -912f, arg_0.b.x) - vec3<f32>(-1628f, 757f, arg_0.b.x)))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-261f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-189f + 706f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f * arg_0.b.x)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) * arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x));
    global0 = array<bool, 18>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, var_1.x, -2474f)), _wgslsmith_div_vec3_f32(vec3<f32>(222f, 1485f, var_1.x), var_1.xxx)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(182f, -232f, var_1.x))), var_1.xzz)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.xwz))));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(5766u >> (reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.xwz, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) % 32u), 87136u), u_input.a.x, firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x ^ _wgslsmith_dot_vec3_u32(u_input.a.wxy, vec3<u32>(21955u, 50678u, 104342u)))));
    return _wgslsmith_dot_vec2_i32(~(vec2<i32>(arg_0.a, max(arg_0.a, arg_0.a)) & (_wgslsmith_sub_vec2_i32(vec2<i32>(17400i, -2147483647i), vec2<i32>(2147483647i, -78968i)) & (vec2<i32>(1i, arg_0.a) >> (vec2<u32>(22008u, 63028u) % vec2<u32>(32u))))), vec2<i32>(_wgslsmith_mod_i32(arg_0.a ^ _wgslsmith_div_i32(1i, arg_0.a), i32(-1i) * -43398i), ~5107i));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-36105i, arg_1.e.a, ~arg_1.d.a)), vec3<i32>(_wgslsmith_sub_i32(arg_1.c, -1i), 2147483647i, -16903i)), func_2(vec4<bool>(false, true, any(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(39142u, 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 18u)], true, global0[_wgslsmith_index_u32(1u, 18u)], true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 18u)], true))), -626f < arg_1.e.b.x), vec4<bool>(true, !(global0[_wgslsmith_index_u32(1u, 18u)] && global0[_wgslsmith_index_u32(arg_2, 18u)]), all(vec2<bool>(global0[_wgslsmith_index_u32(26139u, 18u)], arg_3)), false), Struct_3(vec2<f32>(1503f, 517f), select(select(vec4<bool>(arg_3, true, arg_3, false), vec4<bool>(arg_3, global0[_wgslsmith_index_u32(arg_2, 18u)], arg_3, global0[_wgslsmith_index_u32(23376u, 18u)]), arg_3), select(vec4<bool>(arg_3, arg_3, false, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 18u)], arg_3, false, false), arg_3), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(26045u, 18u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(arg_2, 18u)], arg_3, false), vec4<bool>(arg_3, false, arg_3, arg_3))), select(select(vec2<bool>(arg_3, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(71730u, 18u)], false), vec2<bool>(true, true)), select(vec2<bool>(global0[_wgslsmith_index_u32(28146u, 18u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2, 18u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(25515u, 18u)])), true), -_wgslsmith_sub_i32(-34722i, arg_1.a.x), Struct_1(arg_1.e.a, _wgslsmith_f_op_vec2_f32(-arg_1.b.b)))), -(-arg_1.a.x >> (u_input.a.x % 32u)), arg_1.e, arg_1.b);
    let var_1 = ~_wgslsmith_clamp_i32(-arg_1.d.a, 1i, var_0.a.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_1.e.b + var_0.d.b);
    global0 = array<bool, 18>();
    var var_3 = -arg_1.d.a != (52449i ^ countOneBits(-_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(arg_1.b.a, arg_1.a.x, arg_1.a.x))));
    return ~(~29744u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(func_1(), Struct_2(countOneBits(vec3<i32>(-3255i, 9775i, -30679i)), func_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(65123u, 18u)], true, global0[_wgslsmith_index_u32(77190u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), Struct_3(vec2<f32>(1626f, 316f), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(5574u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(32194u, 18u)], false), -10340i, Struct_1(1i, vec2<f32>(-668f, 225f)))), func_3(Struct_1(-1i, vec2<f32>(1109f, -132f))), Struct_1(-2147483647i, vec2<f32>(1000f, -472f)), func_2(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, global0[_wgslsmith_index_u32(36522u, 18u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_3(vec2<f32>(-507f, 935f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false, global0[_wgslsmith_index_u32(28498u, 18u)]), vec2<bool>(false, false), -3316i, Struct_1(-11306i, vec2<f32>(1219f, -1000f))))), 0u, !global0[_wgslsmith_index_u32(~33577u, 18u)]) > u_input.a.x, select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)] && all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true)), any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), true), vec4<bool>(false, (u_input.a.x ^ 28949u) > u_input.a.x, all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false), false)), global0[_wgslsmith_index_u32(33906u >> (0u % 32u), 18u)] & true), true));
    var_0 = Struct_4(false, vec4<bool>(~u_input.a.x < ~41242u, max(~u_input.a.x, u_input.a.x) == min(u_input.a.x & 26708u, reverseBits(57125u)), false, any(var_0.b.xxy)));
    global0 = array<bool, 18>();
    let var_1 = min(firstLeadingBit(min(_wgslsmith_add_vec3_i32(vec3<i32>(24319i, 14016i, 2147483647i), vec3<i32>(0i, -38659i, -1i)), ~(vec3<i32>(1i, 2147483647i, 0i) << (vec3<u32>(u_input.a.x, 28381u, 1u) % vec3<u32>(32u))))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 0i, 2147483647i)), vec3<i32>(1i, 1i, 1i), vec3<i32>(-32136i, -2147483647i, -29202i)), firstTrailingBit(~vec3<i32>(0i, 38534i, 0i)))));
    var var_2 = var_1.x;
    let var_3 = var_0.a;
    let var_4 = Struct_2(-vec3<i32>(-1i, ~(-21485i), func_2(!vec4<bool>(var_0.a, true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true), var_0.b, Struct_3(vec2<f32>(-993f, 317f), var_0.b, var_0.b.zx, var_1.x, Struct_1(var_1.x, vec2<f32>(1079f, 1817f)))).a), Struct_1(abs(var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(867f, 586f)))))), var_1.x, Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1543f)), -1807f))), func_2(vec4<bool>(false, true, any(var_0.b.yy), true || all(var_0.b.xy)), select(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 18u)], var_0.b.x, false, global0[_wgslsmith_index_u32(16684u, 18u)]), !var_0.b, !(!var_0.b)), Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-817f, -1933f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-187f, 675f) + vec2<f32>(1765f, -226f)))), vec4<bool>(all(var_0.b.yxw), var_0.a, false | global0[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.a.x <= u_input.a.x), !(!var_0.b.wx), var_1.x, func_2(var_0.b, select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), var_0.b, vec4<bool>(true, true, var_0.b.x, var_0.a)), Struct_3(vec2<f32>(807f, 1455f), var_0.b, var_0.b.zz, 0i, Struct_1(3806i, vec2<f32>(1212f, -573f)))))));
    var var_5 = global0[_wgslsmith_index_u32(u_input.a.x, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(-min(~var_4.e.a, -1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.b.x, _wgslsmith_f_op_f32(-var_4.b.b.x)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_4.e.b)))), ~vec2<u32>((u_input.a.x & u_input.a.x) << (~2943u % 32u), _wgslsmith_sub_u32(u_input.a.x >> (1u % 32u), u_input.a.x)));
}

