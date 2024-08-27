struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global0 = array<vec4<u32>, 7>();
    let var_0 = arg_1.a.b;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(arg_1.a.a, arg_0.a), 0u) & ~(~arg_0.a.xyx), max(arg_0.a.zyw, arg_1.a.a.zwz | arg_1.a.a.zzw)) | ~4294967295u;
    let var_2 = Struct_1(arg_1.a.a, arg_1.a.b);
    return false;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a.x;
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 55117u), vec3<u32>(~16163u, u_input.a.x, ~0u)) ^ (~u_input.a.x << (abs(min(31224u, u_input.a.x)) % 32u)), 1u, min(u_input.a.x, ~u_input.a.x));
    var var_2 = select(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), (vec2<i32>(8089i, -4831i) << (vec2<u32>(29u, var_1.x) % vec2<u32>(32u))) | (vec2<i32>(0i, 0i) >> (vec2<u32>(var_1.x, u_input.a.x) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), ~(~abs(vec2<i32>(-20414i, -18884i)))), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true && func_3(Struct_1(vec4<u32>(u_input.a.x, var_1.x, 3526u, var_1.x), var_1.x), Struct_3(Struct_1(global0[_wgslsmith_index_u32(var_1.x, 7u)], 0u), 18726i, vec3<bool>(false, true, false)))), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, false)), true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))));
    global0 = array<vec4<u32>, 7>();
    var_0 = 1u;
    return Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(50870u, 45619u, u_input.a.x, var_1.x), vec4<u32>(var_1.x, 75036u, u_input.a.x, 4294967295u)), global0[_wgslsmith_index_u32(var_1.x, 7u)]), ~u_input.a.x << (~(~0u) % 32u)), max(~var_2.x, ~var_2.x), vec3<bool>(!select(false, all(vec3<bool>(false, false, true)), true), true, true));
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(929f + 1000f) * arg_0))))));
    let var_2 = func_2();
    var var_3 = -192f;
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_2.a.a.x), ~vec4<u32>(60110u, 0u, 0u, 24177u)), select(_wgslsmith_mod_u32(1u, 1u), ~1u, !any(vec4<bool>(arg_1, arg_1, false, arg_1)))), -903f);
    return 64447u;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_4 {
    global1 = -15996i;
    let var_0 = arg_3.b;
    let var_1 = arg_3;
    let var_2 = Struct_3(var_1.a, arg_0, !(!(!func_2().c)));
    let var_3 = vec4<bool>(countOneBits(firstTrailingBit(0u)) == 1u, true, !func_3(Struct_1(~arg_1.a, func_2().a.b), Struct_3(Struct_1(vec4<u32>(var_2.a.a.x, u_input.a.x, var_2.a.b, 109094u), arg_3.a.a.x), arg_2.x, vec3<bool>(true, true, var_2.c.x))), true);
    return Struct_4(-219f, select(!(!(!var_2.c)), vec3<bool>(!(!var_2.c.x), true, arg_0 == arg_2.x), !(!var_2.c.x) == var_3.x), ~_wgslsmith_mod_vec3_u32(~var_1.a.a.xxy, var_2.a.a.yxy >> (vec3<u32>(4294967295u, 0u, arg_1.b) % vec3<u32>(32u))) ^ func_2().a.a.xwx, select(select(var_2.c.yx, select(select(var_2.c.yy, vec2<bool>(var_2.c.x, true), var_3.xx), var_2.c.yz, var_2.c.xx), false), var_2.c.xy, !func_2().c.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mult_i32(-(~(-1i)), ~1i), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(25228u, u_input.a.x, u_input.a.x, 55252u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), vec4<u32>(1u, 17842u, u_input.a.x, 0u)), ~1u, u_input.a.x, countOneBits(84239u)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -839f), true) & _wgslsmith_dot_vec4_u32(abs(global0[_wgslsmith_index_u32(35437u, 7u)]), min(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)))), _wgslsmith_mult_vec4_i32(vec4<i32>(min(-15011i, ~2147483647i), -firstLeadingBit(-2147483647i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 4030i, -1i), vec3<i32>(0i, 3237i, -40564i)), ~1i), vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(-46192i, 26023i)), 1i, 1i, -1i)), Struct_2(Struct_1(~(~global0[_wgslsmith_index_u32(73862u, 7u)]), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1223f + 312f) - -467f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<vec4<u32>, 7>();
    var var_1 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], func_4(firstTrailingBit(~(-24124i)), Struct_1(~vec4<u32>(var_0.c.x, 28621u, u_input.a.x, u_input.a.x), firstTrailingBit(var_0.c.x)), -countOneBits(vec4<i32>(-27754i, -32752i, 35093i, -24032i)), Struct_2(func_2().a, -406f)).c.x), 2147483647i, var_0.b);
    var var_2 = _wgslsmith_mult_u32(0u, 1u);
    var_2 = var_0.c.x;
    let var_3 = 0u;
    var_2 = var_0.c.x;
    let var_4 = ~_wgslsmith_div_vec2_u32(var_1.a.a.yy, _wgslsmith_add_vec2_u32(vec2<u32>(max(var_3, 1u), 1u), func_2().a.a.yy << (~var_0.c.xx % vec2<u32>(32u))));
    let var_5 = ~vec2<u32>(var_3, _wgslsmith_div_u32(var_1.a.b, func_2().a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_clamp_i32(var_1.b, 2147483647i, 38577i), -var_1.b) << (vec2<u32>(var_3, var_1.a.a.x) % vec2<u32>(32u)), var_3, vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~var_0.c, select(firstLeadingBit(var_0.c), min(var_0.c, var_1.a.a.wzx), vec3<bool>(var_1.c.x, true, var_1.c.x)))), ~(min(abs(var_1.a.a.xyy), vec3<u32>(u_input.a.x, 50417u, var_0.c.x)) | var_0.c));
}

