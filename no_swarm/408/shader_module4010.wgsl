struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 500f;

var<private> global1: array<bool, 17>;

var<private> global2: array<bool, 7> = array<bool, 7>(false, true, true, false, false, false, false);

var<private> global3: i32 = -10828i;

var<private> global4: array<vec3<bool>, 19>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> i32 {
    global2 = array<bool, 7>();
    global1 = array<bool, 17>();
    let var_0 = countOneBits(15191u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-402f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f - 339f)))) * -638f));
    let var_1 = vec2<f32>(1f, 1f);
    return ~(-5472i);
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(151f))), _wgslsmith_f_op_f32(select(596f, 1f, true)))));
    var var_1 = Struct_1(func_3(-u_input.d.x));
    global3 = var_1.a;
    var var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(reverseBits(-1i), 1i)), 1i));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(46463i, var_1.a, -1i, var_1.a)), vec4<i32>(u_input.b.x, -var_1.a, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), var_1.a)) ^ _wgslsmith_clamp_i32(var_2.a, u_input.a.x, _wgslsmith_add_i32(-var_1.a, -26125i)));
    return arg_0.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = ~u_input.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1342f, 291f)))), false || (var_1 > func_2(vec3<u32>(u_input.c, var_1, 0u))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1511f, -1152f)), -539f)) - -1556f)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-176f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(665f, -587f))))), -207f);
    var var_3 = !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~reverseBits(1u), abs(6796u)), 17u)] && (any(select(arg_1.xx, arg_1.yz, false)) || !(global1[_wgslsmith_index_u32(~22866u, 17u)] & false));
    global1 = array<bool, 17>();
    return ~(~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    var var_0 = ~max(vec4<u32>(~(~0u), func_4(func_1(u_input.a.x, Struct_1(4523i), vec4<i32>(u_input.d.x, u_input.b.x, u_input.a.x, u_input.b.x)), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(48923u, 7u)], true)), u_input.c, u_input.c), select(vec4<u32>(4294967295u, 16092u, 0u, u_input.c), ~vec4<u32>(u_input.c, u_input.c, 109409u, 4294967295u), any(vec3<bool>(true, false, true))) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 42218u, u_input.c, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, u_input.c)));
    global2 = array<bool, 7>();
    var var_1 = Struct_1(abs(func_1(i32(-1i) * -15183i, func_1(firstLeadingBit(34916i), func_1(-34978i, Struct_1(u_input.b.x), vec4<i32>(u_input.a.x, u_input.d.x, -12201i, u_input.b.x)), select(vec4<i32>(u_input.a.x, -1i, u_input.d.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, 0i), true)), -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, 326i, u_input.b.x), vec4<i32>(u_input.b.x, -1i, -30367i, u_input.b.x))).a));
    let var_2 = func_1(var_1.a, func_1(firstTrailingBit(~(~u_input.d.x)), Struct_1(~var_1.a), vec4<i32>(u_input.b.x, func_3(u_input.d.x), 2147483647i, reverseBits(var_1.a)) | _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, var_1.a, 1i, -2147483647i), vec4<i32>(var_1.a, -1i, 2147483647i, var_1.a))), vec4<i32>(-(~(-27630i)) << (1u % 32u), ~(-24055i) << (~u_input.c % 32u), 2147483647i, -61576i));
    var var_3 = -1i;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1733f + 1339f)), _wgslsmith_f_op_f32(step(808f, _wgslsmith_f_op_f32(f32(-1f) * -557f))));
    let var_5 = ~var_0.yx;
    let var_6 = Struct_1(~(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zz, ~var_5.x, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, var_6.a, -1i) & vec3<i32>(var_2.a, -1i, -1i), -u_input.a), -_wgslsmith_dot_vec2_i32(u_input.d, u_input.d), ~var_2.a, u_input.a.x) >> (_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c, 35988u, u_input.c, 0u), abs(vec4<u32>(73454u, var_5.x, 4294967295u, var_5.x)), true), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.c, 19836u, 181u), vec4<u32>(1u, var_0.x, 67907u, u_input.c))) % vec4<u32>(32u)), ~var_0.x);
}

