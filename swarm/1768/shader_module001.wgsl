struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1073f, _wgslsmith_f_op_f32(f32(-1f) * -1068f)));
    let var_1 = ~u_input.a;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(825f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x))));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_mult_i32(~u_input.d.x, ~(~(i32(-1i) * -19943i)));
    return 2147483647i;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = u_input.b;
    var var_1 = Struct_1(vec2<bool>(true, true));
    let var_2 = Struct_1(var_1.a);
    var_0 = u_input.b;
    var_0 = ~abs(1u);
    return func_3(Struct_1(!var_2.a), Struct_1(select(!select(vec2<bool>(true, var_2.a.x), var_2.a, false), select(var_2.a, var_2.a, vec2<bool>(false, true)), var_2.a)), var_2);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(-u_input.a.xy, ~(~u_input.d));
    var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(min(vec2<i32>(0i, _wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x)), ~(-vec2<i32>(u_input.d.x, var_0.x))), vec2<i32>(func_2(~vec3<i32>(-22860i, var_0.x, -1i)), _wgslsmith_sub_i32(2147483647i, abs(-29072i)))), u_input.d | _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.c, var_0.x)), ~vec2<i32>(6397i, u_input.c)));
    var var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, !(!any(vec4<bool>(true, true, true, true))), true), vec4<bool>((abs(17755i) | _wgslsmith_mod_i32(-1i, var_0.x)) > u_input.d.x, !any(vec3<bool>(false, false, true)) || false, true, true));
    var_0 = vec2<i32>((~_wgslsmith_mult_i32(var_0.x, 1i) ^ _wgslsmith_mod_i32(reverseBits(2147483647i), func_2(u_input.a.xzx))) >> (u_input.b % 32u), ~_wgslsmith_dot_vec3_i32(~(~u_input.a.xxz), ~(vec3<i32>(0i, u_input.a.x, var_0.x) | u_input.a.zxy)));
    let var_2 = ~(~reverseBits(66341u) >> ((u_input.b << (u_input.b % 32u)) % 32u));
    return Struct_1(select(select(select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), var_1.xx), vec2<bool>(var_1.x, true), select(all(vec4<bool>(false, true, var_1.x, var_1.x)), var_1.x, !var_1.x)), var_1.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(289f, -1000f, var_1.x)) - 2444f) > _wgslsmith_f_op_f32(600f + -593f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1().a;
    var_0 = Struct_1(var_0.a);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(401f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -354f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(886f, 1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -728f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -140f);
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 4294967295u, 1u, u_input.b) | _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 47276u), vec4<u32>(71174u, 4294967295u, u_input.b, u_input.b)), vec4<u32>(0u, ~u_input.b, u_input.b, 40603u), (vec4<u32>(1u, 25027u, u_input.b, u_input.b) ^ vec4<u32>(4276u, u_input.b, u_input.b, u_input.b)) >> (~vec4<u32>(47777u, 1u, 48210u, u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(abs(-1236f)))), _wgslsmith_f_op_f32(1575f - _wgslsmith_f_op_f32(f32(-1f) * -1174f)), 1u);
}

