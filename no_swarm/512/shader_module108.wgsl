struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-2012f);

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(0u, 0u, 18810u), vec3<u32>(1u, 1u, 17378u), 1620u, vec4<bool>(false, false, false, true), vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), 61898u, vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 2525u, 25913u)), Struct_1(vec3<u32>(1u, 66901u, 1u), vec3<u32>(1u, 4294967295u, 0u), 1u, vec4<bool>(false, true, true, true), vec3<u32>(0u, 1u, 1u)), Struct_1(vec3<u32>(34673u, 37284u, 32656u), vec3<u32>(101117u, 0u, 42029u), 31962u, vec4<bool>(false, false, true, false), vec3<u32>(52055u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(1u, 15078u, 1u), vec3<u32>(34434u, 0u, 1u), 0u, vec4<bool>(true, false, false, true), vec3<u32>(1u, 52083u, 33642u)), Struct_1(vec3<u32>(26397u, 1u, 0u), vec3<u32>(1u, 23337u, 69930u), 19740u, vec4<bool>(false, false, false, true), vec3<u32>(23886u, 4294967295u, 95138u)), Struct_1(vec3<u32>(37387u, 12223u, 26979u), vec3<u32>(36383u, 40294u, 4294967295u), 22580u, vec4<bool>(true, false, true, false), vec3<u32>(0u, 82652u, 1u)), Struct_1(vec3<u32>(42803u, 4294967295u, 23228u), vec3<u32>(2557u, 0u, 4294967295u), 4294967295u, vec4<bool>(false, false, true, false), vec3<u32>(75359u, 1u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    global0 = Struct_2(_wgslsmith_f_op_f32(-global1.a));
    global2 = array<Struct_1, 8>();
    global1 = Struct_2(1453f);
    global1 = Struct_2(global0.a);
    global0 = Struct_2(_wgslsmith_f_op_f32(-375f - global1.a));
    return -(~(max(vec3<i32>(0i, 2147483647i, u_input.b), vec3<i32>(2147483647i, -1i, u_input.b) << (vec3<u32>(50258u, u_input.a, 4294967295u) % vec3<u32>(32u))) & abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.b, u_input.d), vec3<i32>(u_input.b, u_input.b, -3388i)))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> i32 {
    var var_0 = -391f;
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, 1f))));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a, -274f, false)) * global0.a))));
    let var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-43035i, u_input.d, -u_input.d), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.b), vec3<i32>(u_input.c, 0i, -2147483647i)) >> (vec3<u32>(10575u, u_input.a, 91501u) % vec3<u32>(32u)))) & -func_3();
    var var_2 = arg_2.wx;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(min(_wgslsmith_sub_i32(~u_input.b, ~var_1.x), _wgslsmith_sub_i32(45364i, abs(-90308i))), -_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-3754i, 29681i)), max(var_1.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.x, var_1.x), -u_input.b, ~var_1.x))), var_1);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-5514i, 53259i, -2147483647i, -1i), vec4<i32>(u_input.d, 14955i, 2147483647i, -28501i)), func_2(true, false, vec4<bool>(false, true, true, false)), 5289i)), countOneBits(abs(vec3<i32>(u_input.b, u_input.b, -49056i))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-2147483647i, -2147483647i, u_input.c)), vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), 53722i, _wgslsmith_div_i32(u_input.c, u_input.d)))), abs(-abs(_wgslsmith_sub_vec3_i32(vec3<i32>(4364i, u_input.d, -2741i), vec3<i32>(62139i, 17686i, 1i)))));
    var var_1 = Struct_2(global0.a);
    global2 = array<Struct_1, 8>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(exp2(global0.a)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 655f, var_1.a))), _wgslsmith_div_vec3_f32(vec3<f32>(-549f, var_1.a, global1.a), vec3<f32>(var_2.a, global1.a, var_2.a)), vec3<bool>(true, true, true))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1331f)), _wgslsmith_f_op_f32(step(658f, 1238f)), var_1.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, global0.a, -539f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(step(global0.a, var_1.a)))) * vec3<f32>(_wgslsmith_f_op_f32(-785f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 578f, global0.a)));
    return Struct_2(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_div_f32(-1371f, global0.a));
    global2 = array<Struct_1, 8>();
    global1 = func_1();
    var var_0 = func_1();
    let var_1 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -max(vec4<i32>(-1i, 0i, 0i, u_input.b), vec4<i32>(u_input.d, -66353i, u_input.c, 1i)), ~reverseBits(abs(vec4<i32>(u_input.d, u_input.d, 1i, u_input.c))));
    var var_2 = !((true | (var_0.a <= global1.a)) | true) | true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(548f * 1327f) - -344f))), global1.a)), _wgslsmith_sub_u32(~(~1u), (~u_input.a >> (~1u % 32u)) ^ reverseBits(78807u)), min(select(vec3<u32>(u_input.a, 7555u, 0u), ~vec3<u32>(u_input.a, 4294967295u, u_input.a), any(vec3<bool>(true, false, false))), firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, 0u, u_input.a)))) << (vec3<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), _wgslsmith_div_u32(2231u, 41739u), ~(~64080u)) % vec3<u32>(32u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(~u_input.a)), u_input.a));
}

