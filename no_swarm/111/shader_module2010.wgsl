struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-299f, arg_1), -388f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-600f)), arg_1, true)), _wgslsmith_f_op_f32(445f + arg_1))), _wgslsmith_f_op_f32(exp2(arg_1)), -1674f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-746f + var_0.x), 13997i, vec2<bool>(!(!select(false, false, true)), false), u_input.c.xy & abs(vec2<i32>(i32(-1i) * -2147483647i, arg_0.x)));
    var var_2 = ~reverseBits(arg_0.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(381f)), 1i, select(vec2<bool>(!var_1.c.x, false), var_1.c, select(any(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), all(var_1.c), var_1.c.x)), u_input.c.zw);
    var_2 = -(~var_1.d.x);
    return -var_3.d;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = arg_0;
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(38542i, 17520i, 22482i), -2147483647i), _wgslsmith_mult_i32(-24202i, _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mult_i32(~(-1i), u_input.c.x))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)), _wgslsmith_add_i32(1i, var_1.x), !select(select(arg_3.b.c, arg_3.b.c, arg_3.b.c), arg_3.b.c, true), var_1 | (var_1 ^ func_3(arg_3.a.d, -1935f, 28471u))), Struct_1(arg_3.b.a, -1i, !(!select(arg_3.a.c, vec2<bool>(true, arg_3.b.c.x), vec2<bool>(true, false))), vec2<i32>(0i, u_input.c.x)));
    let var_3 = 1486f;
    var var_4 = Struct_3(!vec4<bool>(false, false, false, var_2.b.c.x), arg_3);
    return true;
}

fn func_1() -> vec2<bool> {
    let var_0 = u_input.a & u_input.a;
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-156f - -536f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-119f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2358f - 256f)))))), -1i, select(vec2<bool>(true, true), select(vec2<bool>(false, func_2(var_0, -644f, false, Struct_2(Struct_1(-976f, 12846i, vec2<bool>(true, true), vec2<i32>(-2147483647i, 2147483647i)), Struct_1(470f, u_input.c.x, vec2<bool>(false, true), u_input.c.wx)))), vec2<bool>(true, true), select(8772u >= var_0, false, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), reverseBits(~firstTrailingBit(-u_input.c.zz)));
    let var_2 = select(select(select(vec4<bool>(select(var_1.c.x, var_1.c.x, var_1.c.x), true, all(vec4<bool>(true, false, true, false)), false), select(!vec4<bool>(false, true, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), true), var_1.c.x), !select(select(vec4<bool>(var_1.c.x, true, var_1.c.x, false), vec4<bool>(var_1.c.x, var_1.c.x, false, false), false), !vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), !var_1.c.x), false), !(!vec4<bool>(var_1.c.x && false, true, !var_1.c.x, true)), select(vec4<bool>(false, select(0i < u_input.c.x, var_1.c.x, var_1.c.x), var_1.a >= _wgslsmith_f_op_f32(sign(-671f)), any(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false))), vec4<bool>(var_1.c.x, func_2(0u, -425f, var_1.c.x, Struct_2(Struct_1(var_1.a, u_input.c.x, var_1.c, vec2<i32>(2147483647i, 11924i)), var_1)), false, !any(vec4<bool>(var_1.c.x, false, true, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.c.x, true, true, true), !vec4<bool>(false, false, true, var_1.c.x)), select(select(vec4<bool>(true, false, var_1.c.x, var_1.c.x), vec4<bool>(false, var_1.c.x, true, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), !vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x), var_1.c.x), vec4<bool>(true, true, true, var_1.c.x != false))));
    let var_3 = var_1.a;
    var var_4 = false;
    return select(var_2.yz, vec2<bool>(u_input.c.x > _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.b, u_input.c.x), _wgslsmith_add_i32(var_1.d.x, u_input.c.x)), (1u << (firstTrailingBit(var_0) % 32u)) == 4294967295u), any(var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = !select(vec2<bool>(true, any(vec2<bool>(true, true))), func_1(), ((u_input.c.x >> (u_input.b.x % 32u)) & firstLeadingBit(u_input.c.x)) >= _wgslsmith_dot_vec3_i32(u_input.c.zzx, u_input.c.wzx));
    var_1 = vec2<bool>(true, var_1.x);
    var var_2 = i32(-1i) * -38250i;
    let x = u_input.a;
    s_output = StorageBuffer(max(~min(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(872u, 59232u, u_input.b.x)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(~39585u, ~34001u, reverseBits(4294967295u)), u_input.b)), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(reverseBits(1u), u_input.b.x, u_input.a | 29484u)), vec3<u32>(~u_input.a ^ 55355u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), u_input.b.yy), ~vec2<u32>(83996u, u_input.a)), ~max(19873u, u_input.b.x))), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(min(u_input.b.x, ~u_input.b.x), ~u_input.b.x | ~u_input.b.x, _wgslsmith_mod_u32(countOneBits(u_input.b.x), select(1u, 119062u, var_1.x)))));
}

