struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = vec2<u32>(4294967295u, firstLeadingBit(~17141u));
    var var_1 = ~arg_0;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1032f, 1647f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1277f, -1668f)))))));
    var var_3 = 32223u;
    var_3 = 1u ^ ~(~u_input.c);
    return _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0, 46320u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), vec4<u32>(var_0.x, var_0.x, 1u, 92426u))), _wgslsmith_mult_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0, u_input.a), vec3<u32>(u_input.c, 4294967295u, u_input.c)), 0u << (1u % 32u), false), u_input.a), ~(u_input.a & select(arg_0, 7529u, true))), firstLeadingBit(~(~vec4<u32>(var_0.x, 4294967295u, var_0.x, 30022u) << (vec4<u32>(51434u, 37100u, 24551u, 45003u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(abs(~(-vec2<i32>(-1i, arg_1.a.x))), arg_2.d.b, var_0.d.c);
    let var_2 = Struct_2(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(arg_1.b.zx, ~vec2<u32>(4294967295u, arg_0.b.x)), firstTrailingBit(vec2<u32>(firstTrailingBit(arg_1.b.x), arg_0.b.x))), ~var_1.a, abs(~(~(37498u ^ arg_0.b.x))), Struct_1(arg_1.a, select(~arg_0.b, firstTrailingBit(reverseBits(arg_2.d.b)), vec4<bool>(select(false, true, false), 4294967295u > arg_2.d.b.x, false, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, 495f, -1823f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-911f, -432f, -837f), arg_1.c)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.d.c.x, arg_2.d.c.x, 248f)))), true))));
    var var_3 = arg_2.d;
    var_3 = arg_0;
    return -40320i;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_mod_i32(~(-u_input.b.x), func_4(Struct_1(vec2<i32>(_wgslsmith_div_i32(6944i, -2147483647i), _wgslsmith_mult_i32(u_input.b.x, u_input.d)), func_3(98278u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-335f, -339f, 1294f), vec3<f32>(831f, 1000f, -688f)))), Struct_1(u_input.b, _wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, u_input.a, 3128u, u_input.a), vec4<u32>(25583u, u_input.c, u_input.a, 0u)), firstTrailingBit(vec4<u32>(4294967295u, u_input.c, u_input.a, u_input.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-185f, -287f, 216f) + vec3<f32>(-943f, -530f, 2029f))))), Struct_2(~(vec2<u32>(u_input.c, u_input.a) & vec2<u32>(u_input.a, u_input.a)), select(select(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.b.x, u_input.b.x), true), vec2<i32>(u_input.d, -30472i), true), u_input.c, Struct_1(u_input.b, ~vec4<u32>(u_input.a, 1573u, 64549u, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1240f, 523f, 563f) - vec3<f32>(402f, -272f, -916f)))), -vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -36555i)));
    let var_0 = !all(select(vec3<bool>(true, true, true), vec3<bool>(select(false, true, true), true, false), vec3<bool>(false, true, all(vec4<bool>(false, true, false, true)))));
    var var_1 = Struct_1(u_input.b, ~abs(~abs(vec4<u32>(u_input.c, 78214u, u_input.a, 1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1266f, 1000f)), _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1118f + -788f)), 1f)));
    var var_2 = var_1.c.x;
    var var_3 = Struct_1(reverseBits(u_input.b), func_3(~_wgslsmith_dot_vec4_u32(var_1.b, countOneBits(var_1.b))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(544f - var_1.c.x))), -344f), var_1.c)));
    return Struct_1(max(~vec2<i32>(-u_input.d, u_input.d), vec2<i32>(~(var_1.a.x << (u_input.c % 32u)), -1i)), var_3.b, vec3<f32>(732f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-245f * 603f))), var_3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-703f, _wgslsmith_div_f32(1000f, var_3.c.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_2(~(~abs(arg_0) & ~arg_0), select(arg_1.a, -vec2<i32>(firstLeadingBit(1i), u_input.b.x), false), 10443u, arg_1);
    global0 = 44382i;
    var var_1 = Struct_2(vec2<u32>(arg_1.b.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(countOneBits(23819u), arg_1.b.x ^ u_input.c), ~(arg_1.b.x >> (u_input.c % 32u)))), u_input.b, 36880u, func_2());
    let var_2 = 1u;
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, ~(~29685i << (~var_1.c % 32u))), ~vec3<i32>(max(var_1.b.x, u_input.b.x) >> (1u % 32u), var_1.b.x, -abs(var_0.b.x)));
    return vec3<bool>(arg_2.x, !arg_2.x, false);
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<u32> {
    global0 = arg_2.d.a.x | abs(arg_0);
    global0 = 23173i;
    let var_0 = arg_2.d.b.xz;
    let var_1 = ~reverseBits(select(~_wgslsmith_dot_vec2_u32(vec2<u32>(67730u, arg_2.d.b.x), var_0), 23950u, true | (false || arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.d.c.x, arg_2.d.c.x, arg_2.d.c.x, arg_2.d.c.x), vec4<f32>(arg_2.d.c.x, -115f, arg_2.d.c.x, arg_2.d.c.x), vec4<bool>(false, false, true, arg_1.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.c.x, arg_2.d.c.x, 160f, arg_2.d.c.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-157f, arg_2.d.c.x, 462f, arg_2.d.c.x)))))) + vec4<f32>(arg_2.d.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.d.c.x, _wgslsmith_f_op_f32(1000f * arg_2.d.c.x))), arg_2.d.c.x), arg_2.d.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d.c.x, 1195f)))))));
    return func_3(1u) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d.b.x, 8905u, var_1, _wgslsmith_mult_u32(var_0.x, 1u)) | ~vec4<u32>(u_input.c, 77283u, var_1, 0u), _wgslsmith_mult_vec4_u32(arg_2.d.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.d.b.x, var_0.x, u_input.a, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 46329u, var_1, 11353u), vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.d;
    let var_0 = 3931u;
    global0 = -reverseBits(countOneBits(u_input.b.x ^ ~u_input.b.x));
    var var_1 = max(vec4<u32>(firstLeadingBit(abs(var_0) | var_0), var_0, countOneBits(u_input.c) & (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, 10846u, 33636u), vec4<u32>(var_0, 0u, var_0, var_0)) | _wgslsmith_mod_u32(20105u, 1u)), 16247u), ~func_5(-u_input.b.x, func_1(vec2<u32>(u_input.c, 19234u) & vec2<u32>(61035u, u_input.c), Struct_1(u_input.b, vec4<u32>(4294967295u, 4294967295u, var_0, 23126u), vec3<f32>(1287f, 943f, -359f)), vec4<bool>(true, false, true, false)), Struct_2(firstTrailingBit(vec2<u32>(var_0, var_0)), ~u_input.b, _wgslsmith_mod_u32(var_0, u_input.a), func_2())));
    global0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-447f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(-395f - 1198f)), 750f)), vec2<i32>(u_input.d, u_input.b.x), -24498i);
}

