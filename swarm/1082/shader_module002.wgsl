struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    let var_0 = reverseBits(vec4<u32>(_wgslsmith_div_u32(reverseBits(u_input.a), 1u), countOneBits(u_input.d), reverseBits(select(u_input.d, u_input.a, arg_2)), u_input.e.x)) | reverseBits(vec4<u32>(_wgslsmith_add_u32(u_input.e.x, _wgslsmith_add_u32(30348u, 1u)), abs(~u_input.e.x), ~(u_input.d & 4294967295u), _wgslsmith_dot_vec3_u32(~u_input.e, vec3<u32>(1u, u_input.e.x, 53374u))));
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_1 = true;
    let var_2 = 1u;
    return ~(u_input.a << (_wgslsmith_add_u32(0u, ~max(var_0.x, 4294967295u)) % 32u));
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    return Struct_3(vec2<u32>(~_wgslsmith_add_u32(u_input.a, func_3(vec4<f32>(487f, -360f, 234f, 358f), vec3<f32>(786f, 333f, -1673f), true)), ~countOneBits(30195u)), all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(select(false, true, false), true, any(vec3<bool>(false, false, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(978f, 1288f, all(vec4<bool>(false, true, false, false)))), -1320f))), ~1i, _wgslsmith_mult_i32(u_input.b, _wgslsmith_mult_i32(reverseBits(~0i), -global0[_wgslsmith_index_u32(~0u, 20u)])));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = func_2();
    global0 = array<i32, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(101f, -1838f, 1888f, 1399f), vec4<f32>(185f, 267f, -392f, var_0.c), false)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, 1381f, var_0.c, var_0.c), vec4<f32>(var_0.c, 1501f, var_0.c, 1255f))))));
    var var_2 = 0i;
    let var_3 = Struct_3(abs(select(~vec2<u32>(36856u, arg_0.x), var_0.a, any(vec3<bool>(true, false, false))) >> (vec2<u32>(_wgslsmith_mod_u32(31019u, 4294967295u), u_input.d << (arg_0.x % 32u)) % vec2<u32>(32u))), var_1.x != _wgslsmith_f_op_f32(-var_0.c), 535f, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~29344i, u_input.c.x), ~u_input.c), abs(-var_0.e)), global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1427f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(926f, var_1.x, var_1.x, var_0.c) - var_1))), var_1.zxz, var_0.b), 20u)]);
    return select(~max(4294967295u, arg_0.x) | 0u, 12217u & abs(_wgslsmith_sub_u32(10547u, func_3(var_1, var_1.xyw, var_0.b))), !(_wgslsmith_f_op_f32(-var_1.x) == _wgslsmith_f_op_f32(-644f + _wgslsmith_f_op_f32(f32(-1f) * -1833f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~func_1(u_input.e.zz ^ u_input.e.yy), 1u, ~func_2().a.x), vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.d, 1u)), 0u, _wgslsmith_clamp_u32(4294967295u, 28404u, u_input.a)));
    let var_1 = 4294967295u;
    global0 = array<i32, 20>();
    var var_2 = vec2<bool>(true, true);
    var var_3 = countOneBits(u_input.e.yz);
    var_2 = select(select(!(!vec2<bool>(var_2.x, true)), select(vec2<bool>(!var_2.x, true), select(select(vec2<bool>(true, var_2.x), vec2<bool>(true, false), var_2.x), vec2<bool>(false, var_2.x), true), firstTrailingBit(u_input.b) > -1i), all(select(!vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, var_2.x, var_2.x), u_input.c.x != -2147483647i))), vec2<bool>(~abs(u_input.b) > -(~u_input.b), false), select(vec2<bool>(select(var_2.x, false, true), var_2.x), select(select(select(vec2<bool>(true, false), vec2<bool>(var_2.x, false), var_2.x), !vec2<bool>(var_2.x, var_2.x), select(var_2.x, true, true)), !select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, !var_2.x)), !select(select(vec2<bool>(false, true), vec2<bool>(false, var_2.x), true), select(vec2<bool>(var_2.x, false), vec2<bool>(true, false), vec2<bool>(var_2.x, var_2.x)), !vec2<bool>(true, var_2.x))));
    let var_4 = Struct_4(select(select(!(!vec2<bool>(var_2.x, true)), !select(vec2<bool>(true, var_2.x), vec2<bool>(false, true), var_2.x), var_2.x), !select(!vec2<bool>(var_2.x, var_2.x), select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), false)), select(select(!vec2<bool>(false, var_2.x), select(vec2<bool>(true, true), vec2<bool>(false, false), var_2.x), var_2.x), select(!vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, true), true), vec2<bool>(var_2.x, global0[_wgslsmith_index_u32(72265u, 20u)] > u_input.c.x))), 4294967295u, !vec3<bool>(var_2.x, true, func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_1(vec2<u32>(var_4.b, var_3.x)), var_3.x) & var_3.x, i32(-1i) * -(~428i), ~min(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_4.b, var_3.x, var_4.b), u_input.e), u_input.e));
}

