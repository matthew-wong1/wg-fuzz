struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(0i, 1i, -5433i, 31211i), vec4<i32>(1i, 1i, 1i, 3421i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 39545i), vec4<i32>(2147483647i, -9676i, 0i, 3394i), vec4<i32>(-29917i, -1i, -1i, 1i), vec4<i32>(1331i, 492i, 2147483647i, 0i), vec4<i32>(-1i, 0i, 87897i, -1i), vec4<i32>(-1i, 29260i, 2147483647i, 12798i), vec4<i32>(-1i, 15009i, -1i, -1i), vec4<i32>(3336i, -14605i, 1i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(15847i, 0i, -20367i, 1i), vec4<i32>(36591i, 0i, -40910i, -61459i), vec4<i32>(-20410i, 2147483647i, -1i, 1i), vec4<i32>(2147483647i, 43842i, -17129i, -78041i), vec4<i32>(i32(-2147483648), -46154i, -1501i, -1i), vec4<i32>(-13534i, -15619i, 0i, -63675i), vec4<i32>(70222i, -18500i, -13003i, 16269i), vec4<i32>(51995i, -1i, 40619i, 2147483647i), vec4<i32>(-1i, 1i, -22665i, -1i), vec4<i32>(0i, -23230i, 35919i, 53076i), vec4<i32>(1i, -1i, 3978i, 0i), vec4<i32>(-1i, -26551i, -1i, -28464i), vec4<i32>(2147483647i, i32(-2147483648), 42278i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), 41254i, -20289i), vec4<i32>(-1i, -36344i, -15251i, 1i), vec4<i32>(i32(-2147483648), -43826i, 34539i, 58327i), vec4<i32>(0i, 22020i, -21197i, -1i), vec4<i32>(2315i, 12224i, 2147483647i, 1790i), vec4<i32>(1i, 11742i, 24762i, -8098i), vec4<i32>(21295i, -31575i, 2147483647i, 89i), vec4<i32>(-21700i, -35142i, 0i, 2147483647i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    return -vec2<i32>(abs(u_input.c), reverseBits(u_input.a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(-arg_1.a.yxy);
    var var_0 = arg_1.a;
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(205f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + arg_1.a.x))), _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, arg_1.a.x)), 1391f))), var_0.wzy);
    var var_1 = select(all(arg_0.zz), arg_0.x, any(vec2<bool>(arg_0.x, false)));
    let var_2 = ~global1[_wgslsmith_index_u32(~countOneBits(select(u_input.b, ~4294967295u, arg_0.x)), 32u)];
    return u_input.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(-38446i, _wgslsmith_mod_i32(~(-_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.b, 32u)], global1[_wgslsmith_index_u32(15303u, 32u)])), ~func_3(!vec3<bool>(true, arg_1, true), Struct_1(vec4<f32>(global0.x, arg_2, arg_2, arg_2), vec4<i32>(u_input.a, arg_0.x, 1i, 0i)))));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 1957f)), _wgslsmith_f_op_f32(f32(-1f) * -366f), 433f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -117f)))), vec4<f32>(arg_2, _wgslsmith_f_op_f32(2259f - _wgslsmith_f_op_f32(-1538f - arg_2)), -774f, global0.x)), -reverseBits(abs(-vec4<i32>(1i, 1i, 0i, 0i))));
    let var_2 = vec3<bool>(false, true, !any(vec4<bool>(arg_1, false, arg_1, true)) || true);
    var var_3 = var_1.b.x;
    let var_4 = -vec3<i32>(firstTrailingBit(u_input.a), 2147483647i, -_wgslsmith_sub_i32(-1i, arg_0.x));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.a)))), global1[_wgslsmith_index_u32(u_input.b, 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(true), global0.x >= 199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1000f) - 960f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_0.a)), var_0.b);
    let var_2 = vec2<bool>(true, false);
    var_1 = func_2(abs(vec2<i32>(8457i, var_0.b.x)), !(0u > (~u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 83871u, u_input.b), vec3<u32>(20426u, 1u, 10396u)) % 32u))), 911f);
    var var_3 = 4294967295u;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-134f - var_0.a.x)))), -955f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-280f, var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -115f)))), vec2<u32>(4294967295u, ~u_input.b), -5959i);
}

