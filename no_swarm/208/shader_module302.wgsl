struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = u_input.a.x << (~u_input.b.x % 32u);
    let var_1 = var_0 & (6696u << (~(var_0 | ~var_0) % 32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(257f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1948f, -1483f), _wgslsmith_f_op_f32(min(-2193f, 1094f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(848f * 214f) * _wgslsmith_f_op_f32(select(-384f, 713f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1232f * _wgslsmith_div_f32(563f, -681f)) * -1602f))), -250f);
    return Struct_1(vec3<bool>(all(!vec2<bool>(false, arg_0.x)), true, !(var_0 != (1u & var_0))), u_input.b, vec3<bool>(true, true | (var_1 < var_0), arg_0.x));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    let var_0 = ~_wgslsmith_sub_vec3_i32(~select(vec3<i32>(18703i, 1i, 2147483647i), vec3<i32>(1i, 1i, 1i), false), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -8743i, -2147483647i), vec4<i32>(-9468i, 42405i, 17219i, 1i)), ~(-2147483647i), 1i));
    var var_1 = ~u_input.a;
    var var_2 = arg_0;
    var_1 = vec3<u32>(var_1.x, var_2.b.x, arg_0.b.x);
    return func_2(!vec4<bool>(~0u >= arg_2.x, false, func_2(vec4<bool>(arg_0.c.x, var_2.c.x, arg_0.a.x, var_2.c.x)).c.x || (var_0.x == -53394i), arg_0.c.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_0.yx, func_3(func_2(select(vec4<bool>(arg_1.a.x, true, true, false), !vec4<bool>(false, arg_1.a.x, arg_1.a.x, false), select(vec4<bool>(false, false, false, arg_1.c.x), vec4<bool>(true, arg_1.a.x, true, arg_3.c.x), arg_3.c.x))), ~u_input.a.x, vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(30865u, u_input.b.x, 0u)), 57605u, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3.b.x, arg_1.b.x), 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-367f, 1000f, -622f, 2037f), vec4<f32>(arg_2.x, 1248f, arg_2.x, arg_2.x), vec4<bool>(arg_1.c.x, arg_3.a.x, arg_1.a.x, arg_1.a.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -1000f, arg_2.x, arg_2.x), vec4<f32>(-1268f, -1315f, arg_2.x, 1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, -678f, 1006f)))))), 14505u, func_3(func_3(arg_3, func_2(!vec4<bool>(arg_1.a.x, false, false, arg_1.a.x)).b.x, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 0u, arg_3.b.x, arg_3.b.x), vec4<u32>(0u, 0u, 1u, arg_3.b.x)), vec4<u32>(7170u, 1u, arg_1.b.x, arg_3.b.x), ~vec4<u32>(62027u, 57731u, 14378u, 4294967295u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -790f) - arg_2)))), 7517u, _wgslsmith_mod_vec4_u32(~vec4<u32>(88858u, 71159u, 4294967295u, 1u) >> (abs(vec4<u32>(1u, 1u, u_input.a.x, arg_3.b.x)) % vec4<u32>(32u)), select(vec4<u32>(arg_1.b.x, u_input.b.x, arg_1.b.x, arg_1.b.x) << (vec4<u32>(u_input.a.x, 0u, arg_1.b.x, arg_1.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, u_input.b.x, arg_3.b.x, arg_3.b.x), arg_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1510f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(abs(arg_2.x))) + _wgslsmith_f_op_vec4_f32(round(arg_2)))), vec2<f32>(arg_2.x, 522f));
    var var_1 = Struct_2(var_0.a, func_3(func_3(Struct_1(!vec3<bool>(false, var_0.d.a.x, arg_1.a.x), arg_1.b, func_3(Struct_1(arg_3.c, vec2<u32>(arg_3.b.x, 0u), arg_1.c), 0u, vec4<u32>(28071u, 1u, 1u, 60501u), arg_2).a), arg_3.b.x, ~vec4<u32>(4294967295u, arg_1.b.x, 42113u, arg_3.b.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, arg_2.x, arg_2.x, -1000f) * arg_2), _wgslsmith_div_vec4_f32(vec4<f32>(-1226f, 750f, -369f, arg_2.x), vec4<f32>(arg_2.x, arg_2.x, var_0.e.x, arg_2.x))))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), u_input.a.yy), ~firstLeadingBit(vec4<u32>(0u, arg_1.b.x, 20351u, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(1000f * var_0.e.x), arg_2.x))), firstTrailingBit(_wgslsmith_sub_u32(firstTrailingBit(firstLeadingBit(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.b.b.x), vec2<u32>(4294967295u, var_0.b.b.x)) >> (13484u % 32u))), Struct_1(arg_1.c, vec2<u32>(1u, u_input.b.x), vec3<bool>(!arg_1.c.x, var_0.b.a.x | false, true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x)), _wgslsmith_f_op_vec2_f32(var_0.e * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e.x, 212f), _wgslsmith_f_op_vec2_f32(-var_0.e), all(vec4<bool>(var_0.b.a.x, false, arg_3.c.x, arg_1.a.x))))))));
    var_0 = Struct_2((var_0.a & var_0.a) | -countOneBits(vec2<i32>(-2147483647i, arg_0.x) << (arg_3.b % vec2<u32>(32u))), Struct_1(!select(vec3<bool>(true, var_0.b.a.x, true), !vec3<bool>(var_1.b.a.x, true, arg_1.a.x), !arg_1.a), vec2<u32>(func_3(Struct_1(var_0.b.c, var_1.d.b, var_1.d.a), var_1.d.b.x, vec4<u32>(arg_3.b.x, 98533u, arg_1.b.x, arg_1.b.x), arg_2).b.x | 1u, 3271u), vec3<bool>(all(!vec4<bool>(false, arg_3.a.x, var_0.d.a.x, false)), arg_3.b.x >= ~arg_1.b.x, false)), 12983u, var_1.d, var_1.e);
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(arg_0.x, var_1.a.x), min(_wgslsmith_clamp_i32(arg_0.x, -2147483647i, var_0.a.x), ~arg_0.x)), arg_0.yz));
    var var_3 = firstLeadingBit(~_wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a.x, var_0.c)), arg_3.b));
    return Struct_2(_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(-1i, var_2), max(var_1.a.x, var_2)), arg_0.wx), func_3(global0[_wgslsmith_index_u32(~abs(~arg_1.b.x), 20u)], ~u_input.a.x | _wgslsmith_mult_u32(0u, 0u << (var_0.c % 32u)), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_3.x, 56647u, var_3.x, 0u), vec4<u32>(0u, 4294967295u, var_0.c, var_1.d.b.x), !vec4<bool>(false, var_1.b.c.x, false, false)), select(_wgslsmith_div_vec4_u32(vec4<u32>(2329u, var_3.x, 10067u, 6185u), vec4<u32>(7647u, var_3.x, 54953u, var_1.d.b.x)), vec4<u32>(arg_1.b.x, var_3.x, 38723u, arg_1.b.x), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(495f, 306f, -564f, -1000f) - arg_2) + vec4<f32>(336f, 668f, 309f, var_1.e.x)))), _wgslsmith_add_u32(var_0.c, ~var_0.d.b.x), arg_1, arg_2.zz);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.a.x;
    let var_1 = (arg_0 | any(vec3<bool>(arg_1.b.c.x || true, false, arg_1.b.a.x))) || true;
    let var_2 = ~_wgslsmith_clamp_vec4_u32((~vec4<u32>(arg_1.d.b.x, u_input.b.x, u_input.a.x, u_input.b.x) | vec4<u32>(22200u, 0u, u_input.b.x, 0u)) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.b.x, 23019u, 1u, u_input.b.x), vec4<u32>(0u, arg_1.c, 73836u, 0u) << (vec4<u32>(1u, 4294967295u, arg_1.c, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(4921u, _wgslsmith_sub_u32(arg_1.b.b.x, 22790u) ^ 1u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(7416u, arg_1.b.b.x, u_input.b.x, 53187u), ~vec4<u32>(1u, 33279u, 44552u, arg_1.b.b.x))), reverseBits(~(~vec4<u32>(arg_1.b.b.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_3 = arg_1.d.a;
    let var_4 = 0u;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(5794u, 62287u << (_wgslsmith_div_u32(u_input.b.x, ~u_input.a.x) % 32u), _wgslsmith_sub_u32(func_4(any(vec2<bool>(false, false)), func_1(vec4<i32>(-2147483647i, -9942i, 0i, -1i), global0[_wgslsmith_index_u32(1u, 20u)], vec4<f32>(-475f, 1091f, -836f, -933f), global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), u_input.b.x), 4156u);
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var_0 = reverseBits(min(vec4<u32>(_wgslsmith_add_u32(var_0.x, u_input.a.x), 1670u, var_0.x, var_0.x >> (u_input.b.x % 32u)), max(vec4<u32>(u_input.b.x, var_0.x, 30949u, 20867u) >> (vec4<u32>(u_input.a.x, var_0.x, 1u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(29658u, 76333u, 0u, u_input.a.x), vec4<u32>(4294967295u, 40611u, 32466u, var_0.x)))) | (~(vec4<u32>(0u, 66999u, 1u, 4294967295u) & vec4<u32>(0u, var_0.x, 0u, 8679u)) & firstTrailingBit(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, -766f, vec4<u32>(4946u, 1u, ~0u, ~(~4294967295u)) ^ vec4<u32>(_wgslsmith_add_u32(~u_input.a.x, 118415u), ~(~u_input.b.x), _wgslsmith_clamp_u32(var_0.x, var_0.x, 22494u), _wgslsmith_div_u32(_wgslsmith_add_u32(13940u, 18049u), ~27817u)), 1327f);
}

