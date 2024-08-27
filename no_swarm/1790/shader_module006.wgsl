struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<i32>(-17124i, 1i, -4640i), Struct_1(vec2<f32>(-136f, -334f), false, -1337f), 0i), Struct_2(vec3<i32>(8962i, -1i, -1i), Struct_1(vec2<f32>(-1157f, 836f), false, 1108f), 1474i), Struct_2(vec3<i32>(1i, 2147483647i, -56488i), Struct_1(vec2<f32>(-2037f, -1000f), true, -888f), 2147483647i), Struct_2(vec3<i32>(37123i, -1i, -1i), Struct_1(vec2<f32>(-1324f, -383f), true, 119f), 2147483647i));

var<private> global1: vec2<i32> = vec2<i32>(39149i, 2147483647i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    global0 = array<Struct_2, 4>();
    var var_0 = Struct_3(u_input.b.x);
    let var_1 = ~vec2<u32>(firstLeadingBit(~var_0.a | firstLeadingBit(var_0.a)), 51246u);
    let var_2 = select(vec3<i32>(-13650i, ~(-1i >> (var_1.x % 32u)), global1.x) << (u_input.b.xwy % vec3<u32>(32u)), vec3<i32>(11666i, global1.x, -(-1i >> (var_1.x % 32u))), false);
    let var_3 = (any(vec2<bool>(all(vec4<bool>(true, true, true, false)), select(true, true, false))) && true) && (6413u != var_0.a);
    return abs(countOneBits(-_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, global1.x, -2147483647i), -var_2)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec3_i32(select(~(-vec3<i32>(10637i, global1.x, u_input.d)), -firstTrailingBit(abs(vec3<i32>(11217i, u_input.c.x, u_input.c.x))), global1.x == _wgslsmith_clamp_i32(u_input.d >> (4294967295u % 32u), global1.x, global1.x)), -_wgslsmith_mult_vec3_i32(select(vec3<i32>(global1.x, u_input.d, u_input.c.x), vec3<i32>(14825i, global1.x, u_input.c.x), true), ~vec3<i32>(-3805i, u_input.c.x, u_input.c.x)) | min(_wgslsmith_add_vec3_i32(func_3(-1i), vec3<i32>(0i, -13897i, -1i)), vec3<i32>(i32(-1i) * -20111i, 31970i, -1i >> (arg_1.a % 32u))));
    let var_1 = Struct_1(arg_0.zx, !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-551f)), _wgslsmith_div_f32(arg_0.x, 1382f))) >= arg_0.x), _wgslsmith_f_op_f32(-1332f * _wgslsmith_f_op_f32(-283f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.x)))))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), -302f), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * -2329f)))));
    global1 = _wgslsmith_div_vec2_i32(-var_0.xy, firstTrailingBit(u_input.c));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_1.a ^ _wgslsmith_mult_u32(0u | _wgslsmith_add_u32(u_input.a.x, arg_1.a), abs(u_input.e)), arg_1.a << (u_input.a.x % 32u)), 4u)];
    return !select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, var_2.b), vec2<bool>(false, var_2.b)), !vec2<bool>(var_3.b.b, true), !vec2<bool>(var_2.b, false)), !select(vec2<bool>(var_2.b, false), vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, var_2.b)), all(select(vec4<bool>(var_1.b, var_1.b, var_3.b.b, false), vec4<bool>(var_1.b, true, true, var_1.b), vec4<bool>(var_3.b.b, true, var_1.b, var_1.b)))), !select(vec2<bool>(true, var_2.b), !vec2<bool>(var_3.b.b, var_3.b.b), true), (arg_0.x < _wgslsmith_f_op_f32(abs(var_3.b.a.x))) | false);
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    global1 = u_input.c | vec2<i32>(u_input.d, -2147483647i >> (~u_input.e % 32u));
    var var_0 = select(func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) + vec3<f32>(-664f, -344f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -2165f, -1581f))))), Struct_3(u_input.b.x)), vec2<bool>(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), true), !((_wgslsmith_f_op_f32(min(arg_0.x, 1585f)) == _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) || true));
    let var_1 = Struct_2(-countOneBits(min(firstTrailingBit(vec3<i32>(u_input.c.x, -2147483647i, global1.x)), vec3<i32>(u_input.c.x, -4724i, global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_0), vec2<bool>(var_0.x, var_0.x))), true, 1000f), i32(-1i) * -(~(-9050i >> (u_input.e % 32u))));
    var var_2 = !var_1.b.b & var_1.b.b;
    var var_3 = Struct_3(countOneBits(~u_input.b.x >> (~75217u % 32u)));
    return _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_div_i32(32850i, 30736i), -1i, ~global1.x), vec4<i32>(-2147483647i, reverseBits(u_input.c.x), -1i >> (u_input.b.x % 32u), 0i)), vec4<i32>(_wgslsmith_mod_i32(global1.x, ~(-11708i)), -37003i, _wgslsmith_div_i32(29200i, reverseBits(global1.x)), -(~1i))), min(vec4<i32>(_wgslsmith_add_i32(1i, abs(u_input.c.x)), 1i, -9941i, 21098i), vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, 1i, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(19147u, 4u)];
    let var_1 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1054f, var_0.b.c)), vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -704f)), false)), var_0.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~u_input.b.ww, firstTrailingBit(max(select(vec2<u32>(55249u, 0u), u_input.a, vec2<bool>(true, true)), u_input.a >> (u_input.b.wy % vec2<u32>(32u)))), vec2<u32>(29249u, ~10373u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-428f, var_0.b.a.x, -1000f, 102f), vec4<f32>(1109f, -1010f, var_0.b.a.x, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(419f, -888f, var_0.b.a.x, -1000f) * vec4<f32>(-1017f, 156f, var_0.b.a.x, var_0.b.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-191f, var_0.b.a.x, var_0.b.c, 336f) * vec4<f32>(167f, var_0.b.c, var_0.b.c, var_0.b.a.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.b.a.x, -448f), -885f, _wgslsmith_f_op_f32(var_0.b.a.x * var_0.b.c), _wgslsmith_f_op_f32(var_0.b.a.x + -338f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, 1517f, 285f, var_0.b.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1741f, -2225f, 1007f, var_0.b.c) - vec4<f32>(-1406f, -1330f, var_0.b.a.x, var_0.b.a.x))))), -1i, vec2<u32>(u_input.b.x, u_input.e));
}

