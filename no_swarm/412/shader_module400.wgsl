struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<Struct_3, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = 59359u;
    global2 = array<Struct_3, 14>();
    let var_1 = u_input.c >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 11206u, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, 7801u, 0u, u_input.a.x)), u_input.a), u_input.b, min(4294967295u, firstTrailingBit(28219u))) % 32u);
    global2 = array<Struct_3, 14>();
    var_0 = 0u;
    return var_1;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = 1i;
    var_0 = 0i;
    let var_1 = ~(-vec4<i32>(2147483647i, arg_1.c, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, arg_1.c, arg_1.c), u_input.d | vec3<i32>(23793i, 0i, u_input.d.x))));
    let var_2 = var_1;
    global2 = array<Struct_3, 14>();
    return _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, func_3(), var_1.x, u_input.d.x), abs(var_1));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = min(vec2<i32>(-1i) * -u_input.d.xz, u_input.d.zy);
    global0 = 46493u;
    global1 = array<Struct_2, 7>();
    var_0 = vec2<i32>(-2147483647i, -(~_wgslsmith_sub_i32(func_2(u_input.b, Struct_1(u_input.a, false, var_0.x)), var_0.x)));
    global0 = 0u | firstTrailingBit(arg_0);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1731f, _wgslsmith_f_op_f32(-1671f * -569f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1255f + 752f), _wgslsmith_f_op_f32(735f * 314f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    let var_0 = u_input.b != ~abs(~(~30416u));
    var var_1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(func_1(select(~(~(~u_input.a.x)), ~(u_input.b | 4294967295u) >> (~countOneBits(u_input.a.x) % 32u), false)));
    var var_3 = -firstTrailingBit(~_wgslsmith_add_vec3_i32(u_input.d, u_input.d));
    var var_4 = _wgslsmith_clamp_u32(~u_input.b, ~(~(~min(1u, u_input.a.x))), 29852u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

