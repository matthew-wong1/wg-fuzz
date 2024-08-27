struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_1.d.xz, -2147483647i, vec2<f32>(1441f, arg_1.c.x), !arg_1.d), vec3<i32>(39103i, -38856i, ~select(abs(arg_1.b), _wgslsmith_mult_i32(arg_1.b, 0i), 1045f == arg_1.c.x)));
    var var_1 = true;
    let var_2 = _wgslsmith_sub_i32(u_input.c, firstTrailingBit(~((i32(-1i) * -65617i) << (abs(0u) % 32u))));
    var var_3 = arg_1.d;
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~1i, u_input.d, select(u_input.a.x, 19685i, true) >> (~abs(u_input.e.x) % 32u)), select(select(_wgslsmith_dot_vec4_i32(vec4<i32>(41277i, 35751i, arg_1.b, -79861i), ~vec4<i32>(arg_1.b, 0i, var_2, -47777i)), abs(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, var_2)), false), -countOneBits(arg_1.b), true));
    return _wgslsmith_sub_u32(u_input.b, ~(~min(u_input.e.x & arg_0, 42444u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> i32 {
    var var_0 = ~(u_input.b ^ ~func_3(1u, Struct_1(arg_2, -1i, vec2<f32>(arg_3, arg_3), arg_0)));
    var_0 = _wgslsmith_sub_u32(1u, 1u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_3) * _wgslsmith_div_f32(-366f, arg_3));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(238f, arg_3))), _wgslsmith_f_op_f32(-arg_3)));
    var var_2 = -u_input.a;
    return _wgslsmith_add_i32(-u_input.c, abs(u_input.c));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(arg_0.b.x <= -2147483647i, arg_0.a.a.x), select(arg_0.a.d.yz, !arg_0.a.a, select(vec2<bool>(arg_0.a.d.x, false), vec2<bool>(arg_0.a.d.x, arg_0.a.d.x), arg_0.a.a)), vec2<bool>(all(arg_0.a.d), all(vec3<bool>(arg_0.a.a.x, false, arg_0.a.a.x)))), 5186i >> (u_input.b % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1497f, 816f), _wgslsmith_f_op_f32(abs(-470f)))), select(select(arg_0.a.d, arg_0.a.d, true), vec3<bool>(arg_0.a.d.x, arg_0.a.a.x, arg_0.a.a.x), vec3<bool>(true, true, arg_0.a.a.x | true))), vec3<i32>(~(-1i), ~(~(~arg_0.b.x)), 15005i));
    var var_1 = min(u_input.a & vec3<i32>(u_input.c, 0i << (_wgslsmith_mod_u32(u_input.b, 41494u) % 32u), func_2(vec3<bool>(arg_0.a.d.x, false, false), ~u_input.e.x, select(arg_0.a.a, vec2<bool>(var_0.a.d.x, arg_0.a.d.x), vec2<bool>(false, arg_0.a.a.x)), _wgslsmith_f_op_f32(max(1502f, var_0.a.c.x)))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(~arg_0.a.b, reverseBits(87039i), countOneBits(9112i)), arg_0.b));
    var_1 = vec3<i32>(0i & u_input.c, -1i, var_0.b.x);
    var_1 = firstLeadingBit(var_0.b);
    let var_2 = -132f;
    return vec2<u32>(~u_input.e.x, ~(_wgslsmith_mod_u32(u_input.b, 4294967295u) | ~4294967295u)) | max(vec2<u32>(abs(54379u), 0u), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 2717u), vec2<u32>(func_3(u_input.e.x, Struct_1(var_0.a.a, u_input.c, vec2<f32>(1082f, -1584f), vec3<bool>(true, arg_0.a.d.x, true))), _wgslsmith_sub_u32(u_input.b, 34145u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.xx;
    var_0 = ~vec2<u32>(21659u, u_input.b);
    var_0 = func_1(Struct_2(Struct_1(vec2<bool>(any(vec3<bool>(true, false, false)), true), _wgslsmith_dot_vec2_i32(vec2<i32>(20660i, u_input.d), u_input.a.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-613f, 404f) - vec2<f32>(-1962f, -283f))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1211f, -106f) * -1000f)), _wgslsmith_f_op_f32(select(567f, 1f, !any(vec2<bool>(true, false))))));
    var_0 = ~(u_input.e.zw | ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 47619u) ^ vec2<u32>(var_0.x, u_input.e.x), _wgslsmith_mult_vec2_u32(u_input.e.xy, vec2<u32>(var_0.x, var_0.x))));
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), -24803i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(736f, -1041f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1258f, 334f), vec2<f32>(619f, 108f), true)))))), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)))), -(~u_input.a));
    var_0 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(select(0u, u_input.e.x, var_1.a.a.x), 21725u), u_input.e.zz, u_input.e.zy) << (u_input.e.yy % vec2<u32>(32u)));
    var_0 = u_input.e.zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-506f)) - _wgslsmith_f_op_f32(floor(var_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(684f)) + _wgslsmith_f_op_f32(-289f * var_1.a.c.x)), -1236f, _wgslsmith_f_op_f32(f32(-1f) * -1272f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c.x, -125f, 711f, -537f), vec4<f32>(var_1.a.c.x, 366f, 270f, var_1.a.c.x)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1130f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(460f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(150f, var_1.a.c.x)) * _wgslsmith_f_op_f32(-var_1.a.c.x)), var_1.a.c.x), vec4<f32>(var_1.a.c.x, var_1.a.c.x, -1142f, var_1.a.c.x))));
}

