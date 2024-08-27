struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<u32>, 12>;

var<private> global1: u32 = 18761u;

var<private> global2: f32;

var<private> global3: array<Struct_1, 32>;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(635f, -441f, 1287f), vec2<bool>(false, true), vec3<f32>(1104f, 804f, -325f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<i32> {
    global1 = 1u;
    var var_0 = ~1u;
    let var_1 = global4.b;
    let var_2 = any(vec2<bool>(global4.b.x, (-2287f != _wgslsmith_f_op_f32(ceil(global4.a.x))) || true));
    var var_3 = vec4<f32>(-1103f, _wgslsmith_f_op_f32(-1097f + global4.c.x), 419f, 1000f);
    return _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, firstTrailingBit(abs(0i)), u_input.a)), ~vec3<i32>(u_input.a, u_input.a, -(u_input.a | -29754i)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_dot_vec3_i32(min(func_3(), ~reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(-2147483647i, u_input.a, -10553i))), vec3<i32>(16241i, -abs(u_input.a), u_input.a));
    let var_2 = _wgslsmith_sub_i32(u_input.a, -2147483647i) >> (_wgslsmith_sub_u32(1u, 0u) % 32u);
    var_0 = func_3().x;
    var var_3 = global3[_wgslsmith_index_u32(4294967295u, 32u)];
    return global3[_wgslsmith_index_u32(firstTrailingBit(~3459u), 32u)];
}

fn func_1() -> f32 {
    var var_0 = !global4.b;
    global0 = array<vec3<u32>, 12>();
    let var_1 = !(!(!select(vec3<bool>(false, false, false), vec3<bool>(global4.b.x, true, var_0.x), all(vec2<bool>(var_0.x, true)))));
    let var_2 = func_2(true, !(!global4.b));
    return _wgslsmith_f_op_f32(floor(-556f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 56000u;
    let var_1 = 875f;
    var var_2 = _wgslsmith_sub_u32(1435u, var_0);
    global3 = array<Struct_1, 32>();
    var var_3 = global4.b.x | global4.b.x;
    global1 = var_0;
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + var_1)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, global4.c.x) - _wgslsmith_div_f32(-1325f, global4.c.x));
    var var_6 = select(vec4<bool>(true, global4.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_5, 1647f), 887f, true)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), (-26315i >= -u_input.a) && true), !vec4<bool>(!global4.b.x, false, global4.b.x, ~(-20161i) <= (u_input.a >> (1u % 32u))), vec4<bool>(global4.b.x, func_2(true, !global4.b).b.x, select(any(!vec2<bool>(global4.b.x, false)), true, all(vec4<bool>(false, true, global4.b.x, global4.b.x))), all(vec4<bool>(global4.b.x, false, global4.b.x, -2147483647i >= u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, ~var_0)), vec2<u32>(var_0, _wgslsmith_dot_vec4_u32(select(vec4<u32>(34082u, var_0, var_0, 0u), vec4<u32>(var_0, var_0, var_0, var_0), false), ~vec4<u32>(48420u, 5099u, var_0, 11248u)))));
}

