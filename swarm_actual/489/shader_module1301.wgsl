struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec3<bool> {
    var var_0 = ~(~_wgslsmith_sub_u32(~arg_3.x | arg_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(61848u, u_input.b.x, 4294967295u, 0u), abs(vec4<u32>(4294967295u, u_input.a, 4294967295u, arg_3.x)))));
    var_0 = 15542u;
    var var_1 = countOneBits(abs(vec4<u32>(4507u, ~_wgslsmith_clamp_u32(arg_3.x, u_input.b.x, u_input.a), arg_3.x, u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(369f, 1614f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)), _wgslsmith_f_op_f32(ceil(-1067f)))));
    let var_3 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-633f, var_2.x)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) * var_2.x)), var_1.yy), select(_wgslsmith_mult_i32(~u_input.e << (~15760u % 32u), ~(~arg_0)), _wgslsmith_mod_i32(u_input.e, arg_0), !any(!vec4<bool>(false, true, true, arg_2.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -299f)) - vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(var_2.x - var_2.x))), vec2<u32>(var_1.x, arg_3.x)), -(~(-max(vec4<i32>(u_input.e, arg_0, u_input.c.x, arg_0), vec4<i32>(1i, arg_0, 2147483647i, -2533i)))));
    return select(!(!(!select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, false, true), vec3<bool>(true, false, arg_2.x)))), select(vec3<bool>(true, _wgslsmith_clamp_u32(arg_3.x, 0u, 4767u) <= 1u, all(select(arg_2, arg_2, vec2<bool>(arg_2.x, arg_2.x)))), !vec3<bool>(arg_2.x, any(vec2<bool>(arg_2.x, true)), any(arg_2)), vec3<bool>(arg_2.x || !arg_2.x, all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)) | all(vec3<bool>(false, arg_2.x, true)), true)), !arg_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec2_i32(~abs(u_input.c.zz), vec2<i32>(u_input.e, _wgslsmith_clamp_i32(firstTrailingBit(~(-13451i)), -4709i, -1i)));
    var var_1 = 92395u;
    var var_2 = Struct_3(arg_0.d, ~countOneBits(i32(-1i) * -u_input.e), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.d.a)))), vec2<u32>(4294967295u, ~_wgslsmith_add_u32(0u, 1u))), abs(~vec4<i32>(1i, 1i, var_0.x, 1i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-583f, -137f)), _wgslsmith_f_op_f32(784f * arg_0.b), 146f, arg_1))));
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(337f, arg_0.e.x), 738f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-825f * arg_0.a.a.x))), 1311f)), var_2.c.a.x));
    return reverseBits(countOneBits(vec4<u32>(var_2.c.b.x, ~39351u, _wgslsmith_sub_u32(arg_0.a.b.x, 1u), var_2.a.b.x)));
}

fn func_2() -> vec3<f32> {
    var var_0 = u_input.b.x;
    var_0 = ~u_input.a;
    var_0 = _wgslsmith_dot_vec4_u32((func_4(Struct_2(Struct_1(vec3<f32>(1187f, 1099f, -151f), vec2<u32>(56299u, u_input.b.x)), 220f, true, Struct_1(vec3<f32>(1904f, 574f, -400f), vec2<u32>(1u, u_input.a)), vec3<f32>(-331f, 2713f, -1718f)), 1055f, func_3(-84464i, vec2<i32>(u_input.d.x, u_input.e), vec2<bool>(false, false), vec3<u32>(117832u, 4294967295u, 32888u)), true) & select(_wgslsmith_clamp_vec4_u32(vec4<u32>(78949u, u_input.b.x, 1u, 4294967295u), vec4<u32>(40004u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.b.x, u_input.a, 0u, 0u)), ~vec4<u32>(25685u, u_input.a, u_input.b.x, u_input.b.x), vec4<bool>(false, false, false, false))) & ~vec4<u32>(1u, ~u_input.a, 40079u, u_input.b.x), abs(reverseBits(firstTrailingBit(min(vec4<u32>(u_input.b.x, 86552u, u_input.b.x, 4294967295u), vec4<u32>(1u, u_input.a, 0u, 47761u))))));
    var var_1 = vec4<bool>(false, !((u_input.c.x == u_input.c.x) & all(vec4<bool>(true, true, true, true))) & !any(vec3<bool>(true, true, true)), u_input.b.x >= abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a, 0u), vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.b.x))), all(vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), true)));
    var_0 = reverseBits(~func_4(Struct_2(Struct_1(vec3<f32>(-788f, 1914f, 1245f), vec2<u32>(u_input.b.x, 4294967295u)), -676f, true, Struct_1(vec3<f32>(-1273f, -317f, -906f), u_input.b), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -673f, -509f), vec3<f32>(923f, -294f, -136f))), 1892f, !var_1.yww, var_1.x).x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f) + _wgslsmith_f_op_f32(f32(-1f) * -151f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f + 129f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-380f + 1148f))), _wgslsmith_f_op_f32(f32(-1f) * -411f)))));
}

fn func_1() -> Struct_1 {
    let var_0 = -147f;
    var var_1 = ~vec4<u32>(~u_input.a, ~u_input.b.x, u_input.a ^ u_input.a, abs(1u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1064f) - vec3<f32>(1000f, var_0, var_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(411f, 664f, var_0))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-339f, var_0, -580f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(424f, -365f, var_0), vec3<f32>(-384f, var_0, -732f))))))), firstTrailingBit(u_input.b));
    var var_3 = Struct_4(var_2, vec3<u32>(1u | (1u >> ((var_2.b.x << (var_1.x % 32u)) % 32u)), ~(~var_1.x), _wgslsmith_mult_u32(52335u, 1u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_sub_vec2_u32(abs(abs(var_3.b.xx)), _wgslsmith_mult_vec2_u32(func_4(Struct_2(Struct_1(var_3.a.a, vec2<u32>(var_3.a.b.x, var_3.b.x)), 543f, false, var_3.a, vec3<f32>(var_0, var_2.a.x, -213f)), 396f, vec3<bool>(true, false, true), false).wy, var_3.a.b >> (vec2<u32>(29156u, 4294967295u) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 2814u, 4294967295u), 0u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-658f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) + _wgslsmith_f_op_f32(exp2(var_1.a.x)))), -1149f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1585f))), var_1.a.x, var_1.a.x)))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, 754f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_1().a.x))))), _wgslsmith_f_op_f32(var_2.x * 455f), _wgslsmith_f_op_f32(-114f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * var_2.x)))), 462f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.c.yy, abs(u_input.c), var_2.x);
}

