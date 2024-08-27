struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(647f, -1000f, -214f, 1413f, -1683f, 907f, -1000f, 1058f, 1867f, 1326f, -178f, 408f, -253f, 1257f, 1000f, 813f, 572f, -1000f, 164f, -1289f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = abs(~u_input.a) > u_input.a;
    global0 = array<f32, 20>();
    var_0 = true;
    var_0 = any(vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), true))));
    let var_1 = -1000f;
    return -1405f;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global0 = array<f32, 20>();
    let var_0 = arg_0.x;
    global0 = array<f32, 20>();
    let var_1 = all(!select(vec3<bool>(all(vec2<bool>(false, false)), u_input.b > u_input.b, !arg_2.a.a), vec3<bool>(true, false, true), vec3<bool>(arg_2.a.a, true, select(arg_1.a.a, arg_1.a.a, arg_1.a.a))));
    var var_2 = arg_0.wxy;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(~(~vec3<u32>(arg_0.x, 22404u, 4294967295u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(arg_0.xxy), firstTrailingBit(vec3<u32>(var_2.x, u_input.b, 86184u)), vec3<u32>(var_2.x, 86048u, u_input.b))) & arg_0.zxw, arg_0.wxx ^ ~_wgslsmith_clamp_vec3_u32(arg_0.wzy, vec3<u32>(1374u, 1u, arg_0.x), vec3<u32>(var_2.x, 28848u, 0u))), 20u)];
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global0 = array<f32, 20>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.b & 9986u), 20u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.b, u_input.b, u_input.b, 31554u), Struct_2(Struct_1(true, u_input.a)), Struct_2(Struct_1(false, 0i)))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(67416u, 20u)])))) - _wgslsmith_f_op_f32(min(603f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 1u)), vec2<u32>(4294967295u << (u_input.b % 32u), firstLeadingBit(0u))), 20u)])));
    var var_1 = Struct_3(~select(70712u, 45050u, false), ~abs(~max(vec3<u32>(0u, 1u, 39891u), vec3<u32>(u_input.b, 1u, u_input.b))));
    var_1 = Struct_3(_wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(60734u, u_input.b, var_1.b.x, 5987u), vec4<u32>(73785u, u_input.b, u_input.b, 23483u)) | 1u), reverseBits(~var_1.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, var_1.a, var_1.a), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % 32u)), ~(var_1.a >> (1u % 32u))), vec3<u32>(u_input.b, ~2629u, _wgslsmith_mult_u32(22299u, 1u)));
    var_0 = _wgslsmith_f_op_f32(510f + global0[_wgslsmith_index_u32(var_1.a, 20u)]);
    return Struct_1(arg_0.x, u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    global0 = array<f32, 20>();
    var var_0 = !select(vec3<bool>(arg_2.a.a.a, all(select(vec4<bool>(arg_2.a.a.a, arg_2.a.a.a, arg_2.a.a.a, arg_2.a.a.a), vec4<bool>(false, false, true, arg_2.a.a.a), vec4<bool>(arg_2.a.a.a, true, arg_2.a.a.a, arg_2.a.a.a))), arg_2.a.a.a), select(!(!vec3<bool>(true, arg_2.a.a.a, arg_2.a.a.a)), !(!vec3<bool>(arg_2.a.a.a, arg_2.a.a.a, arg_2.a.a.a)), select(!vec3<bool>(arg_2.a.a.a, false, false), vec3<bool>(arg_2.a.a.a, arg_2.a.a.a, false), false)), vec3<bool>(true, _wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_dot_vec4_u32(arg_2.b, arg_2.b) > select(1u, u_input.b, arg_2.a.a.a)));
    var_0 = vec3<bool>(true, ((_wgslsmith_mod_u32(arg_2.b.x, u_input.b) << (11077u % 32u)) < arg_0.a) | (-881f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0.b.x, 20u)]))))), var_0.x);
    let var_1 = 743f;
    return Struct_4(Struct_2(arg_2.a.a), arg_2.b, -((_wgslsmith_mult_i32(u_input.a, 52077i) ^ max(u_input.a, 2147483647i)) ^ -_wgslsmith_div_i32(u_input.a, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(5828u, ~(_wgslsmith_add_u32(u_input.b, u_input.b) | 17559u))), 20u)];
    var var_1 = func_4(Struct_3(1u, ~select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 45125u, u_input.b), vec3<u32>(4294967295u, u_input.b, 0u)), vec3<u32>(53081u, u_input.b, 1u) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), true)), _wgslsmith_f_op_f32(func_1(1u)), Struct_4(Struct_2(func_2(vec4<bool>(true, true, true, true))), max(max(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(1u, 0u, u_input.b, u_input.b)), abs(abs(vec4<u32>(2657u, u_input.b, 0u, u_input.b)))), countOneBits(~u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(0u)) * -919f) - -914f) * 549f);
    global0 = array<f32, 20>();
    let var_3 = Struct_2(var_1.a.a);
    var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(103825u, 0u)), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), var_1.b.yy), ~_wgslsmith_mult_vec2_u32(var_1.b.xx, vec2<u32>(31478u, 0u)))), 20u)] + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(~(var_1.b.x & u_input.b), 20u)])));
    var var_4 = Struct_4(Struct_2(var_1.a.a), ~firstTrailingBit(var_1.b), firstLeadingBit(var_3.a.b));
    global0 = array<f32, 20>();
    let var_5 = Struct_3(var_1.b.x, func_4(Struct_3(var_1.b.x, var_1.b.yyx), -573f, func_4(Struct_3(abs(var_4.b.x), ~var_1.b.xxw), global0[_wgslsmith_index_u32(~19915u, 20u)], func_4(Struct_3(4294967295u, vec3<u32>(u_input.b, 4294967295u, 0u)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(var_1.b.x, 20u)]), func_4(Struct_3(17304u, vec3<u32>(u_input.b, u_input.b, var_1.b.x)), 1664f, Struct_4(var_3, vec4<u32>(var_1.b.x, u_input.b, 53233u, u_input.b), var_4.c))))).b.zwz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(var_4.b, vec4<u32>(17295u, 1u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(83066u, 0u), vec2<u32>(var_5.b.x, var_4.b.x))) << (countOneBits(var_1.b << (var_4.b % vec4<u32>(32u))) % vec4<u32>(32u))), 1i, _wgslsmith_add_i32(-2147483647i, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(19685u, 20u)], global0[_wgslsmith_index_u32(var_1.b.x | var_5.b.x, 20u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_4.b.x, 20u)]), 1907f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-558f, global0[_wgslsmith_index_u32(var_1.b.x, 20u)], global0[_wgslsmith_index_u32(var_1.b.x, 20u)]), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 20u)], global0[_wgslsmith_index_u32(var_1.b.x, 20u)], -1196f))), !vec3<bool>(var_4.a.a.a, var_1.a.a.a, var_1.a.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2681f, 180f, global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], 257f, -820f)))), func_4(Struct_3(u_input.b, var_1.b.yyy), global0[_wgslsmith_index_u32(1u, 20u)], Struct_4(var_4.a, vec4<u32>(2598u, 17486u, var_4.b.x, 1u), var_3.a.b)).a.a.a & true))));
}

