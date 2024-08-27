struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = -603f;
    var_0 = -148f;
    var_0 = _wgslsmith_f_op_f32(142f - 188f);
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-615f - 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1390f, -1159f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1107f))));
    var_0 = 331f;
    return !(!(!(!vec2<bool>(true, arg_0))));
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(vec2<bool>(true, !any(vec4<bool>(true, true, true, true))), vec2<bool>(all(vec2<bool>(true, true)), any(func_3(false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec2<bool>(_wgslsmith_mod_u32(1u, u_input.d.x << (u_input.c.x % 32u)) != max(u_input.c.x, u_input.c.x), false));
    var var_1 = Struct_2(_wgslsmith_sub_vec3_u32(abs(u_input.d), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(u_input.d.x, u_input.c.x, 40996u)), abs(~u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-604f)) * _wgslsmith_f_op_f32(step(311f, _wgslsmith_div_f32(-1406f, -1699f)))), reverseBits(u_input.d.x), abs(u_input.a.x), u_input.b.x);
    var_1 = Struct_2(var_1.a | var_1.a, 1000f, _wgslsmith_clamp_u32(countOneBits(~_wgslsmith_div_u32(1u, u_input.c.x)), var_1.a.x, firstLeadingBit(var_1.c)), var_1.d, max(i32(-1i) * -(~9095i), ~54366i));
    let var_2 = Struct_2(countOneBits(var_1.a), _wgslsmith_f_op_f32(abs(var_1.b)), ~(~0u << (~var_1.a.x % 32u)), 1i ^ max(i32(-1i) * -var_1.d, -33701i), ~27302i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))), -763f)));
    return Struct_1(vec2<u32>(~1u, 94032u), var_2.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = all(vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(arg_2 >= 923f, func_3(false).x, false))));
    var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-911f, arg_2, arg_2, arg_2), vec4<f32>(-1018f, arg_2, arg_2, -774f))) + vec4<f32>(-810f, arg_2, 517f, arg_2)))))) * vec4<f32>(_wgslsmith_div_f32(-915f, _wgslsmith_f_op_f32(-928f + 288f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + -1393f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_2))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2287f, arg_2))), _wgslsmith_f_op_f32(-arg_2))), 403f));
    let var_2 = _wgslsmith_mod_u32(1u, func_2().a.x);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -455f, arg_2, -122f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, -1038f, 1000f, 546f)))))))), vec4<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-293f, arg_2))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(min(var_1.x, 335f)))), 521f, _wgslsmith_f_op_f32(abs(-138f))));
    return Struct_2(firstTrailingBit(u_input.c), var_1.x, 1u, _wgslsmith_div_i32(u_input.b.x, 0i), _wgslsmith_add_i32(1i, ~(-54931i)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = !(arg_0.b <= _wgslsmith_dot_vec2_i32(u_input.a, u_input.b.zx));
    var var_1 = var_0;
    var_1 = select(true, true, u_input.c.x != _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, arg_0.a.x), ~vec4<u32>(1u, 1u, arg_0.a.x, arg_0.a.x)), 1u << ((u_input.c.x & u_input.c.x) % 32u), ~_wgslsmith_sub_u32(arg_0.a.x, u_input.c.x)));
    var var_2 = func_4(func_2(), Struct_1(arg_0.a, _wgslsmith_mult_i32(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-621f + _wgslsmith_div_f32(-674f, -1652f)), _wgslsmith_f_op_f32(sign(-1101f)))));
    var var_3 = vec3<u32>(4294967295u ^ ~_wgslsmith_mult_u32(var_2.c, var_2.c), ~(~4294967295u), 4294967295u);
    return var_3.x;
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = 0u;
    var var_1 = arg_0;
    let var_2 = any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), -var_1.d >= ~u_input.b.x), true));
    return select(!vec2<bool>(var_2 || true, any(vec2<bool>(true, var_2))), vec2<bool>(!(!var_2), select(u_input.b.x > (var_1.e >> (u_input.c.x % 32u)), var_2, var_2)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, -989f))) < -953f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-304f - -1650f)));
    let var_1 = !all(vec3<bool>(false, any(vec3<bool>(true, true, true)), true));
    var var_2 = func_5(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), max(~u_input.d, u_input.c)), -1027f, _wgslsmith_mod_u32(~func_1(Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), 9614i)), ~(~u_input.d.x)), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_add_i32(38804i, u_input.b.x)), min(u_input.a.x, u_input.b.x)), u_input.b.x));
    let var_3 = Struct_2(~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(667f, 157f)) * -631f)), ~(~0u), firstLeadingBit(func_4(func_2(), Struct_1(vec2<u32>(15850u, 4294967295u), 39725i), _wgslsmith_f_op_f32(f32(-1f) * -473f)).d) >> (1u % 32u), _wgslsmith_dot_vec4_i32(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 326i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, u_input.a.x))), vec4<i32>(-29168i, 62583i, 7612i, func_4(Struct_1(vec2<u32>(82392u, 21823u), 7378i), func_2(), _wgslsmith_f_op_f32(sign(-761f))).d)));
    let var_4 = ~(((_wgslsmith_div_u32(var_3.c, var_3.c) >> (0u % 32u)) ^ _wgslsmith_div_u32(countOneBits(1u), 1u)) ^ ~(37834u >> (0u % 32u)));
    var var_5 = Struct_1(u_input.c.xy, i32(-1i) * -1i);
    var var_6 = _wgslsmith_div_u32(~min(12269u, ~(0u << (0u % 32u))), reverseBits(u_input.d.x));
    var var_7 = var_5.a;
    var_2 = vec2<bool>(!var_2.x, all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

