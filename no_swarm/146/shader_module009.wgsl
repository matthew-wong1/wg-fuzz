struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))) < _wgslsmith_f_op_f32(arg_1.x + arg_3.x), !arg_0.x, true);
    let var_1 = arg_2;
    var var_2 = var_0.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(686f)), _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(abs(vec3<i32>(0i, 0i, -1i)), vec3<i32>(-2147483647i, 1i, u_input.c)), max(select(select(vec3<i32>(2147483647i, -64679i, u_input.d), vec3<i32>(u_input.d, -2147483647i, u_input.d), var_0.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 28147i, -37031i), vec3<i32>(11722i, u_input.a, u_input.d)), any(arg_0)), (vec3<i32>(u_input.a, 1i, -1i) & vec3<i32>(-35051i, u_input.c, 2147483647i)) << (vec3<u32>(32112u, var_1, arg_2) % vec3<u32>(32u)))), arg_1);
    let var_4 = max(vec3<i32>(-1i) * -var_3.b, vec3<i32>(~(firstTrailingBit(0i) >> (0u % 32u)), -41564i, var_3.b.x));
    return var_0.wzx;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec3<bool> {
    let var_0 = any(vec3<bool>(true, any(func_3(vec2<bool>(true, true), vec3<f32>(arg_0.a, -1290f, -746f), ~u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1568f, -435f, -1132f, arg_0.c.x) + vec4<f32>(1000f, 1000f, 139f, -973f)))), true));
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(1002f)))) * -119f), min(-abs(-var_1.b), ~reverseBits(~arg_0.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1226f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 1068f)), arg_0.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.c))))));
    var var_3 = !select(vec3<bool>(var_0 != all(vec4<bool>(true, false, var_0, false)), !var_0, true), select(vec3<bool>(true, var_0, var_0), select(vec3<bool>(true, true, true), func_3(vec2<bool>(true, false), arg_0.c, 4294967295u, vec4<f32>(var_1.c.x, var_2.a, -2396f, arg_1)), vec3<bool>(false, var_0, true)), true), var_0);
    let var_4 = var_0;
    return vec3<bool>(true, all(select(var_3.yx, func_3(select(vec2<bool>(true, var_4), vec2<bool>(var_3.x, true), false), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, -2095f, 695f), vec3<f32>(var_2.a, var_2.a, arg_1)), u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -379f, 827f, arg_0.c.x) + vec4<f32>(523f, 1000f, -1654f, 1000f))).xy, !select(var_3.yy, var_3.xx, var_3.xx))), var_4);
}

fn func_1() -> bool {
    var var_0 = 0i;
    var_0 = ~u_input.a | select(1i, u_input.c, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), u_input.d < u_input.d)));
    var_0 = -11858i << (select(0u, min(u_input.b, 44055u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.d, -2147483647i))) != -1i) % 32u);
    var_0 = u_input.a;
    var var_1 = vec3<bool>(true, u_input.a >= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d & u_input.a), vec2<i32>(-55004i, abs(u_input.a))), false & any(!func_2(Struct_1(-1135f, vec3<i32>(-2147483647i, u_input.a, u_input.d), vec3<f32>(-146f, 921f, 1588f)), -1037f, 37442i)));
    return all(func_2(Struct_1(_wgslsmith_f_op_f32(trunc(-588f)), -vec3<i32>(-6687i, u_input.a, u_input.c), vec3<f32>(1f, _wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(round(-2500f)))), 750f, _wgslsmith_add_i32(select(-1i, u_input.a, !var_1.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2561i, -50572i), vec3<i32>(-48227i, u_input.c, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~911u;
    let var_1 = vec4<f32>(-526f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2350f))), -288f)), -1234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)))));
    var var_2 = !vec2<bool>(all(vec4<bool>(true, true, true, true)), !func_1() && true);
    var_0 = min(42342u, firstLeadingBit(1u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(round(var_1.x))));
    var_2 = select(vec2<bool>(true, !(!(u_input.b >= u_input.b))), select(!vec2<bool>(var_2.x, func_2(Struct_1(var_1.x, vec3<i32>(u_input.c, u_input.a, u_input.c), vec3<f32>(1687f, var_3.x, -2481f)), var_1.x, u_input.c).x), func_3(!(!vec2<bool>(var_2.x, true)), var_1.zyx, u_input.b, vec4<f32>(214f, _wgslsmith_f_op_f32(floor(-1190f)), var_1.x, var_1.x)).zx, (var_3.x == 1398f) & !(u_input.c <= u_input.d)), !vec2<bool>(var_2.x, !func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(26011u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))), var_1.x, _wgslsmith_f_op_f32(-var_1.x)) - vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1310f))), -1000f)), vec4<i32>(~u_input.c, -min(_wgslsmith_mult_i32(u_input.a, 2147483647i), ~(-1i)), _wgslsmith_div_i32(u_input.d, -u_input.c) << (u_input.b % 32u), u_input.c), _wgslsmith_f_op_vec3_f32(-var_1.wyw), var_1.wy);
}

