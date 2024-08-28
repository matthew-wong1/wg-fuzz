struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = _wgslsmith_sub_u32(~u_input.e, 4934u);
    let var_1 = 624f;
    let var_2 = u_input.b.xx >> (abs(~(~vec2<u32>(0u, var_0)) & abs(~vec2<u32>(u_input.b.x, 4294967295u))) % vec2<u32>(32u));
    var var_3 = Struct_2(firstTrailingBit(1u), Struct_1(any(vec4<bool>(arg_0.a.a.b.a, !arg_0.a.a.e.x, true, true && arg_0.a.a.b.a)), var_0, -351f, var_0), ~_wgslsmith_dot_vec3_i32(u_input.a.zwy, vec3<i32>(arg_0.a.a.c, u_input.a.x, arg_0.a.a.c) | u_input.a.yyx) << (26492u % 32u), !select(arg_0.a.a.d, !(!arg_0.a.a.d), all(select(vec4<bool>(true, true, arg_0.a.a.b.a, arg_0.a.a.d.x), vec4<bool>(false, false, arg_0.a.a.d.x, arg_0.a.a.d.x), false))), !vec2<bool>(arg_0.a.a.e.x, true));
    var var_4 = Struct_4(abs(firstLeadingBit(max(_wgslsmith_div_vec3_u32(vec3<u32>(15289u, 0u, 0u), vec3<u32>(var_3.b.d, var_3.a, 4294967295u)), _wgslsmith_mod_vec3_u32(u_input.b, u_input.b)))), arg_0.a.a, ~firstTrailingBit(vec4<i32>(arg_0.a.a.c | 0i, var_3.c, countOneBits(-17909i), u_input.a.x)), 637f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - arg_0.a.a.b.c));
    return ~(-arg_0.a.a.c);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = -u_input.a.x;
    let var_1 = Struct_4(~(~countOneBits(~vec3<u32>(4294967295u, u_input.b.x, 38509u))), Struct_2(1u, Struct_1(true, u_input.e, _wgslsmith_f_op_f32(floor(-658f)), _wgslsmith_dot_vec2_u32(vec2<u32>(44742u, 4294967295u), vec2<u32>(1u, 2933u))), _wgslsmith_mult_i32(69011i << (u_input.e % 32u), -u_input.a.x), !vec3<bool>(select(true, false, true), true, false), vec2<bool>(true, true)), -vec4<i32>(-1i, func_3(Struct_5(Struct_3(Struct_2(4294967295u, Struct_1(true, u_input.c, 707f, u_input.e), arg_0.x, vec3<bool>(false, true, false), vec2<bool>(false, true))))), _wgslsmith_dot_vec3_i32(~u_input.a.xyy, abs(vec3<i32>(u_input.a.x, arg_0.x, -55055i))), max(-16488i, countOneBits(arg_0.x))), true);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1492f))))));
    var var_3 = vec4<i32>(u_input.d, arg_0.x, u_input.d | var_1.c.x, abs(~countOneBits(min(u_input.a.x, u_input.d))));
    var var_4 = Struct_3(var_1.b);
    return var_4.a.b;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(u_input.a, u_input.a);
    let var_1 = func_2(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(min(1211i, u_input.d), reverseBits(-1i), ~var_0.x), i32(-1i) * -1i), ~countOneBits(var_0.xxz)));
    let var_2 = vec4<i32>(u_input.d, _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(-1i, -2147483647i, -3296i, var_0.x)), var_0)), -39514i, ~(-_wgslsmith_sub_i32(50757i, var_0.x)));
    let var_3 = Struct_1((_wgslsmith_f_op_f32(step(var_1.c, 324f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, 830f))) || all(vec4<bool>(select(var_1.a, true, arg_0), 26879u > u_input.c, !arg_0, var_1.a)), var_1.d, _wgslsmith_f_op_f32(floor(var_1.c)), 75433u);
    var var_4 = Struct_4(~(~vec3<u32>(~21948u, var_1.b | var_3.d, 46755u)), Struct_2(~_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(var_3.b, 1u)), var_3, min(~_wgslsmith_sub_i32(1i, u_input.d), var_2.x), !vec3<bool>(true, true, any(vec4<bool>(false, var_1.a, false, false))), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(var_3.a, var_1.a), vec2<bool>(var_3.a, arg_0))), func_2(vec3<i32>(var_2.x, 2147483647i, 0i)).a & var_1.a)), ~vec4<i32>(u_input.a.x, -_wgslsmith_add_i32(-2147483647i, 2147483647i), select(-6050i << (u_input.b.x % 32u), -var_2.x, true), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.d, var_0.x, var_0.x), vec4<i32>(-24311i, 0i, 0i, u_input.a.x) | vec4<i32>(var_2.x, -1i, var_0.x, u_input.d))), var_3.a);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-632f)))) * _wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(f32(-1f) * -242f)))), _wgslsmith_mult_u32(func_1(true) >> ((_wgslsmith_mod_u32(10192u, 19606u) & u_input.c) % 32u), max(497u, u_input.b.x)));
    var_0 = Struct_1(false, u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -832f))))), ~(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, var_0.b), _wgslsmith_div_u32(u_input.c, 1u)) ^ abs(var_0.d)));
    var var_1 = any(select(!vec2<bool>(true, var_0.a), vec2<bool>(true, true), vec2<bool>(true, true))) || true;
    let var_2 = _wgslsmith_f_op_f32(-var_0.c);
    var var_3 = Struct_5(Struct_3(Struct_2(4294967295u, func_2(vec3<i32>(13049i, 50549i, u_input.a.x)), ~u_input.d, select(!vec3<bool>(var_0.a, var_0.a, true), !vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a)), vec2<bool>(func_2(vec3<i32>(u_input.a.x, 2147483647i, -71696i)).a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(var_3.a.a.c, var_3.a.a.c)), vec2<i32>(reverseBits(var_3.a.a.c) | -u_input.a.x, -48188i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -590f) + vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2)), var_3.a.a.b.c)));
}

