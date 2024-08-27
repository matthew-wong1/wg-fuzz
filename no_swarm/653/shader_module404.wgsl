struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = Struct_1(countOneBits(2147483647i), u_input.b, arg_0.c);
    return 861f;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_1(~u_input.a & (~(i32(-1i) * -764i) & ~u_input.a), ~vec4<u32>(1u, 1u, ~(~0u), 4294967295u & u_input.c), 232f);
    return Struct_1(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, 18828i, var_1.a) >> (var_1.b.x % 32u), reverseBits(20592i)), var_1.b >> (vec4<u32>(~var_1.b.x, var_1.b.x, _wgslsmith_dot_vec3_u32(u_input.b.zyw, var_1.b.wxy), 120444u) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(25998i, vec4<u32>(87552u, 0u, u_input.b.x, 15547u), arg_3.x), -505f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-189f, -129f)) + _wgslsmith_f_op_f32(trunc(2917f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0.c));
    let var_1 = abs(arg_1.b.xx);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_1.c) * vec2<f32>(-1014f, arg_1.c)), _wgslsmith_div_vec2_f32(vec2<f32>(-507f, var_0), vec2<f32>(965f, arg_0.c))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 120f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(exp2(var_0)))), 205f));
    var var_3 = arg_0;
    return Struct_1(arg_1.a, ~vec4<u32>(~reverseBits(var_1.x), 4294967295u, 32u, 55196u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-333f)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = vec3<i32>(u_input.a, ~abs(_wgslsmith_clamp_i32(arg_1.a, -19327i, 2147483647i)), ~(~((-8034i | arg_1.a) ^ -22863i)));
    let var_1 = !select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), false), !vec3<bool>(true, true, all(vec3<bool>(false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), any(vec4<bool>(false, false, false, true))), false));
    var var_2 = var_1;
    var var_3 = _wgslsmith_sub_vec2_u32(~(~u_input.b.wx | u_input.b.wx), vec2<u32>(firstTrailingBit(~arg_1.b.x), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(38616u, 1u), select(0u, 7552u, arg_1.a >= arg_1.a))));
    var_3 = arg_1.b.zx;
    return arg_1.b.x ^ 77833u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1514f)))), _wgslsmith_f_op_f32(871f * 1092f), arg_1.c, _wgslsmith_f_op_f32(-arg_1.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_0);
    var var_2 = ~arg_1.b.yw;
    let var_3 = vec3<u32>(min(arg_1.b.x, abs(arg_1.b.x & u_input.c)), func_5(arg_0, func_4(func_2(arg_1.c, vec2<bool>(true, true), true, vec4<f32>(var_1.x, -631f, -412f, -250f)), Struct_1(u_input.a, vec4<u32>(arg_1.b.x, 34047u, arg_1.b.x, 6600u), -1000f), u_input.b.zw), -(~vec2<i32>(-2147483647i, -2147483647i))) << (var_2.x % 32u), min(_wgslsmith_div_u32(~50542u, var_2.x), ~u_input.c));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.ywx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.ywz)) - _wgslsmith_f_op_vec3_f32(-var_0.zzz)) * arg_0.yxy) * var_1.xzy)));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = !(!any(vec2<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, false)))));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(u_input.a), -1i), vec2<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, arg_1.a, -65254i), vec3<i32>(arg_0.a, arg_0.a, 14280i)) >> (~u_input.b.yyw % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 52792i, -1i), vec3<i32>(u_input.a, -1i, 1i))), -40793i));
    var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(~var_1.x), -1i), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(0i, -arg_1.a)), abs(~(-vec2<i32>(21788i, arg_3.a)))));
    var_1 = -firstTrailingBit(~firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, arg_1.a), vec2<i32>(u_input.a, var_1.x))));
    var_0 = false;
    return vec4<i32>(0i, _wgslsmith_mod_i32(~(~(-u_input.a)), -var_1.x), -_wgslsmith_sub_i32(arg_1.a, func_1(vec4<f32>(arg_0.c, arg_3.c, arg_0.c, -556f), Struct_1(1284i, vec4<u32>(4294967295u, arg_0.b.x, arg_2, 1u), arg_0.c), u_input.b.x).a) | -1i, arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) - -1000f);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1297f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f - 1288f))))));
    var var_1 = u_input.a > u_input.a;
    let var_2 = 1i;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-164f, -1000f, 0i > u_input.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-436f)), -1168f))) > _wgslsmith_f_op_f32(select(1000f, -2477f, true));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1227f - -133f)))) + _wgslsmith_f_op_f32(trunc(1083f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec4_i32(func_6(func_1(vec4<f32>(692f, -273f, 1000f, -1000f), Struct_1(-2147483647i, u_input.b, -411f), u_input.c), Struct_1(1i, vec4<u32>(u_input.c, 9103u, 44304u, u_input.c), 189f), func_1(vec4<f32>(230f, -477f, 212f, -2075f), Struct_1(var_2, vec4<u32>(u_input.b.x, 13308u, u_input.b.x, u_input.c), 1000f), u_input.c).b.x, Struct_1(u_input.a, vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.c), -1621f)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, var_2, u_input.a, -1764i), vec4<i32>(var_2, 2147483647i, 2147483647i, var_2))))), vec4<i32>(_wgslsmith_div_i32(var_2, -2147483647i), 53922i, _wgslsmith_clamp_i32(-(i32(-1i) * -1i), 14757i, -1i), func_4(func_4(func_4(Struct_1(u_input.a, vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.c), -846f), Struct_1(-1i, vec4<u32>(14292u, u_input.c, 19738u, u_input.b.x), -745f), u_input.b.xy), func_4(Struct_1(var_2, u_input.b, 1000f), Struct_1(u_input.a, u_input.b, -250f), u_input.b.yz), vec2<u32>(u_input.c, u_input.b.x)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1795f), vec2<bool>(true, true), select(false, false, false), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1528f, 1314f, -2259f, 730f)))), vec2<u32>(_wgslsmith_add_u32(1u, u_input.c), u_input.b.x)).a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), func_2(235f, select(vec2<bool>(false, false), vec2<bool>(true, false), true), var_2 <= var_2, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-334f, 181f, -192f, 1000f)))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(883f, -361f)) - _wgslsmith_f_op_f32(max(2290f, 127f))))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(26163u, u_input.c, 110056u, u_input.c) ^ u_input.b, u_input.b)), -15330i);
}

