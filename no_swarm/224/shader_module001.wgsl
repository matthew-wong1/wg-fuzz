struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
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

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(1000f, -121f, 329f, 107f), vec4<f32>(-707f, 1000f, -455f, 893f), vec4<f32>(761f, -100f, -444f, 590f), vec4<f32>(-1521f, -459f, -277f, 1000f), vec4<f32>(1425f, -1520f, -2562f, 1257f));

var<private> global1: array<vec2<bool>, 11>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 5>();
    let var_0 = Struct_1(52799u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b, 5u)]) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f), -109f), _wgslsmith_f_op_f32(ceil(1763f)), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_f_op_f32(sign(1583f)))))), firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, u_input.d, -1i, -1i), vec4<i32>(-1i, -48455i, u_input.d, -28434i))) << (vec4<u32>(u_input.b, 0u, 29009u, 0u) % vec4<u32>(32u)));
    let var_1 = vec2<f32>(var_0.b.x, var_0.b.x);
    global1 = array<vec2<bool>, 11>();
    global3 = array<vec3<bool>, 27>();
    return 131f;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = select(_wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(-19023i, arg_0, arg_0, -1i)), abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_2.x, 1i, arg_2.x, 6136i), vec4<i32>(0i, 34377i, arg_2.x, u_input.d)))), reverseBits(vec4<i32>(~(-1i), arg_0, reverseBits(arg_2.x), -58735i)) | _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(arg_2.x, 0i, -1i, arg_2.x)), vec4<i32>(u_input.d, 2147483647i, -3909i, arg_2.x)), ~firstTrailingBit(vec4<i32>(-1i, arg_0, 29193i, 0i))), true);
    var var_1 = !(!select(!select(vec3<bool>(global2.x, global2.x, false), global3[_wgslsmith_index_u32(arg_3.a.x, 27u)], vec3<bool>(global2.x, true, false)), !vec3<bool>(false, true, global2.x), false));
    let var_2 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, arg_3.b, -1000f, -411f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b)) * _wgslsmith_f_op_f32(arg_3.b * arg_3.b)), _wgslsmith_f_op_f32(func_3()), arg_1.a, arg_1.c.b))), vec4<i32>(arg_0 ^ arg_0, countOneBits(_wgslsmith_mult_i32(arg_2.x, -46148i)), 1i, arg_2.x ^ -30658i));
    var var_3 = var_0.x;
    let var_4 = Struct_2(Struct_1(40457u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b)), var_2.b, !(!vec4<bool>(false, false, global2.x, true)))), _wgslsmith_mod_vec4_i32(reverseBits(-var_0), var_0)), Struct_1(~54951u, _wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(58094u, 5u)])), _wgslsmith_div_vec4_i32(var_0, firstLeadingBit(max(vec4<i32>(0i, 32201i, arg_2.x, -2147483647i), vec4<i32>(0i, 48192i, 0i, u_input.d))))), Struct_1(~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(1f - -1054f), _wgslsmith_f_op_f32(trunc(-156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f * var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -822f))), firstTrailingBit(vec4<i32>(15497i, -8570i, -2147483647i, var_2.c.x) & max(vec4<i32>(-24126i, var_0.x, 43002i, var_2.c.x), vec4<i32>(u_input.d, var_2.c.x, arg_2.x, var_2.c.x)))));
    return vec2<bool>(global2.x, all(select(!(!vec4<bool>(global2.x, true, true, var_1.x)), vec4<bool>(var_4.b.b.x > arg_3.b, false, all(global3[_wgslsmith_index_u32(0u, 27u)]), true), !select(vec4<bool>(false, var_1.x, global2.x, true), vec4<bool>(true, global2.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, false)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    global2 = select(!vec2<bool>(!(false == global2.x), true), select(func_4(u_input.d, Struct_4(_wgslsmith_f_op_f32(func_3()), Struct_3(u_input.a.wz, 932f), Struct_3(vec2<u32>(30468u, 0u), -1596f)), firstTrailingBit(vec2<i32>(u_input.d, u_input.d)) & -arg_0.zx, Struct_3(max(u_input.a.yw, vec2<u32>(u_input.a.x, 0u)), _wgslsmith_f_op_f32(-1260f - 442f))), global1[_wgslsmith_index_u32(arg_1, 11u)], vec2<bool>(false, _wgslsmith_f_op_f32(round(1500f)) != _wgslsmith_f_op_f32(f32(-1f) * -565f))), all(func_4(~u_input.d, Struct_4(_wgslsmith_f_op_f32(func_3()), Struct_3(u_input.a.xy, -237f), Struct_3(u_input.a.xw, 1607f)), max(abs(arg_0.yx), vec2<i32>(1i, -44995i) & vec2<i32>(arg_0.x, -1i)), Struct_3(reverseBits(u_input.a.zw), _wgslsmith_f_op_f32(floor(-876f))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2245f, -1903f))))))));
    var var_1 = !(!func_4(arg_0.x, Struct_4(_wgslsmith_f_op_f32(var_0.x * var_0.x), Struct_3(u_input.a.wz, 470f), Struct_3(vec2<u32>(u_input.c, 10362u), -1232f)), arg_0.yx, Struct_3(vec2<u32>(u_input.a.x, u_input.a.x), 1000f)).x);
    global1 = array<vec2<bool>, 11>();
    let var_2 = global1[_wgslsmith_index_u32(u_input.c ^ u_input.b, 11u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-913f)) + _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.d, -34477i, u_input.d), 1u))))));
    var var_1 = Struct_1(reverseBits(countOneBits(u_input.a.x)), global0[_wgslsmith_index_u32(reverseBits(u_input.b), 5u)], select(_wgslsmith_div_vec4_i32(vec4<i32>(-u_input.d, -8692i, -2147483647i, u_input.d), select(vec4<i32>(36601i, -1i, -43098i, u_input.d), vec4<i32>(u_input.d, 2147483647i, 2147483647i, -27015i), false) | vec4<i32>(u_input.d, -1i, -9070i, 58530i)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.d, -17659i, u_input.d)) & (vec4<i32>(0i, u_input.d, u_input.d, u_input.d) | vec4<i32>(58118i, u_input.d, u_input.d, 2147483647i)), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, -14920i, u_input.d), vec4<i32>(u_input.d, u_input.d, -55428i, 2147483647i))), !(!select(vec4<bool>(false, false, global2.x, true), vec4<bool>(true, true, true, global2.x), vec4<bool>(global2.x, false, true, global2.x)))));
    var var_2 = u_input.a.xwz;
    var_2 = vec3<u32>(~(~(~14875u)), ~(~var_1.a << (29539u % 32u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~4294967295u, ~var_1.a), _wgslsmith_div_u32(var_2.x, var_2.x), _wgslsmith_mod_u32(u_input.a.x, 23967u) & var_1.a), 22468u));
    let var_3 = Struct_1(_wgslsmith_div_u32(var_2.x, 69590u << (((70534u ^ var_1.a) | _wgslsmith_mod_u32(48619u, var_2.x)) % 32u)), var_1.b, select(vec4<i32>(-1i, -1i >> (firstLeadingBit(u_input.c) % 32u), _wgslsmith_dot_vec3_i32(var_1.c.xyx, var_1.c.zyx) ^ var_1.c.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, var_1.c.x, 0i), vec4<i32>(-52944i, var_1.c.x, var_1.c.x, 0i)), 39126i)), -var_1.c, firstLeadingBit(~u_input.d) >= _wgslsmith_dot_vec2_i32(var_1.c.wy | vec2<i32>(-19242i, 2147483647i), select(var_1.c.zw, vec2<i32>(-3167i, var_1.c.x), vec2<bool>(global2.x, true)))));
    return Struct_2(var_3, Struct_1(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b.x))), var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x), vec4<i32>(i32(-1i) * -3571i, -33042i, (u_input.d ^ u_input.d) << (1u % 32u), 14880i)), Struct_1(_wgslsmith_sub_u32(max(_wgslsmith_mult_u32(var_3.a, 4294967295u), 4294967295u), u_input.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1508f, var_1.b.x, -1542f, 1078f), vec4<f32>(var_3.b.x, var_3.b.x, 238f, -1788f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, var_3.b.x, var_1.b.x, -2446f)))))), var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(u_input.a.x, 11u)];
    let var_0 = 2058i;
    var var_1 = ~vec3<i32>(1i, -12961i | _wgslsmith_add_i32(_wgslsmith_div_i32(var_0, u_input.d), max(u_input.d, u_input.d)), u_input.d);
    let var_2 = func_1();
    global0 = array<vec4<f32>, 5>();
    var var_3 = _wgslsmith_mult_vec3_i32(select(vec3<i32>(_wgslsmith_mult_i32(var_1.x, -var_2.a.c.x), select(0i, 2147483647i, true), 1i), vec3<i32>(countOneBits(~(-28917i)), 56919i >> (max(44290u, var_2.a.a) % 32u), _wgslsmith_add_i32(var_2.c.c.x, ~var_2.c.c.x)), false), ~var_2.c.c.zww);
    var var_4 = Struct_4(var_2.b.b.x, Struct_3(~firstLeadingBit(vec2<u32>(u_input.c, u_input.a.x) << (vec2<u32>(var_2.b.a, 23767u) % vec2<u32>(32u))), 1724f), Struct_3(u_input.a.wx, _wgslsmith_f_op_f32(-314f + _wgslsmith_f_op_f32(min(var_2.a.b.x, 1422f)))));
    global3 = array<vec3<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(648f);
}

