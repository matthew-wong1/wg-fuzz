struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: vec4<f32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    global1 = array<Struct_2, 22>();
    let var_0 = 0i;
    var var_1 = select(~vec4<u32>(u_input.a & 4294967295u, 30443u, ~firstTrailingBit(u_input.e.x), u_input.e.x), abs(vec4<u32>(firstLeadingBit(~u_input.e.x), 4294967295u, u_input.a >> (~0u % 32u), 43327u)), true);
    var var_2 = u_input.e.x <= _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.e.x)), _wgslsmith_mult_vec4_u32(abs(firstTrailingBit(vec4<u32>(u_input.e.x, u_input.a, var_1.x, var_1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 87320u, u_input.a, 1u), vec4<u32>(4294967295u, var_1.x, 1u, var_1.x) << (vec4<u32>(var_1.x, 34234u, u_input.a, u_input.e.x) % vec4<u32>(32u)))));
    let var_3 = !vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false))), true, false, any(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1045f))))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-402f + -941f) * _wgslsmith_f_op_f32(-global2.x)) - _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(abs(global2.x)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(firstLeadingBit(~u_input.a));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(-274f, 414f)))))));
    let var_2 = vec4<bool>(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false)) && true, select(any(vec2<bool>(true, true)) | true, !(u_input.e.x <= var_0.a), func_3(-_wgslsmith_add_i32(-2147483647i, 12357i))), !(14705i <= (_wgslsmith_mult_i32(u_input.d, -1i) << (reverseBits(56975u) % 32u))), any(vec3<bool>(any(vec4<bool>(true, false, false, false)), !func_3(2147483647i), any(vec3<bool>(true, false, true)))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1)), 1000f)), Struct_1(36662u), var_2.x);
    let var_4 = var_2.zx;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 22u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = func_2();
    global1 = array<Struct_2, 22>();
    global2 = _wgslsmith_f_op_vec4_f32(-var_0.a);
    global1 = array<Struct_2, 22>();
    global2 = _wgslsmith_f_op_vec4_f32(-arg_0);
    return _wgslsmith_f_op_f32(1339f + -1421f);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: f32) -> bool {
    var var_0 = abs(countOneBits(3765i)) <= u_input.d;
    let var_1 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.b, u_input.d)) << (u_input.e.xz % vec2<u32>(32u)), vec2<i32>(select(30239i, -26247i, arg_2.x), u_input.c)) & (~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-19662i, u_input.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.d), vec2<i32>(-2147483647i, -20264i))) << (min(~vec2<u32>(u_input.a, u_input.e.x) & vec2<u32>(0u, 330u), min(u_input.e.xx, u_input.e.zz)) % vec2<u32>(32u)));
    let var_2 = Struct_3(Struct_1(1u), 0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -581f))))))), u_input.c, Struct_1(4294967295u));
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, arg_3)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -1000f) * 774f) - _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(f32(-1f) * -252f))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    global0 = array<Struct_5, 30>();
    let var_0 = Struct_1(max(~min(u_input.e.x, 4294967295u), ~(~4294967295u)) << (_wgslsmith_add_u32(u_input.e.x, ~_wgslsmith_sub_u32(u_input.e.x, 4294967295u)) % 32u));
    var var_1 = Struct_3(Struct_1(var_0.a), 49620u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x + arg_3)))))), select(u_input.c, _wgslsmith_add_i32(0i, ~(~(-74117i))), func_2().c.x), var_0);
    var var_2 = Struct_3(Struct_1(1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.e.xz >> (~vec2<u32>(u_input.e.x, 42751u) % vec2<u32>(32u)), countOneBits(vec2<u32>(294u, 48252u))), func_2().e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) + global2.x), _wgslsmith_mod_i32(var_1.d, ~var_1.d), Struct_1(~u_input.e.x & ~_wgslsmith_clamp_u32(30580u, 4294967295u, var_0.a)));
    var var_3 = max(min(u_input.e, ~(~u_input.e)), vec3<u32>(~43417u, u_input.e.x, _wgslsmith_clamp_u32(16792u, countOneBits(u_input.a), 0u))) << (firstTrailingBit(~(~u_input.e)) % vec3<u32>(32u));
    return global1[_wgslsmith_index_u32(var_2.a.a >> (_wgslsmith_mod_u32(4294967295u, ~(~var_3.x)) % 32u), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    var var_0 = ~(-(-(~vec2<i32>(u_input.b, 0i)) | vec2<i32>(2171i, 2147483647i)));
    var var_1 = ~(-17845i);
    var var_2 = Struct_5(36780u);
    let var_3 = func_5(-u_input.d, true, !vec4<bool>(!any(vec4<bool>(false, false, true, false)), false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), func_4(true, _wgslsmith_f_op_vec2_f32(exp2(global2.wx)), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(func_1(vec4<f32>(global2.x, global2.x, global2.x, 506f), vec4<f32>(-986f, global2.x, 2289f, -2400f), Struct_1(1u), Struct_2(vec4<f32>(394f, global2.x, 977f, 615f), true, vec2<bool>(true, true), vec4<bool>(false, true, false, true), var_2.a))))), 139f);
    var_1 = _wgslsmith_mod_i32(-var_0.x, i32(-1i) * -(~_wgslsmith_add_i32(37029i, 19498i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), vec4<i32>(_wgslsmith_mod_i32(var_0.x, _wgslsmith_mod_i32(-u_input.b, -u_input.d)), max(~0i, var_0.x), select(23786i, 44295i, var_3.b), -(~_wgslsmith_mult_i32(u_input.c, u_input.d))), 1143f);
}

