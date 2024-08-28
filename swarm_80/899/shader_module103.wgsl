struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: vec2<u32> = vec2<u32>(38227u, 0u);

var<private> global2: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1602f, -996f)), vec2<f32>(-1696f, -945f), select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, true), false), vec2<bool>(true, false), !vec2<bool>(arg_0.a, true)))))));
    return vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(152137u, global1.x, 24286u, 37840u)) & ~vec4<u32>(global1.x, 4294967295u, 94315u, arg_1.x), vec4<u32>(global1.x, 4294967295u, _wgslsmith_mod_u32(1u, 39414u), 26833u))), arg_1.x, global1.x, ~(~_wgslsmith_mult_u32(29810u, arg_1.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec2<u32>) -> bool {
    let var_0 = ~abs(global1.x) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(53172u, arg_1.x, arg_3.x, global1.x), firstLeadingBit(vec4<u32>(global1.x, 118211u, arg_3.x, 0u))), vec4<u32>(countOneBits(global1.x), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, 65162u, arg_3.x)), arg_3.x, arg_1.x << (97338u % 32u))), select(~(~vec4<u32>(4294967295u, arg_3.x, global1.x, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(3749u, 1u, 1u, global1.x), vec4<u32>(4294967295u, 4294967295u, arg_3.x, global1.x)), true == (400f >= arg_2))) % 32u);
    let var_1 = Struct_1(arg_0.a, -_wgslsmith_mod_i32(arg_0.c.x, _wgslsmith_div_i32(14921i, -14480i)) < ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(4544i, u_input.b.x, -6810i, -34735i), vec4<i32>(27177i, arg_0.c.x, 13870i, 7937i)), select(vec4<i32>(0i, arg_0.c.x, 9790i, 27360i), vec4<i32>(2147483647i, 1i, 0i, 1i), true)), -vec3<i32>(-arg_0.c.x << (~51011u % 32u), arg_0.c.x, -(~51337i)));
    var var_2 = Struct_2((~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 15655u, 4294967295u), arg_1) >> (4294967295u % 32u)) <= _wgslsmith_mod_u32(global1.x, _wgslsmith_mult_u32(4294967295u, ~arg_1.x)));
    global0 = array<vec2<i32>, 31>();
    var var_3 = _wgslsmith_sub_i32(-(i32(-1i) * -(~2147483647i)), arg_0.c.x);
    return !(all(!vec2<bool>(false, arg_0.a.x)) && (4294967295u != _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_1.x, 46905u, global1.x), func_3(Struct_2(true), arg_3, -2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * _wgslsmith_f_op_f32(arg_1 - arg_1)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))))));
    var var_0 = firstTrailingBit(~arg_0.c);
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(step(1000f, 900f));
    global0 = array<vec2<i32>, 31>();
    return vec4<bool>(arg_0.b, all(!vec4<bool>(true, func_2(Struct_1(vec3<bool>(arg_2.a, arg_0.b, true), true, u_input.a), vec3<u32>(global1.x, 4294967295u, 0u), 641f, vec2<u32>(4294967295u, global1.x)), true, false)), arg_2.a, any(select(arg_0.a, vec3<bool>(arg_2.a, true, arg_0.c.x == var_0.x), vec3<bool>(true, global1.x >= global1.x, !arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * 429f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721f - _wgslsmith_f_op_f32(356f - -759f)) - _wgslsmith_f_op_f32(abs(238f)))), -776f));
    var var_0 = Struct_2(any(select(select(vec4<bool>(true, true, true, true), func_1(Struct_1(vec3<bool>(false, true, true), true, u_input.b), 380f, Struct_2(true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), true)));
    let var_1 = Struct_2(true);
    let var_2 = global1.x;
    var var_3 = Struct_2(all(!select(vec3<bool>(var_0.a, true, false), !vec3<bool>(true, var_0.a, false), vec3<bool>(true, true, true))));
    global1 = vec2<u32>(~global1.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(103261u, 0u, global1.x) & vec3<u32>(40988u, 63090u, global1.x), _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(4294967295u, 29751u, global1.x))) ^ vec3<u32>(global1.x, firstLeadingBit(43957u), 4294967295u), vec3<u32>(1u, 18501u, global1.x & ~60526u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, -510f, 259f, 417f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-881f, 413f, -1005f, -447f), vec4<f32>(-1038f, 537f, -759f, -348f), vec4<bool>(var_0.a, var_1.a, false, var_1.a)))), vec4<f32>(_wgslsmith_f_op_f32(679f + 734f), -761f, _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(780f * -381f))))), min(u_input.c, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, reverseBits(1943i), u_input.a.x), u_input.a & u_input.a);
}

