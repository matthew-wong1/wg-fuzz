struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<u32>(0u, 0u, 0u, 19993u), Struct_1(44590u, false), vec3<bool>(false, false, false), Struct_1(9875u, false), 0i), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 32204u), Struct_1(4294967295u, false), vec3<bool>(true, false, false), Struct_1(1041u, false), i32(-2147483648)), Struct_2(vec4<u32>(0u, 4294967295u, 9994u, 1u), Struct_1(0u, false), vec3<bool>(false, true, false), Struct_1(42239u, false), 29005i), Struct_2(vec4<u32>(14414u, 0u, 1u, 1u), Struct_1(4294967295u, false), vec3<bool>(true, false, true), Struct_1(61119u, false), -14523i), Struct_2(vec4<u32>(0u, 20954u, 0u, 4294967295u), Struct_1(4294967295u, false), vec3<bool>(false, true, false), Struct_1(3145u, false), 10649i), Struct_2(vec4<u32>(1u, 26883u, 36702u, 1u), Struct_1(13990u, true), vec3<bool>(true, false, false), Struct_1(46822u, false), -7841i), Struct_2(vec4<u32>(120707u, 44731u, 6315u, 0u), Struct_1(79108u, true), vec3<bool>(false, false, true), Struct_1(49559u, true), -9725i), Struct_2(vec4<u32>(27645u, 25905u, 4294967295u, 9361u), Struct_1(4294967295u, false), vec3<bool>(false, true, true), Struct_1(0u, true), -1i), Struct_2(vec4<u32>(56334u, 51355u, 1u, 44276u), Struct_1(26168u, false), vec3<bool>(false, true, false), Struct_1(4294967295u, false), 1i), Struct_2(vec4<u32>(44171u, 64141u, 40838u, 49350u), Struct_1(4294967295u, true), vec3<bool>(true, false, true), Struct_1(46729u, false), 12687i), Struct_2(vec4<u32>(1u, 34095u, 1u, 10281u), Struct_1(5551u, false), vec3<bool>(false, true, true), Struct_1(0u, true), -10056i), Struct_2(vec4<u32>(14113u, 4294967295u, 84812u, 0u), Struct_1(6236u, false), vec3<bool>(true, true, true), Struct_1(58228u, true), 1i), Struct_2(vec4<u32>(3830u, 1u, 15221u, 45850u), Struct_1(54259u, false), vec3<bool>(false, false, true), Struct_1(31658u, true), -1i));

var<private> global1: array<Struct_3, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: u32) -> vec4<u32> {
    return ~reverseBits(~(~vec4<u32>(35151u, arg_2, 4294967295u, arg_2)) & max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 9968u, arg_2, arg_1.x), vec4<u32>(arg_2, arg_1.x, arg_1.x, 4294967295u)), vec4<u32>(30853u, 73834u, arg_1.x, arg_2) & vec4<u32>(arg_1.x, 1u, 16302u, 19732u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    global1 = array<Struct_3, 25>();
    var var_0 = arg_2.ww;
    global0 = array<Struct_2, 13>();
    var var_1 = vec4<i32>(-34926i, ~(-arg_0.e) << (arg_0.b.a % 32u), u_input.a, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_div_i32(_wgslsmith_add_i32(-arg_0.e, _wgslsmith_sub_i32(2147483647i, 2147483647i)), arg_0.e), u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.xw), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.x, 653f))) * vec2<f32>(372f, arg_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 279f), vec2<f32>(arg_2.x, arg_1))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 576f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -360f)))))), vec2<bool>(any(select(arg_0.c, select(vec3<bool>(true, true, true), arg_0.c, arg_0.b.b), select(arg_0.c, vec3<bool>(false, arg_0.b.b, false), false))), min(firstLeadingBit(12867i), -1i) == abs(u_input.a))));
    return abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~0i, _wgslsmith_clamp_i32(arg_0.e, -1i, -12569i)), min(firstLeadingBit(var_1.yx), select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-17266i, arg_0.e), vec2<bool>(arg_0.c.x, arg_0.d.b)))), var_1.x));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = Struct_4(u_input.a, vec4<i32>(-1i, -49365i, func_3(global0[_wgslsmith_index_u32(~22456u, 13u)], 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-536f, 357f, -1000f, -339f) + vec4<f32>(546f, -1064f, 802f, -480f)))), max(u_input.b, u_input.a)));
    global1 = array<Struct_3, 25>();
    var var_1 = ~(~max(vec2<u32>(arg_0, 1u) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), abs(vec2<u32>(4294967295u, arg_0)))) & ~(~(~(~vec2<u32>(arg_0, 62042u))));
    return Struct_4(-2147483647i | u_input.a, ~(~(-vec4<i32>(1i, 22106i, -2147483647i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 25>();
    let var_0 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    let var_1 = ~4294967295u;
    var var_2 = vec2<u32>(var_1, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 0u, 464u, 0u) & vec4<u32>(reverseBits(var_1), 1u >> (1u % 32u), 1u, var_1), _wgslsmith_add_vec4_u32(func_1(var_0.x, vec3<u32>(var_1, var_1, var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, 4294967295u), vec3<u32>(1u, 15766u, 7477u))), vec4<u32>(~35377u, _wgslsmith_add_u32(var_1, var_1), var_1, var_1))));
    var var_3 = func_2(var_2.x & ~(~(~34007u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1552f, 730f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-559f, -783f))))));
}

