struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = any(arg_3.e.xzy);
    let var_1 = ~reverseBits(vec3<u32>(~arg_3.c, abs(0u), max(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_2.c, 4294967295u), vec3<u32>(58008u, 0u, arg_2.c)))));
    return u_input.b;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mod_i32(2147483647i, (i32(-1i) * -1i) ^ func_3(u_input.c, Struct_2(35765i), Struct_1(u_input.d, _wgslsmith_f_op_f32(-395f + -776f), u_input.c.x, ~vec3<i32>(-2147483647i, u_input.b, u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), Struct_1(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(-42477i, u_input.a.x)), 831f, 4294967295u ^ u_input.c.x, vec3<i32>(u_input.d.x, u_input.a.x, -39619i) ^ vec3<i32>(-28154i, u_input.a.x, 18465i), vec4<bool>(true, true, true, true))));
    var var_1 = Struct_2(~firstLeadingBit(2147483647i));
    let var_2 = Struct_1(-(~_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(var_0, var_0)) << ((vec2<u32>(1u, u_input.c.x) | u_input.c) % vec2<u32>(32u))), _wgslsmith_f_op_f32(190f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f * 114f)))), 5044u, vec3<i32>(~35933i, -1i, _wgslsmith_div_i32(var_0, abs(_wgslsmith_sub_i32(var_0, var_0)))), vec4<bool>(true, all(vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, true)))), true, select(~var_1.a <= -1020i, true, false)));
    var var_3 = max(vec2<u32>(0u, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(~var_2.c, var_2.c << (46577u % 32u)))), vec2<u32>(4294967295u, u_input.c.x & 26372u));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f * 337f))), _wgslsmith_f_op_f32(var_2.b + -620f), 1183f, _wgslsmith_f_op_f32(step(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.b)))) + -322f))));
    return 157f;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<u32> {
    let var_0 = Struct_2(-41818i);
    let var_1 = ~(-(~max(vec3<i32>(2147483647i, u_input.d.x, -2147483647i), vec3<i32>(u_input.b, var_0.a, var_0.a))) & ~max(reverseBits(vec3<i32>(2416i, var_0.a, -15716i)), select(vec3<i32>(0i, 5262i, u_input.a.x), vec3<i32>(var_0.a, u_input.b, u_input.a.x), vec3<bool>(false, true, arg_1))));
    var var_2 = u_input.c;
    let var_3 = Struct_1(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(645f, -1134f), 946f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(222f, -2189f)) * _wgslsmith_div_f32(1845f, -644f)))), 11238u, var_1, select(vec4<bool>(select(!arg_1, true, arg_1), !all(vec3<bool>(true, arg_1, true)), var_0.a != -3334i, !arg_1), !select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, true, arg_1, false), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(true, true, false, arg_1), vec4<bool>(arg_1, true, true, arg_1))), arg_1));
    var_2 = vec2<u32>(var_2.x, u_input.c.x);
    return _wgslsmith_sub_vec4_u32(vec4<u32>(71889u, ~1u, 15809u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(29922u, var_2.x, var_2.x, 27325u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(29860u, 1u, 4294967295u, 5022u), vec4<u32>(54364u, 45409u, var_2.x, var_3.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, u_input.c.x, u_input.c.x, 1u), vec4<u32>(var_2.x, var_3.c, var_2.x, 35278u))))), firstLeadingBit(_wgslsmith_add_vec4_u32(min(firstLeadingBit(vec4<u32>(0u, 0u, 128563u, 35093u)), reverseBits(vec4<u32>(1u, 1u, 4294967295u, arg_0))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_3.c, var_2.x, var_3.c), vec4<u32>(var_3.c, u_input.c.x, u_input.c.x, 1u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 75453u, u_input.c.x, var_3.c), vec4<u32>(6223u, arg_0, 49951u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(func_1(18568u, true), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(44746u, 0u, 3817u, 11883u), vec4<bool>(false, false, false, false)), vec4<u32>(772u, 34031u, 18671u, 5151u) & vec4<u32>(u_input.c.x, 75424u, 0u, 92399u)) & _wgslsmith_mult_vec4_u32(min(vec4<u32>(11453u, 49981u, 4294967295u, 9933u), vec4<u32>(u_input.c.x, 106189u, u_input.c.x, 1u)), vec4<u32>(4294967295u, 0u, 37706u, 1u) << (vec4<u32>(u_input.c.x, 57570u, 1u, 50587u) % vec4<u32>(32u)))), _wgslsmith_div_vec3_f32(vec3<f32>(1049f, -461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(368f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1401f, 393f, -197f) + vec3<f32>(-1002f, 720f, 627f)) * vec3<f32>(-2218f, 1000f, 651f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, 1133f, -396f))), vec3<bool>(true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(704f - -169f) * _wgslsmith_f_op_f32(762f + -1528f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) - -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(227f, -344f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(293f, 685f)))))), -1i, ~vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 55003u), 0u, 7843u) & _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(14347u, u_input.c.x, 75568u), vec3<u32>(u_input.c.x, 59119u, 1u)) & select(vec3<u32>(18614u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<bool>(false, false, true)), vec3<u32>(43457u, u_input.c.x, ~49695u), ~func_1(u_input.c.x, false).yyy));
}

