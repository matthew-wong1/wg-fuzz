struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    global0 = select(u_input.e.x, 4294967295u, -43543i != u_input.d);
    global0 = u_input.b;
    global0 = 40594u;
    global0 = _wgslsmith_div_u32(~0u, ~28719u << (arg_3.x % 32u));
    global0 = 1u;
    return 1507f;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, arg_1.b.a, -1384f), vec4<f32>(arg_1.b.a, arg_1.a, arg_1.a, arg_1.b.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, -721f, -385f, 361f), vec4<f32>(1618f, 253f, arg_1.b.a, -1339f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.a))), arg_1.a, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(956f, -791f)), _wgslsmith_f_op_f32(sign(arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_1.b.a)) * arg_1.a)));
    global0 = ~_wgslsmith_div_u32(4294967295u, u_input.e.x) & (~1u ^ ((min(4294967295u, 30464u) >> (abs(u_input.b) % 32u)) | ~3256u));
    var var_1 = ~_wgslsmith_mod_u32(~1u, arg_1.b.e.x) < max(~_wgslsmith_clamp_u32(arg_1.b.e.x, u_input.b, firstTrailingBit(1u)), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(37018u, 0u, u_input.e.x, u_input.b), vec4<u32>(u_input.b, 1u, arg_1.b.e.x, 13663u))));
    let var_2 = reverseBits(arg_1.b.e.x);
    return any(!arg_1.b.c.xw);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    global0 = 1u;
    global0 = ~12302u;
    let var_0 = !vec4<bool>(!((25209i ^ arg_3.b.d.x) >= _wgslsmith_mult_i32(15990i, 0i)), false, !func_3(-arg_0.x, Struct_2(arg_2.b, Struct_1(arg_2.b, -552f, arg_3.b.c, u_input.c.wy, vec2<u32>(arg_3.b.e.x, u_input.b)), arg_0.xz)), true);
    let var_1 = max(u_input.e, ~select(u_input.e, min(~vec4<u32>(arg_3.b.e.x, 1u, u_input.e.x, 0u), vec4<u32>(0u, arg_3.b.e.x, 1u, 4294967295u)), false));
    let var_2 = ~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.b.e.x, var_1.x, u_input.e.x), var_1.xyx)) >> (countOneBits(~var_1.yyy) % vec3<u32>(32u));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(617f, 747f)) - -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-350f, vec3<bool>(false, true, false), true, u_input.e.wz))), min(u_input.c.yz, firstLeadingBit(u_input.c.xy) | vec2<i32>(13023i, -10217i)) ^ u_input.c.yw, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(22799i, u_input.a, u_input.d), u_input.c.xx, Struct_3(vec3<bool>(true, false, false), -542f), Struct_4(false, Struct_1(-806f, -1407f, vec4<bool>(true, true, false, true), vec2<i32>(u_input.d, 0i), vec2<u32>(20424u, 11164u)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(172f + 449f) + -455f)))));
}

