struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: Struct_1 = Struct_1(true, 69727u, -472f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 11>();
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 474f, 433f, 578f) * vec4<f32>(global1.c, 850f, arg_0.x, var_0.c)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.c, global1.c, -1544f, -1434f), vec4<f32>(global1.c, global1.c, -245f, 1132f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, 1182f, global1.c, arg_0.x))))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c * -663f), _wgslsmith_f_op_f32(global1.c + var_0.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-320f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f), global1.c)));
    let var_2 = Struct_1(!arg_3.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2110f - _wgslsmith_f_op_f32(739f * -412f))));
    var var_3 = Struct_1(!all(!vec4<bool>(global1.a, true, true, var_2.a)), global1.b, _wgslsmith_f_op_f32(trunc(arg_2.c)));
    return u_input.a;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, global1.c)), ~(-6111i) << (~u_input.a % 32u), Struct_1(global1.a, ~1u, -953f), Struct_1(true, global1.b, _wgslsmith_div_f32(global1.c, global1.c))) == ~(~u_input.a), min(114435u ^ u_input.a, 62063u), -1356f);
    var var_0 = Struct_1(!any(vec2<bool>(true & global1.a, !global1.a)), ~global1.b, 1001f);
    var var_1 = select(vec4<bool>(!var_0.a, _wgslsmith_f_op_f32(-820f * _wgslsmith_f_op_f32(-global1.c)) < -904f, any(!select(vec3<bool>(true, global1.a, true), vec3<bool>(global1.a, true, var_0.a), false)), (false & any(vec4<bool>(false, global1.a, false, global1.a))) || any(select(vec3<bool>(var_0.a, false, false), vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, false, true)))), !vec4<bool>(global1.a, true || global1.a, any(select(vec2<bool>(false, global1.a), vec2<bool>(var_0.a, global1.a), true)), global1.a), 1682f > _wgslsmith_f_op_f32(abs(global1.c)));
    global0 = array<vec4<i32>, 11>();
    var var_2 = global1.b;
    return Struct_1(var_1.x, _wgslsmith_add_u32(~_wgslsmith_mod_u32(70379u, global1.b) | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 0u, global1.b, 4294967295u), vec4<u32>(var_0.b, 4294967295u, global1.b, var_0.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 20420u, 47033u << (global1.b % 32u), global1.b), _wgslsmith_div_vec4_u32(vec4<u32>(global1.b, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, global1.b, 1u)) | ~vec4<u32>(24144u, 1u, 33404u, u_input.a))), _wgslsmith_f_op_f32(min(331f, _wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c - -1464f), _wgslsmith_f_op_f32(-global1.c))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<bool> {
    global1 = func_2();
    global1 = arg_1;
    global1 = Struct_1(true, ~(~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, 310f, arg_2.x)), _wgslsmith_add_i32(-2147483647i, 49166i), Struct_1(global1.a, 40364u, arg_0.x), func_2())), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_1.c))));
    var var_0 = Struct_1(false, 8364u, arg_1.c);
    let var_1 = func_2();
    return select(vec3<bool>(!all(!vec4<bool>(var_1.a, true, var_1.a, true)), var_1.a, false), select(select(!select(vec3<bool>(true, true, var_0.a), vec3<bool>(true, var_0.a, global1.a), false), vec3<bool>(all(vec2<bool>(var_1.a, var_0.a)), true, !var_1.a), true), !vec3<bool>(any(vec3<bool>(var_0.a, true, arg_1.a)), arg_1.a, any(vec4<bool>(false, false, true, true))), select(vec3<bool>(false, !global1.a, arg_1.a), select(select(vec3<bool>(global1.a, true, var_0.a), vec3<bool>(false, var_1.a, arg_1.a), vec3<bool>(true, global1.a, true)), !vec3<bool>(var_0.a, var_0.a, false), all(vec4<bool>(var_0.a, var_1.a, var_0.a, false))), vec3<bool>(true, var_0.a, !arg_1.a))), vec3<bool>(global1.a, true, var_0.a));
}

