struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec4<f32>, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    global1 = -select(-27457i, arg_1, true);
    global1 = u_input.d.x | max(arg_1, _wgslsmith_mult_i32(1i, 54746i));
    let var_0 = _wgslsmith_mod_vec3_i32(u_input.a.wyw, reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, arg_1), u_input.a.wxy) | vec3<i32>(arg_1, 0i, arg_1)));
    global2 = array<vec4<f32>, 18>();
    global0 = array<Struct_2, 29>();
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(sign(-1088f)), all(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(floor(-1725f)), 1424f)))));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = vec2<u32>(101013u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 40651u, u_input.e.x), max(select(vec4<u32>(u_input.e.x, 0u, u_input.c.x, 0u), u_input.e, vec4<bool>(arg_0.x, true, arg_0.x, false)), u_input.e)));
    let var_1 = true | any(vec3<bool>(true, true & any(arg_0.yx), _wgslsmith_f_op_f32(step(-932f, 600f)) == -2512f));
    var var_2 = _wgslsmith_f_op_f32(floor(-706f));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1241f, -1235f) * _wgslsmith_f_op_f32(select(-683f, -295f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1379f)), -272f, select(true, false, true))))));
    let var_4 = false;
    return arg_0;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~4294967295u), ~u_input.c.x), 29u)];
    global1 = -1i;
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(u_input.e.wwx, _wgslsmith_div_i32(-22227i, 14686i) << (~u_input.e.x % 32u), var_0.b)), vec3<f32>(var_0.b.a, 517f, 2275f), vec3<bool>(true == any(vec3<bool>(arg_0.x, true, true)), !arg_0.x, all(func_3(vec3<bool>(true, true, false)))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, var_0.b.a, var_0.b.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-227f, var_0.b.a, 2008f)))))))));
    let var_3 = global0[_wgslsmith_index_u32(u_input.c.x, 29u)];
    return var_0.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_div_f32(116f, _wgslsmith_f_op_f32(-arg_2.a));
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, 0i, -70206i), abs(vec4<i32>(-u_input.b & firstLeadingBit(-1i), 1i, -61076i, u_input.a.x)));
    global1 = _wgslsmith_sub_i32(~(-u_input.b), abs(~10152i));
    return Struct_2(abs(~u_input.e.zz), Struct_1(803f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    var var_1 = 42649u;
    var var_2 = func_4(~vec3<u32>(_wgslsmith_add_u32(u_input.e.x << (1u % 32u), 19147u), abs(_wgslsmith_add_u32(1u, u_input.e.x)), u_input.c.x), select(vec3<bool>(select(true, false, false) == true, true, true), select(vec3<bool>(true, all(vec3<bool>(true, true, false)), all(vec2<bool>(false, true))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), 8350u == _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, 53523u), ~u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.e.zww, vec3<u32>(u_input.c.x, 4294967295u, 0u)))), func_1(vec3<bool>(all(vec2<bool>(true, false)), max(1684u, u_input.e.x) > (4294967295u >> (u_input.e.x % 32u)), true)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))));
    let var_3 = true & (!(any(vec2<bool>(false, true)) == any(vec2<bool>(false, true))) || any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), func_3(vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    var_1 = u_input.c.x;
    global1 = u_input.a.x;
    global0 = array<Struct_2, 29>();
    global1 = -1i;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3089f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, var_2.b.a)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.a * -202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a + var_2.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x | 0u);
}

