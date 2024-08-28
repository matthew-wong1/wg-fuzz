struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_2 {
    let var_0 = !select(!vec2<bool>(any(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), false), true), vec2<bool>(true, true));
    let var_1 = Struct_2(!var_0.x, Struct_1(vec3<u32>(~(u_input.b.x << (1u % 32u)), countOneBits(abs(16023u)), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1439f, 555f, -298f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1014f, 496f, -395f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1625f, 813f, 365f) + vec3<f32>(-1078f, 1305f, -190f)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(719f));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-607f * _wgslsmith_f_op_f32(var_1.b.b.x * 353f)), -121f);
    var_2 = var_1.b.b.x;
    return Struct_2(var_1.a || !(all(vec4<bool>(false, var_0.x, var_1.a, var_0.x)) || true), Struct_1(vec3<u32>(4294967295u, ~43849u, 62121u), _wgslsmith_f_op_vec3_f32(var_1.b.b - _wgslsmith_f_op_vec3_f32(-var_1.b.b))));
}

fn func_2() -> Struct_1 {
    return Struct_1(func_1().b.a << (firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 10861u, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-476f, -1104f, -1550f))));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = firstLeadingBit(abs(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 34121i, u_input.a.x), vec3<i32>(1i, -21552i, 1i)), -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -(~u_input.a.x), -2147483647i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.xz)), _wgslsmith_f_op_vec2_f32(ceil(func_1().b.b.xx))));
    var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.b.x, -366f)), var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * arg_0.b.x) * _wgslsmith_f_op_f32(sign(var_1.x)))), arg_0.b.x), _wgslsmith_f_op_vec2_f32(-arg_0.b.xx)));
    let var_2 = ~6650u;
    var_1 = arg_0.b.xz;
    return Struct_1(~func_2().a, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1283f, arg_0.b.x, arg_0.b.x) + arg_0.b)), arg_0.b), _wgslsmith_f_op_vec3_f32(-arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = abs(vec4<i32>(2147483647i, -((u_input.a.x ^ -2147483647i) >> (~65176u % 32u)), -select(~u_input.a.x, 1i, true), -u_input.a.x));
    let var_2 = func_2();
    let var_3 = Struct_3(vec2<u32>(37063u, var_0.b.a.x), var_0, var_0);
    var var_4 = func_1();
    let var_5 = Struct_2(var_0.a, func_3(Struct_1(var_0.b.a << (~vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_3.c.b.b, var_4.b.b))))));
    let var_6 = _wgslsmith_f_op_f32(-1389f - var_0.b.b.x);
    let var_7 = max(_wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(72081u, 1931u), var_2.a.x), abs(~func_2().a.zx), abs(vec2<u32>(func_3(Struct_1(vec3<u32>(41131u, var_2.a.x, 0u), var_4.b.b)).a.x, _wgslsmith_div_u32(var_0.b.a.x, var_4.b.a.x)))), ~max(var_3.b.b.a.xx, ~(~var_4.b.a.yy)));
    let var_8 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-var_3.c.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(614f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(var_1.x, 16389i), var_1.x), var_1.zw), var_7.x, select(~(~(~0u)), ~1u, !var_0.a), ~(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.x, u_input.a.x), firstLeadingBit(var_1.x))));
}

