struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-16099i, 1i, -46430i, -1i), vec4<i32>(16990i, -1i, -39742i, 4348i), vec4<i32>(0i, -26952i, 0i, 2147483647i), vec4<i32>(40691i, i32(-2147483648), -14875i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 1i, 1i), vec4<i32>(-45921i, -3275i, -1i, i32(-2147483648)), vec4<i32>(62447i, i32(-2147483648), 1i, 22414i), vec4<i32>(-1i, 45617i, 0i, 1629i), vec4<i32>(1i, i32(-2147483648), 1i, -40289i), vec4<i32>(-1i, 2147483647i, 2147483647i, -23615i), vec4<i32>(i32(-2147483648), 2147483647i, 32510i, 2147483647i), vec4<i32>(-46622i, -7763i, -1i, 2147483647i), vec4<i32>(7769i, -21908i, 1i, 9677i), vec4<i32>(17813i, -20915i, 35222i, -1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = !(!(~arg_0.x < 4294967295u) || true);
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let var_1 = _wgslsmith_mult_u32(~0u, _wgslsmith_mult_u32((arg_0.x ^ ~arg_0.x) << (~firstTrailingBit(arg_0.x) % 32u), ~(~(arg_0.x | 1u))));
    let var_2 = Struct_3(min(~(~var_1), arg_0.x));
    return !select(vec4<bool>(false, all(vec2<bool>(var_0, true)) & true, true, var_0), !(!(!vec4<bool>(var_0, var_0, true, var_0))), select(!(!vec4<bool>(var_0, var_0, var_0, false)), !(!vec4<bool>(true, var_0, var_0, false)), vec4<bool>(var_0, all(vec4<bool>(var_0, true, var_0, var_0)), !var_0, false)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f + 583f))) + -990f), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(886f)), -994f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1195f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1362f - -725f), _wgslsmith_f_op_f32(f32(-1f) * -143f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(f32(-1f) * -1676f))));
    return var_0;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> u32 {
    global0 = array<vec4<i32>, 14>();
    var var_0 = func_3(select(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, arg_0.a)), ~vec2<u32>(arg_0.a, arg_0.a)), 1u), ~(~arg_0.a >> (select(arg_0.a, arg_0.a, false) % 32u)), any(func_2(vec4<u32>(36333u, 1u, arg_0.a, arg_0.a))) && false), 1u, firstLeadingBit(~vec3<i32>(1i, _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i), 48374i)), vec4<u32>(arg_0.a, arg_0.a, ~(~arg_0.a), ~(~1u)));
    let var_1 = arg_0;
    let var_2 = arg_1.x;
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1141f - -579f), var_0.c.x)), var_0.a)), abs(~(~max(1u, 9257u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(781f, -381f, 153f, var_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, var_0.c)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))));
    return 15922u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29651u, 1u, 12192u), vec4<u32>(4294967295u, 1u, 4294967295u, 18325u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45351u, 1u, 1u), vec4<u32>(1372u, 58423u, 12092u, 16808u))), func_1(Struct_3(79826u), -vec3<i32>(u_input.a, u_input.a, 2147483647i))) << (_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(1u, 1u, ~11322u)) % 32u), select(~vec2<i32>(u_input.a, _wgslsmith_clamp_i32(-1773i, 16394i, u_input.a)), ~countOneBits(-vec2<i32>(u_input.a, 40898i)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), u_input.a == -1i)), ~17583u);
}

