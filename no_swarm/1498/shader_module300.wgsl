struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<bool>,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    let var_0 = ~4294967295u;
    global0 = array<vec4<f32>, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-371f, _wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(sign(-2052f)), _wgslsmith_f_op_f32(-1f))))));
    let var_2 = all(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true))));
    var var_3 = Struct_5(Struct_2(vec2<bool>(false, !(var_2 || true))));
    return vec3<bool>(var_1.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-155f * var_1.x))) - -1000f), select(var_1.x != -254f, false, !any(!vec4<bool>(true, var_3.a.a.x, false, var_2))), var_3.a.a.x);
}

fn func_2(arg_0: f32) -> Struct_5 {
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    var var_0 = vec4<i32>(u_input.b, u_input.b ^ u_input.a, -45029i, u_input.a);
    return Struct_5(Struct_2(vec2<bool>(any(func_3()), select(51916u, 45276u, true) > _wgslsmith_add_u32(0u, 84458u))));
}

fn func_1() -> u32 {
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f * -1807f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(134f - -144f) - 950f))));
    let var_1 = func_2(-269f).a;
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_div_f32(1000f, -1433f)))) - _wgslsmith_f_op_f32(f32(-1f) * -871f)));
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~func_1(), _wgslsmith_sub_u32(~(~77050u), 1u));
    global0 = array<vec4<f32>, 13>();
    let var_1 = Struct_4(-7293i, Struct_3(_wgslsmith_mod_vec2_u32(var_0, var_0), Struct_1(true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1958f, -1000f, -465f, -1117f) + global0[_wgslsmith_index_u32(2779u, 13u)]))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), max(~33547u, 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(556f, 1197f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1636f, 237f) + vec2<f32>(-457f, 507f)))), abs(-2147483647i)), vec2<bool>(-2072f != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(145f)))), false), ~(-28937i));
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    var var_2 = _wgslsmith_sub_vec4_i32(~vec4<i32>(~(-1i), -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(1i, -16778i)), ~vec2<i32>(-2147483647i, u_input.b)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(30526i, var_1.b.c), vec2<i32>(2147483647i, -17466i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(var_1.d, var_1.d)))), firstTrailingBit(select(firstLeadingBit(~vec4<i32>(-2147483647i, u_input.b, var_1.d, 2147483647i)), ~vec4<i32>(0i, u_input.a, u_input.b, var_1.a), select(select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.b.b.a, false), vec4<bool>(true, var_1.c.x, false, true), var_1.c.x), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), !vec4<bool>(true, var_1.c.x, true, true)))));
    let var_3 = var_1.b.b.e.x;
    let var_4 = Struct_5(Struct_2(!select(var_1.b.b.c.zx, vec2<bool>(var_1.c.x, var_1.b.b.c.x), vec2<bool>(false, false))));
    var var_5 = -1326f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.b.e + var_1.b.b.e)))));
}

