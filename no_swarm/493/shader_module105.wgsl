struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: array<i32, 32>;

var<private> global1: Struct_5 = Struct_5(Struct_1(16019i), Struct_3(vec3<f32>(-317f, 1317f, 1036f), vec4<u32>(1u, 43242u, 30827u, 0u), vec2<i32>(2147483647i, 42463i)), 0i, Struct_4(vec2<u32>(41346u, 18676u)), Struct_1(43692i));

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: Struct_5 = Struct_5(Struct_1(18628i), Struct_3(vec3<f32>(1774f, -751f, -1243f), vec4<u32>(14159u, 0u, 56715u, 0u), vec2<i32>(-1i, i32(-2147483648))), -1i, Struct_4(vec2<u32>(6781u, 0u)), Struct_1(27436i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> vec4<f32> {
    var var_0 = arg_1;
    let var_1 = global1.b;
    var var_2 = _wgslsmith_mult_i32(var_1.c.x, var_1.c.x);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.a.x, 2014f) - _wgslsmith_f_op_f32(-global3.b.a.x)), _wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(var_0.a.x - -251f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), -501f), global1.b.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(203f, global3.b.a.x, 1031f, -417f), vec4<f32>(global1.b.a.x, var_1.a.x, global3.b.a.x, 1000f))))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = vec2<bool>(all(vec2<bool>(!arg_0.x && true, any(!vec3<bool>(false, arg_0.x, false)))), true);
    let var_1 = arg_0.x;
    global0 = array<i32, 32>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, global3.b.a.x), -778f));
    var_2 = global1.b.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b.a.x, 1931f, 223f, -401f)))) + _wgslsmith_f_op_vec4_f32(func_2(var_0.x, global1.b, u_input.e, !arg_0.x)))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> Struct_5 {
    let var_0 = max(_wgslsmith_mod_i32(global1.e.a, 0i ^ firstTrailingBit(_wgslsmith_mod_i32(1i, u_input.c))), global0[_wgslsmith_index_u32(global3.b.b.x, 32u)]);
    var var_1 = -_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(0u, 32u)], global1.c, global1.c)), vec3<i32>(_wgslsmith_mod_i32(~(-1i), abs(global0[_wgslsmith_index_u32(global3.d.a.x, 32u)])), firstTrailingBit(var_0), 1i));
    var_1 = firstLeadingBit(vec3<i32>(-34788i, global1.b.c.x, _wgslsmith_mult_i32(-40342i, -1i)));
    let var_2 = !(!select(vec2<bool>(28018u != u_input.d.x, true), vec2<bool>(false, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), true)));
    let var_3 = Struct_2(min(_wgslsmith_sub_vec3_u32(~vec3<u32>(23307u, 70225u, 0u), u_input.d), u_input.d), global3.e);
    return Struct_5(global3.a, global1.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(0i << (global3.d.a.x % 32u), ~(~2147483647i)), ~_wgslsmith_add_i32(-314i, ~(-2147483647i))), global1.d, global3.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.b.x;
    let var_1 = ~firstTrailingBit(~u_input.d);
    let var_2 = 55267u;
    global2 = array<vec2<f32>, 2>();
    global3 = func_3(global3.b.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(true, true)))));
    let var_3 = _wgslsmith_f_op_f32(990f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 252f) + _wgslsmith_f_op_f32(max(global1.b.a.x, global3.b.a.x))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * -442f)) - _wgslsmith_f_op_f32(f32(-1f) * -2300f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global1.e.a));
}

