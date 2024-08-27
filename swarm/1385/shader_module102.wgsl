struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_3(!(all(!vec2<bool>(false, arg_0.c.a)) != true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1694f, -703f, -696f) - vec3<f32>(506f, -372f, 794f))))), _wgslsmith_sub_i32(abs(max(-arg_0.a.x, 1i)), arg_0.a.x));
    var var_1 = var_0.b.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1608f, 1000f)), _wgslsmith_f_op_f32(max(var_0.b.x, -562f)))), -366f) - var_0.b.x);
    var var_2 = vec2<i32>(-((~u_input.b ^ (u_input.b << (18626u % 32u))) & arg_0.a.x), (i32(-1i) * -u_input.b) << (_wgslsmith_clamp_u32(~1u, 91328u, 50446u) % 32u));
    return true;
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + -1205f) + _wgslsmith_div_f32(335f, _wgslsmith_f_op_f32(-434f - 783f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(779f * 1673f), _wgslsmith_f_op_f32(ceil(-1726f)), true)))));
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_2 = -16562i;
    var_2 = ~(~(~2147483647i));
    let var_3 = Struct_4(false, Struct_1(func_3(Struct_2(~vec4<i32>(arg_0, u_input.b, -16504i, u_input.b), Struct_1(false), Struct_1(true)))));
    return var_3;
}

fn func_1() -> StorageBuffer {
    let var_0 = !(!(all(vec4<bool>(false, true, false, true)) | true));
    let var_1 = ~(~(-abs(u_input.a.x)) << (~min(29297u, _wgslsmith_clamp_u32(3864u, 22521u, 0u)) % 32u));
    let var_2 = func_2(1i);
    let var_3 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(7264i, u_input.b, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, u_input.b), abs(var_1))), vec3<i32>(u_input.b, i32(-1i) * -var_1, ~var_1 & -1i)));
    let var_4 = vec3<i32>(var_1, u_input.b, 6998i);
    return StorageBuffer(select(vec2<u32>(1u, 1u), ~(vec2<u32>(1u, 1u) | firstTrailingBit(vec2<u32>(4294967295u, 4294967295u))), select(vec2<bool>(var_2.b.a, var_2.a), select(!vec2<bool>(true, var_3.a), vec2<bool>(var_0, false), vec2<bool>(var_2.b.a, false)), any(!vec4<bool>(var_2.b.a, var_0, var_2.b.a, var_2.b.a)))), vec2<i32>(abs(~var_1 & var_1), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, var_4.x, var_1), -vec3<i32>(-591i, var_4.x, var_1), select(vec3<bool>(true, true, true), vec3<bool>(var_3.b.a, var_2.b.a, var_0), vec3<bool>(var_0, false, var_2.b.a))), vec3<i32>(33200i, ~u_input.b, -12319i))), ~(~vec4<i32>(var_4.x, 100711i, u_input.b, 2147483647i) & ~min(vec4<i32>(-2147483647i, var_1, var_4.x, u_input.a.x), vec4<i32>(u_input.a.x, 21658i, u_input.b, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) * 1f), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let x = u_input.a;
    s_output = func_1();
}

