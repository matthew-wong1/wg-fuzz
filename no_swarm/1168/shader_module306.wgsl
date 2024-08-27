struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(20872i, -1i, -64839i), vec3<i32>(31733i, 2147483647i, 2147483647i), vec3<i32>(-15805i, -93i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), -5456i), vec3<i32>(7610i, 4783i, 55709i), vec3<i32>(-24753i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 9826i, -6738i), vec3<i32>(-1i, -1i, 6472i), vec3<i32>(-53033i, 1i, 15881i), vec3<i32>(0i, -22337i, -1726i), vec3<i32>(2147483647i, -4910i, 3391i), vec3<i32>(-71851i, -24527i, 1i), vec3<i32>(1i, -25044i, 68465i), vec3<i32>(13495i, 1i, 1482i), vec3<i32>(1i, -3917i, 10101i), vec3<i32>(i32(-2147483648), -18469i, i32(-2147483648)), vec3<i32>(-1i, 5591i, 18286i), vec3<i32>(-23728i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -37364i), vec3<i32>(i32(-2147483648), -3503i, 0i), vec3<i32>(-1834i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(1i, 1220i, 2147483647i), vec3<i32>(2147483647i, 28578i, 14748i), vec3<i32>(-1i, i32(-2147483648), -15969i), vec3<i32>(20989i, 1i, -2730i), vec3<i32>(32342i, 48650i, i32(-2147483648)), vec3<i32>(0i, 36526i, 1408i), vec3<i32>(6897i, -17022i, 18533i), vec3<i32>(-26747i, i32(-2147483648), 0i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = arg_2;
    global0 = array<vec3<i32>, 31>();
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.b.x | _wgslsmith_sub_u32(20915u, var_0.b.x), var_0.b.x), max(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, 0u), vec2<u32>(4294967295u, 0u)), ~var_0.b)) > ~_wgslsmith_mod_u32(~var_0.b.x, (var_0.b.x >> (arg_2.b.x % 32u)) << (115944u % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-731f - 1372f), 1788f)));
    var var_3 = vec3<u32>(var_0.b.x, 4294967295u, _wgslsmith_add_u32(u_input.a, arg_2.b.x));
    return arg_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_0.b.x, u_input.a, arg_0.b.x, arg_0.b.x) ^ (vec4<u32>(u_input.d, arg_0.b.x, 1u, u_input.b) << (vec4<u32>(56700u, arg_0.b.x, 13066u, 0u) % vec4<u32>(32u)))), vec4<u32>(u_input.a, 37833u, ~(~u_input.b), arg_0.b.x & 65367u)) << (reverseBits(firstTrailingBit(~vec4<u32>(arg_0.b.x, u_input.b, 1u, arg_0.b.x) << (vec4<u32>(arg_0.b.x, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_1 = Struct_1(countOneBits(abs(-reverseBits(-23738i))), arg_0.b, arg_0.d, vec4<bool>(arg_0.e, arg_0.d.x, all(arg_0.d.xx), false), !(true | arg_0.c.x));
    let var_2 = vec4<u32>(u_input.b, max(_wgslsmith_mult_u32(~var_1.b.x, _wgslsmith_clamp_u32(77767u, 4294967295u, var_0.x) & u_input.a), min(abs(1u), ~0u)), 1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.a, ~var_0.x)), _wgslsmith_dot_vec2_u32(~countOneBits(var_0.wx), reverseBits(~var_1.b))));
    global0 = array<vec3<i32>, 31>();
    return -2147483647i;
}

fn func_2() -> f32 {
    global0 = array<vec3<i32>, 31>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, ~(-3891i)), _wgslsmith_clamp_i32(-25448i, u_input.c.x, func_4(Struct_1(abs(u_input.c.x), vec2<u32>(u_input.d, 0u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(893f, 1883f, 350f) * vec3<f32>(1332f, 612f, 1351f)), global0[_wgslsmith_index_u32(1u ^ u_input.d, 31u)], Struct_1(u_input.c.x, vec2<u32>(u_input.a, 9333u), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1406f), vec2<f32>(1127f, -1941f))))));
    let var_1 = ~vec2<u32>(~u_input.a, reverseBits(countOneBits(u_input.b)));
    global0 = array<vec3<i32>, 31>();
    var_0 = -(abs(u_input.c.x) | ~(20051i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, 60661u), vec4<u32>(var_1.x, 0u, u_input.d, 4294967295u)) % 32u)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(803f, 277f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1441f)))))));
}

