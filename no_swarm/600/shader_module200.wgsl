struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> i32 {
    let var_0 = -vec3<i32>(abs(u_input.c), ~(-33931i), _wgslsmith_div_i32(abs(~(-6122i)), -firstLeadingBit(arg_0.b.b.x)));
    let var_1 = u_input.b.wyy;
    var var_2 = _wgslsmith_add_vec4_i32(~(countOneBits(vec4<i32>(1i, var_0.x, arg_1.b.x, u_input.c)) >> (u_input.b % vec4<u32>(32u))), max((vec4<i32>(35069i, arg_1.b.x, var_0.x, -65811i) << (_wgslsmith_sub_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u))) >> (~(~u_input.b) % vec4<u32>(32u)), vec4<i32>(-u_input.c, 36800i, -39910i, select(~17275i, _wgslsmith_sub_i32(arg_1.b.x, 1i), true))));
    let var_3 = !arg_3.zz;
    var var_4 = abs(0u);
    return -arg_0.b.b.x;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-921f)))) - _wgslsmith_f_op_f32(trunc(-344f))), vec3<i32>(arg_0, -11037i, _wgslsmith_mult_i32(-2075i, ~u_input.c)), u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-844f - 290f))) - _wgslsmith_f_op_f32(1f + 215f)));
    let var_1 = reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-48676i, arg_0, 16477i), vec3<i32>(-45698i, -1i, u_input.c >> (u_input.a.x % 32u))), (_wgslsmith_mult_i32(var_0.b.b.x, 23882i) << ((4294967295u & var_0.b.c) % 32u)) & func_3(var_0, var_0.b, -1054f, !vec3<bool>(false, false, var_0.a))));
    var var_2 = var_0.b;
    var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1826f, _wgslsmith_f_op_f32(var_0.b.a - 447f), var_0.b.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1000f, var_0.b.a)), _wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), -1246f)), -189f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2145f, 613f, -1412f, _wgslsmith_f_op_f32(-1240f * var_0.c)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1524f * var_2.a) - -421f)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = vec4<i32>(24945i, _wgslsmith_mult_i32(arg_0.b.x, ~_wgslsmith_sub_i32(u_input.c, u_input.c)) >> (~arg_0.c % 32u), ~(-arg_0.b.x), _wgslsmith_clamp_i32(0i, arg_0.b.x, u_input.c));
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_1));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_2(2147483647i)), _wgslsmith_sub_vec3_i32(max((var_0.zyz ^ arg_0.b) ^ ~vec3<i32>(-1i, -27403i, 2147483647i), arg_0.b), var_0.xyy), arg_0.c);
    let var_3 = u_input.b.zyw;
    var var_4 = Struct_1(-1000f, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 15421i, -56841i), vec3<i32>(0i, -21143i, var_2.b.x) & var_2.b), var_2.b.x, abs(_wgslsmith_mult_i32(-2147483647i, 0i))), var_2.b), u_input.b.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a * var_2.a)), var_0.wxx, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, select(63691u, u_input.d, arg_2)), 27870u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(round(-389f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f * -272f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -188f)) - _wgslsmith_f_op_f32(sign(-731f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f - 208f)))));
    let var_2 = ~u_input.c;
    let var_3 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1084f)) - _wgslsmith_f_op_f32(1538f * var_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -375f)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.c, u_input.c, u_input.c)), ~vec3<i32>(-78481i, 1i, 39960i)), ~(~u_input.d)), -1357f, select(true, false, true));
    var var_4 = var_1.x;
    let var_5 = -18009i;
    var_4 = 1196f;
    var var_6 = func_3(Struct_2(var_3.c < _wgslsmith_add_u32(max(u_input.b.x, var_3.c), 4294967295u >> (u_input.d % 32u)), func_1(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_3.a, true)) + _wgslsmith_f_op_f32(step(-1412f, var_3.a))), true), _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), var_3, -411f, select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false))), vec3<bool>(any(vec2<bool>(true, false)), true, true), true), vec3<bool>(all(vec2<bool>(true, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), false), all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_i32(-firstTrailingBit(1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c, -31383i, var_2), var_2)), _wgslsmith_clamp_i32(u_input.c, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, var_3.b.x), var_3.b)), -_wgslsmith_add_i32(2147483647i, var_5))));
}

