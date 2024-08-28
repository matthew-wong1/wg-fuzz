struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    return ~_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 44109u, 4294967295u), vec3<u32>(4294967295u, 0u, 52481u))), 13255u) & select(u_input.c, max(1u, ~u_input.c) & (1u << ((u_input.b.x << (u_input.b.x % 32u)) % 32u)), true);
}

fn func_2() -> vec2<bool> {
    let var_0 = any(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(532f, _wgslsmith_f_op_f32(529f - -1508f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1254f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-204f)), -635f))));
    let var_2 = Struct_1(vec3<u32>(u_input.b.x, ~abs(func_3(-36256i)), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~firstTrailingBit(~vec4<i32>(57908i, 0i, u_input.d, 9441i)) | ~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.d, u_input.a, u_input.d, u_input.a), vec4<i32>(u_input.a, 21181i, -21274i, -42726i) << (vec4<u32>(u_input.b.x, u_input.c, 0u, 0u) % vec4<u32>(32u))), reverseBits(~min(vec3<i32>(0i, u_input.d, -2147483647i), vec3<i32>(33905i, 2147483647i, 19672i)) & ~(~vec3<i32>(u_input.a, -2147483647i, u_input.a))), -35154i);
    return vec2<bool>(true, false);
}

fn func_1(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) - arg_1))))));
    let var_1 = ~max(u_input.b >> (~select(vec2<u32>(4294967295u, u_input.c), vec2<u32>(1u, u_input.c), true) % vec2<u32>(32u)), vec2<u32>(u_input.c, 4294967295u));
    var_0 = -826f;
    let var_2 = select(!select(vec4<bool>(all(vec3<bool>(true, false, true)), false, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), true), vec4<bool>(select(_wgslsmith_f_op_f32(f32(-1f) * -1215f) == _wgslsmith_f_op_f32(sign(arg_1)), true, false), !select(true, all(vec2<bool>(false, true)), true), true, all(func_2())), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)));
    var var_3 = abs(_wgslsmith_div_u32(var_1.x, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.c, abs(990u)))));
    return min(firstLeadingBit(var_1.x), 15820u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(vec3<u32>(countOneBits(u_input.c), _wgslsmith_div_u32(func_1(0i, 975f), 0u), u_input.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -651f))), ~(-(~vec4<i32>(2147483647i, u_input.a, u_input.d, u_input.d))), _wgslsmith_sub_vec3_i32(-(-vec3<i32>(u_input.d, u_input.d, u_input.d) ^ -vec3<i32>(u_input.d, 48693i, 0i)), ~(-vec3<i32>(u_input.d, u_input.a, 46363i) | -vec3<i32>(u_input.d, 12051i, u_input.a))), u_input.d);
    let var_1 = var_0;
    var var_2 = vec3<u32>(u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~10069u, _wgslsmith_mult_u32(var_1.a.x, 56672u), _wgslsmith_mult_u32(0u, 23256u)), vec3<u32>(~4294967295u, var_0.a.x, select(var_1.a.x, 2172u, false))), var_1.a.x | ~(u_input.c >> (84537u % 32u)));
    var_2 = ~vec3<u32>(4294967295u, 32903u, 4294967295u);
    var var_3 = Struct_4(any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), -560f, 1457f), vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b)), 219f, _wgslsmith_div_f32(726f, -922f)))), vec4<bool>(true, true, all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), u_input.a < u_input.d)), true));
    let var_4 = ~(-var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~var_0.d.zy, -var_0.d.zy), -_wgslsmith_mult_i32(var_4, var_1.c.x), firstTrailingBit(u_input.d)), -select(vec3<i32>(2147483647i, var_1.e, -4797i) >> (vec3<u32>(4294967295u, var_1.a.x, var_2.x) % vec3<u32>(32u)), abs(vec3<i32>(var_1.c.x, var_1.e, var_4)), select(vec3<bool>(var_3.a, false, true), var_3.d.yww, vec3<bool>(false, false, var_3.a)))));
}

