struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(false, true, true))));
    global0 = u_input.a.xx;
    var var_1 = !select(!select(var_0.zx, vec2<bool>(var_0.x, var_0.x), any(var_0.xz)), var_0.zy, var_0.x);
    global0 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, 1u), vec2<u32>(~79713u, firstLeadingBit(global0.x))) >> (u_input.a.xw % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(f32(-1f) * -109f))) * _wgslsmith_f_op_f32(trunc(-130f))) + _wgslsmith_f_op_f32(846f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1059f, _wgslsmith_f_op_f32(1896f + -1000f)))));
    return ~((~u_input.a >> (firstTrailingBit(~u_input.a) % vec4<u32>(32u))) | ~vec4<u32>(1u, arg_0 ^ global0.x, ~arg_0, reverseBits(global0.x)));
}

fn func_2() -> u32 {
    var var_0 = Struct_3(Struct_2(max(select(vec4<i32>(40081i, 1i, 0i, -87999i), vec4<i32>(-51495i, 16658i, -2147483647i, -1i), vec4<bool>(false, true, false, true)) << (func_3(79479u) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-836f, 1614f, -986f, -989f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), 83030u);
    let var_1 = var_0.a.b.yxw;
    var_0 = Struct_3(Struct_2(vec4<i32>(~46771i, 2147483647i | abs(var_0.a.a.x), 1i, -39045i), vec4<f32>(-116f, -1464f, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) - _wgslsmith_f_op_f32(min(743f, var_0.b))))), 287f, 61439u << (_wgslsmith_add_u32(global0.x, _wgslsmith_div_u32(_wgslsmith_add_u32(global0.x, 19975u), var_0.c)) % 32u));
    var var_2 = vec3<i32>(firstTrailingBit(-(~var_0.a.a.x) ^ var_0.a.a.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.a.a.x, (i32(-1i) * -2147483647i) | var_0.a.a.x, max(var_0.a.a.x, firstTrailingBit(var_0.a.a.x))), min(countOneBits(var_0.a.a.x), var_0.a.a.x) >> (countOneBits(~12546u) % 32u)), var_0.a.a.x);
    let var_3 = var_0.c;
    return _wgslsmith_mult_u32(78971u, 0u);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = firstTrailingBit(0u);
    global0 = ~firstTrailingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, 84306u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.zz, u_input.a.yy))) >> (vec2<u32>(min(~select(6771u, u_input.a.x, true), 24271u), 4294967295u) % vec2<u32>(32u));
    var_0 = func_2();
    let var_1 = vec4<bool>(all(select(vec2<bool>(true, select(true, true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec3<bool>(true, false, false)))), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(exp2(arg_0))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 1363f) + arg_0)) >= -1563f, true);
    var var_2 = u_input.a.yy;
    return !any(select(vec4<bool>(false, var_1.x, any(var_1.yw), false), !select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_u32(~abs(_wgslsmith_div_vec2_u32(u_input.a.zw | u_input.a.xx, u_input.a.xy)), ~(~vec2<u32>(countOneBits(global0.x), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global0.x, global0.x, global0.x, global0.x)))));
    var var_0 = select(vec4<bool>(func_1(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -185f))), !(1i <= select(1i, 2147483647i, false)), false, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f), -1841f))), vec4<bool>(true, true, true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), true))), select(vec4<bool>(global0.x <= _wgslsmith_div_u32(global0.x, 15764u), all(vec2<bool>(true, true)), any(vec4<bool>(false, false, false, false)), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), all(vec3<bool>(false, true, true))), true), !(50269u != _wgslsmith_dot_vec3_u32(vec3<u32>(40042u, global0.x, u_input.a.x), u_input.a.wwx))));
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, ~_wgslsmith_mult_u32(global0.x, 27281u), _wgslsmith_sub_u32(countOneBits(90073u), firstTrailingBit(u_input.a.x))), ~vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.xwx, vec3<u32>(970u, 29893u, u_input.a.x)), 1u, 0u));
    global0 = abs(u_input.a.zz);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(325f, 561f, 1000f, -386f), vec4<f32>(-1703f, 990f, -1093f, 731f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, 153f, -678f, -632f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(254f, -456f, 547f, -807f), vec4<f32>(-540f, -249f, -1325f, 305f))) + vec4<f32>(1f, 1f, 1f, 1f)))))));
    var var_3 = Struct_2(vec4<i32>(-1i) * -(~vec4<i32>(20192i, 1i, -2147483647i, 16640i)), var_2);
    var_3 = Struct_2(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(select(var_3.a, vec4<i32>(-15244i, -2147483647i, var_3.a.x, var_3.a.x), var_0.x), var_3.a), -var_3.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1486f, var_3.b.x)), var_2.x, var_3.b.x, _wgslsmith_f_op_f32(-var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-896f)), _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(trunc(-577f)), -155f))), max(firstLeadingBit(~(i32(-1i) * -3922i)), var_3.a.x));
}

