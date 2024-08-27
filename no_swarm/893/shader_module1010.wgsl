struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(1040f, 409f, -467f, -634f), vec4<f32>(-1102f, 348f, 1277f, -2634f), vec4<f32>(706f, 1541f, -305f, 832f), vec4<f32>(1000f, -253f, 114f, 308f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> vec3<f32> {
    global1 = array<vec3<i32>, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x)), 1u);
    var var_1 = Struct_1(-415f, select(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.c.b, u_input.b, var_0.b), vec4<u32>(var_0.b, u_input.e, arg_2.c.b, 43228u))), max(u_input.d.x, u_input.a.x), max(arg_2.c.b, 28637u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.b, u_input.a.x, arg_2.c.b), vec3<u32>(u_input.a.x, 22554u, u_input.a.x), vec3<bool>(true, false, true)), ~u_input.a.www), ~var_0.b), true | all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    global0 = array<Struct_1, 3>();
    let var_2 = select(!select(vec4<bool>(any(vec2<bool>(true, false)), true, true, var_1.b > u_input.d.x), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.c.a), _wgslsmith_f_op_f32(round(1563f)), arg_2.b > 0i)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.a, arg_2.a))));
}

fn func_2() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 3u)];
    var var_1 = max(0u, var_0.b) > _wgslsmith_sub_u32(firstLeadingBit(u_input.d.x), var_0.b);
    global3 = array<vec4<f32>, 4>();
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), -1000f))), _wgslsmith_f_op_f32(-651f * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(abs(285f)))), 59469i, global0[_wgslsmith_index_u32(4600u, 3u)]);
    global1 = array<vec3<i32>, 30>();
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, var_0.a, var_2.c.a), vec3<f32>(var_2.a.x, -975f, var_0.a), false))) + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 63703u, var_2.c.b), vec4<u32>(u_input.a.x, 0u, u_input.e, u_input.a.x)), i32(-1i) * -7957i, Struct_2(vec3<f32>(422f, 128f, var_0.a), -1i, var_2.c)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a.x, 1203f, 603f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, var_0.a, -1000f))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))))), ~global2.x, var_2.c);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_3.a.x) > -1000f;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.a)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(arg_0.c.a)), _wgslsmith_div_u32(4294967295u, abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2, 4294967295u), _wgslsmith_mult_u32(0u, arg_0.c.b), arg_2))));
    global1 = array<vec3<i32>, 30>();
    return var_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(59046i >> ((arg_2.c.b | 1u) % 32u), ~global2.x << (~_wgslsmith_div_u32(56859u, ~arg_2.c.b) % 32u));
    let var_1 = func_2();
    let var_2 = func_2();
    var var_3 = _wgslsmith_div_f32(-1096f, var_2.a.x);
    let var_4 = ~abs(vec3<u32>(_wgslsmith_sub_u32(48277u, 1u), ~var_1.c.b, ~u_input.e));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = func_4(vec4<bool>(select(func_1(Struct_2(vec3<f32>(-1047f, -1046f, -569f), -770i, global0[_wgslsmith_index_u32(u_input.e, 3u)]), vec4<bool>(true, true, false, true), u_input.a.x, Struct_2(vec3<f32>(837f, 1862f, -457f), -44842i, Struct_1(482f, u_input.b))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true), true, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), !(!all(vec2<bool>(true, true)) == all(vec2<bool>(true, true))), func_2());
    global3 = array<vec4<f32>, 4>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) + _wgslsmith_f_op_f32(-var_0.a)) >= _wgslsmith_f_op_f32(f32(-1f) * -910f);
    global0 = array<Struct_1, 3>();
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~u_input.c, vec4<i32>(global2.x, 11365i, reverseBits(_wgslsmith_mod_i32(u_input.c.x, global2.x)), select(u_input.c.x, countOneBits(global2.x), var_1 || var_1))), -1099f, u_input.a.yx, min(select(u_input.b, 8844u << (u_input.a.x % 32u), true) & 0u, 26632u));
}

