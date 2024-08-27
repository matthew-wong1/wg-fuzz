struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = -176f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1650f - 1206f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-406f, var_0, var_0, -1866f), vec4<f32>(-389f, var_0, 705f, -488f))))));
    var_1 = 1192f;
    var var_3 = Struct_1(((u_input.c.x < 1i) || (~19722u >= ~arg_2.x)) | false);
    return 545f;
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = min(_wgslsmith_dot_vec2_i32(-(vec2<i32>(arg_0, 2147483647i) ^ firstTrailingBit(vec2<i32>(arg_0, u_input.c.x))), -u_input.a.zz), -2147483647i);
    var var_2 = arg_0;
    var var_3 = 36725u;
    let var_4 = reverseBits(~55293u) & u_input.b;
    return -2147483647i;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)) + -258f)));
    var var_1 = ~(~2836u);
    var var_2 = vec4<i32>(max(u_input.c.x, -1i), func_3(-_wgslsmith_dot_vec4_i32(select(u_input.c, vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.a.x), arg_0.b.x), u_input.c), _wgslsmith_f_op_f32(func_2(Struct_2(arg_0.a, select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), vec4<bool>(arg_0.a.a, true, arg_0.a.a, true), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.a.a, arg_0.a.a)), 4240u), min(~vec3<u32>(4305u, u_input.d, 90384u), vec3<u32>(u_input.d, 1u, 87458u)), vec4<u32>(81953u & u_input.e, ~arg_0.c, ~u_input.b, u_input.e)))), 1i, 0i);
    var var_3 = ~86721u;
    var_1 = 6119u;
    return _wgslsmith_mult_u32(arg_0.c, _wgslsmith_div_u32(0u, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x, -61431i << (select(u_input.d, func_1(Struct_2(Struct_1(false), vec4<bool>(true, true, true, false), 37913u)), all(vec4<bool>(true, true, true, true))) % 32u), -u_input.a.x);
    var var_1 = _wgslsmith_sub_vec2_i32(var_0.xz, abs(u_input.a.zx));
    var_1 = -firstTrailingBit(vec2<i32>(-4742i, _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.c.zz) | _wgslsmith_add_i32(var_0.x, var_1.x)));
    var_1 = vec2<i32>(-u_input.a.x, select(var_1.x, abs(-var_1.x), true)) >> (countOneBits(select(vec2<u32>(4294967295u, 49544u), vec2<u32>(1u, func_1(Struct_2(Struct_1(false), vec4<bool>(true, true, false, true), 77177u))), vec2<bool>(true, true))) % vec2<u32>(32u));
    var var_2 = true;
    let var_3 = any(select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), true), vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), true)), false));
    var_1 = vec2<i32>(func_3(var_0.x, 308f), -1i);
    var var_4 = u_input.c ^ ~abs(vec4<i32>(-32185i, u_input.a.x, -15441i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_1.x, 22818i), vec4<i32>(2147483647i, var_1.x, -1i, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.yz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1844f, -257f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, -577f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f * -595f))), !vec2<bool>(var_3 && false, all(vec4<bool>(var_3, false, false, false))))));
}

