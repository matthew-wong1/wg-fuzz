struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> Struct_1 {
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(1i, -(i32(-1i) * -90255i)), reverseBits(-22938i)), !(true != all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(107f - _wgslsmith_f_op_f32(trunc(-1262f))), 952f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -474f)), _wgslsmith_f_op_f32(floor(-532f)))), min(_wgslsmith_mult_vec3_u32(~(vec3<u32>(26511u, 0u, u_input.a) | vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(1u, _wgslsmith_sub_u32(u_input.a, 101577u), ~20918u)), vec3<u32>(36777u, 0u, 1u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-func_2().c.x), (vec2<i32>(firstLeadingBit(0i), -25487i) | vec2<i32>(countOneBits(-9999i), arg_2.a.x)) | arg_2.a);
    let var_1 = var_0;
    let var_2 = countOneBits(arg_2.d.xz ^ select(arg_2.d.yy, arg_1.zy, all(!vec3<bool>(false, false, arg_2.b))));
    return 10599i ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(firstTrailingBit(var_1.b.x), -2147483647i), -arg_2.a << (~arg_1.xy % vec2<u32>(32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = ~vec4<i32>(-2147483647i, -13153i, -arg_2.a, _wgslsmith_mod_i32(select(1i, _wgslsmith_sub_i32(7517i, -311i), !arg_2.d.x), _wgslsmith_add_i32(arg_1, -1i)));
    let var_1 = select(arg_0, select(arg_0, !select(select(arg_0, arg_0, false), arg_0, true), arg_0), arg_2.b.x > 170f);
    let var_2 = var_1.xww;
    var var_3 = vec3<i32>(firstTrailingBit(-(arg_1 & arg_1)), -(arg_2.a >> (_wgslsmith_div_u32(30722u, u_input.a) % 32u)), ~(~var_0.x | 1i)) ^ (_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.ww, vec2<i32>(arg_1, arg_1)), ~arg_1, -35104i), select(_wgslsmith_div_vec3_i32(vec3<i32>(-21636i, var_0.x, arg_1), var_0.yxy), -vec3<i32>(-2147483647i, 63080i, 0i), !vec3<bool>(true, arg_0.x, arg_0.x))) >> ((_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.a, 3455u)), vec3<u32>(u_input.a, 8208u, u_input.a)) & vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u), u_input.a & u_input.a, ~u_input.a)) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-701f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-714f - arg_2.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.c.x))))), arg_2.c.x, any(select(var_2, vec3<bool>(false, select(arg_2.d.x, arg_0.x, false), var_2.x), arg_0.zww))));
    return func_2();
}

