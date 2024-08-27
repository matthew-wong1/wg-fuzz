struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 117f;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<Struct_2, 29>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = Struct_1(global1.a);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 + arg_2)));
}

fn func_1() -> u32 {
    global2 = array<Struct_2, 29>();
    let var_0 = countOneBits(vec3<i32>(_wgslsmith_sub_i32(u_input.a ^ firstTrailingBit(42204i), -36198i), u_input.d, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.d)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(-vec2<i32>(-1i, var_0.x), _wgslsmith_sub_vec2_i32(var_0.zx, vec2<i32>(-2147483647i, u_input.a)), vec2<bool>(true, false)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -568f))) - -1420f));
    return u_input.b;
}

fn func_3() -> f32 {
    global2 = array<Struct_2, 29>();
    global0 = -372f;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1683f)), _wgslsmith_f_op_f32(-740f - -562f), !(u_input.d == u_input.d))), _wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(min(-172f, _wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.a, u_input.d), 2147483647i, 1124f)))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))), -786f));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(var_0, var_0, -169f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f) * _wgslsmith_f_op_f32(max(var_0, -793f))), _wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-var_0))), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 75503u, 29085u), vec3<u32>(u_input.c, 1u, 53979u)), vec3<u32>(52148u, u_input.c, 1u))), countOneBits(firstTrailingBit(vec2<u32>(u_input.b, 0u) ^ abs(vec2<u32>(u_input.c, u_input.c)))), global1.a, ~vec3<i32>((u_input.a << (65702u % 32u)) | (u_input.d & u_input.a), u_input.d, firstTrailingBit(u_input.d & 15704i)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(firstTrailingBit(4294967295u >> (_wgslsmith_div_u32(countOneBits(4294967295u), ~u_input.c) % 32u)), _wgslsmith_div_u32(~func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(~78322u, ~48789u, _wgslsmith_dot_vec3_u32(vec3<u32>(64833u, u_input.b, u_input.c), vec3<u32>(u_input.b, 65732u, u_input.c))), ~(~vec3<u32>(0u, u_input.b, u_input.c)))), 1064f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(953f))))));
    let var_1 = Struct_1(!select(true, !global1.a, u_input.a < -59i));
    global1 = Struct_1(var_1.a);
    let var_2 = Struct_1(select(false, !var_1.a, var_1.a));
    global1 = var_2;
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d, (i32(-1i) * -10980i) >> (select(29224u, ~1u, true) % 32u)), ~_wgslsmith_sub_i32(-5780i, _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a)));
    var var_4 = global2[_wgslsmith_index_u32(~(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 6259u, u_input.c, 0u), vec4<u32>(var_0, 79092u, var_0, 65978u)), u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 10007u, var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(65290u, 1u, 86644u, 4294967295u), vec4<u32>(u_input.b, 46492u, var_0, u_input.b)))) << (~17364u % 32u)), 29u)];
    let var_5 = ~reverseBits(19883u);
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1202f), u_input.c, _wgslsmith_f_op_f32(func_3()), _wgslsmith_dot_vec2_i32(var_4.e.zy, var_4.e.zx));
}

