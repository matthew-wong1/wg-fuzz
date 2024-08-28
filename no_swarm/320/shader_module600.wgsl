struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 28845u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = ~(~arg_0.b.x);
    global0 = array<vec4<f32>, 10>();
    let var_1 = countOneBits(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(1u, global1.x), firstTrailingBit(_wgslsmith_div_u32(u_input.e, global1.x)))));
    global1 = vec2<u32>(~(~global1.x), var_1.x);
    let var_2 = arg_0.c;
    return !any(var_2);
}

fn func_2() -> f32 {
    let var_0 = -1633f;
    global0 = array<vec4<f32>, 10>();
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-var_0)), _wgslsmith_add_i32(7945i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a, 1i, u_input.b.x), vec4<i32>(0i, 0i, u_input.b.x, -2147483647i), vec4<i32>(2147483647i, u_input.b.x, 1i, u_input.a)), ~vec4<i32>(u_input.b.x, u_input.a, u_input.a, -1i)), ~vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.a) & -vec4<i32>(2206i, -35124i, 0i, -2147483647i))), vec2<bool>(select(func_3(Struct_3(var_0, vec4<i32>(-43471i, u_input.b.x, 2147483647i, u_input.a), vec4<bool>(false, true, true, false))), true, any(vec3<bool>(false, false, false))), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(max(501f, var_0)), Struct_3(226f, ~vec4<i32>(-u_input.b.x, u_input.b.x, 43437i, 2147483647i), select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), -46444i < u_input.a), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_f_op_f32(f32(-1f) * -354f)))), 134f);
    let var_3 = var_1.a;
    return 666f;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - arg_0.x));
    var var_1 = !any(vec3<bool>(true, true, true));
    var_1 = any(!select(vec3<bool>(all(vec4<bool>(false, false, false, false)), func_3(Struct_3(1628f, vec4<i32>(u_input.a, u_input.a, 2147483647i, 48400i), vec4<bool>(false, true, true, true))), true), vec3<bool>(true, true, true), true));
    var_1 = false;
    let var_2 = Struct_1(342f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.a, var_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(u_input.e, 33474u) ^ ~_wgslsmith_add_vec2_u32(vec2<u32>(select(u_input.d, global1.x, false), global1.x), ~(~vec2<u32>(1u, 4294967295u)));
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(min(15352u, global1.x), 10u)]) * global0[_wgslsmith_index_u32(~(~4134u), 10u)])));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + -395f) * _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(var_0.a - 576f));
    global1 = firstTrailingBit(vec2<u32>(abs(47439u), ~(~reverseBits(u_input.d))));
    var var_2 = !(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(0u, global1.x, u_input.d)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.e, 31274u) >> (vec3<u32>(global1.x, global1.x, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, global1.x, 1u), vec3<u32>(u_input.e, u_input.c, u_input.c))) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global1.x, 44206u, u_input.e)), ~vec3<u32>(1326u, u_input.d, 0u))));
}

