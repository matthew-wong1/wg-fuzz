struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(1i, i32(-2147483648), 33281i), vec3<i32>(1i, 16621i, 0i), vec3<i32>(1i, -1i, -1i), vec3<i32>(-1i, -20574i, -1i), vec3<i32>(1i, 2147483647i, -21244i), vec3<i32>(0i, -7160i, 1i), vec3<i32>(-7990i, -1i, 22770i));

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(393f, 1521f, 1448f, 2181f), vec4<f32>(-809f, -615f, 187f, -1007f), vec4<f32>(-772f, 1978f, -1015f, -594f), vec4<f32>(-326f, -1000f, 614f, -470f), vec4<f32>(-186f, -493f, 207f, -736f), vec4<f32>(670f, 1772f, -458f, -1002f));

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, arg_0.x, -21540i, u_input.d), vec4<i32>(6227i, 1i, global4.x >> (u_input.c % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global4.x, u_input.d), vec3<i32>(global4.x, -49196i, arg_0.x)))), ~(max(vec4<i32>(11588i, arg_0.x, 11171i, arg_0.x), vec4<i32>(-43593i, 14873i, global4.x, 23792i)) & vec4<i32>(1i, -38397i, 0i, u_input.d)), global0.a), ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -53234i, arg_0.x, 2147483647i), vec4<i32>(global4.x, 2147483647i, arg_0.x, -1i)) >> ((arg_2.b ^ arg_2.b) % vec4<u32>(32u)), arg_0));
    return _wgslsmith_sub_vec3_u32(~vec3<u32>(~_wgslsmith_div_u32(arg_1.x, 0u), arg_2.c.a | 0u, ~1u), vec3<u32>(0u, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, arg_1.x), _wgslsmith_div_u32(1u, arg_2.b.x)), firstLeadingBit(_wgslsmith_mod_u32(abs(1u), u_input.b))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(1u ^ _wgslsmith_dot_vec3_u32(func_3(vec4<i32>(global4.x, 31747i, 7097i, -2147483647i), vec3<u32>(u_input.c, 1u, 4294967295u), Struct_3(Struct_2(true), vec4<u32>(u_input.a.x, 103949u, u_input.a.x, u_input.c), Struct_1(2146u, vec3<bool>(global0.a, global0.a, false), vec2<f32>(-137f, -1245f)), Struct_2(global0.a))), ~vec3<u32>(1u, 46991u, u_input.e.x)), u_input.a.x), !select(select(select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, true, false), false), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, false, true), global0.a), !vec3<bool>(global0.a, global0.a, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, global0.a, global0.a), true), select(vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, global0.a, false)), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(global0.a, true, global0.a), global0.a)), select(select(vec3<bool>(true, global0.a, true), vec3<bool>(true, global0.a, true), global0.a), !vec3<bool>(true, true, global0.a), any(vec3<bool>(true, global0.a, global0.a)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1053f + _wgslsmith_div_f32(-969f, 1498f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(805f, 974f))))), _wgslsmith_f_op_f32(-1f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(2173f + 1000f), var_0.c.x, _wgslsmith_f_op_f32(round(var_0.c.x))))), global2[_wgslsmith_index_u32(48978u, 6u)])));
    let var_2 = Struct_3(Struct_2(!any(var_0.b.zz) | any(!var_0.b)), countOneBits(firstLeadingBit(reverseBits(~vec4<u32>(42840u, 4294967295u, var_0.a, u_input.c)))), Struct_1(min(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, 54446u), vec3<u32>(var_0.a, var_0.a, var_0.a) >> (vec3<u32>(u_input.b, 1597u, 1u) % vec3<u32>(32u))), ~71592u), select(select(var_0.b, vec3<bool>(var_0.b.x, true, true), true), !var_0.b, var_0.b), var_0.c), global3[_wgslsmith_index_u32(1u, 29u)]);
    var var_3 = reverseBits(vec2<u32>(u_input.e.x, ~reverseBits(~8462u)));
    var_1 = global2[_wgslsmith_index_u32(7364u, 6u)];
    return var_2.c;
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<f32>, 6>();
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !all(!vec4<bool>(true, any(vec3<bool>(true, false, arg_0.c.b.x)), u_input.a.x <= u_input.b, false));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~arg_1) ^ u_input.b, countOneBits(arg_1)), 29u)];
    var var_1 = Struct_2(!all(arg_0.c.b.xz));
    return Struct_2(all(arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(!global0.a), min(~vec4<u32>(u_input.a.x, u_input.c, 1u, 4088u), min(firstTrailingBit(vec4<u32>(u_input.e.x, 4294967295u, u_input.a.x, 58870u)), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))) ^ _wgslsmith_div_vec4_u32(max(~vec4<u32>(u_input.a.x, 4294967295u, 22377u, 1u), vec4<u32>(u_input.c, u_input.a.x, 24964u, 75916u) ^ vec4<u32>(44589u, u_input.e.x, u_input.b, 102274u)), vec4<u32>(1u, _wgslsmith_mod_u32(u_input.b, u_input.c), 1u, 1u ^ u_input.e.x)), Struct_1(1u, vec3<bool>(false, global0.a, all(vec4<bool>(global0.a, false, global0.a, global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1468f, 485f)))), global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.e.x, u_input.a.x)), 29u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(max(73855u, u_input.b), 6u)]) + _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(4294967295u, 6u)] - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.c.c.x)), _wgslsmith_f_op_f32(var_0.c.c.x * -1000f), _wgslsmith_f_op_f32(var_0.c.c.x - 131f), _wgslsmith_f_op_f32(trunc(429f)))))));
    global0 = var_0.a;
    let var_2 = -firstLeadingBit(1i);
    let var_3 = Struct_3(func_4(Struct_3(Struct_2(true), var_0.b, var_0.c, global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.c, 10684u)), 29u)]), _wgslsmith_dot_vec3_u32(var_0.b.www, var_0.b.zyy), func_1()), abs(var_0.b), var_0.c, func_4(Struct_3(Struct_2(true), vec4<u32>(0u, ~var_0.b.x, _wgslsmith_clamp_u32(14964u, 4294967295u, 23395u), u_input.c), func_2(), Struct_2(true)), u_input.a.x, Struct_1(abs(u_input.a.x | 1787u), !(!var_0.c.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.wz)), _wgslsmith_f_op_vec2_f32(ceil(var_0.c.c))))));
    let var_4 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(abs(-725f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_3.b, vec4<u32>(1u, var_0.b.x, _wgslsmith_div_u32(4294967295u, u_input.e.x), firstTrailingBit(3944u))), ~_wgslsmith_add_u32(var_0.c.a, 1u) | ~0u));
}

