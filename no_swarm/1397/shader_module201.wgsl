struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mod_u32(arg_1, ~1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-602f, _wgslsmith_f_op_f32(-317f * arg_2.b), _wgslsmith_div_f32(-302f, -1436f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-880f, arg_2.b, var_1.x))) + vec3<f32>(214f, arg_2.c, arg_2.c)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1189f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 2197f, 935f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, _wgslsmith_div_f32(var_1.x, -314f), _wgslsmith_div_f32(var_1.x, 226f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1889f, var_1.x)) - vec3<f32>(_wgslsmith_f_op_f32(arg_2.b * 1737f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(arg_2.b))))));
    var var_2 = false;
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.c)) + var_1.x), -813f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(440f, var_1.x, arg_2.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, 194f, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1054f, arg_2.b, var_1.x) - vec3<f32>(var_1.x, arg_2.c, arg_2.b)))))));
    return ~(firstTrailingBit(-(u_input.a >> (22719u % 32u))) ^ u_input.b);
}

fn func_2(arg_0: u32) -> vec3<i32> {
    global0 = vec2<bool>(global0.x, !(func_3(firstLeadingBit(-1328i), 23131u, Struct_2(Struct_1(true), -1000f, 1222f, u_input.b, Struct_1(false))) <= _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.b, -1i)), ~vec2<i32>(29070i, u_input.b))));
    global0 = !(!(!vec2<bool>(global0.x || global0.x, any(vec3<bool>(false, global0.x, global0.x)))));
    let var_0 = false;
    global0 = select(vec2<bool>(true, global0.x), !vec2<bool>(false, var_0), !select(arg_0 < ~0u, false, true));
    var var_1 = Struct_2(Struct_1(all(vec2<bool>(all(vec4<bool>(false, false, true, global0.x)), var_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1611f, 890f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1434f, _wgslsmith_f_op_f32(-1036f + 1680f)))))), -1i, Struct_1(!all(vec2<bool>(false, true))));
    return firstLeadingBit(countOneBits(vec3<i32>(var_1.d, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 19549i, var_1.d, -102i), vec4<i32>(-1i, -1i, u_input.a, var_1.d)), vec4<i32>(27014i, -25028i, 1036i, 46011i)), var_1.d)));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(Struct_1(global0.x), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(1031f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-948f)), _wgslsmith_f_op_f32(1906f * 1480f), any(vec4<bool>(false, false, true, global0.x))))), select(true, !global0.x | (global0.x || true), global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(260f, 1000f, false))), 1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1372f * -1000f)))), _wgslsmith_dot_vec3_i32(reverseBits(func_2(~4294967295u)), firstTrailingBit(abs(-vec3<i32>(-64174i, -1i, u_input.b)))), Struct_1(global0.x));
    var var_1 = true;
    var_1 = global0.x;
    let var_2 = Struct_1(select(~u_input.c | _wgslsmith_mod_i32(-9755i, var_0.d), 34792i, (var_0.d | var_0.d) <= ~(-9664i)) != var_0.d);
    return -1732f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!(!(!vec2<bool>(global0.x, false)))));
    global0 = vec2<bool>(global0.x, global0.x);
    let var_0 = abs(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(1000f + 1439f))))), 539f, 553f));
}

