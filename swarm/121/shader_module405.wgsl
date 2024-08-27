struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    return ~u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 34501u, 4294967295u), min(vec4<u32>(u_input.b.x, 56149u, u_input.b.x, u_input.b.x), u_input.b)), func_3()) | ~select(vec2<u32>(u_input.b.x, 40853u), abs(vec2<u32>(38466u, 610u)), !vec2<bool>(arg_0, true)));
    var var_1 = Struct_1(arg_0, ~vec3<i32>(u_input.a, firstLeadingBit(-1i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), -u_input.a)));
    var_1 = Struct_1(!all(vec4<bool>(!var_1.a, true, true, true)), max(var_1.b, ~vec3<i32>(1i, var_1.b.x, countOneBits(28214i))));
    var_1 = Struct_1(false, var_1.b << (~max(u_input.b.xyy, _wgslsmith_add_vec3_u32(vec3<u32>(24801u, var_0.x, var_0.x), vec3<u32>(var_0.x, 0u, var_0.x))) % vec3<u32>(32u)));
    let var_2 = select(select(vec4<bool>(false, var_1.a, true, any(select(vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, false), vec2<bool>(arg_0, arg_0)))), select(!vec4<bool>(false, arg_0, true, var_1.a), !vec4<bool>(arg_0, false, arg_0, var_1.a), true), u_input.b.x < ~var_0.x), select(vec4<bool>(any(select(vec3<bool>(arg_0, var_1.a, var_1.a), vec3<bool>(false, true, var_1.a), vec3<bool>(var_1.a, true, false))), arg_0, arg_0, arg_0), vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, arg_0 && true, all(!vec2<bool>(false, var_1.a)), _wgslsmith_f_op_f32(select(arg_1, 1596f, false)) <= -603f)), !(-u_input.a <= _wgslsmith_div_i32(var_1.b.x, -var_1.b.x)));
    return Struct_1(all(!vec2<bool>(arg_0 && var_1.a, arg_0 && false)), _wgslsmith_add_vec3_i32(~var_1.b, -countOneBits(-vec3<i32>(0i, -1037i, 2975i))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = func_2(true, arg_0);
    var_0 = Struct_1(select(any(select(!vec3<bool>(var_0.a, false, true), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, var_0.a, var_0.a), false), var_0.a)), false, var_0.a & var_0.a), ~firstTrailingBit(select(-vec3<i32>(var_0.b.x, u_input.a, var_0.b.x), -var_0.b, false)));
    var_0 = func_2(true, 159f);
    var var_1 = Struct_2(func_2(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-692f - _wgslsmith_f_op_f32(arg_0 - arg_0))))));
    var_1 = Struct_2(var_1.a);
    return !(!all(select(vec4<bool>(var_0.a, var_1.a.a, true, false), vec4<bool>(var_1.a.a, false, false, false), vec4<bool>(false, var_0.a, true, var_1.a.a))) != false);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(482f))))), -882f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(565f, -293f)))))), 307f));
    var var_1 = vec3<bool>(true, false, false);
    var_1 = select(!select(select(!vec3<bool>(var_1.x, arg_1.a, false), vec3<bool>(arg_0, false, true), select(arg_0, arg_1.a, false)), select(!vec3<bool>(arg_1.a, true, arg_0), !vec3<bool>(arg_1.a, true, false), var_0.x <= 192f), any(vec3<bool>(false, true, arg_0))), select(select(select(!vec3<bool>(true, var_1.x, true), vec3<bool>(arg_1.a, arg_1.a, arg_0), true), !vec3<bool>(false, arg_0, arg_1.a), select(!vec3<bool>(var_1.x, arg_0, arg_1.a), select(vec3<bool>(arg_0, true, arg_1.a), vec3<bool>(false, true, false), arg_0), !arg_1.a)), !select(vec3<bool>(arg_1.a, var_1.x, true), select(vec3<bool>(arg_1.a, var_1.x, arg_1.a), vec3<bool>(arg_0, arg_1.a, false), true), vec3<bool>(true, arg_1.a, arg_0)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, true), vec3<bool>(arg_0, false, var_1.x)), !vec3<bool>(var_1.x, false, arg_1.a), true), select(func_1(var_0.x, var_0.x, 56705u, 1u), func_2(false, 1168f).a, !var_1.x))), var_1.x);
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_clamp_u32(~25812u, select(1u, u_input.b.x, var_1.x), u_input.b.x)) >= 1u, arg_1.b);
    var var_3 = func_2(1u <= (u_input.b.x << (_wgslsmith_dot_vec2_u32(u_input.b.wz, ~vec2<u32>(u_input.b.x, u_input.b.x)) % 32u)), var_0.x);
    return Struct_2(func_2(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -864f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(any(vec4<bool>(true, select(all(vec4<bool>(true, true, false, true)), false, true), func_1(_wgslsmith_f_op_f32(min(1000f, -836f)), -466f, 4294967295u, u_input.b.x >> (0u % 32u)), true)), func_2(true, -884f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), ~(min(_wgslsmith_add_i32(var_0.a.b.x, u_input.a), 3547i) >> (((u_input.b.x & 4294967295u) >> (min(4294967295u, 1u) % 32u)) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-456f, _wgslsmith_f_op_f32(f32(-1f) * -448f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-727f)) + _wgslsmith_f_op_f32(abs(988f))), 264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1000f, -722f, var_0.a.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1096f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-2053f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f)) + _wgslsmith_div_f32(-967f, _wgslsmith_f_op_f32(542f - 1093f)))));
}

