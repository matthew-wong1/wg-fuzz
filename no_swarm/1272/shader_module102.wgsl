struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    var var_0 = Struct_4(-vec4<i32>(~(~(-4175i)), _wgslsmith_div_i32(1i, 1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(54204i, 3475i), 26339i), _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_add_i32(-10457i, 1i))), Struct_3(-vec4<i32>(_wgslsmith_mod_i32(35753i, 8183i), min(1i, 47027i), _wgslsmith_mult_i32(1i, 1i), 0i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(floor(400f)), _wgslsmith_div_f32(-805f, -225f))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -768f, 635f)), vec3<f32>(-304f, 660f, -814f)))), !(!all(vec4<bool>(false, true, false, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(691f, 525f, 616f), vec3<f32>(-337f, -555f, 1000f), false))), -(~vec3<i32>(-29447i, -15921i, 1i)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(724f, 620f, 374f))) * vec3<f32>(_wgslsmith_f_op_f32(step(-210f, -1010f)), 1450f, _wgslsmith_f_op_f32(max(159f, -480f))))), ~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_div_f32(var_0.c.a.x, var_0.b.b.a.x));
    let var_2 = vec2<bool>((false & var_0.b.d) || false, ~u_input.a < ~0u);
    var var_3 = vec4<bool>(var_2.x, true, var_2.x, any(!(!vec2<bool>(var_2.x, true))));
    var var_4 = 1u;
    return true;
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_f32(1122f, -1041f);
    var var_1 = !vec3<bool>(any(vec4<bool>(false, false, true, true)), func_3(), any(vec2<bool>(false, select(false, false, true))));
    var_1 = vec3<bool>(!var_1.x, true, true);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec3<bool>(arg_1.x, select(any(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, true, false, arg_1.x), true)), !(arg_1.x == (4294967295u == u_input.a)), !arg_1.x || arg_1.x), true);
    let var_1 = 1f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_div_f32(var_1, -824f), _wgslsmith_f_op_f32(min(var_1, -143f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(230f, var_1, 1113f)), vec3<bool>(arg_1.x, all(var_0.xy), arg_1.x || false))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, var_1, var_1), vec3<f32>(-250f, var_1, -870f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) - vec3<f32>(341f, 1200f, var_1))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, 938f), vec3<f32>(var_1, 244f, var_1), var_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1, 151f, -379f), vec3<f32>(var_1, var_1, -805f)), !var_0))))));
    let var_3 = arg_0.zx;
    let var_4 = _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(var_1, -861f, _wgslsmith_f_op_f32(ceil(var_2.a.x)))), vec3<i32>(~(-2147483647i), firstLeadingBit(firstLeadingBit(-61573i)), 12799i))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4 + -191f), _wgslsmith_f_op_f32(abs(var_1)))), _wgslsmith_f_op_f32(144f * _wgslsmith_f_op_f32(-1234f - _wgslsmith_div_f32(-2007f, var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) * var_1)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), true)) | any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)));
    var var_1 = Struct_2(func_4(func_1(vec3<u32>(1u, firstTrailingBit(u_input.a), ~u_input.a), !vec2<bool>(var_0, var_0))), vec3<i32>(-20876i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(4500i, 1i, -1i, 0i), vec4<i32>(2205i, -5725i, 1i, 1i)), ~(~vec4<i32>(2147483647i, -1i, 1i, 0i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(i32(-1i) * -12199i, abs(-69650i)), abs(_wgslsmith_div_i32(2147483647i, -1i)))));
    var_1 = Struct_2(func_4(func_1(~(~vec3<u32>(4294967295u, 1u, u_input.a)), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), false))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_1.b.x, var_1.b.x), var_1.b.x), abs(select(-30839i, 20771i, var_0)), _wgslsmith_add_i32(var_1.b.x, -1i)) & var_1.b);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(~min(_wgslsmith_mod_i32(1i, 29658i), var_1.b.x), var_1.b.x), var_1.b.zy);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.x, 1000f, 112f)), _wgslsmith_f_op_vec3_f32(select(var_1.a.a, var_1.a.a, false))) - vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a.x - var_1.a.a.x), 593f, 881f))), vec3<i32>(1i, var_1.b.x, var_1.b.x));
    var var_3 = Struct_4(firstLeadingBit(-(~vec4<i32>(-2147483647i, -24610i, var_1.b.x, 0i))) << (~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u)), Struct_3(~countOneBits(vec4<i32>(2147483647i, var_1.b.x, 0i, var_1.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a.a * _wgslsmith_f_op_vec3_f32(-var_1.a.a))), func_4(var_1.a), any(select(vec4<bool>(var_0, true, var_0, false), select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, false, false, var_0), false), var_0)), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1010f, -1909f, var_1.a.a.x), vec3<f32>(var_1.a.a.x, 2222f, 1000f))), select(var_1.b, -var_1.b, any(vec3<bool>(true, var_0, false))))), var_1.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~38605u), var_3.a.x >> (_wgslsmith_div_u32(u_input.a, var_3.d) % 32u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.a.x)) * _wgslsmith_div_f32(var_1.a.a.x, var_3.c.a.x))))), _wgslsmith_add_vec4_i32(vec4<i32>(-49048i, var_1.b.x | -var_3.a.x, 0i, var_1.b.x), ~vec4<i32>(~(-1i), var_3.a.x, _wgslsmith_div_i32(2147483647i, -1i), firstTrailingBit(var_1.b.x))));
}

