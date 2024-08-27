struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<Struct_3, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> i32 {
    global1 = array<Struct_3, 26>();
    global0 = array<Struct_2, 21>();
    let var_0 = true;
    global0 = array<Struct_2, 21>();
    let var_1 = select(!vec4<bool>(!(0u == arg_1.a), -25483i >= select(u_input.b.x, -2147483647i, true), var_0, any(select(arg_0, arg_0, vec4<bool>(true, true, false, arg_0.x)))), vec4<bool>(all(vec3<bool>(true, all(arg_0.xxx), true)), any(!arg_0.yyy), arg_0.x, var_0), !(!arg_0));
    return -12185i;
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), -1212f, 611f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(605f, 416f))), true | (true && any(vec4<bool>(false, true, false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec4<i32>(_wgslsmith_div_i32(11774i, 43772i), -u_input.b.x, 32902i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)) << (vec4<u32>(u_input.a, firstTrailingBit(81622u), 1u, ~u_input.a) % vec4<u32>(32u)), abs(max(vec2<u32>(u_input.a, u_input.a), countOneBits(vec2<u32>(u_input.a, 4294967295u))))), all(vec4<bool>(true, true, !any(vec2<bool>(true, false)), true)), _wgslsmith_div_vec2_i32(u_input.b.xy, abs(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), max(u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))) + vec3<f32>(_wgslsmith_f_op_f32(select(-597f, -452f, true)), _wgslsmith_f_op_f32(floor(-171f)), 101f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(304f, 569f, 169f), vec3<f32>(188f, -1872f, 1077f), true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(793f, 928f, -138f))) * vec3<f32>(847f, 1000f, -1259f))))));
    let var_1 = abs(~_wgslsmith_mod_u32(var_0.a.e.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), var_0.a.e), 1u)));
    let var_2 = Struct_3(~select(u_input.a, _wgslsmith_dot_vec2_u32(var_0.a.e, vec2<u32>(var_0.a.e.x, 49023u)), false));
    global0 = array<Struct_2, 21>();
    let var_3 = ~(20058u << (u_input.a % 32u));
    return ~var_0.a.e;
}

fn func_2() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) - -839f);
    var var_1 = func_3();
    global0 = array<Struct_2, 21>();
    var var_2 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(true, true), !any(vec2<bool>(true, false))), true);
    global0 = array<Struct_2, 21>();
    return StorageBuffer(504f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(10937i, u_input.b.x ^ _wgslsmith_mod_i32(func_1(vec4<bool>(true, false, true, true), Struct_3(60077u)), u_input.b.x >> (max(u_input.a, u_input.a) % 32u)), ~abs(u_input.b.x));
    global0 = array<Struct_2, 21>();
    var_0 = ~vec3<i32>(select(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(36038i, var_0.x)), true), 2147483647i, _wgslsmith_add_i32(abs(var_0.x ^ 2147483647i), var_0.x));
    let x = u_input.a;
    s_output = func_2();
}

