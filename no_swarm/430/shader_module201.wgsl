struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<u32>, 20>;

var<private> global2: array<Struct_3, 12>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    global1 = array<vec4<u32>, 20>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-311f, -891f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1668f, var_0)) + vec3<f32>(var_0, var_0, -1000f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 1281f, var_0)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-377f, var_0, -119f))), vec3<f32>(1000f, var_0, 2641f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2665f, var_0, -3058f) - vec3<f32>(-476f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 128f, -422f)))), true)), true)));
    var var_2 = Struct_2(Struct_1(2147483647i), !select(vec2<bool>(u_input.a == u_input.a, false), vec2<bool>(false, var_0 == 1608f), true), u_input.c, vec2<bool>(true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), true))), Struct_1(~(-(u_input.b << (u_input.a % 32u)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1882f));
    return _wgslsmith_f_op_vec2_f32(var_1.zy - _wgslsmith_f_op_vec2_f32(-var_1.xy));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec4<u32>(47648u, reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 49592u, 15211u) << (_wgslsmith_add_u32(0u, arg_1.x) % 32u), arg_1.x)), arg_1.x, ~35721u);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3())));
    let var_2 = abs(vec2<u32>(1u, ~_wgslsmith_mult_u32(countOneBits(77985u), 56746u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.xwx) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.b, arg_0.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, arg_0.b, arg_0.c.x), arg_0.c.zwx))))));
    var var_4 = Struct_3(var_3, _wgslsmith_f_op_f32(step(-1138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(sign(var_3.x))) * var_1.x))), arg_0.c);
    return ~select(62275u, arg_1.x, any(vec3<bool>(true, all(vec3<bool>(true, false, false)), true)));
}

fn func_1() -> vec2<f32> {
    var var_0 = ~u_input.d.x;
    global2 = array<Struct_3, 12>();
    var_0 = ~_wgslsmith_dot_vec3_u32(u_input.d, abs(vec3<u32>(func_2(Struct_3(vec3<f32>(303f, 456f, -873f), 787f, vec4<f32>(-117f, 792f, 671f, 699f)), vec4<u32>(0u, u_input.d.x, 0u, 4294967295u)), u_input.d.x, u_input.d.x ^ 0u)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + -1529f), _wgslsmith_f_op_f32(125f + 1346f)))))))));
    global0 = ~31550u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 817f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 20>();
    global2 = array<Struct_3, 12>();
    global0 = ~4294967295u;
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(~1u, u_input.a), _wgslsmith_div_u32(9560u, u_input.d.x), u_input.d.x);
    var_0 = countOneBits(abs(_wgslsmith_clamp_vec3_u32(u_input.d << (u_input.d % vec3<u32>(32u)), u_input.d | u_input.d, u_input.d)) | _wgslsmith_sub_vec3_u32(vec3<u32>(max(u_input.a, 68568u), u_input.d.x, 0u), vec3<u32>(1u, 0u, min(50531u, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    global1 = array<vec4<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 44726i, u_input.c), vec3<i32>(u_input.c, -2147483647i, 2147483647i)))));
}

