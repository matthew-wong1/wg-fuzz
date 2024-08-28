struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<vec4<i32>, 11>;

var<private> global2: i32 = 2147483647i;

var<private> global3: Struct_3;

var<private> global4: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(43934u, 0u, 4294967295u), vec3<u32>(1u, 72268u, 1u), vec3<u32>(17586u, 4294967295u, 4294967295u), vec3<u32>(40634u, 7943u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(61457u, 58706u, 26635u), vec3<u32>(0u, 0u, 58965u), vec3<u32>(4294967295u, 6812u, 1u), vec3<u32>(1u, 46519u, 2210u), vec3<u32>(38892u, 15358u, 0u), vec3<u32>(107182u, 4294967295u, 0u), vec3<u32>(28215u, 73041u, 4294967295u), vec3<u32>(22032u, 70924u, 28504u), vec3<u32>(7308u, 0u, 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_2(vec3<u32>(~(~arg_1), global3.a.c, _wgslsmith_clamp_u32(4294967295u, min(1622u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3063u, 38086u, 59518u), vec4<u32>(arg_1, u_input.a, 92853u, arg_1))), firstTrailingBit(global3.a.c))), Struct_1(global3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f - -525f))), ~64961u, global3.a.d, true));
    var var_1 = Struct_5(2147483647i, 32322u, Struct_2(select(vec3<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 18339u, global3.a.c, 61838u), vec4<u32>(global3.a.c, 62406u, global3.a.c, u_input.d.x)), 0u), vec3<u32>(~global3.a.c, firstLeadingBit(global3.a.c), 1u), true), Struct_1(_wgslsmith_f_op_vec3_f32(global3.a.a * _wgslsmith_div_vec3_f32(global3.a.a, global3.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1461f), global3.a.c, -vec4<i32>(27287i, var_0.b.d.x, var_0.b.d.x, u_input.b), any(select(vec2<bool>(true, arg_0), vec2<bool>(var_0.b.e, false), vec2<bool>(true, global3.a.e))))), -var_0.b.d);
    var var_2 = Struct_2(~var_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, 1000f, var_0.b.b)))), var_1.c.b.a.x, 27904u, vec4<i32>(firstTrailingBit(var_1.c.b.d.x & 32660i), -213i, ~13382i, -2147483647i), (true || all(vec2<bool>(false, global0[_wgslsmith_index_u32(64353u, 29u)]))) || global3.a.e));
    var var_3 = Struct_5(_wgslsmith_mod_i32(-global3.a.d.x, abs(global3.a.d.x)), ~(~0u), var_1.c, _wgslsmith_div_vec4_i32(select(firstLeadingBit(global1[_wgslsmith_index_u32(arg_1, 11u)]), -(global1[_wgslsmith_index_u32(56594u, 11u)] << (vec4<u32>(arg_1, arg_1, 19451u, 19766u) % vec4<u32>(32u))), vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 29u)], true, -604f < global3.a.b, true)), vec4<i32>(select(31743i, -39951i, var_0.b.e), 2147483647i, u_input.b, global3.a.d.x)));
    var var_4 = min(vec4<u32>(~(~1u | (u_input.d.x & arg_1)), var_1.b, ~select(0u, var_3.c.b.c, !arg_0), u_input.a | 1u), vec4<u32>(36748u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, var_1.b, var_0.b.c, 23730u) >> (countOneBits(vec4<u32>(1u, var_0.b.c, var_1.c.b.c, arg_1)) % vec4<u32>(32u)), (vec4<u32>(var_2.a.x, u_input.a, 28795u, arg_1) >> (vec4<u32>(20979u, 1u, 0u, 12925u) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b, var_2.a.x, u_input.a, var_0.a.x), vec4<u32>(15639u, var_0.b.c, 0u, 33102u))), 49934u, ~4294967295u));
    return _wgslsmith_f_op_vec3_f32(floor(var_0.b.a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec4<i32>, 11>();
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(global3.a.a, _wgslsmith_f_op_vec3_f32(func_3(global3.a.e, arg_0.c)), select(global3.a.e, true, global3.a.e))), arg_0.b, (~1u ^ global3.a.c) ^ (u_input.a ^ 1u), vec4<i32>(_wgslsmith_div_i32(1i, u_input.c), -arg_0.d.x, ~0i, -1510i) >> (vec4<u32>(global3.a.c, global3.a.c >> (global3.a.c % 32u), 9817u, arg_0.c) % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a.a.x * global3.a.a.x))) != _wgslsmith_f_op_f32(max(-819f, arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * -1138f) - _wgslsmith_f_op_f32(trunc(-1014f)))));
    var var_0 = -1i == abs(~(select(1i, global3.a.d.x, true) ^ global3.a.d.x));
    let var_1 = arg_0;
    let var_2 = var_1.a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.a.b * global3.a.a.x), -2309f, -901f)))), arg_0.a.x, ~abs(~4294967295u), global3.a.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_2.x) - var_1.a.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -355f) * arg_0.b));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: Struct_5) -> Struct_2 {
    let var_0 = Struct_4(arg_0.a.e, Struct_3(arg_0.a, global3.a.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, arg_0.a.c, 1u, arg_3.b), vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.c, 0u, 4046u), u_input.d), 47745u, !global0[_wgslsmith_index_u32(47458u, 29u)]), _wgslsmith_mod_u32(u_input.d.x, reverseBits(arg_2)), 23588u, 18208u)), arg_1.a, global4[_wgslsmith_index_u32(75862u, 14u)]);
    let var_1 = -9916i;
    var var_2 = Struct_4(arg_0.a.e, arg_0, ~(~var_0.c), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_3.c.b.a))), firstLeadingBit(vec3<u32>(0u, max(1u, ~24008u), 4294967295u)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x + 773f), _wgslsmith_f_op_f32(max(501f, 1561f)), _wgslsmith_f_op_f32(floor(-527f))) - _wgslsmith_f_op_vec3_f32(floor(var_0.d))), 1f, _wgslsmith_mod_u32(0u, ~20191u), ~reverseBits(abs(vec4<i32>(2147483647i, -2147483647i, 45666i, 0i))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b))));
    return Struct_2(~(vec3<u32>(var_3.a.c, global3.a.c, var_3.a.c) & ~var_2.e), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global3.b, arg_0.a.a.x, var_3.b), vec3<f32>(-1317f, global3.a.b, -1964f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f + global3.b)), 4294967295u, min(_wgslsmith_mult_vec4_i32(arg_3.d, _wgslsmith_mod_vec4_i32(global3.a.d, global1[_wgslsmith_index_u32(27976u, 11u)])), vec4<i32>(~(-2147483647i), 2472i, 0i, arg_1.d.x)), any(vec3<bool>(var_2.a, true, !global0[_wgslsmith_index_u32(996u, 29u)]))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    return func_4(Struct_3(func_2(Struct_1(vec3<f32>(1504f, 764f, global3.a.b), global3.b, ~u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(80277i, -20845i, 1i, 19221i), vec4<i32>(global3.a.d.x, global3.a.d.x, global3.a.d.x, global3.a.d.x), global3.a.d), true)), -685f), Struct_1(global3.a.a, _wgslsmith_f_op_f32(-global3.a.a.x), ~global3.a.c, global3.a.d, global3.a.e), arg_0, Struct_5(_wgslsmith_mult_i32(max(u_input.b, -2147483647i) >> (9412u % 32u), -(i32(-1i) * -18221i)), func_2(global3.a).c, Struct_2(~vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), global3.a), vec4<i32>(-2147483647i, ~u_input.b, 1i, global3.a.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 14>();
    let var_0 = global3.a.d.x;
    var var_1 = func_1(_wgslsmith_mult_u32(1u, select(~23984u, ~1114u, !any(vec3<bool>(true, false, global3.a.e)))));
    let var_2 = func_1(func_4(Struct_3(func_1(var_1.b.c).b, 706f), var_1.b, 0u, Struct_5(-abs(-20546i), u_input.d.x, Struct_2(min(u_input.d, u_input.d), var_1.b), vec4<i32>(-6414i, abs(-2147483647i), u_input.b, u_input.b))).a.x).b;
    var var_3 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, var_2.b))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b, 222f, _wgslsmith_f_op_f32(1127f + global3.a.b), 1835f)))));
}

