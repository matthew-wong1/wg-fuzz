struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = -2147483647i;
    return _wgslsmith_clamp_i32(-1i, abs(var_0), _wgslsmith_dot_vec3_i32(~vec3<i32>(max(-14096i, var_0), ~(-44093i), arg_0.a.a), firstLeadingBit(min(~vec3<i32>(-37494i, 6172i, var_0), -vec3<i32>(0i, 46868i, var_0)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = ~func_3(Struct_2(Struct_1(2147483647i, vec4<f32>(302f, 845f, -915f, 1229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-389f * -542f) * _wgslsmith_div_f32(231f, -909f)) - 126f));
    let var_1 = !vec3<bool>(arg_0, true, !arg_0);
    var var_2 = !(!var_1.x);
    let var_3 = vec3<bool>(select(false, false, false), true, any(vec4<bool>(!var_1.x, all(!var_1.xz), true, reverseBits(var_0) <= -12771i)));
    var_2 = any(!var_1);
    return Struct_2(Struct_1(-var_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-985f, 3423f, -1754f, -634f), vec4<f32>(472f, 1991f, -340f, -253f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1814f), _wgslsmith_f_op_f32(157f * -1896f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = Struct_2(func_2(false).a);
    let var_1 = func_2(_wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_mult_u32(u_input.b.x, u_input.c)) <= max(u_input.b.x, max(_wgslsmith_sub_u32(13324u, u_input.b.x), ~34977u)));
    let var_2 = !arg_2;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_1.a.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.a.b.x, -1000f)), _wgslsmith_f_op_f32(ceil(var_0.a.b.x))), _wgslsmith_f_op_f32(-arg_0)))))));
    var_0 = arg_1;
    return 48848u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> Struct_2 {
    let var_0 = 0u;
    var var_1 = vec2<bool>(true, true);
    let var_2 = vec4<bool>(var_1.x, var_1.x, var_1.x, true);
    var var_3 = arg_0;
    var var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.ywx, vec3<u32>(var_0, u_input.c, var_0)) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, var_0, u_input.a.x), u_input.b.zyy), u_input.b.xxx), ~func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1711f)), func_2(!var_2.x), true & all(vec3<bool>(var_1.x, var_2.x, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.b.x * 511f)))), ~1u);
    return func_2(true);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = Struct_2(func_1(arg_0.a, -((vec3<i32>(41824i, arg_2, 13386i) & vec3<i32>(35316i, arg_0.a.a, arg_0.a.a)) << (_wgslsmith_add_vec3_u32(u_input.b.wxz, vec3<u32>(u_input.b.x, 76340u, 0u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(select(arg_3, arg_3, true))).a);
    var var_1 = firstTrailingBit(~(~67237u));
    var_0 = arg_0;
    var var_2 = Struct_1(-3922i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.a.b))) * _wgslsmith_f_op_vec4_f32(-var_0.a.b))));
    let var_3 = ~(~(~max(~48542u, ~u_input.b.x)));
    return _wgslsmith_add_i32(44015i, firstTrailingBit(-17094i | (~arg_2 << (var_3 % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(func_5(func_1(Struct_1(1i, vec4<f32>(-269f, 379f, -302f, -437f)), vec3<i32>(-1i, 2467i, 0i), 192f), _wgslsmith_sub_u32(55941u, u_input.a.x), _wgslsmith_div_i32(-2147483647i, -1285i), -2243f) >> (_wgslsmith_clamp_u32(~4294967295u, ~1u, 4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f - 1638f) * _wgslsmith_f_op_f32(1136f + -353f)), -471f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1343f), 436f)))));
    let var_1 = Struct_2(var_0);
    var var_2 = ~u_input.c >> (u_input.a.x % 32u);
    var_2 = func_4(-2006f, func_1(var_1.a, select(vec3<i32>(~33328i, 2147483647i, var_0.a), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-26936i, var_1.a.a, 0i), ~vec3<i32>(var_1.a.a, 63089i, var_0.a), vec3<i32>(24203i, 1043i, var_0.a)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1421f, 544f))))), false, var_0.b.x);
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(~(i32(-1i) * -34956i), _wgslsmith_clamp_i32(var_0.a, -var_0.a, ~1i)), (var_1.a.a | var_0.a) << (57243u % 32u)), (((vec2<i32>(var_1.a.a, -44382i) >> (vec2<u32>(60079u, u_input.a.x) % vec2<u32>(32u))) ^ -vec2<i32>(var_1.a.a, -2147483647i)) >> (u_input.b.yw % vec2<u32>(32u))) >> (firstLeadingBit(u_input.a) % vec2<u32>(32u)));
    var_2 = abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, u_input.c, 1891u) >> (~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b.x) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, u_input.b.x), u_input.b)) << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(0i, 0i ^ (var_0.a >> (u_input.b.x % 32u))));
}

