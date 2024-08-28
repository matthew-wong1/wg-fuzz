struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

var<private> global1: array<i32, 28> = array<i32, 28>(2147483647i, i32(-2147483648), i32(-2147483648), 4045i, 2147483647i, 2147483647i, -1i, -25375i, 2147483647i, -23147i, -14450i, 0i, -34648i, 2147483647i, i32(-2147483648), -1i, -36007i, 28999i, 2147483647i, 3739i, -1i, 0i, 9170i, 1i, 48665i, -49229i, -17906i, -32365i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_2(Struct_1(-(~(~vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 28u)])))));
    var var_1 = var_0.a;
    global1 = array<i32, 28>();
    let var_2 = abs(abs(max(max(vec4<i32>(1042i, 1i, 0i, -2147483647i), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], -2147483647i, var_1.a.x, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 28u)], 69670i, -2147483647i, -1i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1394f + 573f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1371f))));
    return 4294967295u != _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~global0[_wgslsmith_index_u32(1u, 24u)]), ~global0[_wgslsmith_index_u32(~57534u, 24u)]), abs(u_input.b));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<i32> {
    global0 = array<vec3<u32>, 24>();
    var var_0 = Struct_2(Struct_1(~vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)], -2147483647i, u_input.a), vec4<i32>(0i, -1i, global1[_wgslsmith_index_u32(0u, 28u)], u_input.a)))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-722f - arg_1.b), _wgslsmith_f_op_f32(arg_1.b + arg_1.b), true)))))) != _wgslsmith_f_op_f32(-arg_1.b);
    var var_2 = arg_1;
    var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-32308i, firstTrailingBit(8111i)), select(var_0.a.a, var_0.a.a >> (vec2<u32>(4294967295u, 101070u) % vec2<u32>(32u)), all(vec4<bool>(true, arg_1.c.x, arg_0.x, arg_0.x))))));
    return _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a.a, vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_sub_vec2_i32(var_0.a.a, abs(var_0.a.a))), select(vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, var_0.a.a.x), vec4<i32>(72088i, global1[_wgslsmith_index_u32(var_2.a.x, 28u)], 25708i, u_input.a))), var_0.a.a, all(vec4<bool>(true, true, true, arg_0.x)) | any(vec4<bool>(arg_1.c.x, arg_1.c.x, false, arg_0.x)))), var_0.a.a);
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = arg_0;
    let var_1 = func_4(select(!select(vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, arg_0, false), false), vec3<bool>(false | (u_input.b > u_input.b), u_input.c.x != 100032u, true), select(select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false), true), vec3<bool>(true, true, true), func_3(!arg_0))), Struct_3(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(4294967295u, u_input.c.x)), max(u_input.c.x, u_input.c.x), ~4294967295u), 24u)], -1288f, vec3<bool>(true, true, true)), !vec2<bool>(arg_0, true));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, 57465u, 4294967295u)), ~(~vec4<u32>(u_input.c.x, u_input.b, 49457u, u_input.b))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 7831u, 38786u) | vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x), ~vec4<u32>(u_input.b, 0u, 11945u, 46747u)));
    var_0 = arg_0;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(325f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f)));
    return any(!select(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, arg_0), true), select(vec3<bool>(false, arg_0, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_0, false, arg_0), !vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false)), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(false, true, arg_0)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, false), arg_0), vec3<bool>(false, arg_0, arg_0))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<f32>) -> u32 {
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    let var_0 = !(!(!(!select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, false, arg_0.b), vec4<bool>(arg_0.b, arg_0.a, false, true)))));
    var var_1 = arg_0;
    return var_1.c;
}

fn func_1() -> f32 {
    let var_0 = abs(select(global1[_wgslsmith_index_u32(func_5(Struct_4(func_2(false), true, _wgslsmith_mod_u32(0u, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1936f, -275f, -1000f, -654f)), vec4<f32>(1540f, 1000f, 462f, -496f)), -478f, ~vec3<u32>(u_input.b, 19228u, u_input.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, 982f))), 28u)], _wgslsmith_dot_vec4_i32(~vec4<i32>(-810i, 1i, 29419i, -1i), -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a, -42610i, 17648i), vec4<i32>(u_input.a, 32201i, 2147483647i, u_input.a))), !(!func_3(true))));
    return -733f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1578f), -1845f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-173f + 482f) - _wgslsmith_f_op_f32(-1210f - -751f)) * -957f))));
    let var_2 = ~(-countOneBits(-vec2<i32>(-1834i, global1[_wgslsmith_index_u32(u_input.b, 28u)])));
    global1 = array<i32, 28>();
    var var_3 = vec4<bool>(var_0, var_0, var_0, var_2.x > (-(var_2.x | 69173i) & _wgslsmith_div_i32(-2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 28u)])));
    global0 = array<vec3<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(select(vec3<i32>(u_input.a, u_input.a, 10796i), ~vec3<i32>(u_input.a, 49624i, -1i), var_3.x)), var_1.x, -15408i);
}

