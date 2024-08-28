struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<f32> = vec4<f32>(-458f, 3621f, -1546f, -945f);

var<private> global2: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(7986u, 5391u), vec2<u32>(39450u, 29585u), vec2<u32>(32686u, 0u), vec2<u32>(21641u, 37071u), vec2<u32>(45692u, 12859u), vec2<u32>(1u, 7738u), vec2<u32>(33659u, 43270u), vec2<u32>(1u, 26082u), vec2<u32>(4294967295u, 38590u));

var<private> global3: bool = true;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(-971f, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), true), u_input.a.x >= u_input.b));
    global3 = true;
    global0 = firstLeadingBit(max(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<u32>(global0.x, 130483u, global0.x, 0u)), countOneBits(vec4<u32>(0u, global0.x, global0.x, 11550u))), vec4<u32>(global0.x, 57198u, 0u & global0.x, 1u)), vec4<u32>(global0.x & 85762u, ~global0.x, global0.x, 1u) & _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, 1u, 4294967295u, 1u)), ~vec4<u32>(0u, global0.x, 55842u, 40914u))));
    var var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_f32(-805f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    return _wgslsmith_add_i32(2147483647i, u_input.a.x);
}

fn func_2() -> u32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.zw * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -507f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-746f, -743f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.xw))))));
    var var_2 = Struct_2(Struct_1(~abs(~vec4<u32>(66232u, global0.x, 40568u, global0.x)), ~0i, !(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), true)), vec3<i32>(-firstLeadingBit(u_input.b), firstLeadingBit(-u_input.a.x), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(362f - var_1.x))))), Struct_1(vec4<u32>(~(~0u), ~(~global0.x), 44311u, 18119u ^ _wgslsmith_mod_u32(global0.x, 1u)), -1i, select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0)), !vec2<bool>(true, var_0), var_0), vec3<i32>(-27164i, _wgslsmith_mult_i32(u_input.a.x, func_3()), _wgslsmith_add_i32(u_input.b, 1i))), vec4<bool>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(3360u, 0u, 1u, global0.x)), vec4<u32>(global0.x, 4294967295u, global0.x, global0.x)) <= (global0.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(1u, global0.x, global0.x, 0u))), true, true, all(vec4<bool>(true, var_0, u_input.b != u_input.a.x, u_input.b > u_input.b))), 1i);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_2.b), _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(sign(var_1.x)), global1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 1196f, var_1.x, var_2.b), vec4<f32>(var_2.b, -378f, var_1.x, -1424f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, var_2.b, 1455f, global1.x) * vec4<f32>(342f, var_2.b, -1094f, 163f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.b, 615f, var_2.b, global1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -353f, global1.x))), vec4<bool>(all(vec4<bool>(var_2.c.c.x, false, var_0, var_0)), global0.x >= 44765u, false, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 316f, 779f, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, var_2.b, var_1.x, 696f))))), !select(select(var_2.d, vec4<bool>(false, false, var_2.c.c.x, false), var_0), !var_2.d, !vec4<bool>(false, false, var_0, false)))));
    global3 = false;
    return ~global0.x;
}

