struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false), Struct_1(true), vec2<i32>(0i, 26846i), Struct_1(true), Struct_1(false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<u32> {
    global0 = arg_2;
    return ~vec4<u32>(~(~u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), ~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 0u), select(~vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u) << (vec4<u32>(48521u, 1u, u_input.b.x, 3348u) % vec4<u32>(32u)), vec4<bool>(true, false, true, arg_1))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(47142u, 16541u, u_input.b.x, 145883u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (abs(u_input.b.x) % 32u), u_input.b.x, global0.b.a), u_input.b.x);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = Struct_2(Struct_1(global0.b.a), Struct_1(!((global0.c.x != 0i) && global0.e.a)), ~vec2<i32>(global0.c.x, 2147483647i) ^ min(vec2<i32>(~global0.c.x, 2147483647i), select(vec2<i32>(1i, global0.c.x) | u_input.c, abs(global0.c), vec2<bool>(global0.a.a, global0.b.a))), global0.b, global0.e);
    let var_0 = _wgslsmith_dot_vec4_i32(((firstLeadingBit(vec4<i32>(global0.c.x, -2834i, global0.c.x, 0i)) << (~vec4<u32>(arg_0, 85238u, 40288u, 1u) % vec4<u32>(32u))) << (~vec4<u32>(26629u, u_input.b.x, 18339u, arg_0) % vec4<u32>(32u))) << (~max(firstTrailingBit(vec4<u32>(0u, 0u, 0u, 0u)), func_3(true, false, Struct_2(global0.e, Struct_1(true), global0.c, Struct_1(global0.b.a), Struct_1(false)), u_input.d)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(~(~(-2147483647i)), global0.c.x, -u_input.d.x, 7219i), vec4<i32>(_wgslsmith_mult_i32(global0.c.x, global0.c.x | -2147483647i), ~(~(-1i)), -8620i, abs(_wgslsmith_mult_i32(global0.c.x, u_input.c.x)))));
    let var_1 = _wgslsmith_add_u32(max(1u, u_input.b.x), abs(66963u) >> (arg_0 % 32u));
    var var_2 = -1120f;
    var_2 = -1948f;
    return Struct_2(global0.a, Struct_1(global0.b.a), ~(vec2<i32>(i32(-1i) * -1i, var_0) >> (u_input.b % vec2<u32>(32u))), Struct_1(global0.c.x < global0.c.x), Struct_1(true));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(func_2(1u).a, func_2(arg_2.x | u_input.b.x).a, _wgslsmith_mult_vec2_i32(max(_wgslsmith_sub_vec2_i32(global0.c, global0.c ^ global0.c), vec2<i32>(_wgslsmith_mod_i32(global0.c.x, -2147483647i), abs(global0.c.x))), vec2<i32>(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a), _wgslsmith_clamp_i32(arg_3.c.x, global0.c.x, u_input.c.x), _wgslsmith_clamp_i32(-42676i, u_input.c.x, arg_3.c.x)), 1i)), func_2(1u).a, func_2(arg_2.x).a);
    var var_1 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.c.x, ~(11602i << (u_input.b.x % 32u)), firstTrailingBit(22228i), countOneBits(4574i))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-46575i, 1i, firstLeadingBit(2147483647i), _wgslsmith_mod_i32(u_input.c.x, -59539i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(global0.c.x, u_input.c.x, -1i, var_0.c.x), vec4<i32>(-5510i, arg_3.c.x, -35713i, 45677i), false), ~vec4<i32>(-1i, global0.c.x, -1i, -42410i)))));
    global0 = Struct_2(var_0.a, Struct_1(true), countOneBits(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-44312i, arg_3.c.x), var_1.yy)) << (vec2<u32>(1u, abs(11904u)) % vec2<u32>(32u))), func_2(select(select(52200u, ~arg_2.x, arg_2.x > u_input.b.x), ~arg_2.x, !all(vec4<bool>(true, true, true, global0.d.a)))).e, func_2(~4294967295u).b);
    var_0 = Struct_2(global0.b, func_2(arg_2.x).e, abs(arg_3.c), var_0.a, func_2(~4294967295u).b);
    let var_2 = Struct_3(func_2(firstTrailingBit(firstTrailingBit(1u) & max(arg_2.x, 0u))).e, func_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), _wgslsmith_dot_vec3_u32(~arg_2.wyx, firstTrailingBit(vec3<u32>(1u, arg_2.x, 77154u))))).e, global0.d.a, ~0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) + _wgslsmith_f_op_f32(arg_1.x * -296f)))));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1184f - -1000f))), _wgslsmith_f_op_f32(func_4(true, vec2<f32>(-1179f, 460f), vec4<u32>(1u, 31561u, 1u, u_input.b.x) ^ vec4<u32>(var_0, 71539u, 10004u, u_input.b.x), func_2(u_input.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(floor(-2471f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, 1813f, -794f, 319f))))), true)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-591f, 1194f, -2622f, -972f) + vec4<f32>(108f, 936f, 2079f, -703f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1160f, -703f, -1213f, 2009f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-679f, -622f, 139f, -1119f), vec4<f32>(610f, 373f, 820f, -243f), vec4<bool>(false, true, global0.e.a, true))), !vec4<bool>(false, global0.e.a, global0.b.a, global0.d.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, 1108f, 1260f, 596f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(231f, -631f, 1060f, -1000f)))) - vec4<f32>(-1000f, 1041f, 101f, 353f)), select(select(vec4<bool>(global0.a.a, global0.a.a, true, true), vec4<bool>(true, false, global0.b.a, global0.e.a), !vec4<bool>(global0.d.a, global0.a.a, true, global0.e.a)), select(!vec4<bool>(global0.a.a, false, true, global0.d.a), select(vec4<bool>(global0.a.a, false, false, false), vec4<bool>(global0.d.a, false, global0.b.a, true), vec4<bool>(false, false, true, global0.e.a)), all(vec3<bool>(true, true, global0.e.a))), all(vec3<bool>(true, global0.e.a, global0.a.a))))));
    var var_2 = Struct_2(Struct_1(any(vec3<bool>(func_2(2020u).a.a, !global0.a.a, all(vec4<bool>(true, global0.a.a, global0.e.a, true))))), global0.e, select(_wgslsmith_sub_vec2_i32(func_2(30338u).c ^ _wgslsmith_mult_vec2_i32(global0.c, u_input.d), func_2(~u_input.b.x).c), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(20950i, u_input.a), global0.c), -vec2<i32>(1i, 1i)), !global0.a.a), func_2(~_wgslsmith_mult_u32(~var_0, abs(var_0))).e, func_2(u_input.b.x).e);
    let var_3 = var_2.c;
    var var_4 = var_1.x;
    return func_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 2992u), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_2(func_2(u_input.b.x).d, Struct_1(global0.d.a), ~firstLeadingBit(global0.c), func_2(u_input.b.x).b, func_2(u_input.b.x).b);
    let var_0 = ~(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(0u, 1u, 36509u), vec3<u32>(0u, u_input.b.x, 32147u), vec3<bool>(true, global0.e.a, global0.d.a)), vec3<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), abs(u_input.b.x), ~1u)) << ((vec3<u32>(1u, ~33443u, 1u) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 19333u, 44413u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) & (vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) << (vec3<u32>(1u, 19386u, 32105u) % vec3<u32>(32u))))) % vec3<u32>(32u)));
    global0 = func_1();
    var var_1 = Struct_2(func_1().b, global0.a, global0.c, Struct_1(global0.e.a), global0.a);
    var_1 = Struct_2(func_2(~(~firstLeadingBit(1u))).e, global0.a, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(global0.c, -vec2<i32>(global0.c.x, global0.c.x)), ~select(vec2<i32>(var_1.c.x, global0.c.x) & vec2<i32>(global0.c.x, 11894i), global0.c, !vec2<bool>(global0.d.a, true))), func_2(~var_0.x).a, global0.b);
    let var_2 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(640f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, -320f, 1066f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 267f, 847f), vec3<f32>(-1612f, -455f, 1117f), false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1966f, -752f, -171f) * vec3<f32>(-1207f, 345f, 845f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-2395f, 239f, -732f), vec3<f32>(-1161f, 1000f, -1942f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(534f, -744f, 297f)))))), true)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, 1732u, u_input.b.x), vec4<u32>(25344u, var_0.x, 34929u, var_0.x)), vec4<u32>(82780u, 13869u, var_0.x, 52398u) | vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, u_input.b.x)), vec4<u32>(~var_0.x, _wgslsmith_div_u32(64769u, 27967u), u_input.b.x << (u_input.b.x % 32u), _wgslsmith_sub_u32(u_input.b.x, 39920u))), (~1u & ~var_0.x) ^ ~_wgslsmith_mult_u32(var_0.x, u_input.b.x)), firstTrailingBit(var_0.x));
}

