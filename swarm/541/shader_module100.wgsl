struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = vec4<bool>(!any(select(vec4<bool>(true, arg_1.b, false, true), vec4<bool>(false, false, true, false), arg_1.b)), arg_1.b, true, _wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)))));
    global0 = array<vec3<bool>, 10>();
    var var_1 = _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1420f, 1522f))));
    return false;
}

fn func_3(arg_0: Struct_4) -> bool {
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    let var_0 = countOneBits(2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-min(u_input.d.x, arg_0.d.b.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, arg_0.d.b.a, -2147483647i), vec4<i32>(-10792i, arg_0.d.c.a, arg_0.d.b.a, u_input.d.x))), -2147483647i, i32(-1i) * -2015i), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), firstTrailingBit(i32(-1i) * -1i), u_input.b.x, ~arg_0.d.c.a & ~arg_0.d.b.a));
    return ~_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, -9597i), -vec3<i32>(36538i, 1i, arg_0.d.b.a))) <= (i32(-1i) * -79797i);
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = 10736u;
    let var_1 = select(select(global0[_wgslsmith_index_u32(8713u, 10u)], !global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-545f)), 421f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-281f - 979f) * _wgslsmith_f_op_f32(f32(-1f) * -1383f))), select(vec3<bool>(func_3(Struct_4(82160u, global0[_wgslsmith_index_u32(arg_0, 10u)], 37746u, Struct_3(Struct_1(vec4<f32>(-928f, 1100f, -307f, -1672f), arg_0, vec3<u32>(arg_0, u_input.c.x, var_0), global0[_wgslsmith_index_u32(57163u, 10u)]), Struct_2(0i, true, 4294967295u), Struct_2(-54834i, true, u_input.c.x)), -602f)) & true, -35357i != u_input.b.x, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), select(select(select(global0[_wgslsmith_index_u32(arg_0, 10u)], global0[_wgslsmith_index_u32(arg_0, 10u)], false), global0[_wgslsmith_index_u32(select(56918u, 82792u, false), 10u)], true), vec3<bool>(true, false, true), !select(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(23110u, 10u)], true)), !all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(~0u, 10u)], !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, var_0), 10u)]));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), -774f, _wgslsmith_f_op_f32(abs(-257f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1220f - 330f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1179f, -678f, 1336f, 1192f)) + vec4<f32>(1000f, -463f, -1336f, -188f))))), ~max(~(~arg_0), 0u), u_input.c, select(select(vec3<bool>(false | var_1.x, !var_1.x, var_1.x), select(!vec3<bool>(var_1.x, true, true), var_1, all(var_1.yx)), !select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, true), var_1.x)), global0[_wgslsmith_index_u32(abs(~(35647u << (var_0 % 32u))), 10u)], !(!func_1(u_input.b, Struct_2(-186i, true, 1u), 369f))));
    var var_3 = _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1831f));
    global0 = array<vec3<bool>, 10>();
    return global0[_wgslsmith_index_u32(36538u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(max(select(21795i, u_input.a.x, func_1(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x)), Struct_2(u_input.b.x, false, u_input.c.x), _wgslsmith_f_op_f32(trunc(311f)))), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, reverseBits(-34581i))), all(!func_2(0u)), u_input.c.x ^ ~u_input.c.x);
    global0 = array<vec3<bool>, 10>();
    var var_1 = var_0.b;
    var var_2 = 1645f;
    let var_3 = u_input.c;
    var_0 = Struct_2(2147483647i, all(vec2<bool>(~var_0.a < _wgslsmith_div_i32(-2147483647i, 2147483647i), !all(vec4<bool>(true, var_0.b, var_0.b, var_0.b)))), ~(_wgslsmith_mod_u32(_wgslsmith_div_u32(57708u, 1u), var_0.c ^ u_input.c.x) << (~(var_3.x >> (1u % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(trunc(-395f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1339f, -1000f), vec2<f32>(1530f, 978f), vec2<bool>(false, var_0.b)))))));
}

