struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(16465u, 13709u, 35632u);

var<private> global1: vec2<f32>;

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: array<vec4<f32>, 3>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global4 = array<vec4<f32>, 3>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(911f - global2.a.x)) + _wgslsmith_f_op_f32(global1.x * global2.a.x)))) + global1.x);
    var var_1 = Struct_1(arg_0.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-413i, 12393i, max(1i, global2.b)) | 1i, 1i));
    global1 = _wgslsmith_div_vec2_f32(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, _wgslsmith_f_op_f32(max(var_0, -861f))))));
    let var_2 = Struct_1(global2.a, (0i & ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, global2.b, arg_0.b, var_1.b), vec4<i32>(0i, var_1.b, 0i, 2147483647i))) ^ arg_0.b);
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    var var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = true;
    global3 = ~_wgslsmith_sub_i32(_wgslsmith_div_i32(~2916i >> (global0.x % 32u), 22286i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, 63703i, global2.b), vec3<i32>(arg_0.b, 0i, global2.b))));
    var var_2 = func_2(Struct_1(global2.a, arg_0.b));
    var_0 = true;
    return _wgslsmith_add_i32(-(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(80121i, -1i, 12090i, arg_0.b), vec4<i32>(arg_0.b, 1i, global2.b, arg_0.b)), _wgslsmith_add_i32(global2.b, arg_0.b)) ^ reverseBits(abs(-17781i))), -(~(~27088i)));
}

fn func_1() -> vec3<u32> {
    global2 = Struct_1(global2.a, _wgslsmith_add_i32(14034i, -1i));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 588f)))) + vec2<f32>(global1.x, global2.a.x)), func_3(func_2(Struct_1(global2.a, abs(global2.b))), global2.a));
    var var_1 = vec3<u32>(u_input.a.x, 4294967295u, 3899u);
    let var_2 = Struct_1(global2.a, global2.b);
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~global0.x, ~(var_1.x >> (77600u % 32u)), u_input.a.x), ~_wgslsmith_mult_vec3_u32(abs(u_input.a.yzz), ~u_input.a.wxy)) << (u_input.a.x % 32u);
    return vec3<u32>(abs(~(~74088u | _wgslsmith_clamp_u32(global0.x, 0u, 0u))), u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.zy, reverseBits(var_1.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = abs(vec2<u32>(global0.x, _wgslsmith_sub_u32(4294967295u, ~(u_input.a.x | global0.x))));
    var var_1 = _wgslsmith_f_op_f32(sign(-433f));
    var var_2 = 1u;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -692f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f * 1077f)), false)), _wgslsmith_div_f32(global2.a.x, 1f)));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(global2.a));
    global2 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -473f), global2.a, vec2<bool>(false, true))), _wgslsmith_sub_i32(global2.b, global2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~var_0.x, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(global1.x)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))))), _wgslsmith_sub_vec3_i32(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global2.b, 4444i), vec3<i32>(31110i, -5471i, 0i))), vec3<i32>(global2.b, _wgslsmith_div_i32(~global2.b, 1i), global2.b)));
}

