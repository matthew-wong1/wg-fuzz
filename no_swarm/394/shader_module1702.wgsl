struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2.a.x;
    var var_1 = arg_1;
    let var_2 = vec3<i32>(firstTrailingBit(i32(-1i) * -1547i), -1i | _wgslsmith_dot_vec4_i32(vec4<i32>(-11787i, u_input.a, 7960i, -2147483647i) & vec4<i32>(11975i, -17915i, -20709i, var_1.b), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, var_1.b), vec3<i32>(22638i, u_input.a, 0i)), -2763i, reverseBits(var_1.b), var_1.b >> (u_input.c % 32u))), u_input.a);
    var_1 = arg_2;
    var var_3 = Struct_1(vec4<bool>(0i >= var_2.x, false, true, arg_2.a.x), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.e, 0i, arg_1.b), ~vec4<i32>(u_input.a, -2147483647i, arg_1.b, 10112i))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(var_1.b, 1i, -1630i, var_2.x)), -vec4<i32>(arg_2.b, var_1.b, 0i, u_input.a))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = vec3<f32>(-263f, 467f, -1576f);
    var_1 = vec3<f32>(var_1.x, -1000f, var_1.x);
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, var_1.x, 1231f)));
    var_0 = Struct_1(!vec4<bool>(var_0.a.x, false | any(var_0.a.ywy), arg_2, var_0.a.x), var_0.b);
    return var_0.a;
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_1(!(!select(vec4<bool>(true, true, true, true), func_3(Struct_1(vec4<bool>(true, false, false, true), arg_0), u_input.b.x, true), vec4<bool>(true, true, true, true))), -arg_0);
    var_0 = Struct_1(var_0.a, -arg_0);
    var var_1 = _wgslsmith_clamp_i32(var_0.b, -24293i, 2147483647i);
    var_1 = arg_0;
    let var_2 = min(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, ~(-11947i) >> (u_input.b.x % 32u)), _wgslsmith_sub_vec2_i32(-(~vec2<i32>(u_input.e, 55247i)), countOneBits(vec2<i32>(var_0.b, arg_0)))), vec2<i32>(min(~(-1i), _wgslsmith_clamp_i32(~arg_0, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -1i, 0i, u_input.a), vec4<i32>(arg_0, u_input.e, 0i, 2147483647i)))), firstLeadingBit(~_wgslsmith_clamp_i32(-5534i, 1i, -20218i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1123f - 480f) - -138f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -240f)))) * _wgslsmith_f_op_f32(floor(657f))) * 934f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(true, true, true, any(vec3<bool>(any(vec4<bool>(true, false, false, true)), false, true))), firstTrailingBit(countOneBits(u_input.e)));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-956f - -939f) - _wgslsmith_f_op_f32(func_1(vec4<f32>(486f, -245f, -1501f, -847f), Struct_1(var_0.a, 2147483647i), Struct_1(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), u_input.e))))), -1001f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-176f - -1044f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(472f, 1235f)), _wgslsmith_f_op_f32(-331f + -1233f)))))), -573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.b)))))));
    var var_2 = Struct_1(vec4<bool>(var_0.a.x, !(false || !var_0.a.x), true, var_0.a.x), -u_input.e);
    var_2 = Struct_1(vec4<bool>(false, var_2.a.x, var_0.a.x, any(select(select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(true, true, true), false), vec3<bool>(var_2.a.x, true, true), !vec3<bool>(var_2.a.x, false, false)))), i32(-1i) * -9604i);
    var var_3 = -1178f;
    var var_4 = ~17586i;
    var_4 = -1i | var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.b.zx, _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c, u_input.b.x), ~u_input.d, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 75533u) ^ u_input.d, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1767u, 91729u))))));
}

