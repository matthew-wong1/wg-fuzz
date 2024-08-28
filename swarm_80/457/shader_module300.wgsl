struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f - _wgslsmith_f_op_f32(func_3(Struct_2(var_0.a), _wgslsmith_div_f32(1030f, 1975f), Struct_1(vec4<u32>(0u, u_input.b, u_input.e, 1u), vec3<i32>(u_input.c.x, 2147483647i, 0i), vec2<u32>(52505u, 1u)))))), -1456f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-245f, -320f)))));
    var var_2 = vec2<u32>(firstLeadingBit(select(u_input.e, firstLeadingBit(48924u), true)), u_input.e);
    var_0 = Struct_2(!(u_input.d != ~(-1i)));
    var var_3 = Struct_2(var_0.a);
    return !(!(!vec2<bool>(true, !var_0.a)));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(abs(vec4<u32>(max(u_input.a, ~1u), 1u, 63647u, 0u)), -u_input.c, ~min(~vec2<u32>(u_input.e, u_input.a), abs(vec2<u32>(u_input.e, 42425u))) ^ ~(select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<bool>(false, false)) ^ ~vec2<u32>(u_input.a, u_input.b)));
    var var_1 = var_0;
    let var_2 = !vec2<bool>(any(!func_2()), false);
    var var_3 = u_input.d;
    global0 = ~_wgslsmith_dot_vec2_u32(min(min(var_1.a.zz, select(var_1.a.ww, vec2<u32>(u_input.b, var_1.a.x), false)), ~(~var_1.a.xz)), ~(reverseBits(vec2<u32>(u_input.b, 0u)) & max(var_1.c, var_1.c)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(1u);
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(17387u, 1u, ~0u), ~(~vec3<u32>(35121u, 77524u, u_input.e))), vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(u_input.e, 1u, 4294967295u)), vec3<u32>(24943u, 104025u, u_input.b)), 9298u)) < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 15201u, ~4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 22324u), vec2<u32>(u_input.e, 82937u)) % 32u), 1u), max(vec4<u32>(_wgslsmith_mod_u32(u_input.e, 4294967295u), abs(u_input.e), 14846u, u_input.b), vec4<u32>(~28441u, ~1u, 9114u, 4294967295u)));
    global0 = 0u >> ((u_input.a >> (u_input.e % 32u)) % 32u);
    let var_1 = vec2<u32>(func_1(), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, u_input.e) & vec2<u32>(4404u, u_input.b), reverseBits(vec2<u32>(u_input.e, 4294967295u))), select(abs(vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(u_input.b, 1u), vec2<u32>(41056u, 1u), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)))));
    let var_2 = Struct_1(vec4<u32>(10407u, var_1.x, var_1.x, u_input.b), vec3<i32>(i32(-1i) * -1i, 73335i, 0i) | -max(reverseBits(vec3<i32>(-2147483647i, u_input.d, 0i)), -u_input.c), select(_wgslsmith_add_vec2_u32(var_1, select(_wgslsmith_sub_vec2_u32(var_1, var_1), vec2<u32>(51656u, 29481u), any(vec4<bool>(false, true, true, false)))), ~(~(~var_1)), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)))));
    var_0 = true;
    let var_3 = u_input.b;
    var var_4 = Struct_2(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-22430i, -9323i, u_input.d), u_input.c), ~var_2.b.x), ~countOneBits(0i)), reverseBits(u_input.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_1.x, ~(~0u), _wgslsmith_sub_u32(~u_input.a, _wgslsmith_sub_u32(var_2.c.x, var_3))), var_2.a));
}

