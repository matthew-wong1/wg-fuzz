struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2;

var<private> global1: array<u32, 24> = array<u32, 24>(24032u, 4294967295u, 4294967295u, 0u, 40989u, 4294967295u, 94331u, 44616u, 27303u, 22750u, 11023u, 47774u, 1u, 23339u, 4294967295u, 42181u, 119237u, 27107u, 19557u, 16862u, 0u, 1990u, 1u, 0u);

var<private> global2: i32 = 0i;

var<private> global3: u32 = 1u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_mult_vec4_u32(~abs(reverseBits(arg_0.c)), reverseBits(_wgslsmith_mult_vec4_u32(~arg_0.c, _wgslsmith_div_vec4_u32(~vec4<u32>(0u, arg_1.x, 1u, arg_1.x), max(global0.a.c, arg_0.c)))));
    global2 = 1i;
    global3 = _wgslsmith_mult_u32(42232u, _wgslsmith_add_u32(3052u, ~_wgslsmith_dot_vec4_u32(global0.d, var_0))) | 19884u;
    let var_1 = Struct_1(623f, arg_0.b, var_0, arg_2, global0.b.b && (all(vec2<bool>(arg_0.b, global0.b.b)) & (!global0.b.b != !arg_0.b)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(615f, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))), arg_0.d) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, global0.a.a, 127f) * vec3<f32>(arg_2, arg_2, -340f))))));
    return var_1.e;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = !(!vec3<bool>(false, true, any(!vec4<bool>(global0.b.e, false, global0.a.b, false))));
    global2 = _wgslsmith_mult_i32(-1i, global0.c.x);
    let var_1 = Struct_3(vec3<u32>(global1[_wgslsmith_index_u32((global0.a.c.x ^ 0u) ^ global1[_wgslsmith_index_u32(0u, 24u)], 24u)], ~u_input.a, abs(~countOneBits(u_input.a))), Struct_2(global0.a, global0.b, firstLeadingBit(global0.c) >> ((~vec4<u32>(1u, u_input.a, 36125u, 73756u) & vec4<u32>(25143u, u_input.a, global1[_wgslsmith_index_u32(76314u, 24u)], global0.a.c.x)) % vec4<u32>(32u)), ~global0.d, abs(min(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), ~u_input.a))), global0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, 349f, global0.b.d)), arg_0.xyz), arg_0.wwy, vec3<bool>(!global0.a.e, true, var_1.b.a.b))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-295f)), _wgslsmith_div_f32(global0.b.a, 199f), global0.b.d)));
    global0 = var_1.b;
    return Struct_3(_wgslsmith_mult_vec3_u32(global0.b.c.yzy, var_1.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * _wgslsmith_f_op_f32(max(global0.b.d, var_1.b.b.d))), false, global0.a.c, _wgslsmith_f_op_f32(-var_2.x), true), global0.b, var_1.b.c, vec4<u32>(var_1.b.b.c.x, 784u, select(28297u, ~var_1.a.x, func_3(global0.b, vec3<u32>(var_1.b.b.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.c.x, 24u)], 24u)], var_1.b.d.x), global0.b.a)), 1181u), 23520u), 1i, _wgslsmith_f_op_f32(1000f - arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    global2 = _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1.b.c.xww, global0.c.zwx), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_1.c, 1i), vec3<i32>(-1i, 2147483647i, 2147483647i))))), ~(~global0.c.x));
    let var_0 = !(!(!(!vec4<bool>(global0.a.b, true, global0.b.e, arg_3.x))));
    global1 = array<u32, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.a, _wgslsmith_f_op_f32(trunc(arg_0.d))), arg_1.d), arg_0.d, arg_0.a, _wgslsmith_f_op_f32(-arg_1.d))));
    global0 = Struct_2(arg_1.b.a, Struct_1(_wgslsmith_div_f32(arg_0.a, 1236f), var_0.x, min(vec4<u32>(arg_1.b.e, 0u, 1u, global0.a.c.x), global0.d) ^ arg_0.c, _wgslsmith_f_op_f32(round(arg_1.d)), !arg_0.b), vec4<i32>(~select(~arg_1.c, _wgslsmith_dot_vec3_i32(global0.c.yxy, global0.c.xwz), global0.a.e), -abs(~(-1i)), (-global0.c.x >> ((4294967295u << (global0.e % 32u)) % 32u)) >> (102763u % 32u), 20700i), arg_1.b.b.c, ~0u);
    return _wgslsmith_f_op_f32(var_1.x - func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(835f, arg_1.b.b.d, var_1.x, arg_1.d)) - vec4<f32>(arg_0.d, -1649f, 1000f, -1421f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 - var_1) - _wgslsmith_f_op_vec4_f32(abs(var_1))))).d);
}

fn func_5(arg_0: i32, arg_1: f32) -> Struct_1 {
    global3 = _wgslsmith_add_u32(u_input.a, ~_wgslsmith_sub_u32(2900u, ~(36525u ^ global0.e)));
    var var_0 = -2147483647i;
    global3 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1[_wgslsmith_index_u32(countOneBits(u_input.a), 24u)], _wgslsmith_mod_u32(global0.e, global0.e), ~0u, global1[_wgslsmith_index_u32(global0.d.x, 24u)])), ~(~(global0.d << (global0.b.c % vec4<u32>(32u)))));
    let var_1 = 21470u;
    var var_2 = vec2<bool>(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1000f, 2016f, arg_1), vec4<f32>(global0.b.d, -637f, -504f, global0.b.a))).b.b.e && !global0.a.e, _wgslsmith_f_op_f32(-global0.b.d) <= _wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.a.d, -1442f))))));
    return func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1011f, global0.a.d, arg_1, -152f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1287f, 221f, arg_1, global0.a.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(614f, 1539f, arg_1, -758f), vec4<f32>(global0.b.a, global0.a.a, 368f, global0.b.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(649f, arg_1, arg_1, -776f) - vec4<f32>(1466f, 1451f, arg_1, 1241f))))))).b.a;
}

