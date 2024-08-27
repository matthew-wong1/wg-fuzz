struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

var<private> global1: f32 = 925f;

var<private> global2: vec4<i32> = vec4<i32>(-654i, 1i, -45683i, 2147483647i);

var<private> global3: array<Struct_1, 30>;

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec4<i32>(-u_input.d.x, -firstLeadingBit(_wgslsmith_add_i32(-19642i, global2.x) >> (~u_input.c.x % 32u)), _wgslsmith_mod_i32(43397i, u_input.d.x), global2.x & global2.x);
    global4 = 4294967295u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(915u, 4294967295u), global0[_wgslsmith_index_u32(u_input.c.x, 20u)] & vec2<u32>(4294967295u, u_input.c.x)), _wgslsmith_add_u32(u_input.c.x, _wgslsmith_div_u32(4656u, 12307u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(0u, u_input.a.x), ~vec2<u32>(16853u, 1u)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(62624u, u_input.a.x), vec2<u32>(u_input.c.x, 11431u)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f + _wgslsmith_f_op_f32(-788f + -1000f))))));
    let var_2 = -2147483647i;
    global3 = array<Struct_1, 30>();
    return var_1;
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> f32 {
    var var_0 = 13773u;
    let var_1 = u_input.b;
    var var_2 = true;
    global0 = array<vec2<u32>, 20>();
    var var_3 = !vec3<bool>((arg_1.b.a > (14454i & var_1)) && (_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true))) >= -858f), false, all(vec3<bool>(false, false, false)) && !all(vec2<bool>(true, true)));
    return arg_1.a.b;
}

fn func_3() -> vec4<i32> {
    let var_0 = vec2<i32>(global2.x >> (((0u >> (u_input.a.x % 32u)) & 32728u) % 32u), global2.x);
    var var_1 = (_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(f32(-1f) * -1299f)) > _wgslsmith_f_op_f32(func_1(-1i, Struct_4(Struct_3(vec3<f32>(1653f, 1037f, 1205f), 552f, vec3<f32>(-1000f, 483f, 311f), 1000f), Struct_2(u_input.d.x, u_input.c.x), vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, 23813u) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, -336f, -976f)), var_0.x & 0i)))) & false;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-439f, 928f) + 1289f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f)))) * -179f);
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1127f))) - 227f), 521f, 1059f));
    return ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~13036i, u_input.b, ~33186i), vec4<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_mod_i32(var_0.x ^ 1i, -1i | global2.x), min(39783i, 2147483647i & global2.x), u_input.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_3 {
    global2 = _wgslsmith_sub_vec4_i32(arg_2, ~countOneBits(vec4<i32>(u_input.b, arg_2.x, 0i, 2147483647i)) ^ abs(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2, vec4<i32>(1490i, arg_0.a, 1i, u_input.d.x)), min(vec4<i32>(arg_0.a, -5306i, 2147483647i, arg_0.a), vec4<i32>(u_input.d.x, arg_2.x, -1i, arg_0.a)))));
    var var_0 = Struct_4(arg_1, Struct_2(arg_2.x, 1u), ~u_input.c, arg_1.c, arg_0.a);
    let var_1 = select(-arg_2.xyy, _wgslsmith_add_vec3_i32(vec3<i32>(~global2.x, u_input.b, ~(~u_input.d.x)), min(vec3<i32>(var_0.b.a, -global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a, -2147483647i, 46871i, 2147483647i), arg_2)), -global2.yzw)), all(!vec3<bool>(false || arg_0.b, any(vec4<bool>(true, arg_3.x, arg_3.x, true)), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_3.yx))));
    return Struct_3(arg_1.c, -701f, _wgslsmith_f_op_vec3_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(544f, arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(13868i, u_input.b, u_input.d.x, 5178i);
    global2 = countOneBits(-vec4<i32>(70217i, abs(-58573i), ~(-global2.x), min(_wgslsmith_mult_i32(u_input.b, -23382i), global2.x >> (1u % 32u))));
    let var_0 = global2.x;
    var var_1 = func_4(global3[_wgslsmith_index_u32(firstTrailingBit(countOneBits(_wgslsmith_mult_u32(countOneBits(1u), ~u_input.c.x))), 30u)], Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-1202f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(983f + -1139f) - 1f), 1192f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1398f, -334f, true)) * -714f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1261f + 1319f)), _wgslsmith_f_op_f32(-1000f * 950f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1228f * 2215f), -1168f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f - _wgslsmith_f_op_f32(func_1(-1i, Struct_4(Struct_3(vec3<f32>(-786f, 353f, 1163f), -1592f, vec3<f32>(-387f, 1848f, 1621f), 1281f), Struct_2(global2.x, 0u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a.x), vec3<f32>(-1049f, 175f, 146f), global2.x)))) - -382f)), func_3(), select(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, false, true)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), true), false));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.d, var_1.c.x, -920f), vec4<f32>(-1590f, -239f, var_1.b, var_1.d)))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(max(var_1.a.x, -452f)), _wgslsmith_f_op_f32(-423f - var_1.d), var_1.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), -1000f))), ~reverseBits(u_input.a.x));
}

