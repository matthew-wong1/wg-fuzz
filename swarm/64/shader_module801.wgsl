struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-4663i, 3362i, 2147483647i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(49142i, 23959i, -49404i), vec3<i32>(113328i, 4536i, -1i), vec3<i32>(-1i, 41679i, 49624i), vec3<i32>(43832i, -1i, 0i), vec3<i32>(-1i, 9920i, 14193i), vec3<i32>(-7122i, 0i, 2147483647i), vec3<i32>(2147483647i, 31153i, 0i), vec3<i32>(1i, -57132i, 39411i), vec3<i32>(24434i, 2147483647i, i32(-2147483648)), vec3<i32>(-41435i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-26566i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 26011i, 27258i), vec3<i32>(1i, -15278i, 7741i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 22004i, 16072i), vec3<i32>(-9891i, 43891i, -1i));

var<private> global1: Struct_3;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5) -> u32 {
    var var_0 = Struct_1(false, vec2<u32>(~arg_1.a.b.x, abs(abs(~4294967295u))), global1.a.a, reverseBits(-vec4<i32>(global1.a.d.x, global1.a.d.x, -38396i, arg_0.a)) >> (~_wgslsmith_div_vec4_u32(~u_input.e, ~vec4<u32>(u_input.d, 3721u, u_input.a.x, global1.a.b.x)) % vec4<u32>(32u)), _wgslsmith_add_u32(25818u, ~arg_1.a.e));
    global1 = Struct_3(Struct_1(all(!(!vec4<bool>(false, var_0.a, true, var_0.c))), countOneBits(var_0.b), !(any(vec2<bool>(false, false)) | !arg_1.a.a), vec4<i32>((1i & var_0.d.x) << (~var_0.b.x % 32u), _wgslsmith_mod_i32(~var_0.d.x, ~34004i), ~global1.a.d.x, -(i32(-1i) * -1i)), abs(_wgslsmith_div_u32(6048u >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.e, 4294967295u), global1.a.b)))));
    var var_1 = Struct_3(global1.a);
    return var_1.a.e;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    global0 = array<vec3<i32>, 18>();
    let var_0 = 60276u << ((arg_0.a.e & firstLeadingBit(33715u)) % 32u);
    let var_1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~global1.a.b.x, ~15663u, ~30674u), vec3<u32>(var_0, func_3(Struct_4(-2147483647i, vec4<f32>(-2264f, 1165f, -431f, -1313f)), Struct_5(global1.a, arg_1.x)), _wgslsmith_add_u32(arg_0.a.e, global1.a.b.x))), _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(arg_0.b.ywy, vec3<u32>(1224u, 0u, u_input.d)), u_input.a), u_input.a);
    var var_2 = u_input.e;
    return -1557f;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<u32>) -> vec3<f32> {
    global1 = Struct_3(Struct_1(true, select(vec2<u32>(~global1.a.b.x, ~1u), global1.a.b, false), select(arg_1.x, false, select(arg_1.x, arg_1.x & false, arg_1.x)), countOneBits(abs(global1.a.d)), ~30615u));
    let var_0 = Struct_4(global1.a.d.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -856f, arg_2, arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1601f + arg_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(388f + arg_2))), arg_2, _wgslsmith_f_op_f32(arg_2 + 582f)), !vec4<bool>(true, -863f != arg_2, all(vec3<bool>(arg_0.x, false, arg_0.x)), true))));
    let var_1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(global1.a.d.x, _wgslsmith_mult_i32(0i, var_0.a)), 1i, global1.a.d.x, var_0.a), vec4<i32>(i32(-1i) * -14190i, _wgslsmith_sub_i32(112199i, 1i), ~42401i, -_wgslsmith_div_i32(firstTrailingBit(-2147483647i), -44112i & var_0.a)));
    let var_2 = Struct_2(Struct_1(4294967295u <= (firstLeadingBit(4294967295u) ^ (u_input.b >> (20698u % 32u))), firstTrailingBit((arg_3 ^ vec2<u32>(64995u, 59278u)) & vec2<u32>(0u, 4294967295u)), arg_1.x, vec4<i32>(global1.a.d.x, _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, global1.a.d.x, global1.a.d.x), vec3<i32>(-2147483647i, 1399i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.a.d.x, global1.a.d.x, 331i), global1.a.d.zwx)), -_wgslsmith_dot_vec2_i32(global1.a.d.wz, vec2<i32>(var_1.x, global1.a.d.x)), firstTrailingBit(var_0.a)), _wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, u_input.a.x), select(func_3(var_0, Struct_5(Struct_1(arg_0.x, vec2<u32>(4294967295u, 17301u), global1.a.c, var_1, global1.a.e), var_0.a)), 1u, global1.a.c | false))), vec4<u32>(19601u, abs(42300u), _wgslsmith_mod_u32(~u_input.e.x ^ _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), _wgslsmith_mult_u32(_wgslsmith_div_u32(25510u, 1u), arg_3.x)), ~(u_input.b >> (min(1046u, 1u) % 32u))), _wgslsmith_div_i32(max(0i, -global1.a.d.x), 0i), vec3<bool>(global1.a.a, false, arg_0.x & false), global1.a);
    let var_3 = Struct_2(Struct_1((22238u > u_input.c) | true, var_2.b.xz, all(!(!arg_1.www)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, 10364i, global1.a.d.x, -12455i) ^ vec4<i32>(var_2.c, -53711i, var_0.a, var_0.a)), var_2.e.d), 0u), ~u_input.e, reverseBits(~(var_1.x | var_2.a.d.x) ^ -_wgslsmith_clamp_i32(global1.a.d.x, var_2.a.d.x, 1i)), select(!select(!arg_1.yzw, !vec3<bool>(var_2.e.a, arg_1.x, arg_0.x), var_2.d), var_2.d, false), var_2.e);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1152f), arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(var_3, vec4<i32>(-2147483647i, 10971i, var_3.a.d.x, 1i), 37010i)), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), -604f)))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) + -707f), 1000f)), _wgslsmith_f_op_f32(max(1996f, var_0.b.x)), 1155f));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(all(vec2<bool>(false, true)) & (global1.a.d.x == global1.a.d.x), global1.a.b, any(vec3<bool>(u_input.c > 25166u, false, any(vec4<bool>(global1.a.a, global1.a.a, global1.a.c, global1.a.c)))), select(global1.a.d, -vec4<i32>(global1.a.d.x, -48793i, arg_1, arg_1), select(select(vec4<bool>(global1.a.c, global1.a.c, true, global1.a.c), vec4<bool>(global1.a.a, global1.a.a, global1.a.a, global1.a.c), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, global1.a.c, global1.a.c), select(vec4<bool>(true, global1.a.c, global1.a.a, true), vec4<bool>(true, global1.a.a, true, global1.a.c), true))), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.e.zyz, vec3<u32>(u_input.a.x, global1.a.b.x, global1.a.e) >> (vec3<u32>(0u, 72953u, arg_2) % vec3<u32>(32u))))));
    let var_1 = -704i;
    global1 = var_0;
    let var_2 = Struct_2(var_0.a, ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, arg_2, arg_2, 69816u), _wgslsmith_mult_vec4_u32(~vec4<u32>(25355u, arg_2, global1.a.b.x, u_input.c), abs(vec4<u32>(global1.a.b.x, 13726u, 4294967295u, var_0.a.b.x)))), _wgslsmith_div_i32(34850i, -1i), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(global1.a.a, true, global1.a.a), var_0.a.a))), Struct_1(!(~arg_2 > countOneBits(u_input.c)), global1.a.b, any(select(vec3<bool>(var_0.a.c, true, global1.a.a), vec3<bool>(true, var_0.a.a, false), vec3<bool>(true, false, true))) | true, countOneBits(var_0.a.d), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(2321u, global1.a.e), u_input.e.xx), ~0u, _wgslsmith_clamp_u32(4920u, 1u, 0u), 4294967295u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(26113u, global1.a.e, global1.a.e, 34308u), vec4<u32>(53554u, 4728u, arg_2, var_0.a.e)))));
    var var_3 = Struct_1(all(var_2.d), ~(~vec2<u32>(global1.a.b.x, var_2.b.x << (18657u % 32u))), var_0.a.a, global1.a.d, u_input.b);
    return !(!var_2.d.xy);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f * -949f) + _wgslsmith_f_op_f32(-313f * 709f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2011f), _wgslsmith_f_op_f32(1366f + 755f))))));
    global0 = array<vec3<i32>, 18>();
    let var_1 = !vec4<bool>(true, true, !all(vec4<bool>(arg_0, false, true, arg_0)), false);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1421f, -1445f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(ceil(123f))));
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(!var_1.xz, vec4<bool>(arg_0, false, true, true), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(false, u_input.e.wy, false, global1.a.d, 4294967295u), vec4<u32>(global1.a.e, global1.a.e, 1u, 1u), -8593i, vec3<bool>(var_1.x, arg_0, arg_0), global1.a), global1.a.d, global1.a.d.x)), firstLeadingBit(vec2<u32>(u_input.b, global1.a.e)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, var_2.x, -730f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, -275f, var_2.x)))))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -6999i), firstLeadingBit(~vec2<i32>(-10959i, global1.a.d.x))), max(0u, ~(~1697u)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1394f + -1352f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x)))));
    return Struct_2(Struct_1(all(var_1.zwx), vec2<u32>(firstLeadingBit(firstTrailingBit(0u)), firstTrailingBit(~u_input.e.x)), all(select(!vec3<bool>(false, arg_0, true), vec3<bool>(true, false, global1.a.c), all(var_1))), ~global1.a.d, abs(~8403u)), vec4<u32>(countOneBits(~53382u), 1u, ~(func_3(Struct_4(29687i, vec4<f32>(-892f, 1000f, -457f, 692f)), Struct_5(Struct_1(false, vec2<u32>(74207u, 26448u), true, vec4<i32>(1i, global1.a.d.x, -2147483647i, global1.a.d.x), 33553u), global1.a.d.x)) >> (u_input.d % 32u)), 0u), 1i, var_1.zzy, Struct_1(global1.a.a, vec2<u32>(u_input.b, reverseBits(abs(1u))), false, ~firstTrailingBit(global1.a.d), _wgslsmith_dot_vec4_u32(~select(u_input.e, vec4<u32>(1u, global1.a.e, u_input.c, global1.a.e), var_1), firstTrailingBit(u_input.e) << (vec4<u32>(global1.a.e, u_input.b, global1.a.e, 4294967295u) % vec4<u32>(32u)))));
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    global0 = array<vec3<i32>, 18>();
    let var_0 = arg_2;
    global1 = Struct_3(func_1(arg_0.x).e);
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(1887f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f + -1752f)));
    return Struct_3(Struct_1(!(!var_0.a.a), abs(u_input.e.ww), !func_5(_wgslsmith_div_vec3_f32(vec3<f32>(-1940f, -342f, var_2), vec3<f32>(1529f, 138f, -1779f)), -var_0.e.d.x, arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 481f))).x, _wgslsmith_mult_vec4_i32(~min(global1.a.d, global1.a.d), vec4<i32>(reverseBits(arg_2.c), max(-24181i, arg_2.c), -global1.a.d.x, ~var_0.c)), var_0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f))));
    global1 = func_6(!select(vec4<bool>(all(vec3<bool>(true, false, false)), any(vec3<bool>(global1.a.c, global1.a.a, global1.a.a)), global1.a.c, false), !select(vec4<bool>(true, global1.a.c, global1.a.a, false), vec4<bool>(global1.a.a, global1.a.c, global1.a.a, false), false), any(vec2<bool>(global1.a.c, global1.a.c))), firstTrailingBit(reverseBits(4294967295u)), func_1(all(!vec3<bool>(global1.a.a, true, false))));
    var var_1 = ~1u > _wgslsmith_add_u32(102882u, global1.a.b.x);
    var var_2 = _wgslsmith_f_op_f32(floor(var_0));
    let var_3 = func_6(vec4<bool>(false, global1.a.c, true, true), u_input.e.x, Struct_2(func_6(select(vec4<bool>(global1.a.a, true, global1.a.a, global1.a.c), !vec4<bool>(global1.a.c, true, global1.a.c, global1.a.c), select(vec4<bool>(false, global1.a.a, global1.a.c, true), vec4<bool>(true, global1.a.a, true, global1.a.c), vec4<bool>(global1.a.c, true, global1.a.a, global1.a.a))), 0u, func_1(any(vec4<bool>(global1.a.c, false, global1.a.c, global1.a.c)))).a, _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.e.x, global1.a.b.x, u_input.a.x, 0u)), ~vec4<u32>(5813u, 4294967295u, 1u, 4294967295u)), _wgslsmith_mod_i32(select(-21685i, -41303i, false), -global1.a.d.x) & (global1.a.d.x ^ global1.a.d.x), !select(!vec3<bool>(true, global1.a.c, true), vec3<bool>(true, true, global1.a.a), false), global1.a));
    var_2 = _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(var_3.a.a == !func_5(vec3<f32>(var_0, var_0, var_0), var_3.a.d.x, u_input.d, vec2<f32>(var_0, 183f)).x, true), select(select(!(!vec4<bool>(global1.a.c, global1.a.c, var_3.a.a, false)), select(!vec4<bool>(var_3.a.c, var_3.a.c, global1.a.a, true), vec4<bool>(false, global1.a.a, false, true), true), !vec4<bool>(global1.a.a, false, true, true)), select(!vec4<bool>(global1.a.c, true, global1.a.a, false), !vec4<bool>(global1.a.c, global1.a.c, true, false), var_3.a.c), !global1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f - var_0) - _wgslsmith_div_f32(849f, var_0))))), (u_input.a.xy >> (_wgslsmith_add_vec2_u32(~vec2<u32>(var_3.a.e, u_input.c), vec2<u32>(42125u, 4294967295u)) % vec2<u32>(32u))) & vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(5683u, 1u, 0u))), countOneBits(~global1.a.e)))).x;
    let var_4 = func_1(global1.a.c).e.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, -299f, 699f), _wgslsmith_mult_vec2_i32(vec2<i32>(-40861i, -15637i), vec2<i32>(-1i, 12689i) | -vec2<i32>(var_4, -25566i)), min(1i, global1.a.d.x) | (~(-var_3.a.d.x) >> (var_3.a.b.x % 32u)));
}

