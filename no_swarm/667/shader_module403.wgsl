struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_0.c.c;
    return vec4<bool>(!(!all(!vec4<bool>(arg_0.d.b.x, arg_0.c.b.x, arg_0.e, false))), arg_0.d.b.x, true, !arg_0.c.b.x | (all(!arg_0.d.b) | select(true, 4705u != arg_0.c.d.x, true)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    var var_0 = -arg_0.zx;
    var var_1 = _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f) * -162f)));
    var var_2 = _wgslsmith_add_u32(1618u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u) & select(vec2<u32>(37997u, 5224u), vec2<u32>(56352u, 1u), false))) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~33650u, 0u, 4294967295u), ~max(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 3645u, 27361u))));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(91250u, 30412u, 4294967295u)), ~(~(~vec3<u32>(4294967295u, 4294967295u, 1u)))), vec4<bool>(true, true, true, true), -(~var_0.x) ^ 0i, vec3<u32>(1u, 1u, 1u), u_input.a);
    let var_4 = var_3.b.x;
    return -var_0.x;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_clamp_i32(func_3(-vec3<i32>(u_input.a, -51853i, 1i), _wgslsmith_f_op_f32(-1774f - 1000f)), select(~u_input.a, ~(-2147483647i), false), u_input.a), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(188f)) - _wgslsmith_f_op_f32(-1f)), Struct_1(1u, vec4<bool>(all(vec2<bool>(true, true)), !select(arg_0, true, arg_0), select(arg_0, !arg_0, arg_0), !any(vec3<bool>(true, arg_0, false))), u_input.a, firstTrailingBit(firstTrailingBit(~vec3<u32>(35583u, 1u, 0u))), u_input.a | (i32(-1i) * -u_input.a)), Struct_1(~(~1u), vec4<bool>(!(!arg_0), true, true, arg_0), -func_3(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -2306f)), ~vec3<u32>(0u, ~48540u, select(4294967295u, 23266u, true)), 1i), any(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0, false), arg_0), vec3<bool>(arg_0, all(vec3<bool>(true, false, arg_0)), !arg_0), vec3<bool>(true, !arg_0, arg_0))));
    let var_1 = Struct_1(_wgslsmith_div_u32(1u, var_0.c.d.x), vec4<bool>(!(!arg_0), !any(!var_0.d.b.ywy), false, var_0.d.b.x), var_0.c.c, vec3<u32>(~(~_wgslsmith_sub_u32(var_0.d.a, var_0.c.a)), 0u, var_0.d.a), -26830i);
    var var_2 = ~var_0.a.x;
    var_2 = firstTrailingBit(i32(-1i) * -(var_1.c & var_1.c));
    let var_3 = var_0.b;
    return var_0.d.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))));
    var_0 = !(!func_1(Struct_2(~vec2<i32>(0i, u_input.a), _wgslsmith_f_op_f32(222f + -346f), Struct_1(0u, vec4<bool>(false, false, var_0.x, var_0.x), 7611i, vec3<u32>(66920u, 1u, 1u), -9314i), Struct_1(85779u, vec4<bool>(var_0.x, var_0.x, var_0.x, true), u_input.a, vec3<u32>(51016u, 92496u, 43674u), u_input.a), false), vec2<f32>(_wgslsmith_f_op_f32(328f + -176f), -184f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) + _wgslsmith_f_op_f32(f32(-1f) * -468f))));
    var var_1 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(40178u, 44162u, 4294967295u, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 45251u, 26044u, 16627u))));
    var_0 = vec4<bool>(!(u_input.a < _wgslsmith_mod_i32(abs(59251i), u_input.a)), all(var_0.zy), _wgslsmith_clamp_i32(-16343i, u_input.a, -9823i) == func_2(select(var_0.x, any(vec3<bool>(var_0.x, true, var_0.x)), true)), false);
    let var_2 = Struct_1(var_1.x, select(select(vec4<bool>(false, true, false, any(vec4<bool>(true, var_0.x, false, false))), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, false), true), any(!vec3<bool>(var_0.x, var_0.x, true))), !(!select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), !vec4<bool>(!var_0.x, true, var_0.x, false)), i32(-1i) * -1i, abs(var_1.yzw), _wgslsmith_mod_i32(u_input.a, 17189i));
    var_1 = vec4<u32>(_wgslsmith_add_u32(var_1.x, 1u), var_2.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_2.d.x, _wgslsmith_mod_u32(3243u, 1u)), 1u), vec2<u32>(~4294967295u, 1u)), 4294967295u);
    var var_3 = Struct_2(_wgslsmith_mod_vec2_i32(~firstTrailingBit(-vec2<i32>(0i, var_2.c)), _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_2.e), vec2<i32>(0i, var_2.e)), abs(-vec2<i32>(u_input.a, var_2.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(794f))), Struct_1(~_wgslsmith_add_u32(max(var_1.x, 1u), var_2.d.x << (4294967295u % 32u)), select(vec4<bool>(true, !var_2.b.x, false, var_1.x > var_2.a), !func_1(Struct_2(vec2<i32>(0i, 1i), 1691f, Struct_1(1u, var_2.b, 1i, var_2.d, var_2.e), Struct_1(var_1.x, vec4<bool>(false, var_2.b.x, false, var_0.x), u_input.a, vec3<u32>(8147u, 1u, var_1.x), u_input.a), var_2.b.x), vec2<f32>(-363f, -161f), -873f), all(vec4<bool>(true, false, var_2.b.x, false))), u_input.a, _wgslsmith_sub_vec3_u32(firstTrailingBit(var_2.d) & vec3<u32>(1u, var_1.x, var_2.d.x), var_1.zxz), firstTrailingBit(1i) & ~(var_2.e & 1i)), var_2, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(~u_input.a, _wgslsmith_div_i32(2147483647i, u_input.a)) >> (1u % 32u), -64345i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1682f, -618f, -1272f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, 1056f, var_3.b), vec3<f32>(1124f, var_3.b, 872f), vec3<bool>(var_0.x, var_2.b.x, false))))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-706f, var_3.b, -1440f), vec3<f32>(-238f, 711f, var_3.b))))));
}

