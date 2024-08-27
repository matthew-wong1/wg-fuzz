struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -513f))), -356f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2043f - _wgslsmith_f_op_f32(max(-153f, 1401f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1694f), _wgslsmith_f_op_f32(ceil(267f)), true)))), select(true, true, all(vec4<bool>(true, false, true, false))))), u_input.d.x, u_input.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))), abs(~var_0.b), vec3<u32>(21062u, ~(31810u >> (~var_0.b % 32u)), ~(~4294967295u ^ var_0.b)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) * _wgslsmith_f_op_f32(var_0.a - var_0.a)))), u_input.d.x | _wgslsmith_dot_vec3_u32(u_input.d, ~firstLeadingBit(var_0.c)), u_input.d);
    var_0 = Struct_1(-1000f, u_input.d.x, ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 7037u, var_0.c.x), var_0.c ^ u_input.d)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), 221u, ~_wgslsmith_add_vec3_u32(var_0.c, select(~u_input.d, vec3<u32>(var_0.b, u_input.d.x, u_input.d.x), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))));
    return vec2<bool>(!all(vec4<bool>(false, true, false, u_input.a.x < u_input.a.x)), (1i != -_wgslsmith_mod_i32(u_input.b.x, u_input.c)) || true);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = !(!(!(!func_3())));
    var_0 = !vec2<bool>(true, !var_0.x);
    var_0 = vec2<bool>(var_0.x, any(vec3<bool>(var_0.x, var_0.x, !any(vec2<bool>(false, var_0.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1000f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(568f, 352f))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-1356f)), 144f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1816f, -154f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(939f, -1415f), vec2<f32>(-710f, -399f))))))))));
    var_0 = vec2<bool>(!all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, true), var_0.x)), var_0.x);
    return Struct_1(_wgslsmith_f_op_f32(-797f - var_1.x), ~_wgslsmith_mult_u32(select(1u, 10284u, !var_0.x), 15004u), u_input.d);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = func_2(u_input.c);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(745f, var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(791f - var_0.a)))) - 435f), 36056u, max(u_input.d, _wgslsmith_mult_vec3_u32(var_0.c, ~(~u_input.d))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_dot_vec2_u32(var_0.c.xy, vec2<u32>(_wgslsmith_add_u32(0u, 7794u), arg_1.x)), arg_1);
    var var_1 = vec4<i32>(-countOneBits(~max(-2147483647i, 2147483647i)), firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.b.x, 90603i))), u_input.b.x, 34019i);
    let var_2 = Struct_2(vec4<bool>(true, false, all(!vec3<bool>(arg_0, false, arg_0)), false), all(vec3<bool>(any(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false)), arg_0, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), max(62003u, 4294967295u), ~(~(vec3<u32>(u_input.d.x, 0u, 36709u) ^ vec3<u32>(u_input.d.x, arg_1.x, var_0.c.x)))));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_2(vec4<bool>(true, (false | arg_0.a.x) || func_1(func_1(arg_0.a.x, vec3<u32>(arg_1, 0u, 59455u), arg_0.c.a).b, _wgslsmith_add_vec3_u32(vec3<u32>(arg_1, u_input.d.x, u_input.d.x), vec3<u32>(4400u, 0u, arg_1)), _wgslsmith_f_op_f32(max(-190f, arg_0.c.a))).b, true, !arg_0.b), false, arg_0.c);
    var var_1 = arg_0;
    var_0 = func_1(!(!(any(vec4<bool>(false, true, var_0.a.x, true)) && all(vec2<bool>(false, var_1.a.x)))), var_0.c.c, -1275f);
    let var_2 = firstLeadingBit(-1i);
    var_1 = func_1(var_0.a.x, _wgslsmith_mod_vec3_u32(~vec3<u32>(688u, u_input.d.x & 65722u, max(u_input.d.x, 50105u)), arg_0.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.a)) + _wgslsmith_f_op_f32(ceil(var_0.c.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2194f)) + _wgslsmith_f_op_f32(212f * var_0.c.a)))));
    return var_1.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~u_input.d, func_4(func_1(all(vec2<bool>(true, true)), u_input.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1184f * -2284f), 1825f))), (1u ^ u_input.d.x) & ~max(u_input.d.x, 0u)), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), !select(vec3<bool>(true, true, true), func_1(true, u_input.d, -293f).a.xzx, vec3<bool>(false, true, false)), vec3<bool>(func_3().x, u_input.d.x == _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), select(true, true, false))));
    var var_1 = all(select(vec4<bool>(true, true, true, true), !func_1(true, ~var_0, _wgslsmith_f_op_f32(506f - 895f)).a, func_3().x));
    var_1 = true;
    var_1 = false;
    var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(960f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-479f - 121f) * func_1(true, vec3<u32>(u_input.d.x, u_input.d.x, 39969u), -130f).c.a), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -350f))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(var_2.x, 557f)));
    let var_4 = vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_5 = func_1(false, vec3<u32>(1u, _wgslsmith_sub_u32(54717u, ~_wgslsmith_clamp_u32(0u, 11717u, 31590u)), ~(~var_0.x) & ~1u), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(996f)) + 1000f)));
}

