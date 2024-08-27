struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(4294967295u, 34561u, 1u), vec3<u32>(4294967295u, 1u, 91253u), vec3<u32>(0u, 0u, 62164u), vec3<u32>(9944u, 36756u, 20576u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(13704u, 49528u, 24764u), vec3<u32>(13161u, 43046u, 48598u), vec3<u32>(15645u, 4294967295u, 28942u), vec3<u32>(12724u, 58750u, 23760u), vec3<u32>(25301u, 1u, 45279u), vec3<u32>(4294967295u, 8921u, 43217u), vec3<u32>(37807u, 4294967295u, 4294967295u), vec3<u32>(29049u, 1u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 8080u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(69600u, 3599u, 79188u), vec3<u32>(20525u, 1u, 0u), vec3<u32>(68061u, 7366u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 55675u, 1u), vec3<u32>(4294967295u, 19968u, 0u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(13355u, 1u, 0u), vec3<u32>(32986u, 4294967295u, 4294967295u), vec3<u32>(3525u, 47707u, 5023u), vec3<u32>(4294967295u, 75864u, 88185u), vec3<u32>(4294967295u, 25578u, 18329u), vec3<u32>(51874u, 4945u, 0u), vec3<u32>(30698u, 77591u, 15702u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = abs(u_input.a.x);
    var var_2 = Struct_4(Struct_1(vec4<i32>(abs(abs(global1.a.x)), 14862i, _wgslsmith_dot_vec2_i32(global1.a.zz, -vec2<i32>(41952i, u_input.b.x)), countOneBits(44594i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f - 189f) + arg_1.b) * _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.x)) - 1088f)), ~countOneBits(abs(44606u))), -822f);
    global0 = -global1.a.yy;
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(round(1000f));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a.x, min(u_input.b.x, global0.x), -1i), global1.a.xyx), u_input.b.wzy) > (~_wgslsmith_sub_i32(max(global1.a.x, -22732i), _wgslsmith_mult_i32(u_input.b.x, 19233i)) << (117438u % 32u));
    var var_1 = !(!vec4<bool>(true, 2147483647i < -arg_1.x, any(vec3<bool>(true, true, true)), ~u_input.a.x != (arg_0 & global1.d)));
    let var_2 = Struct_1(firstTrailingBit(vec4<i32>(~global1.a.x, global1.a.x, -min(-20667i, global1.a.x), _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(u_input.b.x, arg_1.x)))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + global1.c)), arg_0);
    let var_3 = Struct_5(Struct_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~7350u, 48434u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u, 32u)], u_input.a))), 107524u, _wgslsmith_mult_u32(18911u, _wgslsmith_mod_u32(arg_0, global1.d >> (u_input.a.x % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~vec4<u32>(var_2.d, 4294967295u, u_input.a.x, 24404u), Struct_3(var_1.x, global1.c), 1i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(131f, -395f, var_2.c, var_2.c), vec4<f32>(global1.c, var_2.b, var_2.b, 188f))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(1165f, -1000f)))), var_0, vec3<bool>(true, true, true));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.c - global1.b), 150f) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-338f)) + var_3.a.d))));
    return firstTrailingBit(reverseBits(reverseBits(~u_input.b))) >> (~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.a.c, var_3.a.b, 86063u), abs(vec3<u32>(u_input.a.x, var_2.d, 0u))), var_2.d, 26429u, max(var_2.d << (1u % 32u), 4294967295u << (var_2.d % 32u))) % vec4<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(4294967295u, u_input.a.x, 68213u, _wgslsmith_div_f32(-419f, _wgslsmith_f_op_f32(ceil(global1.b))));
    let var_1 = u_input.b.x;
    global0 = countOneBits(firstTrailingBit(min(~max(vec2<i32>(global0.x, u_input.b.x), vec2<i32>(-41129i, var_1)), abs(abs(vec2<i32>(-25347i, 0i))))));
    global1 = Struct_1(func_2(1u, select(u_input.b.zw, vec2<i32>(countOneBits(global0.x), var_1), true || all(vec3<bool>(true, true, true)))), global1.b, _wgslsmith_f_op_f32(-1100f - global1.b), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global1.d, var_0.a, global1.d, u_input.a.x)), vec4<u32>(u_input.a.x, 4294967295u, global1.d, 11935u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1.d, 1u, global1.d), vec4<u32>(0u, u_input.a.x, global1.d, 4294967295u)))));
    global1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(var_1), firstLeadingBit(u_input.b.x), 1i, ~var_1) >> (~(vec4<u32>(global1.d, 4294967295u, u_input.a.x, 1968u) & vec4<u32>(0u, 45839u, global1.d, 4294967295u)) % vec4<u32>(32u)), -vec4<i32>(countOneBits(global1.a.x), firstLeadingBit(-40386i), ~global1.a.x, _wgslsmith_mod_i32(2147483647i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) - var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, var_0.d)), any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(sign(439f)), ~abs(1u));
    return Struct_1((vec4<i32>(-1i) * -u_input.b) | u_input.b, 260f, -191f, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), _wgslsmith_f_op_f32(abs(global1.c)));
    let var_1 = _wgslsmith_sub_vec2_u32(select(max(~u_input.a.yx ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, global1.d), u_input.a.xx), u_input.a.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(22335u, u_input.a.x), reverseBits(1u)), vec2<u32>(firstTrailingBit(global1.d), 76834u ^ u_input.a.x)), vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), any(vec4<bool>(true, true, true, true)))), u_input.a.xy);
    let var_2 = !select(!vec3<bool>(any(vec2<bool>(false, false)), global1.d != u_input.a.x, var_0.a.d <= u_input.a.x), !vec3<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(true, true)), false), true);
    let var_3 = _wgslsmith_f_op_f32(-global1.c);
    let var_4 = _wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, max(~u_input.a.x >> (u_input.a.x % 32u), ~0u)), ~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.d, 0u), var_1)) << (~vec2<u32>(global1.d, 91480u) % vec2<u32>(32u)));
    var var_5 = ~vec4<u32>(firstTrailingBit(1u & ~global1.d), ~_wgslsmith_dot_vec3_u32(~u_input.a, ~global2[_wgslsmith_index_u32(26845u, 32u)]), ~4294967295u, u_input.a.x << ((~u_input.a.x >> (_wgslsmith_add_u32(u_input.a.x, global1.d) % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstTrailingBit(var_0.a.a) ^ vec4<i32>(~(~global1.a.x), firstTrailingBit(1i), select(1i, _wgslsmith_mod_i32(global1.a.x, global1.a.x), all(var_2)), firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3, -1580f, global1.b, global1.c))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -573f, 1000f, 1226f), vec4<f32>(var_3, 641f, -984f, var_3)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global1.b, 397f, -450f))))), ~(-2147483647i));
}

