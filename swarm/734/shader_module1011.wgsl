struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_1) -> u32 {
    return 28816u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(func_3(~_wgslsmith_mult_i32(1i ^ u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(783f, _wgslsmith_f_op_f32(720f + 560f), -1000f))), Struct_4(u_input.c.x), Struct_1(select(_wgslsmith_mult_u32(0u, 15621u), u_input.d.x >> (u_input.c.x % 32u), arg_0))));
    var_0 = Struct_1(u_input.d.x ^ 4478u);
    return Struct_1(max(~4294967295u >> (0u % 32u), ~119302u));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(~(~(0u | u_input.c.x))));
    var var_1 = func_2(var_0.a.a <= u_input.a.x);
    let var_2 = _wgslsmith_div_vec4_i32(abs(-firstTrailingBit(select(vec4<i32>(2147483647i, u_input.b.x, u_input.e, u_input.b.x), vec4<i32>(3281i, u_input.b.x, -31i, u_input.e), true))), select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -1i, -2147483647i) ^ (vec4<i32>(u_input.e, u_input.e, u_input.b.x, u_input.e) | vec4<i32>(-1i, u_input.b.x, 12131i, u_input.e)), ~vec4<i32>(u_input.e, 18947i, 33954i, 0i)), _wgslsmith_div_vec4_i32(max(vec4<i32>(1i, u_input.e, 2147483647i, 1i) >> (vec4<u32>(var_1.a, var_0.a.a, 0u, 23938u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, 2147483647i)), countOneBits(abs(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -2147483647i)))), vec4<bool>(select(true, all(vec4<bool>(false, false, false, true)), false), true, select(true, true, false), false)));
    var_1 = Struct_1(42490u);
    let var_3 = false;
    return Struct_4(var_1.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_0.x;
    var var_1 = Struct_3(func_2(true), false, vec2<u32>(firstLeadingBit(min(~arg_1.a, ~u_input.c.x)), 1u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-670f, -1000f, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-694f, 905f, -1000f, arg_0.x), vec4<f32>(arg_0.x, var_0, arg_0.x, var_0), true))))))));
    var var_2 = select(select(select(vec4<bool>(var_1.b, any(vec2<bool>(var_1.b, var_1.b)), var_1.b, select(var_1.b, var_1.b, var_1.b)), vec4<bool>(true, false && var_1.b, true, arg_0.x < -391f), vec4<bool>(var_1.b & var_1.b, true | var_1.b, any(vec3<bool>(false, true, var_1.b)), select(var_1.b, var_1.b, var_1.b))), !vec4<bool>(true, true, var_1.b, true), var_1.b & !(true || var_1.b)), vec4<bool>(var_1.b, var_1.b, !(reverseBits(0u) > firstTrailingBit(var_1.c.x)), var_1.b), select(vec4<bool>(!any(vec4<bool>(true, var_1.b, var_1.b, var_1.b)), var_1.b, var_1.b, var_1.b), !vec4<bool>(var_1.b, true, var_1.b, !var_1.b), vec4<bool>(var_1.b, var_1.b, false, select(any(vec2<bool>(true, false)), false, false))));
    let var_3 = select(var_2.xw, var_2.zz, vec2<bool>(!select(!var_2.x, any(var_2.yx), true), any(vec2<bool>(var_2.x, all(var_2.yy)))));
    let var_4 = var_3;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(844f, 1273f, 572f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1133f, -503f, -895f)), false)), vec3<f32>(1033f, -1000f, _wgslsmith_f_op_f32(-343f * -716f))), func_1()));
    let var_1 = vec2<bool>(false, _wgslsmith_add_i32(-28933i, u_input.b.x) <= select(-select(51220i, u_input.e, true), u_input.e, !all(vec2<bool>(false, false))));
    let var_2 = Struct_2(Struct_1(~0u));
    var var_3 = Struct_3(Struct_1(_wgslsmith_clamp_u32(~73073u, u_input.d.x, select(u_input.c.x, u_input.c.x, true)) ^ abs(var_2.a.a)), var_1.x, abs(vec2<u32>(4294967295u, 22826u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(680f - -785f)))), _wgslsmith_f_op_f32(776f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2474f))), -403f, 841f));
    let var_4 = Struct_3(Struct_1(5904u & _wgslsmith_div_u32(u_input.d.x, 1258u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1130f), -1047f))) <= _wgslsmith_f_op_f32(-var_3.d.x), u_input.a, vec4<f32>(2138f, var_3.d.x, var_3.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_3.d.x, _wgslsmith_f_op_f32(-var_3.d.x), false)), _wgslsmith_f_op_f32(f32(-1f) * -179f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-6113i, select(firstLeadingBit(7827i), 0i, any(vec3<bool>(false, var_3.b, var_3.b)))));
}

