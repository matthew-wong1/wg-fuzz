struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(i32(-2147483648), 1i, 19067i, 74542i), vec4<i32>(i32(-2147483648), 32371i, 0i, i32(-2147483648)), vec4<i32>(0i, 0i, 1i, -82553i), vec4<i32>(67394i, 69035i, 2147483647i, 0i), vec4<i32>(39146i, -71851i, 19719i, -38363i), vec4<i32>(-1i, -6743i, 1i, 2147483647i), vec4<i32>(24793i, -4679i, 0i, -15898i), vec4<i32>(-33683i, 2633i, 7759i, -47488i), vec4<i32>(-1i, 48731i, 3658i, -30351i), vec4<i32>(-52928i, i32(-2147483648), -42282i, 0i), vec4<i32>(0i, i32(-2147483648), -12374i, -10774i), vec4<i32>(-30885i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(42012i, 13278i, i32(-2147483648), -1i), vec4<i32>(-1i, -73261i, 1i, -33172i), vec4<i32>(-1i, 18480i, -2018i, -1i), vec4<i32>(1i, -15077i, 1i, -1i), vec4<i32>(34848i, -1i, 49877i, 0i), vec4<i32>(2147483647i, 0i, -1i, 0i), vec4<i32>(-33675i, -1i, -1453i, 1i), vec4<i32>(-6702i, i32(-2147483648), -25690i, 21404i), vec4<i32>(1i, 16279i, -36684i, -18861i), vec4<i32>(0i, 1i, 1i, -1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec3<f32> {
    let var_0 = arg_2;
    global0 = array<vec4<i32>, 22>();
    let var_1 = var_0;
    global0 = array<vec4<i32>, 22>();
    let var_2 = min(select(-(~(~vec3<i32>(arg_1.d, -51230i, arg_1.d))), abs(vec3<i32>(min(arg_1.d, arg_1.d), 0i, arg_1.d << (69304u % 32u))), !vec3<bool>(all(vec4<bool>(false, true, false, false)), -1i >= arg_1.d, true)), vec3<i32>(_wgslsmith_add_i32(1i, 18805i), arg_1.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(-7538i, arg_1.d, arg_1.d, arg_1.d), _wgslsmith_div_vec4_i32(select(global0[_wgslsmith_index_u32(arg_1.a.x, 22u)], vec4<i32>(-1i, -22818i, arg_1.d, 26025i), vec4<bool>(true, true, true, true)), vec4<i32>(arg_1.d, arg_1.d, arg_1.d, 2147483647i)))));
    return var_0.a;
}

fn func_2() -> vec3<bool> {
    let var_0 = false || (all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) | true);
    var var_1 = vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, var_0);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 466f, -691f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(1u, Struct_1(u_input.a.wzy, -222f, 1000f, 40150i, vec2<u32>(u_input.a.x, u_input.a.x)), Struct_2(vec3<f32>(1389f, -178f, -103f)), 385f)))), !var_1.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 785f, -915f), vec3<f32>(1162f, 703f, -579f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(690f, 317f, 1109f), vec3<f32>(-334f, -1158f, 1908f), true)), !var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-873f, -2301f, 611f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(185f, -644f, -189f) + vec3<f32>(-1000f, -227f, 154f))))));
    let var_3 = !select(vec4<bool>(true, true & (false | var_0), var_1.x, var_0), vec4<bool>(true || var_1.x, true, all(var_1.wzz), any(!vec4<bool>(false, true, true, var_0))), countOneBits(0i) > ~_wgslsmith_dot_vec3_i32(vec3<i32>(35739i, -50111i, 0i), vec3<i32>(1i, -2147483647i, 10382i)));
    var var_4 = var_2.a.x;
    return !vec3<bool>(var_1.x, all(var_1.yxz), all(!(!vec4<bool>(var_1.x, var_1.x, false, false))));
}

fn func_1() -> i32 {
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), !(!func_2()), true);
    var var_1 = var_0.zz;
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(264f))))) * -315f) * _wgslsmith_div_f32(-1280f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)), _wgslsmith_f_op_f32(step(-822f, -1669f))))));
    return countOneBits(1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = true;
    var_0 = 28463i;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1680f)), -553f, _wgslsmith_f_op_f32(f32(-1f) * -161f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2010f, 799f, 2224f) * vec3<f32>(-1625f, 1121f, -500f))))));
    var var_3 = firstTrailingBit(~(-2147483647i) >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(1i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-24042i, -3659i) >> (u_input.a.wy % vec2<u32>(32u)))), _wgslsmith_dot_vec4_i32(~reverseBits(global0[_wgslsmith_index_u32(18795u, 22u)]), ~(global0[_wgslsmith_index_u32(0u, 22u)] >> (u_input.a % vec4<u32>(32u)))), 1i, 1i), firstTrailingBit(func_1()), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(1u, Struct_1(vec3<u32>(1u, 1u, u_input.a.x), var_2.a.x, 204f, -50859i, vec2<u32>(1u, u_input.a.x)), var_2, var_2.a.x)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x)))))), -global0[_wgslsmith_index_u32(u_input.a.x, 22u)]);
}

