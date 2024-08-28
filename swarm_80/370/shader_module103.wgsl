struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = vec2<f32>(-814f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_3) + _wgslsmith_f_op_f32(-arg_3))))));
    var var_1 = Struct_1(u_input.c, true, firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.c | vec3<u32>(arg_1.c.x, 0u, u_input.a.x), arg_1.c, arg_2.c >> (arg_2.c % vec3<u32>(32u))), arg_1.c, max(vec3<u32>(arg_1.c.x, u_input.a.x, u_input.a.x), arg_2.c) >> (~vec3<u32>(0u, arg_2.c.x, arg_1.c.x) % vec3<u32>(32u)))));
    global0 = vec3<u32>(16209u, 1u, 4294967295u);
    let var_2 = Struct_1(-_wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_2.a.x, arg_2.a.x) ^ vec2<i32>(arg_1.a.x, arg_2.a.x), vec2<i32>(u_input.c.x, -8354i), arg_1.b), vec2<i32>(reverseBits(-48153i), arg_2.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))) <= _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(f32(-1f) * -494f)), countOneBits(~var_1.c));
    return !((var_0.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(988f, arg_3)), arg_3)) || true);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(~(~(~vec2<i32>(0i, 1i))), ~vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.c.x), select(1i, -16225i, false)), u_input.b), !all(vec4<bool>(func_3(vec2<i32>(u_input.c.x, u_input.c.x), Struct_1(vec2<i32>(u_input.b.x, 39936i), false, vec3<u32>(u_input.a.x, global0.x, 4294967295u)), Struct_1(vec2<i32>(10485i, -1i), true, vec3<u32>(55694u, 33734u, 1u)), 742f), u_input.a.x <= 1u, true, any(vec4<bool>(false, false, true, true)))), vec3<u32>(global0.x, global0.x ^ ~14827u, ~4294967295u));
    global0 = vec3<u32>(0u, 14591u, 27277u);
    let var_1 = Struct_1(vec2<i32>(2147483647i, ~abs(var_0.a.x) | _wgslsmith_dot_vec2_i32(abs(vec2<i32>(19390i, 1127i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_0.a.x), vec2<i32>(var_0.a.x, u_input.b.x)))), !any(!(!vec4<bool>(false, false, var_0.b, true))), var_0.c);
    return ~(-(~_wgslsmith_dot_vec2_i32(-vec2<i32>(11221i, var_1.a.x), vec2<i32>(-42414i, var_1.a.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = ~_wgslsmith_add_i32(func_2(), min(-59544i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, 1i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 14488i, u_input.b.x), vec3<i32>(-1i, u_input.c.x, -25666i)))));
    let var_2 = true;
    let var_3 = vec4<i32>(-6523i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~(-u_input.c), ~_wgslsmith_sub_vec2_i32(vec2<i32>(4125i, -2147483647i), u_input.b)), 0i), -15235i, _wgslsmith_add_i32(1i ^ u_input.c.x, select(min(_wgslsmith_add_i32(-2147483647i, u_input.c.x), 1i), u_input.b.x & _wgslsmith_mod_i32(58643i, var_1), any(!vec3<bool>(false, var_2, false)))));
    let var_4 = vec2<u32>(1u, max(countOneBits(_wgslsmith_div_u32(var_0, var_0)), 0u)) | vec2<u32>(~41152u, ~(~_wgslsmith_mult_u32(76262u, global0.x)));
    return Struct_1(vec2<i32>(~0i, ~u_input.b.x), var_2, countOneBits(_wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 12258u)), firstTrailingBit(~u_input.a.xww))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(true | !any(vec4<bool>(true, true, true, true)));
    let var_1 = func_1();
    var var_2 = Struct_1(u_input.b, var_0, vec3<u32>(~1u, var_1.c.x, ~(56172u | global0.x) ^ _wgslsmith_mod_u32(~1u, u_input.a.x)));
    var var_3 = Struct_1(var_2.a, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mod_i32(~34775i, ~var_1.a.x)) > 0i, var_1.c);
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1753f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-222f - -594f), -329f, var_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1678f + 644f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1921f)) * -377f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-837f, 1148f)) * _wgslsmith_f_op_f32(ceil(-406f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2182f * -293f)))))));
    var var_5 = vec4<bool>(var_1.b, true, var_0, all(vec4<bool>(true, var_0, any(select(vec3<bool>(var_1.b, false, var_0), vec3<bool>(false, true, true), true)), var_3.b || !var_3.b)));
    var_2 = Struct_1(var_1.a, var_1.b, ~var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, _wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(select(851f, -117f, true))), _wgslsmith_f_op_f32(trunc(-1578f)))), vec3<i32>(var_3.a.x, 2147483647i, 28370i));
}