fn func_1() -> vec2<bool> {
    global0 = array<vec3<i32>, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1634f, 1069f)), 1179f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(f32(-1f) * -1870f))), 1536f));
    var var_1 = Struct_1(~((_wgslsmith_dot_vec2_i32(u_input.c, u_input.c) << (4306u % 32u)) << (13239u % 32u)), vec2<u32>(u_input.a, _wgslsmith_div_u32(u_input.d, u_input.d)), select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(any(vec4<bool>(false, false, false, false)), false, true, select(false, true, false)), false), vec4<bool>(true, !select(false, true, false), true, any(vec2<bool>(false, true)) | false), vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(func_2()), true, true, -1i > (u_input.c.x >> (4294967295u % 32u)))), vec4<bool>(all(vec4<bool>(true, true, true, select(true, false, true))), true || all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true))), true);
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = array<vec3<i32>, 31>();
    return var_1.d.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 31>();
    var var_0 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), select(func_1(), vec2<bool>(true, false), func_1())), !vec2<bool>(any(vec4<bool>(false, false, true, false)), true), all(vec2<bool>(true, any(vec2<bool>(true, false))))), select(vec2<bool>(true, true), func_1(), vec2<bool>(true, true)), func_1());
    global0 = array<vec3<i32>, 31>();
    var var_1 = Struct_1(2147483647i, ~vec2<u32>(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_clamp_u32(1u, 0u, u_input.a)), u_input.d), select(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(-52970i <= u_input.c.x, var_0.x, any(vec3<bool>(true, true, var_0.x)), var_0.x & var_0.x), !select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true))), vec4<bool>(true, var_0.x, var_0.x, func_1().x), select(u_input.c.x == _wgslsmith_mod_i32(-2048i, u_input.c.x), var_0.x || (var_0.x || true), u_input.d > ~u_input.a)), select(vec4<bool>(func_1().x, var_0.x, !(!var_0.x), false), !(!select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true)), select(vec4<bool>(all(vec3<bool>(true, false, var_0.x)), all(vec4<bool>(var_0.x, false, false, var_0.x)), false || var_0.x, all(vec2<bool>(false, var_0.x))), select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x || false)), !var_0.x);
    var_1 = Struct_1(~_wgslsmith_add_i32(42750i, ~_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-7954i, u_input.c.x))), vec2<u32>(~81875u, min(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(75742u, var_1.b.x), vec2<u32>(71613u, 45269u)))), !select(select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_1.d.x, true), var_1.c.x), !var_1.d, !var_1.d), vec4<bool>(true, true, true, true), var_1.e), vec4<bool>(var_1.c.x, true && !var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1107f))) >= -937f, true), false);
    var var_2 = var_1.d;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(129f)))))), _wgslsmith_f_op_f32(floor(-1298f)));
    var var_4 = vec2<i32>(var_1.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-39417i, 4225i, -2406i, -2254i), ~vec4<i32>(var_1.a, -18132i, var_1.a, var_1.a)), 1i)) >> (_wgslsmith_add_vec2_u32(var_1.b, vec2<u32>(86055u, 1u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1000f, 946f), ~vec3<u32>(_wgslsmith_mod_u32(var_1.b.x, u_input.b ^ 104645u), ~_wgslsmith_mult_u32(var_1.b.x, u_input.d), firstLeadingBit(u_input.b)), 2043f, 1i & u_input.c.x);
}

