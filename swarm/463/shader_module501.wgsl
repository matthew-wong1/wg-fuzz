struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: array<Struct_2, 19>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> f32 {
    return -1158f;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.d;
    global0 = array<vec2<i32>, 25>();
    global1 = array<Struct_2, 19>();
    var var_1 = vec3<i32>(-2147483647i, countOneBits(-13457i), 1i) & (vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 25791i, u_input.c.x), vec3<i32>(7739i, u_input.c.x, u_input.c.x) >> (u_input.e.zxx % vec3<u32>(32u))));
    var var_2 = !vec4<bool>(true, !(!any(vec4<bool>(false, false, false, true))), (firstTrailingBit(var_0) == ~4294967295u) || (_wgslsmith_f_op_f32(arg_0.x - -455f) <= 1056f), any(vec4<bool>(false, true, true, false)));
    return Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, var_1.x, u_input.c.x, u_input.c.x), vec4<i32>(36710i, u_input.c.x, u_input.c.x, var_1.x)), ~vec4<i32>(u_input.c.x, 1i, -2147483647i, u_input.c.x)), vec4<i32>(42679i, 16172i, _wgslsmith_dot_vec2_i32(var_1.xy, vec2<i32>(36666i, 34889i)), -6327i)), -vec4<i32>(-22451i, _wgslsmith_add_i32(1i, u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.c.x, 0i), vec3<i32>(-5299i, var_1.x, -17578i)), u_input.c.x)), vec3<u32>(~(~4294967295u), var_0, firstTrailingBit(_wgslsmith_add_u32(u_input.d, u_input.a.x))), _wgslsmith_f_op_f32(min(arg_0.x, 212f)));
}

fn func_1() -> Struct_3 {
    global0 = array<vec2<i32>, 25>();
    var var_0 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(1069f, -1525f), _wgslsmith_f_op_f32(951f + 341f), -1049f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-280f, -1660f)), _wgslsmith_f_op_f32(abs(-1015f)), _wgslsmith_f_op_f32(func_2(vec2<u32>(82218u, u_input.a.x), Struct_3(vec3<f32>(400f, 817f, 1056f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(333f, -724f, -468f))), true))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, -664f, -799f))))));
    var var_1 = !(any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), all(vec3<bool>(true, false, true)))) == false);
    var_0 = Struct_1(-var_0.a, vec3<u32>(~1u, var_0.b.x, 4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1514f + _wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-688f, -356f)))))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0.b.x, var_0.b.x), vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(2324u, u_input.b.x, var_0.b.x, 4294967295u)) << (~vec4<u32>(1079u, var_0.b.x, var_0.b.x, var_0.b.x) % vec4<u32>(32u)), max(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 6514u), u_input.b)), ~var_0.b.x, ~(~(~u_input.e.x)))), 19u)];
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, var_0.c, var_0.c)) + vec3<f32>(-2381f, var_0.c, _wgslsmith_f_op_f32(var_0.c + var_0.c)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    var var_0 = vec4<u32>(reverseBits(u_input.b.x), u_input.b.x, u_input.b.x, 1u);
    let var_1 = Struct_2(u_input.d < var_0.x, all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)))));
    var var_2 = var_1;
    let var_3 = (-1i == -u_input.c.x) != !((u_input.c.x << (u_input.a.x % 32u)) == _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.c.x, u_input.c.x, -62023i), ~vec4<i32>(u_input.c.x, -17587i, u_input.c.x, u_input.c.x)));
    var_0 = ~(_wgslsmith_div_vec4_u32(min(u_input.e, vec4<u32>(u_input.e.x, var_0.x, 0u, u_input.e.x) << (u_input.a % vec4<u32>(32u))), u_input.b) ^ u_input.b);
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1880f, arg_0.x) + arg_2.a) * arg_1.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2))), arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 25>();
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1079f, -264f) * _wgslsmith_f_op_f32(f32(-1f) * -202f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -809f));
    var var_1 = func_5(Struct_2(true, ~firstTrailingBit(58627u) > u_input.e.x), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, var_0)))), func_1(), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-107f, -857f, 827f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, var_0, 580f) - vec3<f32>(var_0, var_0, 1000f)), vec3<f32>(1f, 1f, 1f))), vec3<f32>(var_0, -1444f, _wgslsmith_f_op_f32(f32(-1f) * -258f)))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -951f, var_0) + vec3<f32>(606f, var_0, var_0))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1708f * -812f))), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(func_2(countOneBits(abs(u_input.a.xx) >> (u_input.b.yz % vec2<u32>(32u))), Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 314f, var_1.a.x), vec3<f32>(var_1.a.x, -380f, -306f), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(-var_1.a)))))), max(~1u << (_wgslsmith_sub_u32(0u, ~u_input.d) % 32u), u_input.b.x), var_1.a);
}

