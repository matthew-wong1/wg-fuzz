struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-1i, 1i, -1i), vec3<i32>(22557i, i32(-2147483648), 1i), vec3<i32>(-25853i, -4594i, 2147483647i), vec3<i32>(-37843i, 1i, -33685i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(16141i, 39062i, 2147483647i), vec3<i32>(3044i, -5362i, -21712i), vec3<i32>(30875i, 35286i, 64148i), vec3<i32>(0i, -2597i, -26180i), vec3<i32>(-1i, 0i, 49288i), vec3<i32>(2147483647i, 9190i, 26222i), vec3<i32>(30834i, 2147483647i, -6485i), vec3<i32>(4636i, 37962i, 6837i), vec3<i32>(i32(-2147483648), 2147483647i, -10373i), vec3<i32>(0i, i32(-2147483648), -653i));

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<bool> {
    global0 = array<vec3<i32>, 16>();
    var var_0 = -1515f;
    global1 = array<vec2<bool>, 9>();
    var var_1 = _wgslsmith_dot_vec3_i32(arg_0.xxw, ~vec3<i32>(~(~u_input.a.x), u_input.a.x, -arg_0.x));
    var var_2 = global2.a.x;
    return global2.a;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    global2 = Struct_1(select(func_3(vec4<i32>(u_input.a.x, 0i | u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x >> (40117u % 32u)), firstTrailingBit(abs(arg_1))), !(!(!global2.a)), !vec3<bool>(true, true, arg_0)));
    global2 = Struct_1(!select(select(select(vec3<bool>(global2.a.x, global2.a.x, false), global2.a, global2.a), select(global2.a, vec3<bool>(true, false, false), global2.a), func_3(vec4<i32>(u_input.a.x, u_input.a.x, 13010i, u_input.a.x), vec3<u32>(19399u, arg_1.x, 1u))), vec3<bool>(global2.a.x, true | arg_0, true), vec3<bool>(arg_1.x > arg_1.x, !arg_0, any(vec2<bool>(true, global2.a.x)))));
    var var_0 = arg_1.x << (15809u % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-327f * _wgslsmith_f_op_f32(round(-929f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f)))));
    var_0 = _wgslsmith_add_u32(~max(arg_1.x, arg_1.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~12763u, _wgslsmith_div_u32(arg_1.x, abs(4294967295u))), 11653u, ~(~_wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x))));
    return arg_1.x ^ ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(26460u, arg_1.x & arg_1.x), select(~arg_1.x, ~arg_1.x, func_3(vec4<i32>(u_input.a.x, -46635i, 1i, u_input.a.x), arg_1).x), _wgslsmith_mult_u32(69704u >> (arg_1.x % 32u), select(arg_1.x, arg_1.x, false)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = firstTrailingBit(u_input.a.x);
    var var_2 = -countOneBits(9544i);
    global2 = Struct_1(select(vec3<bool>(true, false, true), global2.a, global2.a));
    global0 = array<vec3<i32>, 16>();
    return Struct_1(global2.a);
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<i32>, 16>();
    let var_0 = func_4(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(50786u, 52359u, 4294967295u, 1u), vec4<u32>(4294967295u, 1562u, 4294967295u, 4294967295u)) & ~_wgslsmith_clamp_u32(3932u, 0u, 1141u), max(_wgslsmith_div_u32(func_2(global2.a.x, vec3<u32>(54828u, 1u, 10558u)), ~24933u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 46526u), vec4<u32>(7387u, 4294967295u, 68097u, 0u)))), vec2<u32>(1u, 1u));
    let var_1 = _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x);
    var var_2 = var_0;
    global0 = array<vec3<i32>, 16>();
    return func_4(0u, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_sub_u32(90844u << (1u % 32u), ~4294967295u), 0u >> (1u % 32u)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(3661u, 37810u)), ~firstTrailingBit(vec2<u32>(0u, 4294967295u)))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_2(func_4(select(1u, _wgslsmith_add_u32(1u, ~44929u), true), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -920f), abs(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(14447u, 16u)], global0[_wgslsmith_index_u32(86u, 16u)]) << (4294967295u % 32u)) > _wgslsmith_add_i32(~u_input.a.x, -u_input.a.x), func_1());
    global0 = array<vec3<i32>, 16>();
    let var_1 = max(~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1407u, 4294967295u, 69380u), vec3<u32>(0u, 66780u, 1u)), _wgslsmith_add_u32(16696u, reverseBits(1u)), ~reverseBits(34209u), ~(~40800u)), ~max(max(vec4<u32>(4294967295u, 0u, 60735u, 23462u), ~vec4<u32>(18591u, 4294967295u, 49391u, 65825u)), vec4<u32>(1u, 1u, 1u, 1u)));
    global2 = Struct_1(!(!vec3<bool>(true, arg_1.a.x, true)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(ceil(173f))))))) * _wgslsmith_f_op_f32(sign(var_0.b)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(330f, _wgslsmith_f_op_f32(-1481f - -1199f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -173f)))), _wgslsmith_f_op_f32(func_5(-82411i, func_1(), false)), _wgslsmith_f_op_f32(trunc(-324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f + _wgslsmith_f_op_f32(f32(-1f) * -831f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1060f, 714f, _wgslsmith_f_op_f32(func_5(2147483647i, func_4(1u, vec2<u32>(11024u, 2955u)), true)), 1756f) * vec4<f32>(_wgslsmith_f_op_f32(abs(-168f)), _wgslsmith_f_op_f32(-803f * _wgslsmith_f_op_f32(trunc(881f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f - 833f)), _wgslsmith_f_op_f32(min(1000f, -827f)))));
    let var_1 = global0[_wgslsmith_index_u32(1u, 16u)];
    let var_2 = Struct_2(func_1(), var_0.x, true, func_1());
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-220f, var_0.x)) * _wgslsmith_f_op_f32(950f + var_2.b)), _wgslsmith_f_op_f32(func_5(i32(-1i) * -35307i, Struct_1(vec3<bool>(var_2.d.a.x, var_2.d.a.x, true)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - 788f)))), min(max(vec4<u32>(45155u, ~4294967295u, abs(1u), ~4294967295u), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~(~vec4<u32>(110401u, 0u, 4294967295u, 1u))), vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, -1i, var_1.x, u_input.a.x), vec4<i32>(~(-49438i), firstTrailingBit(23019i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -11966i, -2147483647i, var_1.x), vec4<i32>(var_1.x, 3334i, u_input.a.x, u_input.a.x)), _wgslsmith_sub_i32(0i, -2147483647i))), -49931i), !select(vec4<bool>(true, global2.a.x, global2.a.x, var_2.c), vec4<bool>(true, var_2.a.a.x, var_2.a.a.x, true), false));
    global0 = array<vec3<i32>, 16>();
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, -1641f))), -538f, -2439f));
    let var_5 = ~var_3.b.x;
    global0 = array<vec3<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-48201i, max(-u_input.a.x, u_input.a.x)));
}

