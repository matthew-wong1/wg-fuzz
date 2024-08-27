struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(0i, 1i, 86889i), vec4<bool>(true, false, true, true), false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(746f, -1110f)) - _wgslsmith_f_op_f32(ceil(-593f)));
    global0 = Struct_2(reverseBits(-(vec3<i32>(1i, 21725i, global0.a.x) | _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_0, u_input.e.x), vec3<i32>(-2147483647i, u_input.e.x, arg_0)))), !(!(!global0.b)), false);
    global0 = Struct_2(vec3<i32>(-1i, abs(-_wgslsmith_mod_i32(1i, global0.a.x)), global0.a.x), vec4<bool>(true, !all(!global0.b.yy), global0.b.x, -2147483647i <= (~global0.a.x | arg_0)), select(!global0.b.x, select(any(global0.b.xxz), true, global0.b.x), all(global0.b)));
    var var_1 = arg_0;
    var_1 = ~6381i;
    return global0.c;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = u_input.e.x;
    var var_1 = vec2<bool>(func_3(u_input.e.x, _wgslsmith_div_vec3_u32(u_input.a.wxw, u_input.a.wzw), -557f), true);
    return abs(_wgslsmith_mult_i32(0i, -var_0));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(-1i, global0.a.x), func_2(global0.b.x), 1i), select(vec4<bool>(true, true, true, false), !(!vec4<bool>(false, global0.c, arg_0, true)), vec4<bool>(-1777f > _wgslsmith_f_op_f32(sign(1057f)), _wgslsmith_mod_i32(u_input.e.x, u_input.e.x) < global0.a.x, any(!vec3<bool>(true, false, arg_0)), !(u_input.d > 65102u))), false);
    var var_1 = Struct_2(max(global0.a, -global0.a), select(global0.b, select(global0.b, !var_0.b, false), any(global0.b.ywy)), _wgslsmith_f_op_f32(sign(-807f)) != _wgslsmith_f_op_f32(ceil(1f)));
    var var_2 = vec3<bool>(all(global0.b.wx), all(select(vec4<bool>(any(vec4<bool>(var_0.b.x, true, var_1.b.x, true)), !var_1.b.x, false, var_0.c), select(select(vec4<bool>(global0.b.x, var_1.b.x, var_1.c, false), vec4<bool>(global0.b.x, false, true, var_1.b.x), var_1.b), var_0.b, true), !(!var_1.b.x))), var_1.c);
    let var_3 = reverseBits(~global0.a.x);
    let var_4 = any(vec4<bool>(var_2.x, arg_0, true, true));
    return _wgslsmith_div_f32(-1561f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-398f))), -747f) + 238f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(347f);
    var var_1 = abs(~u_input.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_0, 904f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) + _wgslsmith_f_op_f32(floor(arg_0)))))));
    var var_3 = _wgslsmith_f_op_f32(round(-345f));
    var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -653f, var_2.x)) * vec4<f32>(var_2.x, -630f, var_0.a, var_0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 309f, -577f, -111f) * vec4<f32>(-875f, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, -101f, var_2.x, _wgslsmith_f_op_f32(-var_2.x))))), vec4<f32>(-1000f, -759f, _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_i32(global0.a.x, arg_2.x) != arg_1)), var_2.x)));
    return Struct_2(global0.a, !vec4<bool>(global0.c, true, arg_2.x > global0.a.x, true), !(!any(select(vec3<bool>(global0.b.x, global0.b.x, global0.c), vec3<bool>(global0.c, false, global0.b.x), vec3<bool>(global0.c, global0.b.x, global0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(~vec3<i32>(global0.a.x, 1i, abs(62419i & global0.a.x)), select(vec4<bool>(false, global0.c, true || global0.c, global0.c), global0.b, !global0.c), global0.c);
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(true)), 790f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(721f, -1449f)) * -1977f)))), ~(-13514i), vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e.x, u_input.e.x), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.e.x), vec2<i32>(global0.a.x, u_input.e.x)))), global0.a.x));
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 16096i, vec2<i32>(0i, var_0.a.x));
    let var_1 = _wgslsmith_clamp_vec2_u32(abs(~reverseBits(u_input.a.zz)), ~u_input.a.yw | abs(~vec2<u32>(1u, u_input.d)), firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(12281u, 0u), firstTrailingBit(u_input.a.zx)))) ^ countOneBits(~u_input.a.xw);
    var var_2 = (var_1.x ^ countOneBits(1u ^ u_input.c)) | _wgslsmith_clamp_u32(~min(u_input.b, _wgslsmith_div_u32(var_1.x, u_input.b)), firstTrailingBit(u_input.d) ^ var_1.x, _wgslsmith_div_u32(1u | (u_input.d ^ 4294967295u), abs(_wgslsmith_mod_u32(u_input.b, 9178u))));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-463f, 492f)) + -512f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true || var_0.c))), select(any(func_4(_wgslsmith_f_op_f32(-1527f - 544f), _wgslsmith_mod_i32(var_0.a.x, -17958i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0.a.x), var_0.a.yx)).b.xy), all(!var_0.b), func_3(~global0.a.x | ~var_0.a.x, vec3<u32>(_wgslsmith_div_u32(59061u, 12536u), ~var_1.x, 65023u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1004f)) + -157f))), true);
    let var_4 = -1348f;
    var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global0.a.x & u_input.e.x, var_0.a.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(31141i, 63218i), -15688i)), vec4<u32>(var_1.x, ~_wgslsmith_mult_u32(u_input.b, u_input.b), _wgslsmith_sub_u32(~(~var_1.x), 66918u), u_input.d));
}

