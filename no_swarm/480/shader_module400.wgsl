struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-818f, 1213f, -2038f), vec3<f32>(-879f, -1065f, 105f), vec3<f32>(2168f, 715f, 1467f), vec3<f32>(196f, -887f, -1013f), vec3<f32>(-758f, -1195f, -436f), vec3<f32>(1161f, 702f, -395f), vec3<f32>(740f, 1372f, -1560f), vec3<f32>(-1909f, 1000f, 536f), vec3<f32>(-441f, -1544f, 374f), vec3<f32>(1018f, -1078f, 1434f), vec3<f32>(-1254f, 609f, -580f), vec3<f32>(617f, 1000f, 1112f), vec3<f32>(325f, -1369f, -1115f), vec3<f32>(100f, -1318f, -149f), vec3<f32>(1850f, -808f, 218f), vec3<f32>(-649f, -414f, 945f), vec3<f32>(-1041f, -1000f, 403f), vec3<f32>(-577f, -772f, 182f), vec3<f32>(432f, 586f, -1760f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    global1 = array<vec3<f32>, 19>();
    var var_0 = Struct_2((_wgslsmith_add_u32(1u ^ u_input.e, 15173u) >> (~_wgslsmith_add_u32(2722u, 19780u) % 32u)) >> (_wgslsmith_mod_u32(u_input.c, 1u & u_input.e) % 32u), Struct_1(abs(0i), abs(vec2<i32>(27281i, 12478i | u_input.a)), -818f, all(vec4<bool>(arg_0 && arg_0, !arg_0, any(vec3<bool>(arg_0, true, arg_0)), arg_0))));
    global1 = array<vec3<f32>, 19>();
    var var_1 = Struct_2(22201u, var_0.b);
    let var_2 = ~(~(~(~max(vec4<u32>(var_0.a, var_0.a, 81141u, var_1.a), vec4<u32>(var_1.a, 4294967295u, 4294967295u, 27039u)))));
    return u_input.d;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(~50640i, func_3(any(vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1064f, -391f, -806f), vec4<f32>(-2745f, -1467f, 1083f, -1432f))) - vec4<f32>(984f, 273f, -960f, 1371f)), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(-843i, u_input.a)), abs(~abs(abs(vec2<i32>(u_input.a, u_input.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1111f - _wgslsmith_f_op_f32(floor(431f)))))), !(-1604f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(453f)), -857f)));
    global1 = array<vec3<f32>, 19>();
    let var_2 = min(firstTrailingBit(vec4<i32>(18055i, _wgslsmith_sub_i32(u_input.d, -24904i), _wgslsmith_mult_i32(var_1.a, u_input.a), ~u_input.d)), -(countOneBits(vec4<i32>(var_1.a, u_input.a, var_1.b.x, var_1.b.x)) << ((vec4<u32>(34672u, u_input.e, 1u, 4294967295u) | vec4<u32>(u_input.b, 1153u, 1u, 4294967295u)) % vec4<u32>(32u)))) | _wgslsmith_mult_vec4_i32(max(reverseBits(vec4<i32>(var_1.b.x, 15308i, var_1.a, var_1.b.x)), vec4<i32>(var_1.b.x, -4778i, -2147483647i, var_1.b.x) | ~vec4<i32>(-2677i, 0i, var_1.a, -2147483647i)), ~(vec4<i32>(var_1.a, -1i, u_input.d, -2147483647i) << (~vec4<u32>(u_input.c, u_input.c, 1u, u_input.b) % vec4<u32>(32u))));
    let var_3 = abs(u_input.b);
    return Struct_2(var_3 ^ ~(~(~u_input.e)), Struct_1(abs(var_1.b.x), select(var_2.yw, vec2<i32>(~1i, -1i), false & select(var_1.d, true, var_1.d)), 1232f, (var_1.c < var_1.c) || (true & any(vec4<bool>(false, true, var_1.d, var_1.d)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    global1 = array<vec3<f32>, 19>();
    let var_0 = func_2();
    var var_1 = arg_0;
    var_1 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(arg_2.b.b.x, -1i, var_1.x)), -2147483647i), 54187i, 1i), var_0.b.b.x, firstLeadingBit(_wgslsmith_clamp_i32(-14469i, ~2147483647i, 2147483647i) << (var_0.a % 32u)));
    var_1 = arg_0;
    return 21757i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 19>();
    let var_0 = Struct_2(1u, Struct_1(-1217i, ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(70421i, 0i)), vec2<i32>(u_input.d, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-593f, -821f))), any(vec2<bool>(u_input.e < u_input.c, select(true, false, true)))));
    global0 = var_0.b.c;
    var var_1 = Struct_1(_wgslsmith_clamp_i32(-(~u_input.a), -1i, _wgslsmith_mult_i32(min(var_0.b.b.x << (var_0.a % 32u), _wgslsmith_sub_i32(u_input.d, u_input.d)), -func_1(vec3<i32>(u_input.d, -1i, 39009i), vec2<bool>(var_0.b.d, true), Struct_2(u_input.c, Struct_1(8805i, var_0.b.b, 1232f, var_0.b.d))))), ~(min(vec2<i32>(-4601i, -23397i), var_0.b.b) << (countOneBits(~vec2<u32>(var_0.a, 0u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-1f), var_0.b.d);
    let var_2 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(~0u, 19u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c, 304f, 461f))))));
}

