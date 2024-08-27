struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, false, false));

var<private> global1: u32;

var<private> global2: f32 = 2046f;

var<private> global3: array<i32, 24>;

var<private> global4: array<f32, 2> = array<f32, 2>(-1394f, 1000f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(u_input.b.x >> (~(~36463u) % 32u)), 2u)]);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(44384u, 2u)]), _wgslsmith_f_op_f32(func_3()), !(((global3[_wgslsmith_index_u32(0u, 24u)] & u_input.a.x) >> (~51577u % 32u)) >= u_input.e)));
    global2 = global4[_wgslsmith_index_u32(~(~countOneBits(min(firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)))), 2u)];
    let var_1 = max(vec4<u32>(0u, u_input.b.x, u_input.b.x, ~(~0u)) ^ ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1039u, 1u))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 75997u, u_input.b.x), vec3<u32>(22279u, u_input.b.x, 1u)), _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.b.x | 38964u, ~25830u)), u_input.b.x, u_input.b.x));
    let var_2 = firstTrailingBit(~(~(abs(vec3<i32>(-1i, u_input.e, u_input.e)) | -vec3<i32>(u_input.d.x, global3[_wgslsmith_index_u32(13133u, 24u)], u_input.d.x))));
    var var_3 = -var_2;
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c | (u_input.e | u_input.e), 0i, global3[_wgslsmith_index_u32(countOneBits(4294967295u), 24u)]), vec4<i32>(-19471i, i32(-1i) * -1i, _wgslsmith_div_i32(-2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 24u)]), _wgslsmith_sub_i32(var_2.x, global3[_wgslsmith_index_u32(u_input.b.x, 24u)])) | (~vec4<i32>(2147483647i, 0i, global3[_wgslsmith_index_u32(34398u, 24u)], u_input.d.x) ^ -vec4<i32>(-1i, var_3.x, var_2.x, global3[_wgslsmith_index_u32(3763u, 24u)])), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 0i ^ u_input.c, var_3.x, _wgslsmith_div_i32(1i, u_input.d.x)), abs(reverseBits(vec4<i32>(-2147483647i, -47372i, var_3.x, var_3.x))))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global1 = 75256u;
    var var_0 = func_2();
    global4 = array<f32, 2>();
    var_0 = arg_3;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b.x, 2u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(58923u, 2u)])))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(abs(1u), 2u)] - global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 0u), 2u)]))), global4[_wgslsmith_index_u32(59171u, 2u)]);
    return func_2();
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4((all(vec2<bool>(false, true)) || true) || true, 4914i, reverseBits(global3[_wgslsmith_index_u32(max(~u_input.b.x, u_input.b.x << (24123u % 32u)), 24u)] | u_input.a.x), func_2());
    let var_1 = !(!(min(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 0u)) >= firstLeadingBit(u_input.b.x & u_input.b.x)));
    var var_2 = !select(vec2<bool>(all(!vec2<bool>(var_1, false)), ~0u == u_input.b.x), vec2<bool>(true, true), !var_1);
    var var_3 = ~(~var_0.a.x);
    let var_4 = select(vec2<bool>(false, true), vec2<bool>(any(!(!vec3<bool>(var_1, var_1, var_1))), true), vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1641f))) <= _wgslsmith_f_op_f32(func_3()), any(select(!vec3<bool>(false, false, var_2.x), select(vec3<bool>(var_1, false, false), vec3<bool>(false, false, var_1), var_1), select(vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, false), var_1)))));
    return StorageBuffer(u_input.c << (~reverseBits(u_input.b.x) % 32u), global3[_wgslsmith_index_u32(countOneBits(14836u), 24u)], _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1441f, 317f), vec2<f32>(-1007f, -276f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4[_wgslsmith_index_u32(0u, 2u)], 132f)))))))), abs(0i ^ min(0i, -global3[_wgslsmith_index_u32(59346u, 24u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

