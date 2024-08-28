struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 8851u, 58954u, 58264u, 1u, 45596u, 0u, 16619u, 1u, 1u, 4101u, 4294967295u, 4294967295u, 35225u, 4294967295u, 42816u, 4294967295u, 68096u, 63258u, 66355u, 1u, 1u, 7971u, 55968u, 4294967295u, 58171u, 1u, 1u, 4294967295u, 43450u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, -730f, 1000f, -1517f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(339f, -346f, -538f, 1936f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, -660f, 868f, 1220f)), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, 1334f, 1091f, 890f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(516f, -621f, -675f, 356f), vec4<f32>(747f, 351f, 1000f, 449f))), vec4<f32>(-2384f, -886f, -748f, 280f))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    global0 = array<u32, 30>();
    var var_0 = global0[_wgslsmith_index_u32(arg_1.a.x, 30u)];
    let var_1 = -594f;
    global0 = array<u32, 30>();
    var var_2 = Struct_3(26967i, u_input.a.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f + _wgslsmith_f_op_f32(abs(-2161f)))));
    return -45945i;
}

fn func_2(arg_0: u32, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.d, _wgslsmith_div_f32(arg_1.a.c, -1000f), 516f, _wgslsmith_f_op_f32(trunc(1418f)))))));
    global0 = array<u32, 30>();
    return vec2<bool>(!(~0i <= (~u_input.c & (19829i >> (arg_1.b.c % 32u)))), min(-1i, func_3(_wgslsmith_f_op_vec3_f32(-var_0.wxw), Struct_2(vec2<u32>(1u, 25286u), Struct_1(1u, vec4<u32>(27363u, 0u, arg_1.b.c, 1u)), Struct_1(arg_0, vec4<u32>(arg_1.b.c, arg_0, arg_0, 4294967295u)), arg_1.b.b), vec4<f32>(-409f, arg_1.b.a.x, -2902f, -448f))) < arg_1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(70440i, u_input.c), u_input.a.yx, vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mult_i32(-14088i, -16936i), 1i));
    var var_1 = !func_2(~(~firstLeadingBit(global0[_wgslsmith_index_u32(1u, 30u)])), Struct_5(Struct_3(var_0.x, vec2<i32>(u_input.c, 18982i), -573f), Struct_4(_wgslsmith_f_op_vec4_f32(func_1()), true, 62804u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 30u)], 30u)] % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<bool>(true, false, true)));
    var var_2 = Struct_3(countOneBits(_wgslsmith_add_i32(-2147483647i, u_input.a.x)), -(~(~vec2<i32>(-2147483647i, -28047i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1257f))))), -1000f));
    var var_3 = -587f;
    let var_4 = vec4<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 30u)], ~firstTrailingBit(~u_input.b), u_input.b, 1u);
    var_3 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(299f - 1500f), _wgslsmith_f_op_f32(-353f * 1066f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec2_i32(~u_input.a.xz, vec2<i32>(var_0.x, var_0.x))) << (~vec2<u32>(countOneBits(u_input.b), var_4.x) % vec2<u32>(32u)), -1338f);
}

