struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec4<f32>(1045f, 1450f, 490f, -880f), 10976i, Struct_2(true, vec3<u32>(14214u, 0u, 1u)), Struct_1(false, true, false), Struct_1(true, true, false)), Struct_4(vec4<f32>(-321f, -1000f, 422f, -1167f), 0i, Struct_2(false, vec3<u32>(39999u, 1u, 28731u)), Struct_1(true, true, false), Struct_1(true, true, false)), Struct_4(vec4<f32>(1920f, 833f, -1361f, -1000f), 43208i, Struct_2(true, vec3<u32>(14163u, 29423u, 1u)), Struct_1(false, true, false), Struct_1(false, false, false)), Struct_4(vec4<f32>(933f, -1175f, 570f, 1578f), 1i, Struct_2(false, vec3<u32>(4294967295u, 19593u, 61996u)), Struct_1(false, false, true), Struct_1(false, true, true)), Struct_4(vec4<f32>(-388f, -341f, 2021f, -1000f), 2147483647i, Struct_2(false, vec3<u32>(65025u, 0u, 1u)), Struct_1(true, true, true), Struct_1(false, false, true)), Struct_4(vec4<f32>(793f, -1000f, -487f, -298f), 1i, Struct_2(true, vec3<u32>(1u, 28794u, 4294967295u)), Struct_1(false, true, false), Struct_1(true, false, false)), Struct_4(vec4<f32>(-1380f, 267f, 316f, -585f), 4270i, Struct_2(false, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(true, false, false), Struct_1(false, false, false)), Struct_4(vec4<f32>(-1117f, -836f, 305f, -221f), 2147483647i, Struct_2(true, vec3<u32>(29654u, 13594u, 5871u)), Struct_1(true, true, false), Struct_1(true, false, true)), Struct_4(vec4<f32>(-1000f, -281f, 1000f, 775f), 0i, Struct_2(false, vec3<u32>(37262u, 29714u, 4294967295u)), Struct_1(false, false, false), Struct_1(false, true, true)), Struct_4(vec4<f32>(-899f, -1528f, -1000f, 281f), 1i, Struct_2(false, vec3<u32>(26251u, 32862u, 0u)), Struct_1(false, true, true), Struct_1(false, true, true)));

var<private> global1: array<f32, 6>;

var<private> global2: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_4, 10>();
    return Struct_3(u_input.a.x, Struct_1(arg_1, select(arg_1, _wgslsmith_f_op_f32(-1162f * -1193f) < _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_2.x, 6u)])), false), all(!select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_1, arg_1, arg_1, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(12898u, 6u)]) * vec2<f32>(392f, -517f))), vec2<f32>(_wgslsmith_f_op_f32(700f + 2280f), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(55014u, 6u)])))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    global1 = array<f32, 6>();
    global0 = array<Struct_4, 10>();
    var var_0 = arg_1.b.x;
    var var_1 = Struct_3(min(-2147483647i, -1i), Struct_1(any(!vec4<bool>(arg_2.b.a, arg_2.b.a, false, false)), arg_1.a, !all(select(global2[_wgslsmith_index_u32(arg_1.b.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]))), arg_2.c);
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -748f);
    let var_1 = func_3(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(18297u, 6u)] - 608f), arg_2, func_2(15594i & arg_0.x, all(select(vec4<bool>(arg_2.a, arg_2.a, false, true), vec4<bool>(arg_2.a, arg_1, arg_2.a, arg_1), !vec4<bool>(false, arg_2.a, arg_2.a, false))), arg_2.b), -1186f);
    let var_2 = false;
    let var_3 = vec3<bool>(u_input.a.x < ~arg_0.x, var_1.a, arg_1);
    global2 = array<vec2<bool>, 20>();
    return _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, arg_0.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 0i, u_input.a.x, arg_0.x) >> (vec4<u32>(var_1.b.x, arg_2.b.x, 71918u, var_1.b.x) % vec4<u32>(32u)), vec4<i32>(166i, u_input.a.x, arg_0.x, arg_0.x))), select(u_input.a, min(u_input.a, _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a)), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> StorageBuffer {
    let var_0 = -2147483647i;
    let var_1 = Struct_1(arg_0.a, all(vec4<bool>(any(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), any(!vec3<bool>(arg_0.a, false, false)), true, func_3(1f, func_3(global1[_wgslsmith_index_u32(30071u, 6u)], arg_0, arg_1, 577f), Struct_3(arg_1.a, Struct_1(true, arg_1.b.c, false), vec2<f32>(global1[_wgslsmith_index_u32(arg_0.b.x, 6u)], global1[_wgslsmith_index_u32(arg_0.b.x, 6u)])), _wgslsmith_f_op_f32(step(387f, 593f))).a)), arg_0.a);
    let var_2 = Struct_3(i32(-1i) * -94i, Struct_1(!arg_1.b.c, ~(arg_2 << (arg_2 % 32u)) < (_wgslsmith_mod_u32(34689u, arg_0.b.x) << (func_3(-183f, Struct_2(false, vec3<u32>(arg_2, 0u, arg_0.b.x)), arg_1, global1[_wgslsmith_index_u32(arg_0.b.x, 6u)]).b.x % 32u)), any(!select(vec4<bool>(arg_0.a, var_1.b, true, var_1.a), vec4<bool>(arg_1.b.c, var_1.c, arg_0.a, arg_1.b.b), vec4<bool>(var_1.c, true, true, true)))), vec2<f32>(_wgslsmith_f_op_f32(step(431f, -1353f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.b.x), 6u)])) + arg_1.c.x)));
    let var_3 = func_2(arg_1.a, arg_1.b.c, ~(~vec3<u32>(~arg_0.b.x, 54731u, 0u))).b;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, _wgslsmith_f_op_f32(step(-331f, global1[_wgslsmith_index_u32(1u, 6u)])))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -3189f, 828f, -415f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, global1[_wgslsmith_index_u32(55172u, 6u)], 1000f, -2864f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c.x, arg_1.c.x, -543f, 1000f))))))), select(vec4<i32>(firstTrailingBit(var_0), u_input.a.x, abs(u_input.a.x), var_2.a) & -_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a, arg_1.a, var_0, 31533i), vec4<i32>(var_0, var_2.a, var_0, var_0)), abs(u_input.a), !(!select(vec4<bool>(arg_1.b.c, false, var_3.a, true), vec4<bool>(arg_1.b.c, false, false, true), vec4<bool>(false, arg_1.b.a, arg_0.a, var_2.b.b)))), vec2<i32>(u_input.a.x, abs(-59324i)), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(13363u, _wgslsmith_mod_u32(0u, 4294967295u), select(4294967295u, ~4294967295u, any(vec3<bool>(false, false, true))), 69433u), vec4<u32>(1u, ~min(58574u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(44985u, 1u, 1u), vec3<u32>(0u, 42016u, 22543u)), firstLeadingBit(firstTrailingBit(0u))) << (vec4<u32>(1u, abs(_wgslsmith_mult_u32(4294967295u, 1u)), 1u, ~17497u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = func_4(Struct_2(true, var_0.wyz), Struct_3(reverseBits(func_1(u_input.a.yzy, true, Struct_2(false, vec3<u32>(115810u, 39822u, 16068u))) << (120916u % 32u)), Struct_1(false, true, ~var_0.x != _wgslsmith_add_u32(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 6u)], global1[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<f32>(global1[_wgslsmith_index_u32(63158u, 6u)], -2142f))))))), var_0.x);
}

