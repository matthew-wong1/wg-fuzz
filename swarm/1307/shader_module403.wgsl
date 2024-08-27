struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

var<private> global0: Struct_3 = Struct_3(vec3<u32>(4294967295u, 4518u, 65536u), Struct_1(2147483647i, vec2<bool>(true, false), 4294967295u), Struct_1(i32(-2147483648), vec2<bool>(false, true), 4294967295u), vec2<u32>(10452u, 25985u), Struct_2(vec4<f32>(876f, -203f, -472f, -2578f), vec3<u32>(0u, 1u, 4294967295u), Struct_1(-25187i, vec2<bool>(true, false), 0u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    return ~reverseBits(global0.b.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    var var_0 = global0.b;
    global0 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, func_3(vec4<u32>(var_0.c, arg_1.x, 0u, 80679u)), max(arg_0.c, arg_0.c)), abs(arg_1.xzy & vec3<u32>(global0.b.c, 0u, 16320u))), Struct_1(55799i, select(vec2<bool>(any(vec4<bool>(false, true, global0.c.b.x, global0.e.c.b.x)), all(vec4<bool>(false, arg_0.b.x, var_0.b.x, true))), var_0.b, !(!vec2<bool>(false, var_0.b.x))), 4294967295u), arg_0, vec2<u32>(reverseBits(_wgslsmith_add_u32(54105u, 43009u)), 4294967295u), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1027f, 876f, -2573f) + global0.e.a))), vec3<u32>(global0.c.c, 29978u, _wgslsmith_dot_vec3_u32(~global0.e.b, vec3<u32>(global0.d.x, var_0.c, 1u))), arg_0));
    global0 = Struct_3(~((arg_1.xzz >> ((global0.e.b << (global0.e.b % vec3<u32>(32u))) % vec3<u32>(32u))) << ((abs(vec3<u32>(var_0.c, 4294967295u, 31800u)) >> (vec3<u32>(arg_1.x, 59134u, arg_1.x) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_1(-5484i, var_0.b, 36349u), arg_0, max(vec2<u32>(3968u, ~15772u), vec2<u32>(arg_1.x, arg_1.x) | global0.a.yz) ^ vec2<u32>(reverseBits(~arg_1.x), ~(~global0.b.c)), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.e.a, global0.e.a))), vec4<f32>(-1287f, _wgslsmith_f_op_f32(trunc(global0.e.a.x)), _wgslsmith_f_op_f32(1254f - -1131f), _wgslsmith_f_op_f32(abs(global0.e.a.x)))), global0.a, arg_0));
    var var_1 = Struct_4(arg_0);
    let var_2 = Struct_3(select(abs(~global0.e.b), ~_wgslsmith_div_vec3_u32(~global0.e.b, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, 1u, 20785u), vec3<u32>(arg_1.x, 26831u, arg_1.x))), select(select(select(vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_2, arg_2), vec3<bool>(var_1.a.b.x, var_0.b.x, var_1.a.b.x)), vec3<bool>(true, false, true), true), vec3<bool>(all(vec3<bool>(var_0.b.x, false, arg_2)), true, !global0.c.b.x), abs(arg_1.x) >= abs(global0.b.c))), global0.e.c, var_1.a, firstLeadingBit(~(~vec2<u32>(var_1.a.c, arg_1.x) & (vec2<u32>(arg_1.x, 4294967295u) | arg_1.wz))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.e.a * global0.e.a)))), ~vec3<u32>(firstTrailingBit(4294967295u), global0.c.c ^ var_1.a.c, _wgslsmith_div_u32(arg_0.c, 4294967295u)), global0.c));
    return ~((10286u << (var_1.a.c % 32u)) << (_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_div_u32(arg_1.x, var_0.c)), ~(var_2.b.c & 69616u)) % 32u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: i32) -> Struct_3 {
    var var_0 = ~abs(~max(28617u, func_2(global0.c, vec4<u32>(4294967295u, 1u, global0.e.c.c, global0.a.x), arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(global0.e.a * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.e.a.x + global0.e.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1320f), _wgslsmith_f_op_f32(f32(-1f) * -1118f), -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.e.a, global0.e.a) - vec4<f32>(global0.e.a.x, 1000f, 879f, -1767f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-756f, 150f, -875f, global0.e.a.x) * global0.e.a) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.e.a.x, 470f, global0.e.a.x, global0.e.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-293f, global0.e.a.x, global0.e.a.x, 1860f))), !(!vec4<bool>(false, arg_1.x, false, global0.c.b.x)))));
    var var_2 = global0.c;
    var_0 = min(var_2.c, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(52730u, global0.a.x, reverseBits(4294967295u)), 0u));
    let var_3 = Struct_3(vec3<u32>(var_2.c, ~var_2.c, firstTrailingBit(abs(firstTrailingBit(16154u)))), Struct_1(~(-arg_2), vec2<bool>(global0.e.c.b.x, arg_1.x), _wgslsmith_sub_u32(var_2.c & var_2.c, max(var_2.c, global0.d.x))), Struct_1(reverseBits(min(arg_2, global0.e.c.a)), arg_1, countOneBits(71468u)), ~select(select(~global0.a.yy, vec2<u32>(4294967295u, var_2.c), arg_1.x & global0.c.b.x), global0.a.xy << (firstTrailingBit(vec2<u32>(var_2.c, global0.c.c)) % vec2<u32>(32u)), false), global0.e);
    return Struct_3(vec3<u32>(0u, abs(~max(57846u, 1u)), ~4294967295u), Struct_1(_wgslsmith_add_i32(2147483647i, -2147483647i), var_2.b, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.c, global0.c.c), var_2.c) ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(12582u, 12634u), 6833u)), global0.b, global0.d, global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.a.yy;
    var var_1 = func_1(-vec3<i32>(global0.e.c.a, -select(-12410i, 16380i, global0.b.b.x), ~(~u_input.c)), global0.c.b, (~u_input.b ^ (_wgslsmith_mod_i32(5679i, u_input.c) | u_input.a)) << (14367u % 32u));
    var_1 = func_1(~(-_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, 0i, 51219i), abs(vec3<i32>(0i, -6276i, global0.b.a)))), global0.c.b, _wgslsmith_add_i32(-4808i | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.c.a, 0i, 80i), ~vec4<i32>(global0.b.a, -12417i, 29028i, 1i)), countOneBits(~(~var_1.c.a))));
    let var_2 = Struct_4(Struct_1(61405i, global0.c.b, _wgslsmith_mod_u32(14649u, global0.b.c)));
    global0 = Struct_3(global0.a, Struct_1(2147483647i, !(!var_1.c.b), global0.c.c), func_1(select(vec3<i32>(var_2.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.a, var_2.a.a), vec2<i32>(u_input.c, 22416i)), i32(-1i) * -3580i), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_1.c.a, var_1.b.a), ~vec3<i32>(var_2.a.a, var_1.b.a, 2147483647i)), false), vec2<bool>(var_2.a.b.x, global0.e.a.x >= _wgslsmith_f_op_f32(sign(var_1.e.a.x))), -2147483647i).c, vec2<u32>(_wgslsmith_dot_vec2_u32(global0.a.xz, ~var_1.d), 38713u), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_0.x)));
}

