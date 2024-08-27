struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(789f, vec3<i32>(-1i, 28704i, 2147483647i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec2<i32> {
    return _wgslsmith_sub_vec2_i32(~u_input.c, vec2<i32>(abs(_wgslsmith_sub_i32(max(arg_0, arg_0), -1i)), firstLeadingBit(26182i & countOneBits(global0.b.x))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global0 = arg_0;
    let var_0 = false;
    let var_1 = Struct_1(817f, -vec3<i32>(-(~(-71288i)), _wgslsmith_dot_vec3_i32(arg_0.b, global0.b), _wgslsmith_dot_vec2_i32(func_3(global0.b.x, vec3<i32>(arg_0.b.x, global0.b.x, u_input.a), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(23252u, 0u)), global0.b.yx)));
    global0 = arg_0;
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(~select(~(~arg_0), arg_0, arg_1), ~(~(~(vec2<u32>(6812u, 38545u) | vec2<u32>(41293u, arg_0.x)))));
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.a), !all(vec2<bool>(true, arg_1)))), vec3<i32>(-1i, firstLeadingBit(i32(-1i) * -16025i), u_input.b)));
    let var_2 = func_2(func_2(func_2(func_2(Struct_1(global0.a, var_1.b)))));
    let var_3 = arg_0.x;
    global0 = Struct_1(-1339f, select(vec3<i32>(-u_input.a, _wgslsmith_sub_i32(19128i, -15461i), global0.b.x), -global0.b, false));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~vec2<u32>(select(95873u, 4294967295u, false), _wgslsmith_sub_u32(112133u, 1u))), true);
    global0 = func_2(Struct_1(var_0.a, global0.b));
    var var_1 = ~vec3<u32>(abs(~4852u), ~reverseBits(~0u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(36441u, 10473u)), vec2<u32>(1u, 1u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.a, -119f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-510f, -580f)) + var_0.a), all(vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, false)))))), vec3<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(var_0.b.zx, var_0.b.xz), abs(vec2<i32>(29255i, u_input.a))), -22867i & u_input.c.x, 0i));
    var_1 = vec3<u32>(_wgslsmith_div_u32(4294967295u, countOneBits(_wgslsmith_add_u32(firstLeadingBit(39337u), var_1.x | 1u))), _wgslsmith_div_u32(~min(var_1.x, 0u) | _wgslsmith_mod_u32(var_1.x, 4294967295u), firstLeadingBit(var_1.x) & 41542u), var_1.x >> (var_1.x % 32u));
    var var_2 = ~var_1.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.a, 1328f, false)), _wgslsmith_f_op_f32(var_0.a * -2277f))) - _wgslsmith_f_op_f32(f32(-1f) * -1513f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -175f), global0.a)), -1741f)))), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x << (var_1.x % 32u), abs(var_1.x), 30887u, select(var_1.x, 0u, true)), vec4<u32>(var_1.x, ~1u, var_1.x, 85458u)), 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_f32(abs(var_0.a))))), var_3.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 275f)), -731f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, var_0.a)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1113f, global0.a), vec2<f32>(var_3.a, 697f)))))))));
}

