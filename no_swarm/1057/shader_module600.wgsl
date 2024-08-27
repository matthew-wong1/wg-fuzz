struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 92449u, 16018u, 0u, 0u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), vec2<bool>(false, true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), vec2<bool>(false, true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true), vec2<bool>(true, false)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), vec2<bool>(false, true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), vec2<bool>(false, true)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true), vec2<bool>(true, false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), vec2<bool>(true, false)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), vec2<bool>(true, true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), vec2<bool>(false, true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), vec2<bool>(true, false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), vec2<bool>(false, false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), vec2<bool>(false, false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true), vec2<bool>(true, true)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), vec2<bool>(true, true)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), vec2<bool>(true, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = Struct_1(false != !(false & global1.a));
    global2 = array<Struct_2, 15>();
    global0 = array<u32, 5>();
    var var_1 = -36181i;
    let var_2 = Struct_3(reverseBits(vec2<i32>(arg_0, _wgslsmith_add_i32(1i, arg_0))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x) << (vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 5u)], 1u, 0u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, 105030u, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]) & vec4<u32>(4294967295u, 10765u, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.a)), 11438u) < 1u, Struct_1(false));
    return !(!vec3<bool>(var_0.a, !all(vec3<bool>(false, true, false)), abs(u_input.b.x) <= global0[_wgslsmith_index_u32(4294967295u, 5u)]));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, ~22094i, arg_2, arg_2 | 1i), max(firstTrailingBit(vec4<i32>(arg_2, 61158i, 30208i, arg_2)), ~vec4<i32>(arg_2, arg_2, arg_2, 14273i))) & (max(vec4<i32>(arg_2, arg_2, 0i, 1i) ^ vec4<i32>(-1i, arg_2, 1i, -1i), vec4<i32>(0i, 43467i, 27779i, arg_2) & vec4<i32>(-17401i, 2147483647i, arg_2, arg_2)) >> (vec4<u32>(global0[_wgslsmith_index_u32(0u, 5u)], countOneBits(8293u), 25982u, global0[_wgslsmith_index_u32(106050u, 5u)] ^ u_input.b.x) % vec4<u32>(32u))), -_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_2, -2147483647i, arg_2, arg_2) << (vec4<u32>(4294967295u, u_input.b.x, 57494u, global0[_wgslsmith_index_u32(18546u, 5u)]) % vec4<u32>(32u)), -abs(vec4<i32>(arg_2, 46081i, arg_2, arg_2))));
    let var_1 = arg_0;
    var var_2 = select(vec3<bool>(false, _wgslsmith_f_op_f32(1488f + arg_1) > arg_1, -1720f > arg_1), !vec3<bool>(!(!global1.a), true, true), true);
    var var_3 = arg_1;
    var_2 = func_3(arg_2);
    return Struct_3(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, 30013i), vec2<i32>(arg_2, arg_2), _wgslsmith_add_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(arg_2, 2147483647i)))), true, var_1);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> bool {
    global1 = Struct_1(arg_1);
    var var_0 = func_2(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1096f), -65464i);
    global0 = array<u32, 5>();
    let var_1 = !(!(true & !(true != var_0.b)));
    global1 = var_0.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = global1.a;
    global0 = array<u32, 5>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2686f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) * _wgslsmith_f_op_f32(559f + 707f))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)) - _wgslsmith_div_f32(-563f, -458f)) * _wgslsmith_f_op_f32(sign(1000f)));
    global0 = array<u32, 5>();
    let var_3 = vec3<bool>((any(vec2<bool>(global1.a, global1.a)) & true) || true, func_1(Struct_3(-vec2<i32>(1i, 1i), all(vec2<bool>(true, false)), Struct_1(!global1.a)), true, u_input.b.x), global1.a);
    let var_4 = Struct_1(!any(select(vec4<bool>(false, global1.a, true, global1.a), vec4<bool>(true, var_3.x, false, true), false)));
    let var_5 = vec4<u32>(~max(var_0, u_input.a), ~(~_wgslsmith_div_u32(~2749u, var_0 | global0[_wgslsmith_index_u32(u_input.b.x, 5u)])), ~(~(_wgslsmith_mult_u32(u_input.a, 21501u) >> ((11759u >> (0u % 32u)) % 32u))), firstLeadingBit(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.b.x, var_0, var_0), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 5u)], var_0, 37814u), vec4<bool>(var_4.a, false, false, var_4.a)), vec4<u32>(global0[_wgslsmith_index_u32(var_0, 5u)], u_input.a, 0u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_i32(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 29405i), vec2<i32>(-1i, 16335i)))), -951f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -289f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 987f) * _wgslsmith_f_op_f32(-619f - 350f))))), reverseBits(vec3<u32>(0u, 1u, ~var_0 | (4294967295u & u_input.a))), 18238i | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(48529i, 2147483647i, -19245i), _wgslsmith_add_vec3_i32(vec3<i32>(12368i, -2147483647i, 82391i), vec3<i32>(-1i, 2147483647i, -2147483647i)), select(var_3, var_3, global1.a))));
}

