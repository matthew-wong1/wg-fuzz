struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> vec3<i32> {
    let var_0 = Struct_1(false);
    let var_1 = Struct_3(_wgslsmith_mod_vec3_i32(max(u_input.c, vec3<i32>(-17943i, arg_2, arg_2)), u_input.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), 1279f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-453f, -2146f, 167f) - vec3<f32>(811f, -281f, 731f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, -887f, 518f))))));
    let var_3 = var_1;
    let var_4 = arg_2;
    return _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -abs(~var_3.a), var_3.a);
}

fn func_2() -> Struct_1 {
    let var_0 = !(!vec4<bool>(false, true, all(vec3<bool>(true, true, true)), u_input.d.x >= u_input.d.x));
    let var_1 = ~u_input.d.x;
    var var_2 = Struct_5(firstTrailingBit(vec4<i32>(2147483647i, -firstTrailingBit(u_input.a), u_input.c.x, u_input.b)));
    let var_3 = Struct_3(min(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(func_3(u_input.d.x, 32651u, 2147483647i), _wgslsmith_add_vec3_i32(u_input.c, u_input.c)), vec3<i32>(_wgslsmith_mult_i32(var_2.a.x, 1i), var_2.a.x, u_input.a >> (u_input.d.x % 32u))), abs(_wgslsmith_add_vec3_i32(var_2.a.wwz, firstTrailingBit(u_input.c)))));
    var var_4 = true;
    return Struct_1(870f != _wgslsmith_f_op_f32(floor(780f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_1(true);
    let var_1 = func_2();
    var var_2 = ~(~firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 7993i, 2147483647i), vec4<i32>(u_input.b, 64603i, 27202i, arg_0.x), vec4<i32>(0i, 17823i, arg_0.x, 40782i))) << (u_input.d % vec4<u32>(32u)));
    var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a, abs(2147483647i), _wgslsmith_add_i32(-var_2.x & var_2.x, min(u_input.b, -11469i) & var_2.x), -11885i), -(~(vec4<i32>(-16801i, var_2.x, u_input.c.x, 2147483647i) >> (vec4<u32>(57724u, 4294967295u, u_input.d.x, 4294967295u) % vec4<u32>(32u))) & vec4<i32>(~u_input.a, var_2.x, ~var_2.x, var_2.x)));
    var_2 = _wgslsmith_div_vec4_i32(~vec4<i32>(-max(-1i, -29062i), ~var_2.x, ~(i32(-1i) * -2147483647i), u_input.c.x), firstLeadingBit(vec4<i32>(var_2.x, _wgslsmith_clamp_i32(var_2.x | 0i, -11169i, ~(-45707i)), _wgslsmith_mult_i32(i32(-1i) * -42431i, _wgslsmith_sub_i32(-1i, 0i)), _wgslsmith_mod_i32(var_2.x, -1i))));
    return Struct_3(var_2.wzx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c, select(vec2<bool>(1u < u_input.d.x, true), vec2<bool>(false, false), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_1 = ~reverseBits(vec4<i32>(reverseBits(max(var_0.a.x, var_0.a.x)), ~var_0.a.x, 5686i, u_input.a));
    var_1 = firstLeadingBit(vec4<i32>(0i, -(~u_input.a), -1i, u_input.b));
    let var_2 = 1563f;
    var_1 = _wgslsmith_mod_vec4_i32(~max(vec4<i32>(var_0.a.x, -65421i, var_1.x, func_1(var_0.a, vec2<bool>(false, true)).a.x), min(vec4<i32>(891i, u_input.c.x, -1i, u_input.b), vec4<i32>(var_1.x, 14699i, var_1.x, u_input.c.x)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.c.x, 6504i, -1i), vec4<i32>(-25430i, -30800i, var_1.x, -2147483647i))), ~_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -11175i, -48903i, 2147483647i), vec4<i32>(var_1.x, u_input.a, 22704i, u_input.c.x)), -select(vec4<i32>(2797i, var_1.x, -50541i, 0i), vec4<i32>(var_0.a.x, var_1.x, u_input.c.x, 9571i), vec4<bool>(false, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(657f, var_2, _wgslsmith_f_op_f32(ceil(121f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_2))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-399f - var_2), _wgslsmith_f_op_f32(-370f * var_2), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(sign(-783f))))), vec4<f32>(-234f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) - _wgslsmith_div_f32(878f, _wgslsmith_f_op_f32(abs(209f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, -361f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1529f, 931f)) - _wgslsmith_f_op_f32(282f - var_2))), _wgslsmith_f_op_f32(-1250f + var_2)));
}

