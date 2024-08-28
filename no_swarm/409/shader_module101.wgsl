struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec3<f32> {
    global0 = array<Struct_4, 1>();
    var var_0 = vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d | 30867u, u_input.d), ~select(u_input.e, abs(u_input.b), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), u_input.e.x, _wgslsmith_div_u32((u_input.d & u_input.d) << (reverseBits(1u) % 32u), u_input.d) >> ((_wgslsmith_clamp_u32(u_input.d, ~25616u, ~u_input.b.x) >> (~u_input.d % 32u)) % 32u));
    var var_1 = u_input.c;
    var var_2 = -1000f;
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(451f)) + _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1672f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1253f - -515f))))), _wgslsmith_f_op_f32(-413f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-273f)), _wgslsmith_f_op_f32(max(646f, 807f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1664f, -409f)) - -1000f))));
    return _wgslsmith_f_op_vec3_f32(round(var_3));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(-firstLeadingBit(-vec2<i32>(1i, -1i)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 1i), vec3<i32>(-1i, arg_0.a, u_input.a)), u_input.a), -_wgslsmith_mod_i32(0i, arg_0.a))), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~73495u), _wgslsmith_mod_vec2_u32(u_input.e, ~arg_0.b), vec2<u32>(arg_0.b.x >> (0u % 32u), ~4294967295u)), vec2<u32>(arg_0.b.x, 12312u), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.x, arg_0.b.x), vec2<u32>(65270u, 10840u))));
    let var_1 = Struct_5(Struct_1(_wgslsmith_clamp_i32(1936i, _wgslsmith_add_i32(select(var_0.a, 6011i, true), -2147483647i), u_input.a), vec2<u32>(_wgslsmith_mult_u32(abs(46568u), _wgslsmith_mult_u32(var_0.b.x, arg_0.b.x)), firstLeadingBit(78049u))));
    let var_2 = -183f;
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    return -225f;
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_3(-(~vec4<i32>(-20518i ^ u_input.c, abs(2147483647i), u_input.a, -1i)), 576u);
    global0 = array<Struct_4, 1>();
    var_0 = Struct_3(vec4<i32>(-2147483647i, var_0.a.x, -(i32(-1i) * -19629i), _wgslsmith_mod_i32(countOneBits(~(-1i)), _wgslsmith_clamp_i32(max(u_input.c, u_input.a), 1i, _wgslsmith_sub_i32(0i, -2147483647i)))), 108343u);
    let var_1 = u_input.c;
    var_0 = Struct_3(~_wgslsmith_mod_vec4_i32(var_0.a, vec4<i32>(-2147483647i, var_0.a.x, _wgslsmith_sub_i32(-20970i, -47336i), -1i)), ~30562u);
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-4566i, vec2<u32>(u_input.e.x, u_input.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1225f, 1000f) * _wgslsmith_f_op_f32(sign(444f)))), -1000f, _wgslsmith_f_op_f32(func_3(Struct_1(1i, firstTrailingBit(u_input.e))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-571f, -313f, -1471f))))), any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true), true))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global0 = array<Struct_4, 1>();
    let var_0 = Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(arg_2.a.zwx, vec3<i32>(~arg_1.a.x, ~(-2147483647i), -2868i)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b, arg_1.b), ~vec2<u32>(arg_1.b, arg_1.b)))));
    var var_1 = var_0.a;
    var var_2 = Struct_5(Struct_1(firstLeadingBit(var_1.a), ~reverseBits(var_0.a.b)));
    let var_3 = var_0.a;
    return Struct_2(Struct_1(u_input.c, ~(~var_1.b)), Struct_1(arg_1.a.x, var_2.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1095f), Struct_1(5312i, _wgslsmith_mod_vec2_u32(var_1.b, vec2<u32>(~76885u, 4294967295u << (var_1.b.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-590f, 744f, -325f), vec3<f32>(-396f, 387f, -2473f), vec3<bool>(false, true, false)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(554f, -882f, 473f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, -1237f, -850f) + vec3<f32>(-2023f, 1826f, 390f)))), _wgslsmith_f_op_vec3_f32(func_2()))), Struct_3(vec4<i32>(~(-u_input.a), u_input.c, max(u_input.a, select(u_input.a, 69278i, false)), -(~(-15666i))), abs(~(~1u))), Struct_3(_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i, 53425i, u_input.c, -1i) << (vec4<u32>(u_input.b.x, 42093u, 980u, u_input.e.x) % vec4<u32>(32u))), vec4<i32>(u_input.a, u_input.a, u_input.a, 39693i)), 51249u));
    let var_1 = vec4<bool>(all(vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), false)), true, var_0.c > -1391f, (min(var_0.a.b.x | var_0.d.b.x, var_0.b.b.x) | (u_input.d << ((24250u << (1u % 32u)) % 32u))) > u_input.b.x);
    global0 = array<Struct_4, 1>();
    let var_2 = ~(~vec2<i32>(1i, var_0.a.a)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(39380u, var_0.a.b.x) >> (var_0.b.b % vec2<u32>(32u)), ~u_input.e), _wgslsmith_div_vec2_u32(vec2<u32>(20300u, 0u), ~u_input.e)), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(32764u, _wgslsmith_mult_u32(28453u, u_input.e.x), ~var_0.b.b.x))) % vec2<u32>(32u));
    var var_3 = select(reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.e.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 31243u, 49713u, 4294967295u), vec4<u32>(3750u, var_0.d.b.x, 40450u, 30696u)))), ~vec4<u32>(min(u_input.b.x ^ 0u, var_0.a.b.x), firstLeadingBit(~34175u), 1u, _wgslsmith_div_u32(~var_0.a.b.x, 5839u)), _wgslsmith_div_i32(i32(-1i) * -var_0.d.a, 15289i) >= var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 904f, 1372f))), Struct_3(~vec4<i32>(1i, u_input.a, var_0.a.a, u_input.a), ~35846u), Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.a, u_input.c, 7165i, 1i), vec4<i32>(-1i, 33677i, var_0.d.a, 55731i), vec4<i32>(var_2.x, 19091i, -1i, u_input.c)), ~var_3.x)).d.b, ~(~vec2<u32>(4294967295u, u_input.b.x)) >> (min(var_0.b.b | u_input.b, var_0.d.b) % vec2<u32>(32u))), -54030i, _wgslsmith_f_op_vec3_f32(func_1()).x);
}

