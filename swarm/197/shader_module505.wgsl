struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
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

var<private> global0: vec2<u32>;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec4<i32>(-3144i, -1i, ~(-1i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 1701u), u_input.b) % 32u), _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(2147483647i, u_input.a.x, 2147483647i, -51584i) & ~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -47707i)), firstTrailingBit(~(~vec4<i32>(0i, 0i, -9073i, -34159i)))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 53875u, countOneBits(26684u)), vec3<u32>(u_input.b.x, max(1u, 38874u), select(4564u, global0.x, true))) ^ (global0.x ^ u_input.b.x), max(u_input.b.x, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(0u, u_input.b.x), _wgslsmith_mult_u32(firstTrailingBit(32289u), 0u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-605f, arg_0, 248f, arg_0) + vec4<f32>(1262f, 318f, -872f, arg_0)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1390f, arg_0, 946f))))), vec4<f32>(_wgslsmith_f_op_f32(-783f - arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f - -501f)), -367f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f - arg_0)), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_div_f32(arg_0, 161f), arg_0));
    let var_3 = true;
    var var_4 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(reverseBits(0u), u_input.b.x), 6908u ^ ~var_1.x, reverseBits(4294967295u), ~global0.x), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(20138u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(global0.x, 4294967295u, 2976u, u_input.b.x)), abs(vec4<u32>(1u, global0.x, u_input.b.x, 1u)), var_3), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, 0u), vec3<u32>(1u, 6756u, 1u)), reverseBits(85411u), u_input.b.x ^ 0u, _wgslsmith_mult_u32(var_1.x, var_1.x))));
    return _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(u_input.a.x, var_0.x, -1i), ~u_input.a.x, var_0.x) >> ((firstTrailingBit(~(1u & var_4.x)) & 4294967295u) % 32u);
}

fn func_4(arg_0: i32) -> vec3<f32> {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -707f), 104f, ~u_input.a.x > (arg_0 | _wgslsmith_sub_i32(2147483647i, u_input.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)))));
    var var_0 = -u_input.a.x;
    var var_1 = ~u_input.b.x;
    var var_2 = 299f;
    var var_3 = Struct_1(select(select(vec3<bool>(all(vec3<bool>(false, true, true)), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(sign(-549f)) <= _wgslsmith_f_op_f32(select(397f, 1035f, false))), true), 50191u, ~(_wgslsmith_div_i32(i32(-1i) * -2147483647i, -1i) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 8602u, 20018u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 286f))))) + 363f));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.d - _wgslsmith_f_op_f32(var_3.d + _wgslsmith_f_op_f32(f32(-1f) * -119f))))), _wgslsmith_f_op_f32(round(var_3.d)), 889f);
}

fn func_2() -> Struct_1 {
    global0 = u_input.b;
    var var_0 = Struct_2(0u, Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), ~(~(~63057u)), -68967i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1304f)) * -1909f))), _wgslsmith_f_op_vec3_f32(func_4(func_3(894f))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, false, false, true)), all(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, any(vec4<bool>(true, false, false, false)))), countOneBits(4294967295u), _wgslsmith_clamp_i32(48463i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -1i, -32625i, u_input.a.x)), abs(vec4<i32>(13105i, u_input.a.x, u_input.a.x, 12793i))), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -488f)), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), any(vec3<bool>(true, false, false)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d - var_0.b.d)) - -164f);
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), Struct_1(!select(!var_0.e.xyy, var_0.b.a, vec3<bool>(true, var_0.e.x, false)), _wgslsmith_mult_u32(~(~0u), countOneBits(~10891u)), -(~var_0.b.c >> (82539u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.d))) * var_0.b.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)) - vec3<f32>(var_0.c.x, 755f, 385f)))), Struct_1(vec3<bool>(true, true, any(var_0.d.a.zz)), ~min(~1u, 0u), var_0.b.c >> (_wgslsmith_mod_u32(~4294967295u, countOneBits(36816u)) % 32u), -1113f), !var_0.e);
    var var_2 = reverseBits(_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(var_0.d.b, u_input.b.x, 13300u)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.b.x, 1u), ~vec3<u32>(0u, 0u, 8538u))));
    return Struct_1(var_1.e.xww, 0u, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.b.c, -2147483647i), u_input.a.x), var_0.d.d);
}

fn func_1() -> StorageBuffer {
    let var_0 = ~_wgslsmith_div_u32(u_input.b.x, ~(~_wgslsmith_div_u32(u_input.b.x, global0.x)));
    var var_1 = func_2();
    global0 = vec2<u32>(select(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, global0.x, 65276u), vec4<u32>(global0.x, 12331u, global0.x, 4294967295u))), 112438u, true), abs(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(26136u, 25762u), min(u_input.b, u_input.b), true), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, u_input.b.x), firstTrailingBit(u_input.b)))));
    var var_2 = 62664u;
    global1 = 1392f;
    return StorageBuffer(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.c, u_input.a.x, var_1.c), vec4<i32>(var_1.c, u_input.a.x, var_1.c, 44150i)), -u_input.a.x) ^ 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-919f - -1000f);
    let x = u_input.a;
    s_output = func_1();
}

