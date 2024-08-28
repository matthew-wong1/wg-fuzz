struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(11503u, 11214u);

var<private> global1: Struct_2;

var<private> global2: vec4<f32> = vec4<f32>(405f, 1975f, -115f, -1141f);

var<private> global3: bool;

var<private> global4: array<vec4<i32>, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = i32(-1i) * -25776i;
    global0 = u_input.a;
    global3 = !arg_0;
    let var_1 = Struct_2(vec3<u32>(~(~(~global0.x)), global1.c, 33231u), vec2<u32>(global0.x, ~min(_wgslsmith_mod_u32(4294967295u, global1.a.x), _wgslsmith_add_u32(569u, 0u))), global0.x ^ 1u);
    global3 = true;
    return 0i & ~((-var_0 | _wgslsmith_mod_i32(var_0, -5753i)) >> (1u % 32u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_4(-9428i);
    var var_1 = -1449f;
    global1 = Struct_2((vec3<u32>(_wgslsmith_clamp_u32(77141u, u_input.a.x, 1u), 29006u, 46556u) | vec3<u32>(~u_input.a.x, 80283u, u_input.a.x)) << (global1.a % vec3<u32>(32u)), _wgslsmith_add_vec2_u32(~u_input.a, u_input.a) | u_input.a, ~(~_wgslsmith_mod_u32(global0.x ^ 0u, _wgslsmith_div_u32(global1.b.x, 0u))));
    var var_2 = Struct_5(Struct_3(vec4<i32>(1i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-42669i, var_0.a), vec2<i32>(-27556i, var_0.a)), ~(-27528i)), -1i, var_0.a), vec2<bool>(arg_0.a, arg_0.a)), true, ~(~_wgslsmith_mult_u32(global0.x, 43951u)), Struct_3(vec4<i32>(var_0.a, var_0.a, -16788i, 0i) << ((~vec4<u32>(0u, 32568u, u_input.a.x, u_input.a.x) | (vec4<u32>(26934u, 19139u, global0.x, 4294967295u) << (vec4<u32>(39836u, global1.c, 48017u, global0.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), !vec2<bool>(true, arg_0.a)), Struct_2(~abs(vec3<u32>(global1.b.x, u_input.a.x, 123785u)), ~vec2<u32>(u_input.a.x, global1.a.x), 0u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(-782f, _wgslsmith_f_op_f32(global2.x + -620f))), -1132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f + -1251f)), global2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 802f, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, -791f, 224f, -236f))))))));
    return min(reverseBits(var_0.a), _wgslsmith_sub_i32(-(~var_0.a), ~abs(var_2.d.a.x)) & min(func_2(arg_0.a), _wgslsmith_div_i32(abs(-19823i), -15600i & var_0.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_4 {
    var var_0 = Struct_5(Struct_3(vec4<i32>(_wgslsmith_clamp_i32(1i, select(24200i, 16281i, true), _wgslsmith_div_i32(-44187i, 43i)), ~func_2(arg_2.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -24404i, 0i, -2147483647i), _wgslsmith_mod_vec4_i32(global4[_wgslsmith_index_u32(1u, 17u)], global4[_wgslsmith_index_u32(62007u, 17u)])), ~(~(-2147483647i))), vec2<bool>(true, arg_2.a)), all(!vec4<bool>(all(vec3<bool>(false, true, arg_2.a)), false, true, false)), global0.x, Struct_3(~vec4<i32>(-1i, firstLeadingBit(29605i), _wgslsmith_add_i32(-766i, 2147483647i), func_3(Struct_1(true))), select(select(select(vec2<bool>(arg_2.a, true), vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, false)), !vec2<bool>(false, arg_2.a), true), vec2<bool>(!arg_2.a, select(false, arg_2.a, true)), vec2<bool>(!arg_2.a, all(vec3<bool>(arg_2.a, true, arg_2.a))))), Struct_2(abs(~vec3<u32>(4294967295u, u_input.a.x, global0.x)), vec2<u32>(~41745u, reverseBits(1u)) | ~countOneBits(vec2<u32>(global0.x, 216u)), (u_input.a.x ^ ~4294967295u) ^ ~(global1.b.x & global1.a.x)));
    var var_1 = global0.x;
    let var_2 = true;
    global4 = array<vec4<i32>, 17>();
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(select(-1817f, -1069f, false)))))), global2.x));
    return Struct_4(var_0.d.a.x);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_4) -> f32 {
    return _wgslsmith_f_op_f32(step(global2.x, 367f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(-713f, _wgslsmith_f_op_f32(floor(-807f))), global2.x, 376f);
    global2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-167f))) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, vec2<u32>(4294967295u, 22899u), func_1(vec3<f32>(var_0.x, global2.x, 264f), var_0.x, Struct_1(true)))) + 147f), global2.x, _wgslsmith_f_op_f32(abs(-1000f))), vec4<f32>(-328f, -2659f, global2.x, var_0.x)));
    var var_1 = func_1(var_0.wwx, -1135f, Struct_1(all(vec3<bool>(true, true, true)) || (false || (var_0.x != 966f))));
    var var_2 = _wgslsmith_f_op_f32(min(2193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * 1959f) - _wgslsmith_f_op_f32(f32(-1f) * -201f))))));
    var var_3 = vec2<i32>(39579i, func_2(!(-3076f != _wgslsmith_f_op_f32(select(-1068f, global2.x, false)))));
    global0 = u_input.a;
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -205f, 1947f)))), 1158f, Struct_1((true && (global2.x < global2.x)) & all(vec4<bool>(true, true, true, true))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(~4294967295u, _wgslsmith_div_u32(global1.c, global1.b.x))), ~_wgslsmith_mod_vec2_i32(~vec2<i32>(-24058i, 13489i), abs(vec2<i32>(var_1.a, var_1.a) << (vec2<u32>(global1.c, global0.x) % vec2<u32>(32u)))));
}

