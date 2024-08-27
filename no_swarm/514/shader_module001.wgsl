struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_u32(arg_1.x, 1u) < arg_1.x, all(vec2<bool>(true, true)), arg_1 & _wgslsmith_sub_vec2_u32(arg_1, vec2<u32>(arg_1.x, 51u)))), Struct_1(false, false, ~arg_1), ~min(select(~vec4<u32>(16244u, 1u, arg_1.x, 18182u), vec4<u32>(arg_1.x, 0u, arg_1.x, 0u), vec4<bool>(false, true, true, true)), ~vec4<u32>(0u, arg_1.x, arg_1.x, 18888u) ^ ~vec4<u32>(arg_1.x, 1u, arg_1.x, 15205u)));
    var var_1 = _wgslsmith_f_op_f32(-522f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(abs(168f))) + 1447f));
    let var_2 = -u_input.c.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)));
    var_1 = arg_0;
    return Struct_4(0u ^ ((1u << (arg_1.x % 32u)) ^ (~20747u ^ var_0.a.a.c.x)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = select(vec4<bool>(true && select(u_input.b.x != -2147483647i, true, true), -_wgslsmith_clamp_i32(u_input.a.x, 1i, 1i) == u_input.b.x, false, all(vec4<bool>(true, true, true, true))), vec4<bool>(true, all(vec2<bool>(true, true)), false, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, true), true));
    var var_1 = var_0.ywz;
    var_1 = var_0.zwx;
    var_0 = !vec4<bool>(true, !(!(u_input.b.x <= -19224i)), any(vec4<bool>(var_1.x || false, !var_0.x, any(vec2<bool>(var_0.x, var_1.x)), 13578u > arg_0.a)), var_1.x);
    var var_2 = Struct_2(Struct_1(var_0.x, all(select(var_0.xx, var_1.xy, vec2<bool>(true, var_1.x))) & true, ~vec2<u32>(1u, 20348u)));
    return u_input.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(func_2(_wgslsmith_f_op_f32(min(1f, -361f)), abs(select(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 90089u), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2097f, _wgslsmith_f_op_f32(-843f + 1942f), _wgslsmith_f_op_f32(-611f * 2162f)))));
    let var_1 = Struct_2(Struct_1(false, true, select(~firstLeadingBit(vec2<u32>(0u, 1u)), ~vec2<u32>(1u, 27779u), true)));
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - 629f)))))), vec2<u32>(var_1.a.c.x, ~(~select(22298u, var_1.a.c.x, false))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(571f, 2231f, 1311f), vec3<f32>(2215f, 946f, -1000f), vec3<bool>(var_1.a.b, var_1.a.b, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, -413f, 602f) * vec3<f32>(372f, -469f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-116f, -939f, 1601f))))));
    var var_3 = var_1;
    return Struct_1(var_1.a.b, false, vec2<u32>(87100u, ~(~6540u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_4) -> i32 {
    var var_0 = vec2<i32>(arg_0.x, 22252i);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~(-u_input.c.x), _wgslsmith_add_i32(~2147483647i, ~(-28545i))), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(arg_0.x, -2147483647i)), 1i), u_input.b.x), vec3<i32>(-40994i, _wgslsmith_mod_i32(0i, func_3(arg_3)), ~(i32(-1i) * -u_input.a.x)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~select(vec4<i32>(-1i, 6182i, var_0.x, 30454i), vec4<i32>(u_input.a.x, u_input.b.x, -1i, arg_0.x), arg_1.a)), -vec4<i32>(var_0.x, var_1, firstLeadingBit(0i), firstLeadingBit(1i)));
    var_0 = -abs(~(firstTrailingBit(vec2<i32>(-3145i, 0i)) << (firstLeadingBit(arg_1.c) % vec2<u32>(32u))));
    var var_3 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-534f)))))))), ~func_1().c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(134f)), _wgslsmith_f_op_f32(trunc(-1289f)), _wgslsmith_f_op_f32(min(-1274f, -1000f))))), vec3<f32>(2733f, _wgslsmith_f_op_f32(-2537f + _wgslsmith_f_op_f32(810f + 179f)), _wgslsmith_f_op_f32(abs(-403f)))))).a;
    return -3881i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 666u;
    let var_1 = -186f;
    var_0 = select(firstLeadingBit(~4294967295u), 1u, true & all(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_2(Struct_1(true, u_input.c.x >= func_4(u_input.a.zzz, func_1(), vec4<bool>(true, true, true, true), Struct_4(25767u)), ~(~vec2<u32>(0u, 33469u)) & _wgslsmith_div_vec2_u32(~vec2<u32>(20494u, 67182u), _wgslsmith_clamp_vec2_u32(vec2<u32>(45498u, 23559u), vec2<u32>(4294967295u, 29230u), vec2<u32>(6902u, 1u)))));
    var_2 = Struct_2(func_1());
    var var_3 = -50516i;
    var_2 = Struct_2(Struct_1(true, (_wgslsmith_div_i32(0i, u_input.a.x) <= 0i) & false, vec2<u32>(var_2.a.c.x, var_2.a.c.x) >> (vec2<u32>(5600u ^ var_2.a.c.x, var_2.a.c.x) % vec2<u32>(32u))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(864f, var_1))) * 428f), var_1));
}