fn func_4(arg_0: vec3<u32>) -> Struct_4 {
    global0 = vec4<u32>(4294967295u, _wgslsmith_div_u32(reverseBits(4294967295u), 1u), global0.x, ~reverseBits(4294967295u));
    global1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, 1554f), global1.x), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-957f + _wgslsmith_f_op_f32(select(global1.x, -1757f, false))), 1f), -1678f)));
    global3 = !all(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), select(all(vec2<bool>(true, true)), true, true)));
    var var_0 = Struct_3(Struct_2(Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.x, 1u, global0.x), vec4<u32>(1u, 1u, 32407u, global0.x)), vec4<u32>(global0.x, 1u, global0.x, 29717u), vec4<bool>(true, true, true, true)), min(countOneBits(2147483647i), firstTrailingBit(42342i)), vec2<bool>(true, true), vec3<i32>(u_input.a.x, 1i, u_input.b)), _wgslsmith_f_op_f32(-global1.x), Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_0.x, arg_0.x), ~global0.x, ~arg_0.x, reverseBits(global0.x)), u_input.a.x >> (~4294967295u % 32u), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-14477i, 43679i, 2147483647i), vec3<i32>(-2147483647i, u_input.b, u_input.a.x)), vec3<i32>(u_input.b, u_input.a.x, 27660i), firstTrailingBit(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)))), !vec4<bool>(false, true, true, all(vec2<bool>(true, false))), 2147483647i), Struct_1(vec4<u32>(65245u, arg_0.x, arg_0.x, global0.x), ~49129i, vec2<bool>(true, true), max(-(vec3<i32>(2147483647i, u_input.a.x, -23725i) ^ vec3<i32>(u_input.b, u_input.a.x, -2147483647i)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x)), select(vec3<i32>(1i, u_input.b, 4935i), vec3<i32>(u_input.a.x, u_input.b, -8586i), true)))), Struct_1(firstTrailingBit(abs(vec4<u32>(57174u, arg_0.x, 4294967295u, arg_0.x) >> (vec4<u32>(arg_0.x, 7206u, arg_0.x, 1u) % vec4<u32>(32u)))), _wgslsmith_sub_i32(-4877i, 1i), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(true, false, true), true)), vec3<i32>(1i ^ u_input.a.x, u_input.a.x, 45313i)));
    global3 = var_0.c.c.x & false;
    return Struct_4(-368f, select(vec4<bool>(_wgslsmith_div_i32(var_0.c.d.x, var_0.b.d.x) == -var_0.c.d.x, var_0.a.b != _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, var_0.b.c.x), vec4<bool>(all(var_0.a.d.xxz) || all(vec3<bool>(var_0.b.c.x, var_0.c.c.x, false)), !all(vec3<bool>(var_0.c.c.x, var_0.a.c.c.x, false)), var_0.b.c.x, any(vec2<bool>(var_0.a.d.x, true)) | true), all(var_0.a.d)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    global2 = array<vec2<u32>, 9>();
    let var_0 = func_4(vec3<u32>(_wgslsmith_mod_u32(max(max(global0.x, 19240u), arg_0.x), 4294967295u), global0.x, 4294967295u & func_2()));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1330f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1665f * var_0.a) - 1468f));
    global2 = array<vec2<u32>, 9>();
    global3 = var_0.b.x;
    return Struct_1(countOneBits(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, global0.x, arg_2.x, global0.x)), ~vec4<u32>(35072u, 10283u, 36346u, arg_0.x) << (firstLeadingBit(vec4<u32>(35191u, 0u, 4294967295u, arg_0.x)) % vec4<u32>(32u)), select(~vec4<u32>(arg_2.x, arg_0.x, 911u, 47102u), ~vec4<u32>(1u, 0u, 46963u, arg_2.x), !vec4<bool>(var_0.b.x, true, true, false)))), u_input.a.x, vec2<bool>(!(false != var_0.b.x) | true, any(var_0.b.wzy) != ((false || var_0.b.x) & true)), _wgslsmith_add_vec3_i32(~min(-vec3<i32>(u_input.a.x, 0i, 2147483647i), firstTrailingBit(vec3<i32>(1i, -21014i, 0i))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, 2147483647i, u_input.a.x), ~vec3<i32>(1i, u_input.a.x, u_input.b)), -vec3<i32>(19980i, u_input.b, -9480i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), global1.x), _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(global0.yzx, vec3<u32>(global0.x, 8654u, global0.x) | vec3<u32>(global0.x, global0.x, 51190u), vec3<u32>(67103u, 3403u, global0.x)), _wgslsmith_div_vec3_u32(global0.wwx, ~vec3<u32>(16410u, 4294967295u, 1u))), 351f);
    global3 = var_0.c.x;
    var var_1 = select(vec2<bool>(~31141u == global0.x, any(!(!vec3<bool>(var_0.c.x, true, false)))), !(!vec2<bool>(func_1(var_0.a.zy, global1.zw, var_0.a.zxx, 772f).c.x, true)), 726f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -2618f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(max(global1.x, 1000f)))), (var_0.b >> (global0.x % 32u)) < _wgslsmith_sub_i32(var_0.b, -1i))));
    let var_2 = Struct_3(Struct_2(var_0, global1.x, var_0, vec4<bool>(true, var_1.x, var_1.x, !(-787f == global1.x)), u_input.b), var_0, var_0);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), -2722f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(-var_2.a.b));
    let var_3 = _wgslsmith_mod_vec4_i32((select(vec4<i32>(var_0.d.x, u_input.a.x, -2147483647i, -1i), select(vec4<i32>(var_2.c.b, 57494i, -36464i, 23822i), vec4<i32>(var_2.a.a.d.x, u_input.a.x, 0i, var_2.c.d.x), false), var_2.a.d) >> (var_0.a % vec4<u32>(32u))) | (~vec4<i32>(-20566i, 24752i, -17172i, var_0.b) >> (_wgslsmith_mod_vec4_u32(var_2.a.a.a, abs(var_0.a)) % vec4<u32>(32u))), vec4<i32>(~var_2.c.b, countOneBits(abs(17718i)), 2147483647i, u_input.b));
    var var_4 = var_0;
    var var_5 = Struct_3(Struct_2(Struct_1(var_4.a, ~var_2.b.b ^ (u_input.b & var_2.c.b), !var_2.b.c, _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-1i, 2147483647i, 0i)), select(vec3<i32>(1i, var_3.x, 2147483647i), vec3<i32>(var_2.a.e, var_3.x, -1i), true))), -240f, func_1(~(vec2<u32>(0u, var_0.a.x) | var_0.a.zx), _wgslsmith_f_op_vec2_f32(global1.zw - _wgslsmith_f_op_vec2_f32(-global1.ww)), var_4.a.yxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + func_4(var_0.a.xyx).a)), var_2.a.d, -4017i), Struct_1(_wgslsmith_add_vec4_u32(var_2.c.a, var_2.b.a), func_1(var_0.a.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.wx)), vec3<u32>(~global0.x, func_1(global0.yy, vec2<f32>(global1.x, var_2.a.b), vec3<u32>(var_4.a.x, 16749u, 46687u), 953f).a.x, global0.x), _wgslsmith_f_op_f32(var_2.a.b * _wgslsmith_f_op_f32(exp2(var_2.a.b)))).d.x, !func_4(var_4.a.yww).b.xw, ~var_4.d), Struct_1(vec4<u32>(_wgslsmith_sub_u32(var_2.b.a.x, global0.x) ^ _wgslsmith_dot_vec4_u32(var_2.c.a, var_2.a.c.a), 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.a.x, global0.x), firstTrailingBit(vec2<u32>(var_2.b.a.x, var_2.b.a.x))), max(_wgslsmith_mult_u32(24990u, 49090u), 1u)), -2147483647i, func_4(var_4.a.yyy | ~var_0.a.yzw).b.yw, -vec3<i32>(var_4.d.x, -14384i, i32(-1i) * -1i)));
    var var_6 = 1u << (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(global1.zw);
}

