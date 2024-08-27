struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(2147483647i, -39449i, 16425i, 2147483647i));

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_3 {
    let var_0 = firstTrailingBit((~(vec2<u32>(18389u, 1u) & vec2<u32>(global1.x, 1u)) ^ vec2<u32>(1u, 1u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.b, 1u), abs(~vec2<u32>(global1.x, 10681u))));
    global1 = vec2<u32>(78130u, global1.x);
    global0 = array<vec4<i32>, 1>();
    global0 = array<vec4<i32>, 1>();
    global1 = var_0;
    return Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2273f, -437f, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-2007f)))))))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(abs(-1000f)));
    let var_1 = vec2<u32>(40491u >> (u_input.b % 32u), 0u);
    global1 = _wgslsmith_mult_vec2_u32(~countOneBits(var_1), _wgslsmith_mult_vec2_u32(var_1, ~vec2<u32>(u_input.b, global1.x)));
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~39181u, countOneBits(62910u)), var_1), ~global1.x), var_1);
    var var_3 = Struct_4(u_input.a.x);
    return global1.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    global0 = array<vec4<i32>, 1>();
    global0 = array<vec4<i32>, 1>();
    var var_0 = func_2();
    global0 = array<vec4<i32>, 1>();
    global0 = array<vec4<i32>, 1>();
    return func_2();
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = arg_0;
    global0 = array<vec4<i32>, 1>();
    var var_1 = func_2();
    var_1 = func_2();
    var_1 = func_4(Struct_2(Struct_1(arg_2.a, ~func_3(176f)), vec3<bool>(false, arg_1, any(arg_2.a))), select(!select(!arg_2.a, !arg_2.a, var_0), !select(vec3<bool>(arg_0, false, arg_2.a.x), arg_2.a, arg_2.a.x), any(!arg_2.a.yy)), !(!select(vec4<bool>(true, false, arg_2.a.x, arg_0), select(vec4<bool>(var_0, arg_0, arg_1, false), vec4<bool>(arg_2.a.x, arg_0, true, true), arg_0), !vec4<bool>(arg_0, false, arg_0, false))), _wgslsmith_dot_vec4_i32(u_input.a, global0[_wgslsmith_index_u32(~4294967295u, 1u)]));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1746f, 199f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-447f, 1016f) * vec2<f32>(var_1.a, var_1.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, _wgslsmith_f_op_f32(1102f + 410f), var_1.a)) * vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1143f)) - _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, ~(-u_input.a.x), ~_wgslsmith_mult_i32(u_input.a.x, -7785i)), vec3<i32>(min(17795i, ~(-18721i)), u_input.a.x, firstTrailingBit(select(u_input.a.x, -30442i, true)))), ~u_input.a.yzx, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-12032i >> (~abs(global1.x >> (global1.x % 32u)) % 32u));
    let x = u_input.a;
    s_output = func_1(true && (~(~4294967295u) <= _wgslsmith_mult_u32(abs(u_input.b), _wgslsmith_sub_u32(58748u, u_input.b))), true, Struct_1(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, true), firstTrailingBit(global1.x << (u_input.b % 32u)) & (~global1.x & 4294967295u)));
}

