struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec3<u32>(4294967295u, 1u, 37019u)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    global1 = array<Struct_4, 1>();
    let var_0 = false && all(vec2<bool>(true, true));
    global1 = array<Struct_4, 1>();
    var var_1 = Struct_3(-select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -4464i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x) & vec4<i32>(-12769i, -2810i, u_input.a.x, 2147483647i), vec4<bool>(var_0, false, false, false)) << (~(~vec4<u32>(17298u, 0u, 17874u, 1u)) % vec4<u32>(32u)), _wgslsmith_clamp_u32(~(~1u), countOneBits(4294967295u), _wgslsmith_clamp_u32(min(20994u, 58160u), 1u, 85u)) ^ ~abs(4294967295u), Struct_2(u_input.a & abs(abs(vec2<i32>(u_input.a.x, u_input.a.x))), Struct_1(~1u), select(vec2<bool>(var_0, false != var_0), !(!vec2<bool>(var_0, false)), var_0)), ~_wgslsmith_mult_u32(1u, ~(~0u)));
    let var_2 = true;
    return select(vec2<u32>(var_1.b << (_wgslsmith_add_u32(~var_1.d, var_1.d) % 32u), _wgslsmith_sub_u32(var_1.b, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(0u), select(38423u, 0u, var_0 & false)), vec2<u32>(10965u, firstLeadingBit(51293u | var_1.b))), vec2<bool>(true, var_1.c.b.a >= reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.c.b.a, var_1.b), vec3<u32>(12916u, var_1.d, var_1.c.b.a)))));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, 17225i, firstTrailingBit(min(u_input.a.x, u_input.a.x) & (u_input.a.x ^ u_input.a.x))), 1u, Struct_2(u_input.a, Struct_1(~1u >> (1u % 32u)), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true), any(vec2<bool>(true, true)))), _wgslsmith_mod_u32(abs(~1u), min(~1u, _wgslsmith_sub_u32(max(37516u, 1u), 11701u))));
    global0 = array<vec3<u32>, 17>();
    let var_1 = Struct_3(firstTrailingBit(_wgslsmith_add_vec4_i32(var_0.a, var_0.a) | vec4<i32>(40483i, 0i, var_0.c.a.x, -15564i)) | vec4<i32>(~_wgslsmith_div_i32(-42350i, -11194i), i32(-1i) * -u_input.a.x, ~_wgslsmith_mult_i32(-1i, var_0.c.a.x), ~32866i), abs(max(var_0.c.b.a, ~(30824u | var_0.c.b.a))), var_0.c, 0u);
    var var_2 = global0[_wgslsmith_index_u32(1u, 17u)];
    global0 = array<vec3<u32>, 17>();
    return (func_3() << (vec2<u32>(var_2.x, ~28345u) % vec2<u32>(32u))) & vec2<u32>((select(var_0.b, 1u, true) >> (1u % 32u)) & 2532u, 0u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_add_vec2_u32(~(~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(arg_2.b.a, arg_2.b.a)), vec2<u32>(4294967295u, arg_0.b.a))), ~func_2());
    var var_2 = Struct_3(-select(vec4<i32>(~1i, ~(-19195i), u_input.a.x, arg_2.a.x), -vec4<i32>(-87441i, -2147483647i, 37801i, arg_0.a.x), !select(vec4<bool>(true, arg_2.c.x, arg_0.c.x, arg_2.c.x), vec4<bool>(arg_0.c.x, arg_2.c.x, arg_0.c.x, arg_2.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x))), ~var_1.x, Struct_2(max(arg_0.a, -vec2<i32>(arg_0.a.x, 26508i) | ~vec2<i32>(arg_2.a.x, -1i)), Struct_1(0u), vec2<bool>((arg_2.c.x && false) || true, (false & arg_0.c.x) == true)), 1u);
    let var_3 = select(var_2.a.zwz, -countOneBits(countOneBits(select(vec3<i32>(16194i, 37217i, var_2.a.x), vec3<i32>(-54006i, 21489i, 2147483647i), true))), !(!select(select(vec3<bool>(arg_0.c.x, arg_0.c.x, var_2.c.c.x), vec3<bool>(true, false, true), vec3<bool>(var_2.c.c.x, arg_2.c.x, false)), !vec3<bool>(arg_2.c.x, arg_0.c.x, arg_2.c.x), select(vec3<bool>(arg_0.c.x, arg_2.c.x, false), vec3<bool>(arg_0.c.x, var_2.c.c.x, var_2.c.c.x), arg_2.c.x))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(295f + -572f))), 321f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 118f) + _wgslsmith_f_op_f32(-339f * 932f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(839f)) - _wgslsmith_f_op_f32(floor(-210f))), -1838f)) + -899f), -847f);
    return Struct_3(-min(max(var_2.a, vec4<i32>(var_3.x, var_3.x, -44866i, arg_0.a.x)), ~var_2.a) ^ var_2.a, 21873u, arg_2, 32179u);
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = ~(~vec3<u32>(1900u, _wgslsmith_sub_u32(0u, arg_0.d ^ 1u), 4294967295u));
    var var_1 = vec2<u32>(~4294967295u, arg_0.c.b.a);
    var_1 = ~reverseBits(~(~vec2<u32>(var_0.x, 15626u))) << (~select(var_0.zx, vec2<u32>(var_0.x ^ 1u, 1u), false) % vec2<u32>(32u));
    var var_2 = ~vec2<i32>(-6437i, _wgslsmith_add_i32(u_input.a.x, 1i));
    var var_3 = arg_0.c;
    return 42904u;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(u_input.a, Struct_1(arg_2.a), !select(func_1(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(4294967295u), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.a, arg_2.a), 1u)], Struct_2(u_input.a, Struct_1(arg_1), vec2<bool>(false, true))).c.c, vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = array<vec3<u32>, 17>();
    global1 = array<Struct_4, 1>();
    var var_1 = arg_2;
    let var_2 = _wgslsmith_sub_u32(~var_0.b.a, _wgslsmith_mult_u32(~arg_1, min(~0u, arg_2.a)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 1u >> (var_0.b.a % 32u), var_0.b.a, ~40289u), reverseBits(~vec4<u32>(arg_2.a, arg_1, var_1.a, arg_1))) % 32u));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1526f;
    let var_1 = func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-31743i, u_input.a.x), _wgslsmith_mult_i32(0i, u_input.a.x), 38205i, select(u_input.a.x, -2147483647i, true)) << (abs(~vec4<u32>(0u, 0u, 14134u, 5782u)) % vec4<u32>(32u)), vec4<i32>(abs(0i), -(i32(-1i) * -1i), u_input.a.x, abs(-1i))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 0u)), select(vec2<u32>(4294967295u, 101160u), vec2<u32>(18254u, 28850u), vec2<bool>(false, true))), 111577u) << (~(~(~52948u)) % 32u), Struct_1(func_4(func_1(Struct_2(vec2<i32>(-79213i, u_input.a.x), Struct_1(4294967295u), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(23040u, 1u)], Struct_2(vec2<i32>(-19689i, 5725i), Struct_1(1u), vec2<bool>(true, false))))));
    let var_2 = 1u;
    global0 = array<vec3<u32>, 17>();
    let var_3 = vec3<bool>(true, true, true);
    global0 = array<vec3<u32>, 17>();
    var var_4 = select(vec2<bool>(all(select(!var_3, var_3, var_3.x & true)), any(vec4<bool>(!var_3.x, true, true, true))), var_3.yx, var_3.xy);
    var var_5 = ~_wgslsmith_div_vec2_u32(vec2<u32>(var_2, 4294967295u), ~reverseBits(~vec2<u32>(25966u, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(abs(1u), 0u | _wgslsmith_div_u32(var_1.a, 74506u), var_5.x), select(max(vec3<u32>(4294967295u, var_5.x, var_2), vec3<u32>(1u, 78225u, var_5.x)), global0[_wgslsmith_index_u32(19551u, 17u)], vec3<bool>(false, all(vec4<bool>(true, var_4.x, var_4.x, true)), any(var_3)))), vec3<i32>(abs(_wgslsmith_div_i32(u_input.a.x, reverseBits(2147483647i))), _wgslsmith_dot_vec4_i32(~func_1(Struct_2(u_input.a, Struct_1(var_2), vec2<bool>(var_4.x, true)), global1[_wgslsmith_index_u32(1u, 1u)], Struct_2(u_input.a, var_1, var_3.xx)).a, firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), 1i));
}

