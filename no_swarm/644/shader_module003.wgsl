struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(2147483647i, 43555i, 18655i, -15242i), vec4<i32>(-4874i, i32(-2147483648), -21760i, 2147483647i), vec4<i32>(-9344i, 66839i, -23727i, 2147483647i), vec4<i32>(1i, -1i, 51419i, -1i), vec4<i32>(1i, -1i, 26783i, 2147483647i), vec4<i32>(i32(-2147483648), 54816i, -21239i, -81178i), vec4<i32>(i32(-2147483648), -29534i, -24514i, 2147483647i), vec4<i32>(-21931i, 1i, 1i, 3822i), vec4<i32>(-1i, 25633i, -49761i, -1i), vec4<i32>(-58523i, -3394i, 24359i, -1i), vec4<i32>(-24436i, 5705i, -29975i, 17345i), vec4<i32>(-1i, 1i, 77092i, 0i), vec4<i32>(1i, 0i, 12410i, 1i), vec4<i32>(i32(-2147483648), -1i, -9169i, 1i), vec4<i32>(-1i, 2147483647i, 34412i, 0i), vec4<i32>(13983i, -62355i, 0i, 28471i), vec4<i32>(-28159i, 28547i, -42868i, -21700i), vec4<i32>(43780i, 573i, 0i, 18101i), vec4<i32>(9779i, -35476i, -60407i, 25430i), vec4<i32>(31254i, -1i, 2147483647i, -57667i), vec4<i32>(1i, 1i, 0i, -58342i), vec4<i32>(2147483647i, 39345i, -44852i, -13131i), vec4<i32>(-1i, i32(-2147483648), 6836i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 293i, 0i), vec4<i32>(2147483647i, 4589i, -54602i, 22975i), vec4<i32>(957i, i32(-2147483648), 46870i, -1i), vec4<i32>(11950i, 5559i, 2147483647i, 12406i), vec4<i32>(-64353i, 2147483647i, 14134i, -1i), vec4<i32>(-59950i, 2147483647i, 0i, -3256i), vec4<i32>(-26827i, 2147483647i, -6989i, -9960i), vec4<i32>(i32(-2147483648), 47955i, -29564i, 14225i), vec4<i32>(27762i, 0i, -1i, 43656i));

var<private> global2: vec4<f32>;

var<private> global3: array<f32, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    global1 = array<vec4<i32>, 32>();
    var var_0 = 2147483647i;
    var var_1 = Struct_1(vec3<i32>(0i, -_wgslsmith_add_i32(-55828i, ~arg_1.a.x), ~_wgslsmith_sub_i32(-2147483647i, 1i)), global3[_wgslsmith_index_u32(arg_2.c, 20u)]);
    let var_2 = _wgslsmith_f_op_f32(-arg_1.b);
    var var_3 = _wgslsmith_div_u32(min(u_input.a >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 85517u), vec2<u32>(arg_0, 0u)), ~0u) % 32u), arg_0), 0u);
    return _wgslsmith_div_u32(min(29246u, _wgslsmith_div_u32(29086u, 1u)), u_input.c);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    global0 = ~abs(29861u);
    let var_0 = false;
    return max(select(abs(0u) << (u_input.c % 32u), func_2(27520u, Struct_1(vec3<i32>(12730i, -6219i, u_input.b), 1355f), Struct_4(global1[_wgslsmith_index_u32(arg_1.x, 32u)], global3[_wgslsmith_index_u32(arg_0, 20u)], 4294967295u)) >> (~u_input.c % 32u), _wgslsmith_f_op_f32(global2.x - 1038f) >= global2.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(13817u, arg_0, 1u), ~vec3<u32>(arg_1.x, arg_0, arg_1.x)) | (_wgslsmith_mult_u32(arg_0, arg_0) | _wgslsmith_add_u32(12611u, u_input.c))) << ((arg_0 | 1u) % 32u);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = false;
    let var_1 = global3[_wgslsmith_index_u32(arg_0.x, 20u)];
    var var_2 = !arg_3.x;
    var var_3 = Struct_5(~(~(~vec3<u32>(1u, u_input.c, arg_0.x) ^ ~vec3<u32>(0u, u_input.a, 0u))), !vec2<bool>(arg_3.x | arg_3.x, any(select(vec3<bool>(false, arg_3.x, arg_3.x), arg_3.xzx, true))), u_input.d, ~(~(_wgslsmith_sub_u32(arg_0.x, 16256u) & abs(18481u))), !select(vec3<bool>(true, arg_3.x, any(arg_3.xwz)), select(!vec3<bool>(arg_3.x, arg_3.x, false), arg_3.yyx, !arg_3.wzz), all(arg_3.zx)));
    let var_4 = ~(select(-vec3<i32>(var_3.c, 51229i, 2147483647i), vec3<i32>(-var_3.c, -1i, u_input.d), vec3<bool>(all(arg_3.zyw), var_3.b.x, true)) ^ vec3<i32>(2147483647i, _wgslsmith_clamp_i32(min(0i, 18930i), u_input.d, firstTrailingBit(u_input.d)), var_3.c));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(936f)), -1172f, _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(var_3.d, 20u)], 348f)), _wgslsmith_f_op_f32(f32(-1f) * -799f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(arg_0.x, 20u)], 788f, global2.x, arg_1))), vec4<bool>(var_3.b.x | arg_3.x, true, false, arg_3.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1879f), _wgslsmith_f_op_f32(arg_2 + global3[_wgslsmith_index_u32(arg_0.x, 20u)]), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.a, 20u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(901f, global2.x, 113f, arg_2), vec4<f32>(global3[_wgslsmith_index_u32(arg_0.x, 20u)], -1531f, arg_2, -274f), vec4<bool>(var_3.b.x, arg_3.x, arg_3.x, var_3.b.x))))))), ~abs(_wgslsmith_clamp_vec2_u32(var_3.a.yx, var_3.a.yx, ~var_3.a.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & !all(vec3<bool>(true, true, false));
    global3 = array<f32, 20>();
    let var_1 = 593f;
    var var_2 = _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(u_input.a, 4294967295u));
    let x = u_input.a;
    s_output = func_3(vec4<u32>(43587u, func_1(~0u, select(vec4<u32>(4294967295u, 22927u, u_input.a, u_input.a), vec4<u32>(u_input.c, u_input.c, 40586u, 0u), vec4<bool>(var_0, true, var_0, false))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 18382u), u_input.a & u_input.a) << (min(max(vec4<u32>(u_input.a, 0u, u_input.c, u_input.a) << (vec4<u32>(u_input.a, 1170u, u_input.c, u_input.c) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(52320u, 4294967295u, u_input.c, u_input.a), vec4<u32>(u_input.c, 0u, u_input.a, 0u))), ~abs(vec4<u32>(0u, u_input.c, u_input.c, 39247u))) % vec4<u32>(32u)), 1000f, 1000f, vec4<bool>(true, u_input.a < _wgslsmith_mod_u32(~1u, ~20533u), !var_0, select(var_0, true, false)));
}

