struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true));
    var var_1 = Struct_2(arg_1.a);
    let var_2 = var_0;
    var var_3 = Struct_1(-(~(-(u_input.d >> (0u % 32u)))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d, u_input.d, 48529i), vec3<i32>(_wgslsmith_sub_i32(14360i, -481i), ~u_input.d, 19132i)), ~countOneBits(select(vec3<i32>(u_input.d, -22872i, u_input.d), vec3<i32>(-26813i, u_input.d, u_input.d), vec3<bool>(arg_3, arg_3, false)))), select(_wgslsmith_mod_i32(-(i32(-1i) * -30435i), _wgslsmith_mod_i32(firstTrailingBit(-14276i), u_input.d)), u_input.d, !arg_3), 1u ^ _wgslsmith_sub_u32(firstLeadingBit(arg_2.a), _wgslsmith_clamp_u32(~1u, 4294967295u & var_2.a, _wgslsmith_mult_u32(arg_1.a, arg_2.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(-16971i, 2011i, u_input.d), vec3<i32>(_wgslsmith_mult_i32(u_input.d, u_input.d) >> (~13720u % 32u), max(u_input.d, firstTrailingBit(u_input.d)), u_input.d)));
    return !select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, arg_3), vec3<bool>(false, true, arg_3), vec3<bool>(false, arg_3, arg_3)), false), !select(select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(false, false, true), false), vec3<bool>(arg_3, arg_3, false), select(vec3<bool>(false, arg_3, false), vec3<bool>(true, arg_3, arg_3), false)), any(!select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(true, arg_3, arg_3), arg_3)));
}

fn func_2() -> f32 {
    var var_0 = -_wgslsmith_mult_vec2_i32(min(-abs(vec2<i32>(37343i, 51796i)), vec2<i32>(8818i, _wgslsmith_sub_i32(0i, u_input.d))), _wgslsmith_sub_vec2_i32(vec2<i32>(-17171i, u_input.d), vec2<i32>(u_input.d, i32(-1i) * -2147483647i)));
    let var_1 = ~(~var_0.x);
    let var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1228f)));
    var var_4 = !select(!vec3<bool>(any(vec4<bool>(false, true, false, true)), true, var_2 >= -1i), select(vec3<bool>(true, true, true), vec3<bool>(true, var_1 != u_input.d, true), select(vec3<bool>(true, true, true), func_3(vec3<f32>(-510f, 310f, 623f), Struct_2(0u), Struct_2(u_input.a.x), true), vec3<bool>(false, true, false))), select(vec3<bool>(any(vec3<bool>(false, true, true)), u_input.b != 1u, true), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, -2079f, -118f)), Struct_2(u_input.b), Struct_2(83499u), true), vec3<bool>(all(vec2<bool>(true, true)), true, true)));
    return _wgslsmith_div_f32(-978f, _wgslsmith_f_op_f32(f32(-1f) * -172f));
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_f32(func_2());
    let var_0 = Struct_2(37125u);
    let var_1 = ~u_input.a.zx;
    let var_2 = var_1;
    var var_3 = var_0;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1073f)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -146f);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1589f) != -1189f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1109f, _wgslsmith_f_op_f32(-1f), all(vec4<bool>(select(var_0, var_0, false), select(true, true, false), true & var_0, true)))) * 869f);
    let var_1 = -vec2<i32>(func_1(), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, _wgslsmith_mod_u32(~(~u_input.a.x), 0u), _wgslsmith_div_u32(~firstTrailingBit(30378u), u_input.a.x << (~1u % 32u)), 96289u));
}

