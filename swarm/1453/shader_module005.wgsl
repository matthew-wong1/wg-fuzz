struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-216f, -522f, -376f, -524f, -876f, 266f, -591f, 121f, 330f, -1518f, -623f, -652f, -1458f, -1919f, -1000f, -419f, 520f, 626f, 1000f, 666f, -627f, 1051f, 1193f, 1792f, 1904f, -173f, 265f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = u_input.a;
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_1 = Struct_1(30988u, !(true == !arg_0.x) && all(select(!arg_0, vec2<bool>(arg_0.x, true), select(arg_0, arg_0, true))), _wgslsmith_f_op_f32(arg_2 - arg_2), true, _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(reverseBits(94590u), 1u | var_0.x, ~45166u)), _wgslsmith_mult_vec3_u32(max(select(u_input.a, vec3<u32>(var_0.x, var_0.x, 1u), arg_0.x), _wgslsmith_div_vec3_u32(u_input.a, u_input.a)), vec3<u32>(1u, abs(u_input.a.x), abs(18546u)))));
    let var_2 = true;
    return Struct_4(Struct_2(arg_1), u_input.a.x);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: bool) -> vec4<i32> {
    var var_0 = ~abs(abs(~(~vec2<u32>(32339u, arg_2))));
    var var_1 = Struct_4(func_2(select(vec2<bool>(true, arg_3), vec2<bool>(true, u_input.d <= u_input.d), select(vec2<bool>(true, true), select(vec2<bool>(false, arg_3), vec2<bool>(true, arg_3), vec2<bool>(false, true)), arg_1.a.a == -1i)), -arg_1.a.a, global0[_wgslsmith_index_u32(~countOneBits(~4294967295u), 27u)], ~(-vec4<i32>(2147483647i, 0i, u_input.c.x, -3472i))).a, 0u);
    return vec4<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, arg_1.a.a, -24306i, arg_1.a.a)), vec4<i32>(-50276i, var_1.a.a, _wgslsmith_add_i32(select(1i, 18315i, arg_3), -8333i), i32(-1i) * -arg_1.a.a)), 9280i, 1i, abs(arg_1.a.a));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(max(arg_1, arg_1)) ^ func_3(u_input.a.x, func_2(vec2<bool>(true, false), -1i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], vec4<i32>(1i, 2754i, 2147483647i, u_input.e.x)), u_input.a.x ^ 0u, true), arg_1, vec4<i32>(1i, arg_0.x, func_2(vec2<bool>(true, true), -arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 27u)], firstTrailingBit(arg_1)).a.a, -firstTrailingBit(arg_1.x))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, ~u_input.a.x), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), ~vec4<u32>(1u, u_input.a.x, 15993u, 54528u)))) % vec4<u32>(32u));
    var var_1 = 289f;
    global0 = array<f32, 27>();
    let var_2 = max(arg_1, vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -53921i, var_0.x, -69574i), var_0), ~vec4<i32>(4908i, var_0.x, var_0.x, var_0.x) ^ (vec4<i32>(u_input.e.x, arg_1.x, arg_0.x, -47351i) & var_0)), u_input.c.x ^ -var_0.x, _wgslsmith_clamp_i32(-var_0.x, -abs(-1i), var_0.x), (arg_0.x ^ (i32(-1i) * -1i)) & 1i));
    var var_3 = !vec4<bool>(true, true, ((i32(-1i) * -38447i) >= arg_0.x) & true, true);
    return Struct_2(1i);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<f32, 27>();
    let var_0 = _wgslsmith_add_i32(func_1(vec2<i32>(0i, -_wgslsmith_mult_i32(-68i, arg_2.a)), vec4<i32>(-2147483647i, ~_wgslsmith_clamp_i32(-80517i, -76886i, u_input.d), ~arg_2.a, 1i)).a, ~(_wgslsmith_sub_i32(1i, 0i) | arg_2.a));
    global0 = array<f32, 27>();
    var var_1 = u_input.c;
    let var_2 = 45624u;
    return Struct_1(min(0u, 4294967295u), false, -1293f, false, u_input.a);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_0 = abs(~firstTrailingBit(~vec4<u32>(0u, arg_0.a.a, 1u, 67102u)));
    global0 = array<f32, 27>();
    var_0 = vec4<u32>(_wgslsmith_mult_u32(~0u, firstLeadingBit(var_0.x)), _wgslsmith_sub_u32(1u, ~(~_wgslsmith_sub_u32(arg_0.a.a, 2539u))), 1652u, 38357u);
    return func_4(_wgslsmith_f_op_f32(989f * _wgslsmith_f_op_f32(floor(arg_0.a.c))), select(!select(arg_0.b, !arg_0.b, select(arg_0.b, vec2<bool>(true, arg_0.a.d), vec2<bool>(false, arg_0.a.b))), select(vec2<bool>(arg_0.b.x, arg_0.a.a == 4294967295u), vec2<bool>(all(vec4<bool>(arg_0.b.x, arg_0.a.d, arg_0.b.x, arg_0.a.b)), arg_0.a.d), false), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), arg_0.a.d), select(arg_0.b, select(arg_0.b, arg_0.b, arg_0.b.x), all(arg_0.b)), false)), Struct_2(abs(-29889i)), vec2<bool>(arg_0.b.x, arg_0.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x < 4294967295u;
    global0 = array<f32, 27>();
    var var_1 = abs(18864u);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(max(u_input.a.x, ~abs(1u)), 27u)], -1193f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -307f), -112f)))));
    var var_3 = 2147483647i;
    let var_4 = u_input.a.x >> (~_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 9931u))) % 32u);
    let var_5 = vec2<f32>(1f, 1f);
    var var_6 = func_5(Struct_3(func_4(347f, !vec2<bool>(var_0, var_0), func_1(firstLeadingBit(vec2<i32>(u_input.b, u_input.d)), vec4<i32>(0i, -2147483647i, 2147483647i, 2147483647i) & vec4<i32>(1i, 1i, -21930i, u_input.b)), vec2<bool>(var_0 & false, u_input.d != u_input.c.x)), select(!select(vec2<bool>(false, var_0), vec2<bool>(false, false), vec2<bool>(var_0, true)), !(!vec2<bool>(false, var_0)), !vec2<bool>(var_0, true))), _wgslsmith_f_op_f32(select(var_2.x, -674f, all(select(vec2<bool>(var_0, false), vec2<bool>(var_0, true), vec2<bool>(false, var_0))) | var_0)), func_1(~vec2<i32>(select(93275i, u_input.d, false), firstLeadingBit(58092i)), abs(vec4<i32>(u_input.e.x << (u_input.a.x % 32u), func_2(vec2<bool>(var_0, var_0), -2147483647i, 3056f, vec4<i32>(u_input.b, 62523i, 2147483647i, -21752i)).a.a, min(u_input.c.x, u_input.e.x), -76957i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(-(abs(vec4<i32>(20483i, u_input.e.x, u_input.b, u_input.d)) | firstLeadingBit(vec4<i32>(u_input.c.x, 1i, u_input.c.x, 11669i))), ~countOneBits(-vec4<i32>(2147483647i, -10179i, 89368i, u_input.b))), var_4, vec2<i32>(~_wgslsmith_sub_i32(firstLeadingBit(2147483647i), max(-16635i, 2147483647i)), u_input.e.x >> (var_4 % 32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(select(u_input.a.zx, vec2<u32>(var_6.a, var_6.e.x), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(var_6.e.xx, vec2<u32>(4441u, 27731u)), u_input.a.zy), u_input.a.xy), ~u_input.a.x, ~(~1u), u_input.a.x));
}

