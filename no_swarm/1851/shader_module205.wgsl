struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    return !arg_1.c.c.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    let var_0 = vec3<bool>(!(!global0.c.c.a), false, false);
    let var_1 = Struct_4(Struct_3(global0.c.a, global0.c.c.b, global0.c.c, ~global0.c.a.xz), _wgslsmith_mod_i32(-10315i, -7865i), global0.c);
    let var_2 = var_0;
    global0 = var_1;
    global0 = var_1;
    return abs(global0.c.d.x) | 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(select(-1682f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(566f, 305f)), _wgslsmith_f_op_f32(-global0.a.c.b.a))) + -1000f), any(select(select(vec3<bool>(global0.c.c.a, global0.a.c.a, global0.c.c.a), !vec3<bool>(global0.c.c.a, global0.a.c.a, false), global0.c.c.a), select(vec3<bool>(false, true, global0.a.c.a), !vec3<bool>(global0.c.c.a, false, global0.c.c.a), vec3<bool>(true, false, true)), (true && global0.c.c.a) && true))));
    var var_1 = -_wgslsmith_div_i32(27137i, global0.c.b.b);
    var var_2 = Struct_3(global0.a.a, global0.a.b, global0.a.c, vec2<u32>(abs(u_input.a), func_4(!(!vec2<bool>(true, global0.a.c.a)), Struct_2(func_3(global0.c.c.c, Struct_4(Struct_3(vec4<u32>(0u, u_input.a, global0.c.d.x, global0.c.c.c.x), Struct_1(global0.a.b.a, global0.a.b.c.x, global0.c.c.b.c, global0.b), Struct_2(false, global0.c.c.b, vec3<u32>(global0.c.d.x, u_input.a, global0.a.a.x)), vec2<u32>(u_input.a, global0.a.a.x)), global0.c.b.c.x, Struct_3(global0.a.a, global0.c.c.b, Struct_2(false, Struct_1(var_0, global0.a.b.d, global0.c.c.b.c, global0.a.b.d), vec3<u32>(u_input.a, 0u, 0u)), vec2<u32>(42101u, 41054u))), vec3<bool>(global0.c.c.a, false, true), Struct_1(-919f, 1i, vec2<i32>(2147483647i, global0.a.c.b.b), global0.b)), Struct_1(global0.a.b.a, 38570i, vec2<i32>(global0.c.b.d, -16109i), global0.a.c.b.d), vec3<u32>(61766u, 4294967295u, 14207u) >> (vec3<u32>(1u, global0.c.c.c.x, u_input.a) % vec3<u32>(32u))), select(vec2<bool>(true, true), vec2<bool>(global0.a.c.a, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, var_0)), -609f)))));
    let var_3 = select(var_2.c.a, false, !any(vec4<bool>(global0.c.c.a, var_2.c.a, var_2.c.a, global0.c.c.a)) == all(vec4<bool>(all(vec4<bool>(false, var_2.c.a, false, false)), all(vec4<bool>(false, var_2.c.a, true, true)), all(vec2<bool>(global0.a.c.a, false)), any(vec2<bool>(true, false)))));
    return Struct_2(var_3, Struct_1(var_2.b.a, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mult_i32(21590i, var_2.c.b.c.x)), _wgslsmith_clamp_i32(-var_2.b.b, ~var_2.b.b, ~global0.b)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, -1i), abs(-5932i)), abs(global0.b ^ -26176i)), reverseBits((var_2.b.b << (39890u % 32u)) >> (u_input.a % 32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(28522u, ~global0.a.a.x & (4294967295u & u_input.a), select(global0.c.a.x | 0u, 1u, any(vec4<bool>(false, var_3, var_3, false)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(4720u, var_2.a.x, 8761u), vec3<u32>(2010u, 0u, 40092u)) ^ (~vec3<u32>(33686u, u_input.a, 0u) << (vec3<u32>(var_2.a.x, var_2.d.x, 25141u) % vec3<u32>(32u)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = func_2();
    global0 = Struct_4(global0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_0.b.d << (4294967295u % 32u)), -reverseBits(-1i)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.d, 61213i), _wgslsmith_sub_vec2_i32(arg_0.b.c, global0.a.c.b.c)))), Struct_3(~global0.a.a, arg_0.b, Struct_2(!(-15780i < var_0.b.b), arg_0.b, vec3<u32>(~4294967295u, u_input.a & global0.c.a.x, 6885u)), abs(min(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0.c.x), vec2<u32>(1u, 4294967295u)), _wgslsmith_sub_vec2_u32(arg_0.c.xy, arg_0.c.zx)))));
    let var_1 = select(global0.a.c.c, ~vec3<u32>(38361u, 39973u, 571u), (4294967295u > ~_wgslsmith_sub_u32(108520u, u_input.a)) | true);
    var var_2 = true;
    var_0 = Struct_2(var_0.a && true, func_2().b, ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(33173u, 78621u, 53775u)), vec3<u32>(21473u, arg_0.c.x >> (57800u % 32u), ~arg_0.c.x), vec3<u32>(var_1.x, var_1.x, ~arg_0.c.x)));
    return Struct_4(Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.c.c.c, var_1), reverseBits(17857u), var_1.x, u_input.a), global0.c.b, func_2(), var_1.yx), 4183i, global0.a);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> Struct_4 {
    let var_0 = false;
    let var_1 = 1u;
    let var_2 = global0.a;
    let var_3 = !(!(!select(select(vec2<bool>(arg_0.c.c.a, false), vec2<bool>(true, var_2.c.a), vec2<bool>(var_2.c.a, false)), select(vec2<bool>(true, var_0), vec2<bool>(arg_0.c.c.a, false), global0.c.c.a), select(vec2<bool>(var_2.c.a, arg_0.c.c.a), vec2<bool>(false, false), vec2<bool>(global0.c.c.a, true)))));
    global0 = arg_0;
    return func_1(Struct_2(!all(!vec4<bool>(arg_0.c.c.a, var_0, arg_0.c.c.a, var_0)), func_1(Struct_2(var_0, func_1(Struct_2(var_2.c.a, Struct_1(var_2.c.b.a, var_2.b.b, global0.c.b.c, arg_0.a.c.b.c.x), arg_0.a.a.zzy), vec2<bool>(true, true)).a.c.b, ~arg_0.c.c.c), !var_3).c.b, vec3<u32>(_wgslsmith_clamp_u32(~var_1, 0u, firstTrailingBit(var_2.c.c.x)), max(arg_0.c.d.x, max(43140u, arg_0.c.c.c.x)), reverseBits(1u))), select(var_3, vec2<bool>(var_2.c.a, !all(vec4<bool>(true, var_3.x, global0.c.c.a, global0.c.c.a))), !var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.c.a;
    var var_1 = Struct_2(false, global0.a.b, global0.c.c.c);
    let var_2 = func_5(func_1(global0.c.c, !(!(!vec2<bool>(var_1.a, false)))), 29555u, _wgslsmith_f_op_f32(f32(-1f) * -703f));
    var var_3 = vec2<i32>(var_2.c.c.b.d, abs(5030i)) ^ func_1(Struct_2(~var_2.c.c.c.x == _wgslsmith_mod_u32(35137u, 43920u), func_1(func_2(), vec2<bool>(global0.a.c.a, global0.a.c.a)).c.c.b, ~global0.c.c.c & _wgslsmith_add_vec3_u32(var_2.a.a.wyz, vec3<u32>(u_input.a, var_2.a.a.x, var_1.c.x))), select(vec2<bool>(global0.c.c.a, func_5(Struct_4(global0.a, global0.c.b.d, Struct_3(vec4<u32>(var_2.c.c.c.x, 39362u, 1u, global0.c.d.x), var_2.a.c.b, Struct_2(true, global0.a.b, var_1.c), vec2<u32>(4767u, 1u))), var_2.c.c.c.x, global0.a.c.b.a).a.c.a), vec2<bool>(true, global0.c.c.a), false)).c.b.c;
    let var_4 = var_2;
    var var_5 = global0.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.b.a, var_1.b.a, -308f, var_4.a.b.a), vec4<f32>(var_1.b.a, var_4.a.c.b.a, -1000f, 1485f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2138f, 831f, -104f, 1678f) * vec4<f32>(-223f, var_2.c.c.b.a, -2265f, -567f))))))), vec4<i32>(~(i32(-1i) * -46425i), _wgslsmith_add_i32(global0.c.c.b.b, 17855i) ^ -21558i, -45125i, _wgslsmith_mult_i32(-2341i, -6632i)) >> (~select(_wgslsmith_sub_vec4_u32(vec4<u32>(99977u, var_4.c.d.x, 1u, 11586u), vec4<u32>(1u, 0u, var_2.a.a.x, 4294967295u)), vec4<u32>(0u, 1u, 1u, var_2.a.a.x) << (global0.c.a % vec4<u32>(32u)), true) % vec4<u32>(32u)));
}

