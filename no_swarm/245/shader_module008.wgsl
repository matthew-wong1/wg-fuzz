struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_2(true, vec3<bool>(true, u_input.d.x >= (~0u << (~u_input.a % 32u)), true), Struct_1(0i, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], arg_0.x))))), ~u_input.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a, 27u)]) * vec2<f32>(arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec2_f32(-arg_0.xx)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.yz * vec2<f32>(global0[_wgslsmith_index_u32(68044u, 27u)], -770f)), vec2<f32>(global0[_wgslsmith_index_u32(53423u, 27u)], -186f))))));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(-1760f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f) + _wgslsmith_f_op_f32(-arg_0.x))) > 1000f, u_input.c.x > u_input.b, var_0.c.b.x, var_0.c.b.x);
    var var_2 = Struct_2(var_1.x, select(var_1.yyy, !var_1.zwx, any(select(!var_1.www, vec3<bool>(var_0.c.b.x, var_0.a, false), -433f > global0[_wgslsmith_index_u32(1513u, 27u)]))), var_0.c);
    var var_3 = var_2.c;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -404f), all(var_0.b.zx)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-910f, var_0.c.e.x), var_2.c.e.x, true)), _wgslsmith_div_f32(420f, arg_0.x), global0[_wgslsmith_index_u32(~(~(~var_0.c.d)), 27u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1035f, var_2.c.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.e.x))), vec4<f32>(-1380f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.c.x, var_2.c.c.x, var_0.b.x)) * 1055f), _wgslsmith_f_op_f32(-arg_0.x)), var_2.c.b)));
    return i32(-1i) * -12295i;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> bool {
    global0 = array<f32, 27>();
    var var_0 = -43162i;
    let var_1 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.c.c + _wgslsmith_f_op_vec3_f32(max(arg_0.c.c, arg_0.c.c))), vec3<f32>(arg_2.x, -688f, _wgslsmith_div_f32(arg_0.c.e.x, -133f))))), arg_0.c.b, vec3<f32>(1000f, arg_2.x, global0[_wgslsmith_index_u32(max(~arg_0.c.d, u_input.d.x), 27u)]), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d.x, reverseBits(4294967295u), ~40603u), select(~vec3<u32>(arg_0.c.d, arg_0.c.d, 4294967295u), vec3<u32>(u_input.d.x, u_input.a, u_input.a), !arg_0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-631f)), -264f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-1406f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 27u)]))))));
    global0 = array<f32, 27>();
    let var_2 = u_input.c.x;
    return 24220u == _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.d.x), firstLeadingBit(1u)), ~(~var_1.d));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(!(!(!arg_2)), select(select(arg_1.c.b.yyy, vec3<bool>(arg_2 & false, arg_1.c.b.x, all(arg_1.c.b.wyy)), !arg_1.b.x), vec3<bool>(arg_2, arg_2, func_2(arg_1, 1000f >= arg_1.c.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-706f, global0[_wgslsmith_index_u32(arg_1.c.d, 27u)])))), arg_1.c.b.zzw), arg_1.c);
    var var_1 = Struct_1(_wgslsmith_add_i32(select(u_input.b, -2408i, arg_1.c.b.x), ~_wgslsmith_add_i32(max(-16192i, arg_3.x), max(-2147483647i, var_0.c.a))), var_0.c.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.c.c), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, global0[_wgslsmith_index_u32(10670u, 27u)], var_0.c.e.x)), vec3<f32>(var_0.c.e.x, var_0.c.c.x, _wgslsmith_f_op_f32(step(var_0.c.c.x, 2187f))))))), _wgslsmith_mult_u32(4689u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(30850u, 13037u | arg_1.c.d))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(176f, arg_1.c.c.x))))), 1000f));
    var_1 = arg_1.c;
    global0 = array<f32, 27>();
    let var_2 = _wgslsmith_add_i32((_wgslsmith_div_i32(var_1.a >> (var_1.d % 32u), -22259i) & -(~arg_1.c.a)) | var_0.c.a, 30010i);
    return Struct_1(_wgslsmith_mod_i32(3986i >> (var_1.d % 32u), _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(17397i, arg_3.x, 23970i)), vec3<i32>(arg_3.x, var_2, 1i))), select(var_1.b, select(!select(vec4<bool>(arg_2, arg_0, arg_0, false), vec4<bool>(true, false, var_0.b.x, false), vec4<bool>(var_0.a, false, false, false)), var_1.b, vec4<bool>(true, !arg_2, all(var_0.c.b), false)), (false != arg_1.c.b.x) != arg_1.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.c.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, -2106f, arg_1.c.e.x))) + _wgslsmith_f_op_vec3_f32(-arg_1.c.c)), vec3<f32>(global0[_wgslsmith_index_u32(3551u, 27u)], -957f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.c.x), var_0.c.c.x))), 17672u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.xz * var_1.e) - _wgslsmith_f_op_vec2_f32(-var_1.e))), var_0.c.e, var_0.c.b.xx)));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = array<f32, 27>();
    let var_0 = u_input.c.x;
    global0 = array<f32, 27>();
    var var_1 = min(vec3<i32>(reverseBits(-_wgslsmith_div_i32(var_0, -26895i)), -(~var_0), _wgslsmith_div_i32(-2147483647i, ~var_0)), vec3<i32>(abs(u_input.b), ~(~firstTrailingBit(9885i)), u_input.c.x));
    let var_2 = i32(-1i) * -26461i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_1(arg_0.b.x, Struct_2(false, arg_0.b.ywy, func_1(true, Struct_2(false, vec3<bool>(false, false, arg_0.b.x), Struct_1(var_2, vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.c, 4294967295u, arg_0.e)), false, vec3<i32>(u_input.c.x, var_2, var_2))), true, ~vec3<i32>(-2147483647i, u_input.b, 2147483647i)).c.x, _wgslsmith_f_op_f32(trunc(arg_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(367f, vec2<f32>(global0[_wgslsmith_index_u32(~4294967295u, 27u)], _wgslsmith_f_op_f32(func_4(func_1(true, Struct_2(false, vec3<bool>(false, false, true), Struct_1(-11294i, vec4<bool>(false, true, true, false), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], 1734f, 724f), u_input.d.x, vec2<f32>(-172f, global0[_wgslsmith_index_u32(0u, 27u)]))), all(vec3<bool>(false, true, true)), vec3<i32>(u_input.b, -1i, 2147483647i) << (vec3<u32>(u_input.d.x, 4294967295u, u_input.a) % vec3<u32>(32u)))))), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.a), u_input.d), countOneBits(u_input.d.x)), 75666u), 2147483647i);
}

