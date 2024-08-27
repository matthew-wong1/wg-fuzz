struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(743f, 157f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(~u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1006f, -1540f, global0[_wgslsmith_index_u32(4294967295u, 18u)])))) * vec3<f32>(global0[_wgslsmith_index_u32(select(~0u, firstTrailingBit(4294967295u), true), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19553u, 18u)]) * _wgslsmith_f_op_f32(1632f + 762f)), 238f)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~1u, ~30387u), 47078u), _wgslsmith_add_u32(1u, min(firstLeadingBit(37945u), 40641u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(~vec3<u32>(9659u, 11488u, 4294967295u), vec3<u32>(1u, 1u, 1u), true)), abs(abs(~4294967295u))));
    global0 = array<f32, 18>();
    global2 = array<vec2<f32>, 1>();
    var var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(646f, global0[_wgslsmith_index_u32(1u, 18u)], 1267f)))), var_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-297f, var_0.b.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-501f)), -454f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1206f + global0[_wgslsmith_index_u32(0u, 18u)]))))), var_0.c.x, var_0.c.zw, var_0.c.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.a.b.x, var_1.b, 347f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1546f, -1515f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-920f, -1021f, var_0.b.x, var_0.b.x)), vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(round(var_1.a.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1650f, -762f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.d.x, 18u)] + global0[_wgslsmith_index_u32(var_1.a.c.x, 18u)])), -1000f)));
    return !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), var_0.a >= u_input.a)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 18>();
    var var_0 = -26555i;
    global0 = array<f32, 18>();
    let var_1 = select(func_3(), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(false, false, false)), true, all(vec3<bool>(false, true, false))), false), !select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), u_input.a > 2147483647i), 1u >= arg_0.c.x));
    let var_2 = abs(((arg_0.c.x & _wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(arg_0.c.x, arg_0.c.x, 81389u, arg_0.c.x))) << (_wgslsmith_clamp_u32(40793u, arg_0.c.x, ~0u) % 32u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(26327u, arg_0.c.x, arg_0.c.x), abs(arg_0.c.xww)), vec3<u32>(26029u, arg_0.c.x, 12203u)) % 32u));
    return 24410u;
}

fn func_1() -> u32 {
    global1 = ~max(~4294967295u, _wgslsmith_mult_u32(func_2(Struct_1(4075i, vec3<f32>(global0[_wgslsmith_index_u32(19403u, 18u)], 266f, -192f), vec4<u32>(0u, 4294967295u, 4294967295u, 16560u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(18057u, 4294967295u))) << (16521u % 32u));
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 1234f, global0[_wgslsmith_index_u32(41019u, 18u)]))) + _wgslsmith_div_vec3_f32(vec3<f32>(-771f, global0[_wgslsmith_index_u32(8901u, 18u)], -1250f), vec3<f32>(global0[_wgslsmith_index_u32(62374u, 18u)], 1000f, global0[_wgslsmith_index_u32(12579u, 18u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-853f, 1481f, global0[_wgslsmith_index_u32(52066u, 18u)]), vec3<f32>(-569f, 872f, 1000f)))))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 26787u, 4294967295u, 63956u), vec4<u32>(70404u, 1u, 1u, 0u), vec4<bool>(false, true, true, true)), ~vec4<u32>(80905u, 1u, 77871u, 168332u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = ~(~(~1u));
    return var_0.c.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global0 = array<f32, 18>();
    let var_0 = !select(true, reverseBits(_wgslsmith_clamp_i32(u_input.a, 29302i, arg_3)) != 1i, u_input.a >= arg_2.a);
    var var_1 = false;
    var var_2 = !(!(!(!(!vec2<bool>(var_0, var_0)))));
    let var_3 = ~(_wgslsmith_div_i32(max(-2147483647i, arg_2.a & -1i), _wgslsmith_clamp_i32(u_input.a, 8707i, _wgslsmith_div_i32(21311i, arg_2.a))) << ((min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.c.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 57687u)), max(arg_1.x, 4294967295u)) >> (arg_1.x % 32u)) % 32u));
    return Struct_2(Struct_1(-22315i, vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_add_vec4_u32((arg_2.c >> (arg_2.c % vec4<u32>(32u))) | min(vec4<u32>(arg_2.c.x, arg_1.x, arg_1.x, 153u), arg_2.c), arg_2.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-299f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_2.b.x)))) + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(955f)))))), ~select(arg_1.x, _wgslsmith_mult_u32(~4294967295u, 32124u), true), arg_1, _wgslsmith_add_u32(arg_2.c.x, 31539u));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(3147u, _wgslsmith_mult_u32(arg_0.c, _wgslsmith_dot_vec2_u32(arg_0.a.c.xy, ~arg_0.a.c.xx))), (arg_0.e | firstLeadingBit(arg_0.d.x & 38457u)) | _wgslsmith_div_u32(arg_0.c, arg_0.a.c.x));
    global1 = 1u;
    let var_0 = arg_0.a.c;
    var var_1 = Struct_3(~0i, _wgslsmith_clamp_u32(var_0.x, ~(~4294967295u), var_0.x));
    let var_2 = Struct_3(var_1.a, ~_wgslsmith_dot_vec3_u32(~(~var_0.zxw), func_4(arg_0.a.b, arg_0.a.c.xz ^ arg_0.d, func_4(arg_0.a.b, vec2<u32>(59751u, 1u), arg_0.a, var_1.a).a, 1i).a.c.zwy));
    return Struct_2(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.b.x))), abs(_wgslsmith_sub_u32(max(_wgslsmith_mult_u32(34702u, var_2.b), max(46390u, 23831u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(38537u, 4294967295u), func_4(vec3<f32>(arg_0.b, global0[_wgslsmith_index_u32(53133u, 18u)], -1000f), arg_0.d, arg_0.a, arg_0.a.a).d))), _wgslsmith_div_vec2_u32(~(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_1.b), vec2<u32>(var_0.x, var_2.b)) | vec2<u32>(var_2.b, 0u)), var_0.wz), ~abs(var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 1>();
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(101486u, 18u)], global0[_wgslsmith_index_u32(63689u, 18u)], 1000f) - vec3<f32>(139f, global0[_wgslsmith_index_u32(35248u, 18u)], 935f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(54633u, 18u)], global0[_wgslsmith_index_u32(23581u, 18u)], global0[_wgslsmith_index_u32(4564u, 18u)]) * vec3<f32>(global0[_wgslsmith_index_u32(60232u, 18u)], -948f, 605f)), vec3<f32>(global0[_wgslsmith_index_u32(1u, 18u)], -275f, global0[_wgslsmith_index_u32(64295u, 18u)]))), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21240u, 4294967295u, 15474u, 6079u), vec4<u32>(4294967295u, 1u, 47250u, 1u)), ~22610u)), Struct_1(-1i, vec3<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(18960u, 18u)])), _wgslsmith_f_op_f32(-822f - global0[_wgslsmith_index_u32(1u, 18u)]), global0[_wgslsmith_index_u32(func_1(), 18u)]), ~countOneBits(vec4<u32>(56544u, 36603u, 38665u, 0u))), u_input.a));
    global0 = array<f32, 18>();
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 18u)])))) * var_0.a.b.x));
}

