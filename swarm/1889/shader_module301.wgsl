struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 9626u);

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 0u, 24684u), vec3<u32>(1u, 25387u, 16066u), vec3<u32>(59098u, 40959u, 4294967295u), vec3<u32>(11143u, 4294967295u, 35709u), vec3<u32>(1u, 62646u, 33653u), vec3<u32>(62485u, 0u, 58513u), vec3<u32>(28466u, 0u, 0u), vec3<u32>(524u, 91183u, 0u));

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<f32> {
    let var_0 = global0[_wgslsmith_index_u32(22126u, 25u)];
    return arg_1.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>) -> i32 {
    global2 = array<vec3<u32>, 8>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(arg_0 * arg_0))))), reverseBits(reverseBits(~45993u)), arg_0, vec3<i32>(u_input.c.x & ~firstLeadingBit(u_input.c.x), u_input.c.x, i32(-1i) * -28504i), -631f);
    var var_1 = var_0.d.x | reverseBits(var_0.d.x);
    var var_2 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global1.x, 4294967295u), global1.x, ~27443u), ~select(vec3<u32>(global1.x, var_0.b, arg_1.x), vec3<u32>(1u, 4294967295u, global1.x), true))) << (min(reverseBits(max(abs(15800u), 53035u)), abs(reverseBits(u_input.a.x) | ~50245u)) % 32u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) * 354f), var_0.e), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), -266f), var_0.c)))), 4294967295u, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(max(1221f, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0, Struct_1(vec2<f32>(arg_0.x, var_0.c.x), global1.x, arg_0, vec3<i32>(var_0.d.x, 0i, u_input.c.x), arg_0.x), var_0.d.x)).x, _wgslsmith_f_op_f32(122f + arg_0.x))))), vec3<i32>(max(countOneBits(var_0.d.x), firstLeadingBit(reverseBits(2147483647i))), abs(1i), u_input.c.x), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) - var_0.e) + var_0.a.x)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), ~(-var_0.d.zx));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c.x, _wgslsmith_add_i32(~u_input.c.x, u_input.c.x), u_input.c.x, ~_wgslsmith_mult_i32(u_input.c.x, -2147483647i)), vec4<i32>(-1i, _wgslsmith_add_i32(i32(-1i) * -u_input.c.x, 1i), abs(-u_input.c.x | _wgslsmith_add_i32(u_input.c.x, -2147483647i)), _wgslsmith_sub_i32(~(-u_input.c.x), func_4(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(u_input.d, 25u)], global3[_wgslsmith_index_u32(1u, 10u)], 42862i)), reverseBits(u_input.b.zyx)))));
    let var_1 = global0[_wgslsmith_index_u32(global1.x, 25u)];
    global0 = array<Struct_1, 25>();
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(559f + var_1.e)) + var_1.e), var_1.e), var_1.b, _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) + _wgslsmith_f_op_vec2_f32(-var_1.c))))), _wgslsmith_mult_vec3_i32(var_1.d ^ max(_wgslsmith_add_vec3_i32(vec3<i32>(38433i, u_input.c.x, u_input.c.x), vec3<i32>(-36604i, u_input.c.x, -13773i)), vec3<i32>(2147483647i, -1i, u_input.c.x)), vec3<i32>(var_1.d.x, reverseBits(1i), -abs(u_input.c.x))), 848f);
    return var_0.x;
}

fn func_5(arg_0: i32) -> Struct_1 {
    global3 = array<Struct_1, 10>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-819f, -114f), vec2<f32>(344f, 368f), vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_div_f32(-589f, -505f)))), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(436f, 278f)))), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, arg_0, _wgslsmith_div_i32(arg_0, min(10517i, -14822i))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-473f, 604f) + vec2<f32>(-1283f, 2105f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(308f, 1000f) * vec2<f32>(-281f, 1000f))), u_input.a), arg_0), -530f);
    let var_1 = _wgslsmith_div_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(max(vec2<i32>(-787i, arg_0), u_input.c) << (_wgslsmith_mod_vec2_u32(u_input.a.zz, u_input.a.yx) % vec2<u32>(32u)), vec2<i32>(var_0.d.x, u_input.c.x | _wgslsmith_mult_i32(arg_0, arg_0))));
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, max(vec4<u32>(1u, 19896u, 18489u, u_input.a.x), u_input.b) << (vec4<u32>(u_input.d, 4069u, global1.x, 58679u) % vec4<u32>(32u))), ~(~var_0.b), var_0.b, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.b.x, ~(~u_input.d)));
    var_2 = vec4<u32>(_wgslsmith_div_u32(~u_input.d | _wgslsmith_mult_u32(var_0.b, 55056u), ~4294967295u) >> (global1.x % 32u), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(select(~u_input.d, _wgslsmith_mult_u32(25539u, var_0.b), true), var_2.x), ~(~(~22016u))), 1u, max((u_input.d >> ((43649u >> (global1.x % 32u)) % 32u)) ^ ~global1.x, ~var_2.x));
    return global0[_wgslsmith_index_u32(~(~(~29077u)), 25u)];
}

fn func_1() -> Struct_1 {
    global3 = array<Struct_1, 10>();
    global2 = array<vec3<u32>, 8>();
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(159f, -135f)), -600f)) * _wgslsmith_f_op_f32(f32(-1f) * -549f)));
    global1 = select(vec2<u32>(_wgslsmith_div_u32(global1.x, 0u), min(_wgslsmith_dot_vec3_u32(u_input.a >> (vec3<u32>(0u, 9859u, 0u) % vec3<u32>(32u)), vec3<u32>(global1.x, 90159u, 19525u)), global1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(70066u, 1u, u_input.b.x), vec3<u32>(u_input.d, 38615u, u_input.a.x)) & global1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 79062u), _wgslsmith_mult_u32(global1.x, 1u)), u_input.b.ww | (vec2<u32>(1u, 4294967295u) ^ u_input.b.xx))), vec2<bool>(!(true || any(vec3<bool>(false, false, false))), reverseBits(~global1.x) == ~u_input.d));
    return func_5(_wgslsmith_mult_i32(-1i & firstLeadingBit(-u_input.c.x), ~func_2()));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(-arg_0.d.xx, -arg_3.d.xy);
    let var_1 = arg_3.d | -vec3<i32>(-1i, u_input.c.x, -45681i);
    global3 = array<Struct_1, 10>();
    let var_2 = arg_3;
    var var_3 = vec4<u32>(_wgslsmith_div_u32(120082u, reverseBits(var_2.b)), u_input.b.x, ~arg_0.b, global1.x);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 10>();
    var var_0 = func_6(func_1(), false, false, func_5(15660i));
    global3 = array<Struct_1, 10>();
    var var_1 = global0[_wgslsmith_index_u32(min(u_input.a.x, _wgslsmith_div_u32(countOneBits(49932u), 1u)), 25u)];
    var var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32(~4294967295u, 25u)];
    var var_4 = var_3.c.x;
    global2 = array<vec3<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(u_input.b, _wgslsmith_mult_vec4_u32(~u_input.b, vec4<u32>(51149u, global1.x, 43809u, 75110u)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false)))), ~u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)))))), _wgslsmith_add_vec3_u32(vec3<u32>(99026u, 10489u, 75611u | u_input.b.x) & ~min(global2[_wgslsmith_index_u32(55821u, 8u)], u_input.a), vec3<u32>(var_1.b, 0u, 4294967295u)));
}

