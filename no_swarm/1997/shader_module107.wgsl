struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1721f;

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 8>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-512f, -137f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-565f, 2587f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, -344f) * vec2<f32>(-763f, -1223f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1290f, 474f)))))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(23207i, ~arg_1.x), -arg_1.x, -2147483647i), ~firstLeadingBit(-vec3<i32>(-34037i, arg_1.x, 2147483647i))));
    return arg_1.x;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_2(Struct_1(-1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -960f))))), -12670i >> (_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(u_input.c, u_input.b)) % 32u));
    var var_1 = vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2100f)) + var_0.b.x))), -524f);
    return abs(_wgslsmith_mult_i32(-2147483647i, -(func_3(vec2<i32>(var_0.c, 15160i), vec2<i32>(var_0.a.a, 8567i), Struct_1(2147483647i)) >> (max(1u, u_input.c) % 32u))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(2147483647i);
    global2 = array<vec4<i32>, 8>();
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(trunc(1446f));
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.a, -17812i), _wgslsmith_mod_i32(var_0.a, arg_0.a.a)), -var_1.a), -vec2<i32>(var_0.a, var_1.a)) << (abs(abs(vec2<u32>(min(u_input.b, u_input.a), ~u_input.d))) % vec2<u32>(32u));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = func_4(Struct_2(Struct_1(0i ^ _wgslsmith_clamp_i32(-54761i, -1i, 12846i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-569f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(991f, arg_0)), arg_0 > _wgslsmith_f_op_f32(arg_1 - arg_0))), -func_2(vec4<f32>(arg_0, arg_1, -440f, -1000f)) ^ 1i));
    let var_1 = false;
    let var_2 = (_wgslsmith_add_vec2_u32(vec2<u32>(~arg_2, ~arg_2), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, 14736u), abs(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(0u, 4294967295u)))) | vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, arg_2), vec2<u32>(0u, 6800u))), 19541u)) << ((vec2<u32>(_wgslsmith_div_u32(abs(36408u), 1u), 1u) & (vec2<u32>(u_input.b, 1u) | ~(vec2<u32>(u_input.c, arg_2) | vec2<u32>(70379u, u_input.a)))) % vec2<u32>(32u));
    let var_3 = select(select(vec3<bool>(true, var_0.c == var_0.a.a, _wgslsmith_f_op_f32(floor(var_0.b.x)) >= -396f), vec3<bool>(var_1, all(select(vec3<bool>(false, true, false), vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, var_1))), true), var_1 && ((true && var_1) && !var_1)), vec3<bool>(true, all(select(!vec3<bool>(false, var_1, var_1), !vec3<bool>(var_1, var_1, var_1), all(vec3<bool>(true, true, true)))), arg_1 > arg_1), !vec3<bool>(true, var_1, -667f >= _wgslsmith_f_op_f32(-1138f + arg_1)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)))));
    return firstTrailingBit(-14424i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(abs(_wgslsmith_mult_u32(~u_input.d, u_input.a << (1u % 32u))));
    var var_1 = Struct_1(2563i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2015f)), _wgslsmith_f_op_f32(670f - 618f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1879f * -429f) + _wgslsmith_f_op_f32(-1004f + -1542f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1063f + 814f), _wgslsmith_f_op_f32(410f + -1243f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 845f) + _wgslsmith_f_op_f32(-1040f * 2894f)))), func_1(_wgslsmith_div_f32(-1875f, _wgslsmith_f_op_f32(round(1520f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(357f)), _wgslsmith_f_op_f32(round(-408f)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 29894u, u_input.d), ~vec4<u32>(35388u, u_input.a, 25768u, u_input.d)), u_input.d)), ~_wgslsmith_mult_u32(max(u_input.b, _wgslsmith_clamp_u32(9229u, 40178u, 1u)), u_input.d));
}

