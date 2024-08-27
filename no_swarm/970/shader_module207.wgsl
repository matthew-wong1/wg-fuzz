struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1764f - 892f) - -495f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1253f + 425f) - _wgslsmith_f_op_f32(floor(333f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(298f, -518f))), _wgslsmith_f_op_f32(f32(-1f) * -101f)));
    let var_1 = ~(~vec4<u32>(1u, 1u, 1u, 1u)) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(reverseBits(0u), ~1u, _wgslsmith_clamp_u32(9415u, 0u, 28841u) << (1u % 32u), _wgslsmith_mod_u32(69118u, 1u))) % vec4<u32>(32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(965f - var_0.x)))))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -1091f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.xy, vec2<f32>(378f, 1290f))))))), _wgslsmith_f_op_vec2_f32(-var_2.xx));
    var var_3 = -1000f;
    return ~vec2<u32>(_wgslsmith_mod_u32(1u, 9770u), ~var_1.x);
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_1(max(~_wgslsmith_clamp_vec2_u32(func_3(vec4<i32>(u_input.a, -2147483647i, 1i, -31284i), 2147483647i), vec2<u32>(arg_0, 1u) ^ vec2<u32>(31702u, arg_0), max(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, arg_0))), ~vec2<u32>(arg_0, arg_0)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(927f, var_0)), _wgslsmith_f_op_f32(step(103f, arg_1)), arg_1)))), var_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0)), var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, arg_1)) * vec2<f32>(arg_1, -557f)))), Struct_2(Struct_1(var_1.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1932f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(838f, -859f) * vec2<f32>(var_0, var_0))), vec2<bool>(true, true))), Struct_1(vec2<u32>(~arg_0, abs(var_1.a.x)))));
    let var_3 = var_2.d;
    var var_4 = _wgslsmith_add_vec2_i32(abs(max(-vec2<i32>(-1i, 2147483647i), -vec2<i32>(1i, u_input.a))), max(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 2147483647i) ^ vec2<i32>(-39261i, u_input.a)), vec2<i32>(1i, u_input.a))) ^ ~_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, 0i) >> (~vec2<u32>(var_3.a.a.x, 0u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(0i, 5981i), 3693i));
    return var_3.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    return firstTrailingBit(min(~(~arg_2.a.a.x), ~arg_2.a.a.x));
}

fn func_1(arg_0: u32, arg_1: u32) -> bool {
    return _wgslsmith_mod_u32(4294967295u, func_4(vec3<i32>(u_input.a | u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(23186i, u_input.a, u_input.a), vec3<i32>(u_input.a, -12377i, u_input.a)), -u_input.a), ~(~u_input.a), Struct_2(func_2(1u, 932f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-244f, 1119f) - vec2<f32>(-1525f, -153f)), func_2(16581u, -846f)))) > 74838u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(u_input.a, 1i, abs(min(17137i ^ u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-5927i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647i)))));
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(false, false, true, true)) && (true != func_1(1u, 81528u))), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, !all(vec4<bool>(false, false, true, false))));
    var var_2 = 1u;
    let var_3 = ~1u;
    var_2 = var_3;
    var var_4 = Struct_1(reverseBits(~(~vec2<u32>(var_3, var_3))) ^ vec2<u32>(4294967295u, var_3));
    var var_5 = select(select(vec4<bool>(true | (true && var_1.x), any(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, true))), true, true), !(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), var_1.x)), vec4<bool>(!(true && var_1.x), true, !func_1(var_4.a.x, var_3), func_1(_wgslsmith_add_u32(var_3, var_3), var_3))), !select(vec4<bool>(!var_1.x, true, var_1.x, any(vec4<bool>(false, true, true, false))), vec4<bool>(true, var_1.x, !var_1.x, all(vec2<bool>(true, var_1.x))), vec4<bool>(true, false, true, var_1.x)), select(!select(!vec4<bool>(true, var_1.x, false, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(false, true, var_1.x, var_1.x))), select(select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x)), vec4<bool>(false, var_1.x, true, false)), !(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(false, false, false, var_1.x)), select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(true, var_1.x, true, true), false), var_1.x)), all(select(vec2<bool>(true, true), var_1.zz, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16444u, 1u, var_3, 1u), vec4<u32>(var_4.a.x, var_3, var_3, 61779u)), _wgslsmith_mod_u32(var_4.a.x, var_3)), abs(func_3(vec4<i32>(34930i, 33886i, 2147483647i, -309i), 14849i).x)), ~22360i, abs(firstTrailingBit(4811u)), var_4.a.x, var_0.yz);
}

