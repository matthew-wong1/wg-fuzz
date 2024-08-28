struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-14308i, 2147483647i, 2147483647i, 1i, 2147483647i, i32(-2147483648), -1i, 0i, 0i, 12018i, -1i, 2147483647i, 10010i, -977i, -17243i, 18152i, -61870i, -26508i, -15409i, 0i, 26720i, -1i, -77565i, i32(-2147483648));

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = ~(_wgslsmith_sub_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(u_input.e.x, 24u)], u_input.b, u_input.a), ~vec4<i32>(u_input.b, 1i, u_input.c.x, global0[_wgslsmith_index_u32(13338u, 24u)])) >> (~vec4<u32>(arg_0.x, u_input.e.x, u_input.e.x, 25273u) % vec4<u32>(32u))) & max(select(vec4<i32>(-u_input.c.x, -23827i, -2147483647i ^ global0[_wgslsmith_index_u32(u_input.e.x, 24u)], -2147483647i), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c.x, 1357i, 2147483647i, -1i), firstLeadingBit(vec4<i32>(-14536i, global0[_wgslsmith_index_u32(31106u, 24u)], u_input.d.x, global0[_wgslsmith_index_u32(u_input.e.x, 24u)]))), 2147483647i <= firstTrailingBit(0i)), max(vec4<i32>(u_input.d.x, i32(-1i) * -1i, -5736i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(50590u, u_input.e.x), 24u)]), ~(vec4<i32>(global0[_wgslsmith_index_u32(102307u, 24u)], u_input.d.x, 13906i, global0[_wgslsmith_index_u32(4294967295u, 24u)]) & vec4<i32>(global0[_wgslsmith_index_u32(43393u, 24u)], u_input.a, u_input.b, -5882i))));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.e.x, 5u)], -20777i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(231f, 1257f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, -687f))))))));
    let var_2 = -(var_1.b << (_wgslsmith_div_u32(1u, 19178u) % 32u));
    global1 = array<Struct_1, 5>();
    var var_3 = Struct_2(var_1.a, _wgslsmith_mod_i32(-4351i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.c, var_1.c)))))));
    return _wgslsmith_f_op_f32(floor(var_3.c.x));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_3(arg_0, arg_0.a.zww, 0i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.e.x, 0u, u_input.e.x)))) - -351f));
    let var_1 = Struct_2(arg_0, -(~firstTrailingBit(arg_1) ^ (i32(-1i) * -1i)), vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-497f * arg_0.b)), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 303u, u_input.e.x), ~vec3<u32>(0u, 78511u, u_input.e.x))))));
    global1 = array<Struct_1, 5>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d))));
    global1 = array<Struct_1, 5>();
    return abs(u_input.e);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(countOneBits(16036u), 5u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_div_f32(-2216f, arg_0))), arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0))), u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-460f * 260f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = ~(~func_2(var_0.a, ~(0i ^ global0[_wgslsmith_index_u32(u_input.e.x, 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-845f, arg_0)) + var_0.a.b)));
    let var_2 = any(!(!select(select(vec4<bool>(false, true, true, var_0.a.c), vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, false), vec4<bool>(var_0.a.c, true, var_0.a.c, true)), !vec4<bool>(false, var_0.a.c, var_0.a.c, false), vec4<bool>(var_0.a.c, var_0.a.c, true, var_0.a.c))));
    var var_3 = true;
    var var_4 = global0[_wgslsmith_index_u32(abs(~min(4808u, abs(4294967295u))), 24u)];
    return _wgslsmith_f_op_f32(var_0.a.a.x - 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 5>();
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-1000f * 1294f);
    global1 = array<Struct_1, 5>();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f - -624f))));
    global1 = array<Struct_1, 5>();
    var_2 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(2098f + _wgslsmith_f_op_f32(func_1(-253f))));
    global1 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer((-2147483647i | _wgslsmith_div_i32(1i, select(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 24u)], true))) | -2147483647i, select(~u_input.e, u_input.e, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(var_0, false)), false)));
}

