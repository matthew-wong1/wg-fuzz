struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(31755i, 27503i);

var<private> global1: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-909f, -1000f, -259f), false);

var<private> global3: Struct_1 = Struct_1(vec3<f32>(775f, 1000f, -1091f), false);

var<private> global4: array<u32, 22>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = !(!(arg_3.b == true));
    global3 = arg_3;
    let var_1 = arg_3.a;
    let var_2 = Struct_1(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1188f, arg_1.a.x)) - _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1881f, arg_2, arg_1.b))), _wgslsmith_f_op_f32(-789f + global3.a.x)));
    let var_3 = vec4<bool>(true & (((1u & u_input.d.x) | global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(1u, 22u)], 22u)]) == u_input.a.x), any(select(!select(vec4<bool>(arg_1.b, true, false, arg_1.b), vec4<bool>(false, global2.b, false, var_0), true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, global3.b, var_2.b, arg_0.x), vec4<bool>(false, global3.b, arg_1.b, true), vec4<bool>(var_2.b, arg_3.b, false, false)), vec4<bool>(true, arg_0.x, true, false)), !var_0)), abs(global0.x) >= _wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(-1i, global0.x, global0.x)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 12931i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b))), arg_0.x);
    return _wgslsmith_f_op_f32(-global3.a.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = 1027f;
    let var_1 = 1i;
    global3 = arg_1;
    global1 = array<vec3<bool>, 4>();
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-145f, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, global2.b, false), arg_1, -763f, var_2)), global4[_wgslsmith_index_u32(4294967295u, 22u)] != u_input.d.x)), global3.a.x, !any(vec4<bool>(false, false, arg_1.b, false)))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<vec3<bool>, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1652f) * _wgslsmith_f_op_f32(func_2(arg_3.zwz, Struct_1(global3.a, true), 8229i))), 729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -775f))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a), _wgslsmith_f_op_vec3_f32(-global3.a)), _wgslsmith_f_op_vec3_f32(global3.a - vec3<f32>(global3.a.x, 1731f, -188f)))), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-250f)) + _wgslsmith_f_op_f32(floor(arg_0)));
    let var_2 = firstLeadingBit(vec2<i32>(u_input.b.x, global0.x >> (~4294967295u % 32u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(110f, global3.a.xz, global3.a.x, ~_wgslsmith_div_vec4_u32(u_input.a, abs(firstLeadingBit(vec4<u32>(u_input.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)], global4[_wgslsmith_index_u32(u_input.e.x, 22u)], 23136u)))));
    global4 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(56647u)), ~global0.x, _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(2147483647i, 41030i, u_input.b.x)), vec3<i32>(u_input.b.x, global0.x, -1i))), vec3<i32>(2147483647i, max(-global0.x, _wgslsmith_mult_i32(-2147483647i, global0.x)), i32(-1i) * -u_input.b.x)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-6946i, -2147483647i, -3405i) ^ vec3<i32>(global0.x, 0i, u_input.b.x), ~vec3<i32>(global0.x, global0.x, u_input.b.x)), firstTrailingBit(vec3<i32>(-23207i, 1i, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u, 4u)], var_0, var_0.a.x, var_0)) + var_0.a.x), -966f, var_0.b)), 1f, -1000f, -1714f));
}

