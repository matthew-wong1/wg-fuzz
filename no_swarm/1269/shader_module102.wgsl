struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<Struct_4, 14>;

var<private> global3: bool;

var<private> global4: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> i32 {
    global1 = array<Struct_3, 11>();
    var var_0 = Struct_4(!arg_0.a, Struct_1(arg_0.b.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.b * arg_0.b.b), vec3<f32>(arg_0.b.b.x, -920f, arg_0.b.b.x)))));
    let var_1 = var_0.b.b.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.x * arg_0.b.b.x))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a));
    var var_3 = Struct_4(vec2<bool>(var_0.a.x, any(var_0.a)), Struct_1(_wgslsmith_f_op_f32(trunc(2063f)), _wgslsmith_f_op_vec3_f32(var_0.b.b * vec3<f32>(688f, var_0.b.b.x, 1829f))));
    return reverseBits(select(-15251i, -1i, true)) & countOneBits(-_wgslsmith_clamp_i32(-19190i, ~1i, _wgslsmith_clamp_i32(2147483647i, -32029i, 1333i)));
}

fn func_2(arg_0: i32) -> bool {
    global3 = true;
    global3 = true;
    let var_0 = global1[_wgslsmith_index_u32(~12889u, 11u)];
    let var_1 = countOneBits(~vec4<i32>(0i, abs(-2147483647i), func_3(Struct_4(vec2<bool>(global0.x, var_0.a.a), Struct_1(-1186f, vec3<f32>(-1081f, var_0.c, -1643f)))), var_0.a.b));
    var var_2 = _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(227f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(var_0.c * var_0.c)))))));
    return var_0.a.a;
}

fn func_1() -> vec2<bool> {
    var var_0 = i32(-1i) * -4159i;
    var var_1 = Struct_4(select(!(!select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), true)), vec2<bool>(!(!global0.x), global0.x), vec2<bool>(func_2(i32(-1i) * -2147483647i), false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, 492f, 1726f) * vec3<f32>(255f, -439f, -2229f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-698f, -568f, -1023f), vec3<f32>(-933f, -763f, -950f))), vec3<f32>(370f, 1000f, -320f))))));
    var_0 = 26215i;
    return select(vec2<bool>(all(var_1.a), false), var_1.a, any(vec2<bool>(false, true)) & true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 14>();
    global0 = func_1();
    let var_0 = ~vec4<u32>(abs(select(u_input.a.x, 57312u, true)), 1u, max(_wgslsmith_mod_u32(1u, ~u_input.b), u_input.a.x), 1u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1818f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, 1195f, 1534f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-807f, -381f, -828f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-516f, -1136f, 234f) + vec3<f32>(-1144f, 1514f, -1249f))))));
    let var_2 = vec4<bool>(true, !select(global0.x, any(vec4<bool>(global0.x, global0.x, true, false)), global0.x), true, !(!global0.x));
    global3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, ~select(var_0.x, reverseBits(select(0u, 125341u, var_2.x)), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-42179i, -2147483647i, 1i, 0i), vec4<i32>(-11908i, -16827i, 1i, -4017i)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(747f, var_1.a) + var_1.b.zz)))))), var_1.a, _wgslsmith_mult_i32(countOneBits(37828i), min(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, 3956i), -25447i >> (u_input.a.x % 32u), firstLeadingBit(1i)), 1i)));
}

