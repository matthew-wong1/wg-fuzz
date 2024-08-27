struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    var var_0 = true;
    var_0 = !(true | any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true))) || true;
    let var_1 = !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))));
    var var_2 = var_1.x;
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1113f), 1302f), vec4<u32>(u_input.a.x, 4294967295u << (u_input.a.x % 32u), 15527u, 1u));
    return _wgslsmith_f_op_f32(f32(-1f) * -916f);
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -356f)))), select(min(firstTrailingBit(~vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), select(vec4<u32>(100683u, 59286u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 2643u, u_input.a.x), false), ~vec4<u32>(34632u, 1u, 4294967295u, u_input.a.x))), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(67987u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, 4294967295u, 1u))), any(vec3<bool>(true, false, true))));
    var var_1 = Struct_3(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2203f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) * _wgslsmith_f_op_f32(sign(var_0.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a.x, 143f), _wgslsmith_f_op_f32(1022f + var_0.a.x))))), max(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i), vec3<i32>(-9787i, 19799i, -1i)), Struct_2(33200u));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.x, -829f))))))), Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_div_vec2_f32(var_0.a, var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(max(var_1.b, var_1.b)), 680f))), reverseBits(~vec4<u32>(var_1.d.a, 99u, 74059u, 33016u)) & (~var_0.b ^ ~vec4<u32>(u_input.a.x, var_0.b.x, var_0.b.x, 19586u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) + -2937f), min(9970u, var_1.d.a));
    let var_3 = vec4<u32>(var_1.d.a, min(u_input.a.x, var_0.b.x), var_0.b.x, 0u);
    var var_4 = var_2.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x - _wgslsmith_f_op_f32(var_1.b * 133f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1671f, var_1.b, var_1.a)) + -309f) - _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(483f + -696f)))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -119f))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-197f, _wgslsmith_f_op_f32(trunc(arg_0.a.x))) + vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_0.a.x + arg_1.x))), countOneBits(~arg_0.b)), _wgslsmith_f_op_f32(-arg_0.a.x), 4294967295u);
    var_0 = Struct_5(arg_1.x, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(arg_1.x * arg_0.a.x))), max(var_0.b.b, var_0.b.b | ~var_0.b.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(217f))))), var_0.c)), ~_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(u_input.a.x, var_0.d), 3262u)));
    let var_1 = Struct_3(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(143f, arg_0.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-254f, -280f)))))))), _wgslsmith_mod_vec3_i32(vec3<i32>(-(-53531i << (var_0.b.b.x % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, -9537i), vec3<i32>(-35374i, -14671i, 76321i)), ~1i), vec3<i32>(~_wgslsmith_div_i32(0i, 1i), -(-82294i << (var_0.b.b.x % 32u)), 1i)), Struct_2(var_0.d));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.b.a - _wgslsmith_f_op_vec2_f32(-arg_1.yy)));
    var var_3 = var_2.a;
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 1882f)) - _wgslsmith_f_op_vec2_f32(-arg_1.zz))))), abs(vec4<u32>(u_input.a.x ^ _wgslsmith_dot_vec4_u32(arg_0.b, arg_0.b), ~arg_0.b.x & arg_0.b.x, ~(30075u << (var_1.d.a % 32u)), 18280u)));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(~func_2(Struct_4(arg_0.a, arg_0.b), vec4<f32>(206f, arg_0.a.x, arg_0.a.x, 332f), false).b.x, _wgslsmith_add_u32(arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(438u, 0u, u_input.a.x), vec3<u32>(4294967295u, 121421u, 7857u))), ~_wgslsmith_dot_vec2_u32(arg_0.b.yw, vec2<u32>(4294967295u, arg_1)), 1u)), _wgslsmith_add_u32(arg_1, u_input.a.x));
    var_0 = u_input.a.x;
    var_0 = 59608u & u_input.a.x;
    let var_1 = vec3<i32>(max(-30977i, 4079i), -1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, -16380i), _wgslsmith_dot_vec4_i32(vec4<i32>(-37905i, -2147483647i, 32856i, 2147483647i), vec4<i32>(-45220i, -2147483647i, 3307i, -2147483647i))) >> (~select(0u, 0u, false) % 32u), -18402i & _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), -2147483647i, i32(-1i) * -46606i)));
    var var_2 = Struct_3(select(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)), true, true), func_2(func_2(func_2(func_2(arg_0, vec4<f32>(arg_0.a.x, 674f, -906f, arg_0.a.x), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 729f, -1000f, arg_0.a.x) + vec4<f32>(-1062f, arg_0.a.x, arg_0.a.x, -1000f)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-381f, -436f, arg_0.a.x, 930f), vec4<f32>(-126f, -778f, arg_0.a.x, 884f), true)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -529f, arg_0.a.x, 1486f))), !(!any(vec2<bool>(true, false)))).a.x, var_1 & _wgslsmith_add_vec3_i32(var_1, var_1), Struct_2(~0u));
    return Struct_3(true || any(!select(vec3<bool>(var_2.a, true, false), vec3<bool>(var_2.a, false, true), var_2.a)), _wgslsmith_f_op_f32(1200f * 1000f), abs(var_2.c), var_2.d);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_5 {
    var var_0 = 1305u;
    let var_1 = func_2(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(arg_2 - -675f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-698f, arg_1.b) + 1484f)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.d.a, arg_1.d.a, 1u, u_input.a.x), vec4<u32>(71196u, u_input.a.x, 29154u, arg_1.d.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(64159u, u_input.a.x, u_input.a.x, arg_1.d.a), vec4<u32>(u_input.a.x, arg_1.d.a, 4294967295u, u_input.a.x))) << (~func_2(Struct_4(vec2<f32>(522f, arg_2), vec4<u32>(59585u, 953u, 30808u, arg_1.d.a)), vec4<f32>(104f, 688f, 1443f, arg_0.x), arg_3).b % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), arg_2, arg_2, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1035f - func_2(Struct_4(arg_0, vec4<u32>(5740u, u_input.a.x, 4120u, arg_1.d.a)), vec4<f32>(arg_2, arg_2, arg_0.x, arg_2), arg_3).a.x))), arg_3);
    let var_2 = arg_1.c;
    let var_3 = arg_1;
    let var_4 = select(vec2<bool>((any(vec4<bool>(var_3.a, false, true, var_3.a)) & true) | any(!vec4<bool>(false, arg_3, arg_3, var_3.a)), _wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 * arg_0.x), _wgslsmith_f_op_f32(-var_1.a.x))), select(select(vec2<bool>(all(vec3<bool>(arg_3, false, arg_1.a)), true), vec2<bool>(true, 343f <= arg_0.x), !var_3.a), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(arg_3, true), vec2<bool>(var_3.a, true)), vec2<bool>(true, arg_3)), !(!vec2<bool>(false, var_3.a))), ~(_wgslsmith_sub_i32(30022i, var_2.x) >> (~u_input.a.x % 32u)) > var_2.x);
    return Struct_5(_wgslsmith_f_op_f32(-458f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) - _wgslsmith_div_f32(arg_1.b, var_3.b)))), var_1, arg_1.b, abs(var_3.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(~(~_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a.x, 1u, 1u, 56076u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 29255u), vec4<bool>(false, false, false, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 19961u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a.x, 27114u, ~u_input.a.x, ~145624u), vec4<u32>(1u, 40207u, u_input.a.x ^ 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 47828u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)))));
    var var_1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(281f)), -798f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), func_4(func_2(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, 1555f)), _wgslsmith_sub_vec4_u32(var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, -1000f, 1000f, 618f)), true && all(vec2<bool>(false, true))), 1u), 1006f, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i) ^ vec4<i32>(~0i, _wgslsmith_clamp_i32(1i, -2147483647i, -1i), ~23136i, 1i), vec4<i32>(-3910i, firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(~(-1398i), _wgslsmith_dot_vec4_i32(vec4<i32>(-25003i, 5256i, -2147483647i, 0i), vec4<i32>(7161i, -1i, -6481i, 0i))), ~(i32(-1i) * -2147483647i))), _wgslsmith_f_op_vec2_f32(var_1.b.a - var_1.b.a), vec2<u32>(abs(var_1.b.b.x), _wgslsmith_clamp_u32(var_1.d, 0u | var_0.x, _wgslsmith_mult_u32(10849u, var_1.d)) ^ var_0.x), var_1.a, vec4<i32>(1i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 0i)), 0i) >> ((var_1.b.b << (vec4<u32>(var_1.b.b.x, _wgslsmith_mult_u32(var_0.x, 11934u), _wgslsmith_clamp_u32(4294967295u, var_0.x, 6606u), u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