fn func_4(arg_0: bool) -> vec3<bool> {
    global0 = array<vec4<i32>, 11>();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.b), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, global1.b)), _wgslsmith_clamp_u32(u_input.a >> (u_input.a % 32u), global1.b | 1u, global1.b)), _wgslsmith_clamp_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(global1.b, global1.b), vec2<u32>(10190u, u_input.a)), vec2<u32>(4294967295u, u_input.a)), vec2<u32>(global1.b, 7887u), ~vec2<u32>(global1.b, 0u) & ~vec2<u32>(global1.b, 44995u))));
    var var_1 = Struct_1(!select(!global1.a, false, all(func_1(vec4<f32>(global1.c, global1.c, global1.c, global1.c), Struct_1(true, 126724u, global1.c), vec3<f32>(global1.c, -1000f, global1.c)).xy)), firstTrailingBit(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, 933f, global1.c)), min(-1i, 28605i), func_2(), Struct_1(true, 0u, 856f))) << (abs(min(27740u, global1.b) | 39012u) % 32u), _wgslsmith_f_op_f32(ceil(global1.c)));
    var var_2 = Struct_1(!(0u <= ~u_input.a), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 62919u, global1.b), vec3<u32>(14559u, global1.b, global1.b)), global1.b), _wgslsmith_sub_u32(max(48876u, global1.b), _wgslsmith_add_u32(73692u, u_input.a))), _wgslsmith_f_op_f32(-var_1.c));
    var_2 = Struct_1(false, 58240u >> (var_2.b % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c))), var_2.c));
    return select(vec3<bool>(select(!(!arg_0), global1.a, !any(vec2<bool>(false, false))), !arg_0, true & !all(vec4<bool>(true, arg_0, false, var_1.a))), !vec3<bool>(select(true, select(var_1.a, false, true), arg_0), 1309f == _wgslsmith_f_op_f32(sign(898f)), global1.a), !select(!func_1(vec4<f32>(var_2.c, 346f, global1.c, -2204f), Struct_1(var_2.a, var_0, -332f), vec3<f32>(global1.c, global1.c, global1.c)), select(select(vec3<bool>(true, arg_0, var_2.a), vec3<bool>(global1.a, false, false), var_2.a), !vec3<bool>(var_2.a, var_1.a, var_1.a), vec3<bool>(false, var_1.a, global1.a)), !(!vec3<bool>(false, false, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 11>();
    var var_0 = Struct_1(any(func_4(all(func_1(vec4<f32>(535f, global1.c, global1.c, -725f), Struct_1(global1.a, u_input.a, -525f), vec3<f32>(-181f, -1000f, global1.c))))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))));
    var var_1 = _wgslsmith_mod_u32(func_2().b, global1.b);
    let var_2 = vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, u_input.a, 1u), vec3<u32>(4294967295u, var_0.b, var_0.b)), 1u), ~min(global1.b, 51135u)), var_0.b, 55579u, 95132u);
    let var_3 = max(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~global1.b, global1.b, max(0u, u_input.a), global1.b), var_2), select(~var_2, _wgslsmith_mod_vec4_u32(firstTrailingBit(var_2), countOneBits(vec4<u32>(4294967295u, 0u, 26990u, 1u))), !vec4<bool>(global1.a, var_0.a, false, true))), 11u)]);
    var_1 = 4294967295u;
    var var_4 = select(!(!select(!vec2<bool>(var_0.a, true), select(vec2<bool>(true, false), vec2<bool>(false, var_0.a), vec2<bool>(global1.a, false)), var_0.a)), vec2<bool>(!global1.a, true), !select(select(func_4(var_0.a).zx, select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, false), vec2<bool>(false, var_0.a)), var_3.x > -8887i), vec2<bool>(true, true), !any(vec2<bool>(var_0.a, false))));
    var var_5 = Struct_1(global1.a, _wgslsmith_add_u32(~3276u, var_0.b >> (~var_2.x % 32u)), global1.c);
    let var_6 = Struct_1(var_4.x, (_wgslsmith_mult_u32(~57628u, ~global1.b) & ~abs(4294967295u)) & _wgslsmith_div_u32(60840u, ~0u ^ func_2().b), -136f);
    let x = u_input.a;
    s_output = StorageBuffer(39302u);
}

