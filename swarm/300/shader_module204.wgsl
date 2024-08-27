struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32> = vec2<f32>(242f, -1200f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_5(firstTrailingBit(vec2<u32>(arg_0.x, ~u_input.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, global1.x, 1000f)))))));
    let var_1 = Struct_1(!(!select(false, true, true)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>((u_input.a.x | arg_0.x) >= arg_0.x, !any(vec4<bool>(false, true, true, false))), true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x);
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-abs(_wgslsmith_clamp_i32(u_input.b, 49586i, u_input.b)), _wgslsmith_clamp_i32(-min(u_input.b, -2147483647i), u_input.b, u_input.b >> (u_input.a.x % 32u))), reverseBits(firstTrailingBit(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-2147483647i, -34182i)))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * -760f), global1.x)) * 1000f), _wgslsmith_f_op_f32(sign(-1353f)));
    global0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, -1i)), vec4<i32>(0i, -30947i, 2147483647i, u_input.b), true), vec4<i32>(-u_input.b, _wgslsmith_div_i32(u_input.b, 0i), u_input.b, 0i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(~2147483647i, u_input.b)));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, arg_0.x))), arg_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1471f, 1686f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f))))));
    var var_0 = any(vec3<bool>(select(!all(vec2<bool>(true, true)), true, !(u_input.a.x >= 40127u)), !(-148f >= global1.x) && true, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))));
    return vec2<u32>(select(firstLeadingBit(u_input.a.x), 1u, true), ~1u);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(722f, 629f, _wgslsmith_f_op_f32(f32(-1f) * -2222f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1805f - -402f))) * global1.x), global1.x, global1.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), abs(vec3<u32>(u_input.a.x, 14708u, 1u))) << (firstLeadingBit(vec3<u32>(u_input.a.x, 0u, u_input.a.x)) % vec3<u32>(32u)))));
    let var_2 = u_input.b;
    var var_3 = max(u_input.a, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1333f, 557f, -2051f)))));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(var_0.zy, vec2<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(global1.x))), var_0.x))), var_0.yx));
    return !all(vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(false, false, !func_1()), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !any(vec4<bool>(true, true, true, true)), false), !(0u != u_input.a.x)), vec3<bool>(all(vec2<bool>(global1.x < -124f, any(vec3<bool>(true, true, true)))), true & any(vec2<bool>(true, true)), all(vec3<bool>(true, any(vec2<bool>(true, false)), true))), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))));
    global0 = ~firstLeadingBit(firstTrailingBit(u_input.b));
    let var_1 = Struct_5(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -575f, global1.x, global1.x), vec4<f32>(global1.x, -1248f, global1.x, 771f)))).x, u_input.a.x), ~reverseBits(u_input.a), ~u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x + -111f), global1.x, -1595f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -480f, 346f), vec3<f32>(global1.x, global1.x, -437f), var_0)))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.yz * var_1.b.zy)), var_1.b.xy)));
    var var_2 = select(!(!(!all(vec2<bool>(var_0.x, false)))), false, all(vec4<bool>(all(var_0.yy), !(!var_0.x), false, var_1.b.x >= _wgslsmith_f_op_f32(global1.x * var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(var_1.a.x, 37185u, 78813u), vec3<u32>(firstTrailingBit(0u), u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, var_1.a.x, var_1.a.x), ~u_input.a.x))), var_1.a, ~35020u, firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(var_1.a.x ^ 0u, var_1.a.x))));
}

