struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = 22621u;
    let var_1 = 4468i;
    var var_2 = !select(!select(select(arg_3.yw, vec2<bool>(false, false), true), vec2<bool>(arg_0.c.x, false), !arg_3.x), vec2<bool>(_wgslsmith_f_op_f32(trunc(-1287f)) < _wgslsmith_f_op_f32(min(arg_2, arg_1.x)), false), select(arg_3.wz, arg_3.xy, arg_3.x));
    var_0 = ~firstTrailingBit(~(_wgslsmith_sub_u32(21661u, arg_0.b.x) >> (~u_input.a.x % 32u)));
    var_0 = 46996u << (0u % 32u);
    return reverseBits(~vec4<u32>(u_input.a.x, ~(~0u), _wgslsmith_mult_u32(~1u, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.d), u_input.a.zz), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), arg_0.b.wy))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<u32>(firstTrailingBit(~10205u), max(4294967295u, func_3(Struct_1(i32(-1i) * -6504i, ~vec4<u32>(1120u, 4294967295u, u_input.d, 32201u), arg_2.yxw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1045f, -1503f) - vec2<f32>(280f, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, 1000f))), _wgslsmith_f_op_f32(round(-290f)), select(select(vec4<bool>(false, arg_2.x, arg_3.c.x, arg_3.c.x), vec4<bool>(false, arg_3.c.x, arg_3.c.x, arg_3.c.x), arg_2), select(arg_2, vec4<bool>(true, arg_2.x, true, arg_3.c.x), arg_2.x), arg_2)).x));
    let var_1 = true;
    let var_2 = -10999i;
    var var_3 = arg_2.x;
    var var_4 = arg_3.b;
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i | arg_3.a, -(~arg_0.x), var_2, -var_2 & _wgslsmith_clamp_i32(arg_1.x, 32300i, var_2)), vec4<i32>(-2147483647i, 2939i, u_input.c.x, 16791i));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = vec3<i32>(-1i, -func_4(u_input.c.zww, vec2<i32>(reverseBits(u_input.c.x), u_input.c.x), vec4<bool>(func_2(Struct_1(u_input.c.x, u_input.a, vec3<bool>(false, true, false))), true, true, true), Struct_1(_wgslsmith_add_i32(u_input.c.x, 5000i), func_3(Struct_1(u_input.b.x, vec4<u32>(u_input.d, 31691u, 51586u, 0u), vec3<bool>(true, false, true)), vec2<f32>(1000f, -1000f), 410f, vec4<bool>(true, false, false, true)), vec3<bool>(true, true, true))), u_input.b.x);
    let var_1 = Struct_2(-1226f, true, Struct_1(var_0.x, ~min(min(vec4<u32>(arg_0.x, arg_0.x, 37356u, u_input.d), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.d)), ~vec4<u32>(u_input.d, arg_0.x, arg_0.x, u_input.a.x)), vec3<bool>(true, !select(true, false, true), true)), Struct_1(_wgslsmith_div_i32(var_0.x, var_0.x), select(u_input.a, _wgslsmith_mod_vec4_u32(func_3(Struct_1(30277i, vec4<u32>(u_input.a.x, 0u, arg_0.x, 61635u), vec3<bool>(false, false, true)), vec2<f32>(1000f, 352f), 590f, vec4<bool>(false, true, true, false)), ~u_input.a), false), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))));
    var var_2 = countOneBits(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(~u_input.a.x, arg_0.x, 72461u)), u_input.a.yxx));
    let var_3 = arg_0;
    var var_4 = var_1.c;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_div_vec2_u32(max(u_input.a.wz, vec2<u32>(u_input.d, 62578u)) >> ((u_input.a.wz & u_input.a.ww) % vec2<u32>(32u)), ~u_input.a.xw));
    var_0 = vec2<u32>(49970u, 26742u);
    var_0 = abs(u_input.a.xw);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(~(~vec3<u32>(5657u, var_0.x, u_input.a.x)))))), true || select(!any(vec2<bool>(true, true)), !all(vec4<bool>(false, false, false, false)), true), Struct_1(u_input.c.x, ~select(vec4<u32>(u_input.d, 15159u, u_input.a.x, var_0.x), vec4<u32>(1u, 1u, u_input.a.x, u_input.d), true), !vec3<bool>(true, true, 58310u < u_input.d)), Struct_1(abs(54413i), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a | vec4<u32>(4294967295u, var_0.x, 4294967295u, 18315u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, true, true)), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_1.a), 297f), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(sign(var_1.a))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-487f, _wgslsmith_f_op_f32(var_2.x + var_1.a))))), var_2.x, var_1.a, _wgslsmith_f_op_f32(-1021f - var_2.x));
    var_0 = vec2<u32>(var_0.x, u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_mult_i32(i32(-1i) * -18045i, ~var_1.d.a), ~(~(~var_1.c.b)), var_1.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, u_input.c.xx, select(vec3<u32>(~4294967295u, ~u_input.a.x, 13632u) >> (u_input.a.zzx % vec3<u32>(32u)), select(u_input.a.wyy, countOneBits(~vec3<u32>(30723u, 36366u, var_0.x)), vec3<bool>(all(vec4<bool>(false, true, true, true)), true || var_1.d.c.x, false)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, var_2.x, true))), 1f))), 32028u);
}

