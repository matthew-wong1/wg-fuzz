struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-123f, -402f), 1000f, Struct_1(vec2<u32>(4294967295u, 4294967295u)), 19091i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
    let var_1 = _wgslsmith_f_op_f32(floor(arg_0.b));
    let var_2 = Struct_1(abs(vec2<u32>(arg_0.c.a.x ^ 56593u, ~u_input.c) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(9255u, u_input.c), arg_0.c.a), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.c.a.x, arg_0.c.a.x), global0.c.a))));
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(global0.a));
    return ~global0.c.a.x;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.b))));
    var var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1668f, 1000f)))))), -627f), _wgslsmith_f_op_f32(-global0.b), global0.c, global0.d);
    var_1 = false;
    return vec2<u32>(_wgslsmith_div_u32(~var_3.c.a.x, ~select(u_input.c, global0.c.a.x, arg_1.x)) >> (1u % 32u), _wgslsmith_div_u32(func_3(var_3) >> (0u % 32u), _wgslsmith_div_u32(~u_input.c, var_3.c.a.x)) | 1u);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = max(24557u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.c, ~(~arg_1)), 4294967295u, firstTrailingBit(_wgslsmith_div_u32(~0u, 4294967295u))));
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(global0.c.a, abs(firstTrailingBit(vec2<u32>(u_input.b, global0.c.a.x)) & vec2<u32>(arg_1, 0u))));
    var var_2 = global0.a.x;
    let var_3 = ~(~firstTrailingBit(vec3<i32>(global0.d, u_input.a, global0.d))) << (~(~vec3<u32>(var_1.a.x, ~arg_1, arg_0)) % vec3<u32>(32u));
    var var_4 = _wgslsmith_sub_u32(6817u, arg_3);
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, global0.a.x) + -1261f), _wgslsmith_f_op_f32(825f * 1220f)))), global0.a.x, Struct_1(vec2<u32>(func_3(Struct_2(vec2<f32>(global0.a.x, global0.b), 562f, global0.c, -2147483647i)), 2899u)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, -35456i), i32(-1i) * -2147483647i));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.c.a.x), select(vec2<u32>(24186u, 1u), func_2(false, vec4<bool>(true, false, false, false)), all(vec4<bool>(false, true, true, false)))), ~1483u >> (~(1u << (global0.c.a.x % 32u)) % 32u), !(!any(vec3<bool>(false, true, false)))), 1u, !select(vec3<bool>(select(false, true, false), true, any(vec3<bool>(false, true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true), true), (-4418i <= global0.d) & all(vec2<bool>(true, false))), ~func_3(Struct_2(global0.a, global0.a.x, global0.c, _wgslsmith_sub_i32(-1i, global0.d))));
    var var_1 = var_0.d;
    let var_2 = var_0.d;
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(-var_0.b);
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_f_op_vec2_f32(trunc(var_3.a)))), var_4, func_4(u_input.b, 9447u, select(vec3<bool>(all(vec2<bool>(true, false)), false, false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(false, false, true)), false), ~(~1u)).c, -_wgslsmith_add_i32(~var_2, 1i) | select(func_4(var_3.c.a.x & 1u, ~17339u, vec3<bool>(false, false, true), var_3.c.a.x).d, var_3.d, any(vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(337f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1659f * _wgslsmith_f_op_f32(global0.b * -1289f)))), global0.b), _wgslsmith_mult_u32(func_2(any(vec4<bool>(false, true, false, false)), vec4<bool>(false, any(vec2<bool>(true, true)), false, all(vec2<bool>(true, true)))).x, global0.c.a.x), _wgslsmith_div_f32(-1130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), firstLeadingBit(firstTrailingBit(~(-vec4<i32>(14838i, u_input.a, 1i, -2147483647i)))));
}

