struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = array<Struct_1, 25>();
    let var_0 = 1u == (_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u ^ arg_2.a, _wgslsmith_add_u32(0u, arg_2.a)), arg_0) >> (~1u % 32u));
    let var_1 = Struct_3(!(!select(vec2<bool>(false, var_0), select(arg_1.xw, vec2<bool>(arg_1.x, false), arg_1.xy), select(arg_1.wx, arg_1.zz, true))));
    var var_2 = countOneBits(vec2<i32>(-_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -28462i))), abs(min(-2147483647i, -46315i)) >> (select(~0u, abs(arg_0), true) % 32u)));
    global2 = 5487u;
    return -1434f;
}

fn func_2(arg_0: bool) -> Struct_5 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(218f, -1000f)), _wgslsmith_div_f32(-599f, -1951f), true)) + _wgslsmith_f_op_f32(-1569f * _wgslsmith_f_op_f32(func_3(2439u, vec4<bool>(arg_0, false, var_0, false), global0[_wgslsmith_index_u32(55075u, 25u)], 1000f)))))));
    var var_2 = true;
    var var_3 = true;
    global0 = array<Struct_1, 25>();
    return Struct_5(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(countOneBits(~4294967295u), 0u), 25u)], true, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(55402u, 1u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 64459u, 0u)) | 0u, 25u)], _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(24481u, 23866u), vec2<u32>(25202u, 87266u), vec2<u32>(4294967295u, 11230u)))), 6835u ^ (~(~18024u) | select(_wgslsmith_dot_vec3_u32(vec3<u32>(68790u, 0u, 1u), vec3<u32>(36752u, 92717u, 52806u)), ~535u, any(global1[_wgslsmith_index_u32(4294967295u, 16u)]))));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_3, arg_3: i32) -> u32 {
    global2 = arg_1.c.b.x;
    var var_0 = arg_1.c.a.b;
    global0 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(abs(arg_1.d), 1u, select(arg_1.d, arg_1.d, false), 4294967295u), vec4<u32>(_wgslsmith_sub_u32(0u, arg_1.a.a), 89231u << (arg_1.d % 32u), ~1u, ~arg_1.a.a)), vec4<u32>(_wgslsmith_sub_u32(57094u, arg_1.c.a.a), 1u, 4294967295u, arg_1.c.a.a)), 12023u);
    global2 = ~1u;
    return func_2(!any(arg_2.a)).d;
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    global1 = array<vec4<bool>, 16>();
    var var_0 = firstTrailingBit(~func_4(all(!vec2<bool>(true, arg_1)), func_2(true), Struct_3(!vec2<bool>(arg_1, false)), _wgslsmith_mult_i32(~(-21721i), u_input.a)));
    var var_1 = Struct_3(vec2<bool>(false, func_2(false).c.b.x >= 1u));
    global2 = _wgslsmith_dot_vec3_u32(countOneBits(select(vec3<u32>(1u, 0u, 1u), vec3<u32>(select(26491u, 4294967295u, true), 5970u << (0u % 32u), 30078u), true)), ~(~(~vec3<u32>(1u, 1u, 1u))));
    var var_2 = func_2(arg_0 != arg_0);
    return func_2(select(var_2.a.a >= _wgslsmith_sub_u32(38022u, 4675u), true, _wgslsmith_add_u32(var_2.c.b.x, var_2.c.a.a) > ~(~var_2.d))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~38769i, true);
    var var_1 = Struct_5(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1111f) <= _wgslsmith_f_op_f32(round(var_0.a.b))).a, func_2(true).b, var_0, 0u);
    global0 = array<Struct_1, 25>();
    var_1 = func_2(false);
    let var_2 = Struct_3(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, var_1.b), true)), select(!(!vec2<bool>(false, var_1.b)), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, true), var_1.b), all(vec3<bool>(var_1.b, true, true))), var_1.b));
    let var_3 = countOneBits(func_2(var_2.a.x).c.b.x);
    var var_4 = select(vec4<bool>(295f >= var_0.a.b, false, false, !(_wgslsmith_f_op_f32(sign(-563f)) < 1434f)), !vec4<bool>(false, any(!vec3<bool>(var_2.a.x, var_2.a.x, true)), -359f > _wgslsmith_f_op_f32(-var_0.a.b), true | all(global1[_wgslsmith_index_u32(1u, 16u)])), !(!(!global1[_wgslsmith_index_u32(~var_3, 16u)])));
    var var_5 = 225f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_add_i32(u_input.a, u_input.a), -1i, u_input.a, _wgslsmith_sub_i32(~(-4774i), _wgslsmith_dot_vec2_i32(vec2<i32>(-39521i, u_input.a), vec2<i32>(960i, u_input.a)))) & _wgslsmith_add_vec4_i32(~abs(vec4<i32>(u_input.a, 35797i, 8951i, u_input.a)), -(vec4<i32>(u_input.a, u_input.a, 25053i, -8204i) | vec4<i32>(1i, u_input.a, -1i, u_input.a))), -423f);
}

