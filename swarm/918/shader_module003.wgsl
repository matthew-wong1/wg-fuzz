struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(-1709f, vec2<u32>(14043u, 3928u), vec3<f32>(-1000f, 533f, -381f), 78605i, 52696u);

var<private> global2: bool;

var<private> global3: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(0i, 54028i, -19597i), vec3<i32>(43611i, -47104i, 52699i), vec3<i32>(2147483647i, 35976i, 22652i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(-1i, 54668i, 1i), vec3<i32>(-21085i, 1514i, 31268i), vec3<i32>(51385i, i32(-2147483648), -1i), vec3<i32>(60694i, 2147483647i, -30554i), vec3<i32>(3612i, 13887i, -937i), vec3<i32>(0i, 0i, 0i), vec3<i32>(0i, -1i, 19144i), vec3<i32>(1i, -99513i, 0i), vec3<i32>(1i, 48658i, 2147483647i), vec3<i32>(1i, 9252i, 1i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, -49704i), vec3<i32>(21132i, 0i, 2147483647i), vec3<i32>(-3852i, 1i, 41559i), vec3<i32>(i32(-2147483648), 1i, -46708i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(3029i, -2510i, 79140i), vec3<i32>(-1i, 16787i, 0i), vec3<i32>(-2415i, -50480i, 9891i), vec3<i32>(65023i, 2147483647i, -14014i), vec3<i32>(-1i, 1i, 58055i), vec3<i32>(i32(-2147483648), 51373i, -16493i), vec3<i32>(0i, 36207i, -1i), vec3<i32>(i32(-2147483648), 47059i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    return 4294967295u;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(global1.a - 1169f)))))), min(global1.b & global1.b, vec2<u32>(global1.e, _wgslsmith_mod_u32(u_input.c, 21158u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * global1.c.x) * -1323f)), 441f, -168f), 2147483647i, ~firstTrailingBit(u_input.c));
    global0 = global1.e;
    var_0 = Struct_1(289f, firstLeadingBit(global1.b), _wgslsmith_f_op_vec3_f32(ceil(var_0.c)), ~(~(~(global1.d >> (90851u % 32u)))), 43381u);
    global3 = array<vec3<i32>, 31>();
    var var_1 = 1i;
    return _wgslsmith_f_op_vec3_f32(-global1.c);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> vec2<u32> {
    global2 = !(u_input.c != func_2(arg_0.e.b.x, vec3<u32>(u_input.c, global1.b.x >> (1u % 32u), abs(0u)), max(~arg_0.d, 70890u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, global1.c.x))));
    global3 = array<vec3<i32>, 31>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.b.x), ~_wgslsmith_sub_vec2_u32(arg_0.e.b, ~arg_0.e.b), vec3<f32>(global1.a, global1.c.x, -1244f), _wgslsmith_mult_i32(-2147483647i, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, reverseBits(global1.e), arg_2), vec3<u32>(_wgslsmith_add_u32(51231u, 46529u), global1.e | arg_2, select(global1.b.x, global1.e, true)))), Struct_1(-1408f, vec2<u32>(~1u, 1u), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(arg_0.d, 0u)), global1.e), 37666u, _wgslsmith_mult_i32(-27957i, arg_0.a) >> (firstLeadingBit(65757u) % 32u))), countOneBits(global1.d), abs(_wgslsmith_add_u32(1u, 2061u))), 760f);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.a), var_0.a.b & (~vec2<u32>(global1.e, 76294u) | vec2<u32>(u_input.c, arg_0.d)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.e.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -465f, 829f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.a, var_0.b.c.x, 178f))))), _wgslsmith_div_i32(-(~11958i), var_0.b.d), ~(~(~40276u))), Struct_1(-540f, reverseBits(_wgslsmith_mult_vec2_u32(arg_0.e.b, global1.b)), vec3<f32>(arg_0.e.c.x, -978f, -1813f), -arg_1, 49165u), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(574f - _wgslsmith_f_op_f32(trunc(var_0.b.c.x))), var_0.c))));
    global3 = array<vec3<i32>, 31>();
    return vec2<u32>(firstLeadingBit(~countOneBits(0u >> (global1.b.x % 32u))), u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = (vec4<u32>(global1.b.x, 4294967295u, func_1(arg_2, -51770i, ~arg_0.b.x).x, 0u) & vec4<u32>(global1.e, 1u, ~(~u_input.c), max(~u_input.c, global1.b.x << (arg_2.d % 32u)))) | vec4<u32>(func_2(~select(arg_2.e.e, global1.e, false), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(global1.b.x, 0u, u_input.c), vec3<u32>(u_input.c, arg_2.e.e, 4294967295u), vec3<bool>(true, true, false)), firstLeadingBit(vec3<u32>(0u, 24434u, 0u)), vec3<u32>(124971u, u_input.c, global1.e)), 0u, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e.a), _wgslsmith_f_op_f32(f32(-1f) * -1115f))), countOneBits(~global1.e), 46773u, arg_0.e);
    let var_1 = true;
    var var_2 = ~vec3<i32>(global1.d, i32(-1i) * -arg_2.e.d, -2147483647i);
    var var_3 = select(!select(vec2<bool>(true, true), !(!vec2<bool>(var_1, true)), select(var_1, true, true)), !(!select(!vec2<bool>(true, var_1), vec2<bool>(true, true), vec2<bool>(false, true))), true);
    global3 = array<vec3<i32>, 31>();
    return Struct_3(~(-2147483647i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + arg_0.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(751f)) + _wgslsmith_f_op_f32(min(686f, arg_2.b.x)))), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + 433f))), -1000f), var_2.x, abs(_wgslsmith_mod_u32(max(63149u, u_input.c), func_2(1u, var_0.yxx, 38471u, vec2<f32>(global1.a, -353f))) >> (arg_0.e % 32u)), Struct_1(arg_2.b.x, ~vec2<u32>(arg_0.e, var_0.x) ^ global1.b, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(983f - arg_0.c.x), global1.a, var_1)), arg_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(816f))))), abs(arg_2.a >> (max(arg_0.b.x, global1.e) % 32u)), 46120u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(global1.c.x, func_1(Struct_3(-27572i | u_input.b.x, vec4<f32>(-796f, -1410f, global1.a, 315f), -1i & global1.d, ~global1.e, Struct_1(-629f, vec2<u32>(global1.e, 0u), global1.c, 442i, u_input.c)), 0i, 135132u), vec3<f32>(global1.a, -2636f, _wgslsmith_f_op_f32(trunc(global1.a))), u_input.b.x, func_1(Struct_3(-global1.d, vec4<f32>(global1.c.x, 1407f, -272f, global1.a), _wgslsmith_mult_i32(global1.d, global1.d), ~global1.b.x, Struct_1(global1.a, global1.b, vec3<f32>(-1691f, global1.c.x, -1000f), global1.d, 1u)), u_input.a, _wgslsmith_mult_u32(u_input.c, abs(13289u))).x), _wgslsmith_mod_i32(-u_input.b.x, ~_wgslsmith_add_i32(u_input.a, global1.d)), Struct_3(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-25648i, -2147483647i), ~(-42765i)), -19738i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(401f, global1.a, global1.c.x, global1.a))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, -1714f, -1149f, global1.a))), max(_wgslsmith_dot_vec3_i32(abs(global3[_wgslsmith_index_u32(u_input.c, 31u)]), vec3<i32>(26626i, -12448i, 2147483647i)), -51138i << (countOneBits(0u) % 32u)), max(global1.e, ~(u_input.c & global1.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(290f, global1.a) * _wgslsmith_f_op_f32(floor(-1403f))), ~_wgslsmith_add_vec2_u32(global1.b, global1.b), _wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(ceil(global1.c))), -36560i, u_input.c)));
    global2 = false;
    let var_1 = vec3<f32>(var_0.e.a, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(~20641u, var_0.d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, u_input.a), vec2<i32>(global1.d, -9710i)))).x));
    var var_2 = Struct_3(2549i, _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_0.e.a, _wgslsmith_f_op_f32(select(-416f, _wgslsmith_f_op_f32(-global1.a), true)), _wgslsmith_div_f32(var_0.b.x, var_1.x))), -2147483647i, func_1(Struct_3(abs(_wgslsmith_add_i32(0i, 22644i)), var_0.b, 1i, 12446u, func_4(Struct_1(var_1.x, var_0.e.b, vec3<f32>(var_1.x, 1253f, var_1.x), 2147483647i, global1.e), -31026i, Struct_3(u_input.b.x, var_0.b, var_0.a, u_input.c, var_0.e)).e), var_0.c, ~4294967295u).x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(global1.c.x * var_1.x)) + -1388f), _wgslsmith_clamp_vec2_u32(~var_0.e.b, firstLeadingBit(~vec2<u32>(u_input.c, 59252u)), vec2<u32>(global1.e, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(-var_0.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-876f, -1000f)))), u_input.b.x, _wgslsmith_sub_u32(77549u, ~4294967295u)));
    var_0 = Struct_3(-(-2147483647i >> (0u % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global1.c.x, -948f, -1077f) * var_2.b)), _wgslsmith_f_op_vec4_f32(var_0.b + var_2.b)))), _wgslsmith_sub_i32(~(-2147483647i), u_input.a), 40258u, Struct_1(1000f, vec2<u32>(_wgslsmith_mod_u32(global1.e, firstTrailingBit(0u)), ~1u), _wgslsmith_f_op_vec3_f32(-var_1), abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.d, global1.d), -var_2.c)), _wgslsmith_mod_u32(u_input.c, 48225u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, select(var_2.c, -12642i, false), 1i)), global3[_wgslsmith_index_u32(0u, 31u)]), vec4<i32>(var_2.a, firstTrailingBit(var_2.c), -countOneBits(5581i), var_2.e.d));
}

