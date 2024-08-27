struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = u_input.c.yx;
    var var_1 = any(vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(-666f, -781f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-896f)), _wgslsmith_f_op_f32(sign(447f))), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false))));
    var_1 = false;
    var var_2 = -1i;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-787f))), _wgslsmith_f_op_f32(ceil(571f)))), arg_0.c.x, select(true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))))) >= 936f;
    return -1096f;
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = select(select(vec2<bool>(select(true, true, select(false, false, false)), 46003u <= max(43704u, arg_0.b.b.a)), vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -2311f) < _wgslsmith_f_op_f32(exp2(arg_0.b.a))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), vec2<bool>(all(vec4<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(true, false, false)), true, any(vec2<bool>(false, true)))), any(vec3<bool>(true, true, true))), all(vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))));
    let var_1 = arg_0;
    var var_2 = vec4<f32>(var_1.b.a, _wgslsmith_f_op_f32(abs(-1088f)), var_1.c.x, 405f);
    var_2 = vec4<f32>(2123f, _wgslsmith_f_op_f32(675f + -217f), -940f, -133f);
    var var_3 = _wgslsmith_sub_vec4_i32((u_input.a ^ u_input.a) >> (_wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(0u, 1u, 4294967295u, arg_0.b.b.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, var_1.b.b.a, arg_0.b.b.a) >> (vec4<u32>(0u, u_input.c.x, 0u, var_1.b.b.a) % vec4<u32>(32u)), ~vec4<u32>(17267u, 4294967295u, u_input.d, 1u), select(vec4<u32>(42919u, 94370u, var_1.b.b.a, var_1.b.b.a), vec4<u32>(89070u, 1u, 0u, 4294967295u), var_0.x))) % vec4<u32>(32u)), u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(146f - _wgslsmith_f_op_f32(round(-1000f))))) + 621f));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_3(arg_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_2.b.c)), Struct_1(arg_2.b.a, _wgslsmith_f_op_f32(1000f + 1661f), _wgslsmith_f_op_f32(arg_2.b.c + var_0.b.c))), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(770f, var_0, vec3<f32>(-355f, 1298f, arg_0)))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1602f))))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(_wgslsmith_mod_i32(-1i, 2147483647i) & max(12017i, u_input.a.x)), ~(abs(0i) >> (arg_2.b.a % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-7549i, 71863i), u_input.a.x << (0u % 32u)) | ~_wgslsmith_mult_i32(2147483647i, arg_1.x), 18552i), vec4<i32>(abs(abs(~(-2147483647i))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(8048i, -2147483647i, arg_1.x, arg_1.x), vec4<i32>(-14646i, u_input.a.x, 2147483647i, u_input.a.x)), -u_input.a), vec4<i32>(46978i >> (0u % 32u), select(u_input.a.x, 1i, true), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -30943i, 2147483647i, arg_1.x), u_input.a))), -2147483647i, arg_1.x));
    var var_4 = ~(~(-2147483647i));
    return i32(-1i) * -u_input.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1000f, arg_0.c, arg_0.c) * vec4<f32>(arg_0.c, 1151f, arg_0.c, arg_1.x)), _wgslsmith_f_op_vec4_f32(-arg_1), u_input.d == arg_0.a)) + vec4<f32>(-1008f, -835f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(-578f)))))), _wgslsmith_f_op_vec4_f32(trunc(arg_1)));
    var_0 = arg_1;
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.x)))), Struct_2(571f, Struct_1(_wgslsmith_div_u32(~4294967295u, select(arg_0.a, 4294967295u, false)), _wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * -342f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1455f) - var_0.x), arg_1.x, true)), var_0.x, _wgslsmith_f_op_f32(max(var_0.x, 2016f))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1199f, -226f)) * _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(arg_0.x, arg_0.x))) + _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(290f))))));
    let var_2 = func_5(Struct_1(~54472u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -239f) * -653f), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 293f, _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(var_1 + -1096f)))), vec2<i32>(select(func_2(_wgslsmith_f_op_f32(select(var_1, 977f, false)), -u_input.a, Struct_2(-1366f, Struct_1(u_input.c.x, 1478f, var_1))), max(u_input.a.x, -2147483647i), true), u_input.a.x));
    return -1103f;
}

fn func_6(arg_0: f32) -> Struct_3 {
    var var_0 = u_input.d;
    var_0 = 0u;
    var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = Struct_1(u_input.c.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 178f, arg_0) + vec3<f32>(arg_0, -481f, -1023f)))))));
    return func_5(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(20424u, var_2.a), reverseBits(u_input.d)), var_2.a), 549f, 2490f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_2.b, var_2.b, -819f), vec4<f32>(1812f, arg_0, -414f, arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_2.c, arg_0, 850f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-914f, arg_0, -578f, _wgslsmith_f_op_f32(-339f + 1784f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b, var_2.c, 1705f, var_2.c))))), -vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 9702i)), vec2<i32>(-1i, 0i) << (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -577f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec3<f32>(-2205f, -404f, 1000f)))))) - _wgslsmith_f_op_f32(func_3(func_5(func_5(Struct_1(u_input.d, -824f, 171f), vec4<f32>(-382f, -945f, -1907f, 2316f), vec2<i32>(1i, 18585i)).b.b, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1486f, -195f, -1766f, 1000f), vec4<f32>(1698f, 122f, -1828f, -252f))), u_input.a.xx)))));
    var var_1 = !(((func_6(1363f).b.b.a >= firstLeadingBit(85850u)) & (-u_input.a.x == u_input.a.x)) || (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_3(1000f, Struct_2(var_0.b.a, var_0.b.b), vec3<f32>(-1687f, -1007f, 219f)))))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1273f * 825f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-func_6(var_0.c.x).c.x), _wgslsmith_f_op_f32(-var_0.a))));
    var_1 = true;
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(func_5(var_0.b.b, vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), 717f, var_2.x, _wgslsmith_f_op_f32(var_0.b.b.b + -936f)), u_input.a.yz).a, -1000f, _wgslsmith_f_op_f32(var_0.c.x - -891f)) - func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f - var_2.x))).c);
    let var_3 = 987f;
    let var_4 = ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.b.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.d, 33135u)), _wgslsmith_div_vec2_u32(u_input.c.xy, u_input.c.yx)), _wgslsmith_sub_u32(4294967295u, ~u_input.c.x), ~(~10039u)), ~select(vec4<u32>(4294967295u, 35351u, 1u, 35736u), vec4<u32>(u_input.c.x, 0u, 25143u, 21774u) & vec4<u32>(10489u, var_0.b.b.a, u_input.b, 33813u), false));
    var var_5 = true;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, ~0u << (~(~func_6(var_3).b.b.a) % 32u));
}

