struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32>;

var<private> global2: vec4<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> u32 {
    var var_0 = select(vec2<u32>(29913u, min(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_2, u_input.a.x, 0u, arg_2)), 0u), u_input.a.x)), ~(~u_input.a.zz), all(select(!(!vec4<bool>(arg_3.d, false, arg_3.c.c, true)), select(select(vec4<bool>(arg_3.c.c, arg_3.d, arg_3.c.b, true), vec4<bool>(arg_3.d, true, false, arg_3.d), vec4<bool>(true, false, arg_3.d, true)), vec4<bool>(true, arg_3.d, false, arg_3.c.b), true), vec4<bool>(true, arg_3.c.b, any(vec3<bool>(false, arg_3.c.c, arg_3.d)), any(vec2<bool>(true, false))))));
    let var_1 = Struct_2(u_input.a.xxw, Struct_1(4294967295u, all(!(!vec4<bool>(false, true, arg_3.d, arg_3.c.c))), !all(vec4<bool>(false, arg_3.d, false, arg_3.d))), arg_0);
    global0 = -951f;
    let var_2 = any(vec2<bool>(arg_3.d, true));
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-311f, _wgslsmith_f_op_f32(select(-344f, arg_0, u_input.b.x >= -2147483647i))), 1f, 264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-214f * var_1.c), global1.x, -1528f, _wgslsmith_f_op_f32(sign(arg_0))), vec4<f32>(-517f, -1352f, 230f, _wgslsmith_f_op_f32(var_1.c * 229f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, arg_0, global1.x, var_1.c), vec4<f32>(-818f, global1.x, 463f, -700f)))), select(vec4<bool>(true, arg_3.d, all(vec4<bool>(true, arg_3.c.b, arg_3.c.c, true)), any(vec3<bool>(true, true, var_2))), select(!vec4<bool>(false, var_2, false, false), vec4<bool>(true, var_2, var_1.b.c, var_2), vec4<bool>(var_1.b.b, var_1.b.b, var_2, false)), select(select(vec4<bool>(var_1.b.c, true, true, false), vec4<bool>(false, true, var_2, var_2), arg_3.c.b), vec4<bool>(arg_3.d, var_2, true, var_2), !var_1.b.b)))));
    return _wgslsmith_mult_u32(arg_2, 1u);
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = ~countOneBits(firstLeadingBit(0u) >> (0u % 32u));
    let var_1 = Struct_4(36932u, abs(~(-u_input.b.x)), arg_1.c, select(arg_1.d, true, any(vec2<bool>(false, true))) & true);
    var var_2 = arg_2.x;
    var var_3 = Struct_3(firstLeadingBit(_wgslsmith_mult_i32(var_1.b, u_input.b.x)));
    let var_4 = Struct_2(u_input.a.zwy, Struct_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f)), ~global2.x, 33866u, var_1), true, global2.x <= -(-47068i >> (u_input.a.x % 32u))), 381f);
    return Struct_2(u_input.a.xxy, Struct_1(4294967295u, (false && (var_4.c == 1868f)) | (_wgslsmith_sub_i32(global2.x, 20748i) == 2147483647i), !select(select(false, arg_1.c.b, false), var_1.c.b, var_1.a >= var_4.a.x)), -633f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-492f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), arg_1.c)));
    let var_0 = ~(-(~(-2147483647i))) >> (1u % 32u);
    return ~8279u << (~arg_0.a % 32u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(arg_0.a, _wgslsmith_sub_i32(0i, arg_0.a), global2.x)), global2.x);
    let var_1 = _wgslsmith_div_vec3_u32(u_input.a.zwz, vec3<u32>(4294967295u, 1u, func_4(arg_1, func_2(~0i, Struct_4(u_input.a.x, global2.x, Struct_1(arg_1.a, arg_1.b, true), arg_1.c), _wgslsmith_f_op_vec3_f32(global1.wwx + global1.ywx)), -771f)));
    global1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global1.x * -1017f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-462f)) + _wgslsmith_f_op_f32(1036f - -1074f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))))));
    var_0 = u_input.b.yz;
    let var_2 = -691f;
    return StorageBuffer(1000f, global1.yz, _wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_mod_i32(var_0.x, -1i), max(_wgslsmith_add_i32(arg_0.a, arg_0.a >> (arg_1.a % 32u)), ~0i)), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.x;
    var var_0 = u_input.a.x;
    let var_1 = false;
    let var_2 = global1.x;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 331f, _wgslsmith_f_op_f32(-437f - global1.x), global1.x));
    let x = u_input.a;
    s_output = func_1(Struct_3(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(1i, min(u_input.b.x, u_input.b.x)))), Struct_1(u_input.a.x, !(!var_1 || false), true));
}

