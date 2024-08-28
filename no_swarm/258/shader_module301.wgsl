struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1941f, -604f, -339f)));
    let var_1 = _wgslsmith_add_i32(u_input.c.x, i32(-1i) * -8686i);
    var var_2 = vec2<u32>(~1u, arg_0) ^ u_input.d.yx;
    let var_3 = Struct_1(false);
    let var_4 = var_3;
    return arg_3.x;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(true);
    var_0 = Struct_1(any(!(!vec4<bool>(var_0.a, true, var_0.a, var_0.a))));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(!select(reverseBits(u_input.a) < _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), u_input.e.xz), var_0.a, all(!vec3<bool>(true, var_0.a, false))));
    var_0 = Struct_1(true);
    return -1122f;
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(478f, _wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(func_2(u_input.b.x, vec3<f32>(1000f, 1814f, 1300f), 180f, vec4<f32>(-730f, 554f, 160f, 2347f)))), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1018f, -1000f, 483f)))))));
    let var_1 = Struct_1(!select(true && (var_0.x < var_0.x), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), true));
    var var_2 = !select(select(!select(vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.a, true, false), vec3<bool>(false, var_1.a, false)), select(!vec3<bool>(var_1.a, false, var_1.a), !vec3<bool>(var_1.a, true, var_1.a), all(vec3<bool>(var_1.a, var_1.a, var_1.a))), true), select(vec3<bool>(true || var_1.a, var_1.a, true), vec3<bool>(var_1.a, any(vec4<bool>(var_1.a, var_1.a, var_1.a, false)), any(vec2<bool>(true, var_1.a))), !(!vec3<bool>(var_1.a, true, var_1.a))), vec3<bool>(true || any(vec4<bool>(false, false, var_1.a, var_1.a)), true, false));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -209f), var_0.x);
    let var_4 = _wgslsmith_sub_vec3_i32(~(~countOneBits(u_input.c)), u_input.c);
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_1(1u < u_input.d.x);
    var var_2 = ~_wgslsmith_mult_vec2_u32(u_input.d.xx, ~_wgslsmith_mult_vec2_u32(u_input.b ^ vec2<u32>(18498u, u_input.b.x), u_input.b));
    var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.e.x), u_input.e.yy), vec2<i32>(u_input.e.x, u_input.a))) != -(~select(16632i, u_input.a, true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-934f, 676f))))) - 400f));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 906f, -416f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-587f + -864f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - -411f), 1f, _wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - vec4<f32>(-215f, _wgslsmith_f_op_f32(2283f * _wgslsmith_f_op_f32(ceil(-1650f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-639f - 153f) - 916f)), -480f));
    let var_2 = u_input.d >> (vec3<u32>(1u, 51321u, abs(~u_input.d.x)) % vec3<u32>(32u));
    let var_3 = func_4(Struct_1(true || (~55476i > max(1i, u_input.e.x))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, !func_1(~u_input.d), any(vec4<bool>(true, u_input.c.x < 43104i, true, -2147483647i != u_input.e.x))), Struct_1(any(vec4<bool>(false, any(vec2<bool>(false, true)), true, true))));
    var_0 = 4294967295u;
    let var_4 = func_4(func_4(var_3, select(vec4<bool>(true | var_3.a, true, true, var_3.a), vec4<bool>(u_input.c.x <= u_input.e.x, !var_3.a, false, any(vec2<bool>(false, var_3.a))), var_3.a), func_4(Struct_1(true), !(!vec4<bool>(false, var_3.a, var_3.a, var_3.a)), func_4(var_3, !vec4<bool>(var_3.a, false, var_3.a, var_3.a), func_4(var_3, vec4<bool>(true, true, true, var_3.a), Struct_1(var_3.a))))), vec4<bool>(all(!select(vec2<bool>(var_3.a, false), vec2<bool>(true, false), var_3.a)), true, !var_3.a, var_3.a), Struct_1(!(any(vec3<bool>(var_3.a, var_3.a, true)) != (-1559f < var_1.x))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(1i, u_input.e.x, ~9450i), u_input.c | (u_input.e | u_input.e)), u_input.c), ~(reverseBits(vec2<i32>(2299i, -1i)) ^ _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-66726i, 34762i), u_input.e.xz), min(vec2<i32>(2147483647i, u_input.e.x), u_input.e.zx))), vec2<i32>(u_input.c.x << (var_2.x % 32u), _wgslsmith_sub_i32(abs(-30017i), _wgslsmith_add_i32(u_input.c.x, -27657i))));
}