fn func_1() -> u32 {
    var var_0 = func_4(vec4<bool>(true, true, true, true), -2147483647i, Struct_4(~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2261f, -417f, -251f)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 49834u, 41697u), vec3<u32>(u_input.a, u_input.a, u_input.a)), func_2()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1966f), _wgslsmith_div_f32(537f, 633f), 283f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1129f, 801f) + vec2<f32>(_wgslsmith_f_op_f32(-1052f + -2358f), -556f)), select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))))));
    var_0 = func_4(!vec4<bool>(true, var_0.b, var_0.b, select(any(vec3<bool>(var_0.b, true, true)), var_0.b, true)), -4475i, Struct_4(1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 121f, -1466f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -1000f, var_0.c.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1788f, -415f, var_0.c.x) - vec3<f32>(-151f, var_0.c.x, var_0.c.x)))), var_0.c, vec2<bool>(!select(true, true, var_0.b), func_2().b)));
    let var_1 = select(select(~4294967295u, 51204u, var_0.b) & u_input.a, ~(~var_0.d.x), var_0.b) ^ ~1u;
    var_0 = func_4(vec4<bool>(true, true, any(vec4<bool>(true, !var_0.b, var_0.c.x < 111f, var_0.b)), false), abs(max(i32(-1i) * -1i, _wgslsmith_add_i32(var_0.a.x, var_0.a.x))) ^ ((abs(var_0.a.x) ^ 1i) >> (15782u % 32u)), Struct_4(_wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(~(-25432i), _wgslsmith_div_i32(52831i, -8348i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + -725f), var_0.c.x, 1360f)), func_4(!(!vec4<bool>(true, var_0.b, var_0.b, var_0.b)), _wgslsmith_add_i32(~2147483647i, 7073i & var_0.a.x), Struct_4(_wgslsmith_mod_i32(1i, 8740i), vec3<f32>(844f, -1000f, var_0.c.x), var_0.c, select(vec2<bool>(true, var_0.b), vec2<bool>(false, true), vec2<bool>(true, var_0.b)))).c, select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.b)), !vec2<bool>(var_0.b, var_0.b), false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 987f, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1000f, -842f) - vec3<f32>(var_0.c.x, var_0.c.x, -832f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-420f, var_0.c.x, var_0.c.x), vec3<f32>(var_0.c.x, -1411f, var_0.c.x))), -1543f > var_0.c.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-667f * var_0.c.x), _wgslsmith_f_op_f32(round(729f)), 2269f)))));
    return countOneBits(~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(var_1, var_1), u_input.a & 10128u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, 15887i)), vec2<i32>(-2147483647i, 0i)) >> (func_1() % 32u), 1i), true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 777f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1092f, -1473f), vec2<f32>(315f, 2108f), false)))) + vec2<f32>(_wgslsmith_f_op_f32(-528f - 1021f), _wgslsmith_f_op_f32(f32(-1f) * -485f))))), _wgslsmith_clamp_vec3_u32(func_4(vec4<bool>(true, any(vec3<bool>(true, true, false)), func_2().b, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -2147483647i, -2147483647i), -vec3<i32>(3764i, 0i, -1i)), Struct_4(firstTrailingBit(2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, -1000f, -101f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1000f))), vec2<bool>(false, true))).d, vec3<u32>(1177u, u_input.a, 1u), abs(~(~vec3<u32>(0u, 1u, u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(907f, var_0.c.x, -277f, -110f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, -148f, 1000f, -832f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(618f, var_0.c.x, var_0.c.x, var_0.c.x)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1001f, _wgslsmith_f_op_f32(trunc(1390f)), var_0.c.x, var_0.c.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, var_0.c.x, 953f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.c.x)), -998f, -706f, var_0.c.x), vec4<bool>(false, !(!var_0.b), true, select(var_0.b, var_0.b, true)))));
    let var_2 = var_0.a.x;
    var_0 = func_4(vec4<bool>(var_0.b, false, all(!vec2<bool>(var_0.b, var_0.b)) || true, var_0.b), var_0.a.x, Struct_4(func_2().a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1079f, var_1.x, -357f), vec3<f32>(390f, -2124f, var_1.x), vec3<bool>(true, var_0.b, var_0.b)))) * var_1.zzy), func_4(!(!vec4<bool>(true, false, var_0.b, true)), -36788i, Struct_4(~0i, var_1.wxw, _wgslsmith_div_vec2_f32(vec2<f32>(625f, var_0.c.x), vec2<f32>(var_0.c.x, var_0.c.x)), vec2<bool>(false, false))).c, select(!select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b)), vec2<bool>(true, true), !all(vec2<bool>(false, true)))));
    var_0 = Struct_1(vec2<i32>(min(func_2().a.x, ~(~var_0.a.x)), (func_4(vec4<bool>(var_0.b, true, var_0.b, var_0.b), var_0.a.x, Struct_4(8192i, var_1.zyx, var_1.yx, vec2<bool>(var_0.b, var_0.b))).a.x | var_0.a.x) | reverseBits(-var_0.a.x)), true, _wgslsmith_f_op_vec2_f32(min(var_0.c, _wgslsmith_f_op_vec2_f32(-var_0.c))), vec3<u32>(u_input.a, 4294967295u, u_input.a));
    var var_3 = Struct_3(Struct_1(vec2<i32>(var_0.a.x, 11533i), !func_4(vec4<bool>(true, true, false, false), var_0.a.x, Struct_4(-1i, var_1.wxz, vec2<f32>(1812f, var_0.c.x), vec2<bool>(var_0.b, var_0.b))).b & !var_0.b, vec2<f32>(-3351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-189f, -1185f)) + var_0.c.x)), var_0.d), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c.x);
}

