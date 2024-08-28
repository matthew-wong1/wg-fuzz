struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global0 = array<vec2<f32>, 11>();
    var var_0 = Struct_1(~(~(~arg_0.a)));
    global0 = array<vec2<f32>, 11>();
    let var_1 = Struct_1(var_0.a);
    global0 = array<vec2<f32>, 11>();
    return 1155f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = 1i;
    var_0 = ~_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(-u_input.b, max(vec2<i32>(-43400i, 38282i), vec2<i32>(2147483647i, -16065i))), select(u_input.a, reverseBits(_wgslsmith_sub_i32(u_input.c.x, -4261i)), false & (u_input.b.x != u_input.b.x)));
    var_0 = 1i;
    let var_1 = select(select(!vec4<bool>(false, false, arg_2.x, true), select(select(select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, false, arg_2.x, true), vec4<bool>(arg_2.x, false, true, arg_2.x)), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), !vec4<bool>(false, arg_2.x, false, false)), select(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), !vec4<bool>(true, false, arg_2.x, arg_2.x)), arg_2.x), select(!vec4<bool>(false, arg_2.x, false, arg_2.x), !vec4<bool>(false, false, true, arg_2.x), vec4<bool>(arg_2.x, true, true, arg_1.a.x <= 1u))), select(!vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(select(arg_2.x || arg_2.x, arg_2.x, !arg_2.x), all(vec2<bool>(false, arg_2.x)), true, false), select(!(!vec4<bool>(arg_2.x, true, false, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, true)), !vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(true, true, true, true)), all(vec2<bool>(arg_2.x, arg_2.x)))), vec4<bool>(true, true, arg_2.x, reverseBits(u_input.c.x << (28711u % 32u)) < u_input.b.x));
    let var_2 = ~abs(vec3<i32>(_wgslsmith_add_i32(u_input.a, countOneBits(-2147483647i)), -72509i, firstTrailingBit(u_input.a)));
    return vec3<u32>(11331u, 4511u, ~(~(~6233u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    global0 = array<vec2<f32>, 11>();
    let var_0 = Struct_1(~vec3<u32>(arg_1.a.x, ~arg_1.a.x | (4294967295u | arg_2.a.x), min(arg_1.a.x, arg_1.a.x)));
    let var_1 = Struct_1(~arg_0.a);
    global0 = array<vec2<f32>, 11>();
    global0 = array<vec2<f32>, 11>();
    return -1038f;
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = vec2<bool>(any(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, true))), true);
    global0 = array<vec2<f32>, 11>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(-405f, -612f)), -1662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f)));
    global0 = array<vec2<f32>, 11>();
    var var_2 = Struct_1(vec3<u32>(0u, arg_1, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(arg_0, 50214u, arg_0)), ~(~vec3<u32>(56447u, 78118u, arg_0)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(func_4(Struct_1(vec3<u32>(abs(var_2.a.x), ~47184u, 4294967295u)), Struct_1(func_3(Struct_1(var_2.a), Struct_1(vec3<u32>(12179u, 0u, 1u)), select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x)))), Struct_1(abs(~var_2.a)), reverseBits(u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(1i);
    let var_1 = Struct_1(~(~vec3<u32>(max(4294967295u, 1u), firstTrailingBit(1u), 1u)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1307f * -858f) + _wgslsmith_f_op_f32(func_1(var_1, var_1.a.zz))) + -759f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(520f))))) * _wgslsmith_f_op_f32(func_2(var_1.a.x, var_1.a.x))));
    var var_3 = Struct_1(~(~var_1.a >> (var_1.a % vec3<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_mult_vec3_u32(var_1.a, ~var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ u_input.b, _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(u_input.a, 1i), ~50760i), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i) >> (var_1.a.xx % vec2<u32>(32u)), reverseBits(vec2<i32>(var_0, 1i))), max(vec2<i32>(1i, var_0), ~u_input.c.xy))), select(_wgslsmith_mult_vec3_i32(-(u_input.c & u_input.c), vec3<i32>(_wgslsmith_sub_i32(-1i, var_0), -54356i << (0u % 32u), -16218i)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_0, 24306i, var_0)), vec3<i32>(1i, u_input.b.x >> (var_1.a.x % 32u), _wgslsmith_clamp_i32(-1i, -1i, u_input.c.x))), select(vec3<bool>(select(true, true, false), all(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, 0u >= var_1.a.x, true), true)), 1f);
}