fn func_1() -> bool {
    global0 = Struct_2(func_5(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(global0.b.a, global0.a.b, global0.a.c, global0.a.a, global0.a.b), func_2(vec4<f32>(global0.b.a, global0.a.a, global0.a.d, global0.a.a)), 28428u, !vec3<bool>(false, global0.b.e, global0.b.b))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -653f), all(select(!vec2<bool>(global0.a.e, global0.b.b), select(vec2<bool>(false, true), vec2<bool>(global0.a.e, global0.a.b), vec2<bool>(global0.b.e, true)), vec2<bool>(true, true))), vec4<u32>(global0.d.x ^ 38635u, 34466u, func_5(0i, _wgslsmith_div_f32(-298f, 913f)).c.x, ~func_2(vec4<f32>(1786f, global0.b.a, -418f, global0.b.d)).a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.a + global0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1832f) - _wgslsmith_f_op_f32(max(global0.b.d, global0.a.a))))), select(true, global0.a.b, true)), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_div_i32(global0.c.x, global0.c.x), 86685i), global0.c.x, global0.c.x, global0.c.x), vec4<u32>(33830u, global0.d.x, abs(_wgslsmith_sub_u32(abs(global1[_wgslsmith_index_u32(1u, 24u)]), 10343u)), u_input.a), global0.b.c.x);
    global0 = Struct_2(func_5(global0.c.x, -349f), Struct_1(global0.a.d, global0.b.b, vec4<u32>(_wgslsmith_add_u32(0u, 1u), ~global1[_wgslsmith_index_u32(0u, 24u)] & 1u, ~(~global0.e), global0.e), -1473f, false), vec4<i32>(countOneBits(global0.c.x >> (_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(1408u, 24u)]) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), ~global0.c.x), global0.c.xy), -2147483647i, global0.c.x), func_5(29798i, _wgslsmith_f_op_f32(func_4(Struct_1(106f, func_3(Struct_1(global0.a.d, true, global0.b.c, global0.b.a, global0.b.b), global0.b.c.wwy, 1008f), global0.d, _wgslsmith_f_op_f32(-global0.b.a), false), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, global0.a.d, 952f, -232f))), select(~0u, ~global1[_wgslsmith_index_u32(global0.e, 24u)], !global0.a.e), vec3<bool>(true, false, true)))).c, 4294967295u);
    global0 = func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, 1097f, 887f, -1000f)))))))).b;
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b.d, _wgslsmith_f_op_f32(1184f + global0.b.a)), _wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(abs(global0.a.d))))), _wgslsmith_f_op_f32(floor(global0.b.a)), func_5(global0.c.x, -594f).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(Struct_1(-319f, false, global0.d, global0.a.d, true), Struct_3(global0.d.wzy, Struct_2(global0.b, global0.a, global0.c, vec4<u32>(42926u, 30388u, global0.e, 3686u), u_input.a), -15964i, 323f), 4294967295u, vec3<bool>(global0.a.e, global0.a.b, global0.b.e)))))))).b.b;
    var var_1 = func_5(global0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), 1436f)).e;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<bool>(!all(select(!vec3<bool>(global0.a.e, true, global0.a.b), !vec3<bool>(var_0, true, global0.b.b), select(vec3<bool>(false, false, false), vec3<bool>(global0.a.e, var_0, false), vec3<bool>(false, global0.a.b, true)))), !(!func_2(vec4<f32>(global0.a.d, -248f, global0.a.a, global0.a.d)).b.a.e));
    global2 = -13987i;
    var var_2 = global0.c.x;
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>((u_input.a & 77319u) & _wgslsmith_div_u32(global0.b.c.x, global0.d.x), _wgslsmith_mult_u32(countOneBits(global0.d.x), ~global1[_wgslsmith_index_u32(0u, 24u)]), u_input.a, 1u), vec4<u32>(19239u, min(~global1[_wgslsmith_index_u32(35277u, 24u)], ~global1[_wgslsmith_index_u32(22248u, 24u)]), 1u, max(abs(global1[_wgslsmith_index_u32(18264u, 24u)]), u_input.a))), countOneBits(25801u));
    var var_4 = abs(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(func_5(global0.c.x, _wgslsmith_f_op_f32(-1464f * 1024f)).c.x, 24u)], reverseBits(1u)), 24u)]);
    var_4 = _wgslsmith_mod_u32(~firstLeadingBit(countOneBits(global0.b.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(35388u, 24u)], var_3.x, u_input.a), global0.a.c.zxz), 4564u), ~global0.a.c.zw ^ var_3) ^ abs(u_input.a));
    var var_5 = Struct_2(global0.b, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(390f, -589f, global0.a.d, global0.a.a))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(749f, global0.b.d, -1203f, -181f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.d, 1554f, global0.a.a, -396f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-3365f, global0.a.a, global0.a.d, -712f)))))).b.b, global0.c, ~(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, global0.b.c.x, var_3.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)]), vec4<u32>(global1[_wgslsmith_index_u32(var_3.x, 24u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 0u))) ^ firstLeadingBit(vec4<u32>(4294967295u, 3879u, global1[_wgslsmith_index_u32(var_3.x, 24u)], 1u))), ~var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.d);
}

