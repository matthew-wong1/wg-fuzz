struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: Struct_3;

var<private> global2: array<vec3<f32>, 30>;

var<private> global3: vec4<i32> = vec4<i32>(1i, 1i, 26069i, 40166i);

var<private> global4: Struct_1 = Struct_1(vec4<i32>(-55113i, 35406i, 16483i, -49504i), vec2<u32>(42407u, 18906u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 17839u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32) -> i32 {
    global1 = Struct_3(global1.c.a.x != (firstTrailingBit(global1.c.a.x) | global1.c.a.x), global1.b, Struct_1(countOneBits(~global4.a), vec2<u32>(u_input.d.x, 102714u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.c.x, global1.c.c.x) & global4.b, u_input.d), abs(_wgslsmith_dot_vec4_u32(global1.c.c, global1.c.c)), ~global4.b.x << (_wgslsmith_add_u32(71607u, u_input.d.x) % 32u), global4.c.x)));
    var var_0 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(global4.a.yyw << (global1.c.c.xwy % vec3<u32>(32u)), vec3<i32>(-3082i, global4.a.x, 1i)), select(_wgslsmith_mult_i32(1i, 1i), -1i, any(vec2<bool>(true, false))), global0[_wgslsmith_index_u32(~u_input.d.x, 24u)]) | u_input.a;
    let var_1 = Struct_1(-(global4.a ^ -(global1.c.a ^ global4.a)), global1.c.b, vec4<u32>(18306u, u_input.d.x | ~countOneBits(0u), 36898u, _wgslsmith_mod_u32(22354u, 1u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f + global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(931f)) - _wgslsmith_div_f32(-1000f, global1.b.x)), global1.b.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(global1.b.x, -1977f)), _wgslsmith_f_op_f32(global1.b.x - global1.b.x), 1290f, _wgslsmith_f_op_f32(global1.b.x * -159f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, 734f, global1.b.x, 703f) + vec4<f32>(1878f, -217f, global1.b.x, global1.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, -1202f, global1.b.x, -858f))))))));
    var var_3 = Struct_3(global1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.wy))), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.a ^ vec4<i32>(global4.a.x, 1i, 803i, global3.x), -vec4<i32>(8025i, u_input.a.x, global3.x, global3.x)), -var_1.a), _wgslsmith_mod_vec2_u32(firstLeadingBit(global1.c.b), _wgslsmith_div_vec2_u32(global1.c.b, vec2<u32>(global1.c.b.x, global1.c.b.x))) | ~u_input.d, ~reverseBits(global1.c.c) | ~global1.c.c));
    return global3.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(-global1.b.x)))) * 793f)));
    let var_1 = vec3<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, -34584i)), vec2<i32>(-5018i, abs(global1.c.a.x))), max(global4.a.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, global1.c.c.x), 24u)] ^ (-2147483647i >> (global1.c.c.x % 32u)))), global3.x | func_3(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.c.a.x, -6590i, global4.a.x, 56572i)), global4.a & vec4<i32>(-31408i, global3.x, 1i, -8330i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), 2186f), vec4<f32>(global1.b.x, _wgslsmith_div_f32(131f, global1.b.x), var_0, var_0)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, global1.b.x, global1.b.x, -819f), _wgslsmith_div_vec4_f32(vec4<f32>(2657f, global1.b.x, -1378f, 369f), vec4<f32>(1275f, global1.b.x, global1.b.x, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1309f, global1.b.x, -1241f) - vec4<f32>(var_0, global1.b.x, global1.b.x, -1645f))))), _wgslsmith_f_op_f32(abs(global1.b.x)) >= _wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1887f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -163f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, global1.b.x, 1276f, var_0)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.x, global1.b.x, var_0, -1509f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, 333f, -1123f, 1503f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -616f, var_0, var_0)))))));
    var var_3 = 50250u ^ select(0u, _wgslsmith_sub_u32(~global1.c.c.x, abs(global1.c.c.x)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(floor(-1082f))) <= 2040f);
    var var_4 = Struct_1(~(global1.c.a >> (global1.c.c % vec4<u32>(32u))) << (global1.c.c % vec4<u32>(32u)), abs(select(~vec2<u32>(4294967295u, 72875u), u_input.d, true)), abs(vec4<u32>(70499u, 30044u, firstTrailingBit(~5597u), 0u)));
    return Struct_3(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-374f, var_0))), Struct_1(vec4<i32>(-1i, firstTrailingBit(1i), 0i, 2147483647i), _wgslsmith_clamp_vec2_u32(global4.b, ~global1.c.c.wx, _wgslsmith_mod_vec2_u32(u_input.d, max(vec2<u32>(u_input.d.x, global1.c.b.x), vec2<u32>(0u, 4294967295u)))), ~var_4.c));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_0.c.a.x;
    global4 = func_2(select(select(vec3<bool>(true, true, arg_1 == 43167u), select(vec3<bool>(false, false, global1.a), !vec3<bool>(false, false, arg_0.a), global1.a), !select(vec3<bool>(true, arg_0.a, true), vec3<bool>(arg_0.a, true, arg_0.a), arg_0.a)), vec3<bool>(any(vec4<bool>(global1.a, arg_0.a, false, arg_0.a)), false, true | global1.a), vec3<bool>(any(!vec2<bool>(arg_0.a, global1.a)), _wgslsmith_mult_u32(arg_0.c.b.x, 1u) > 2912u, true))).c;
    let var_1 = ~(~79972u);
    var var_2 = arg_0.a;
    global1 = func_2(select(vec3<bool>(all(vec3<bool>(global1.a, arg_0.a, true)), true, true || global1.a), vec3<bool>((global3.x <= global0[_wgslsmith_index_u32(0u, 24u)]) | global1.a, any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)) | true, false), any(vec2<bool>(false, !global1.a))));
    return Struct_2(Struct_1(func_2(!select(vec3<bool>(true, global1.a, true), vec3<bool>(false, true, true), arg_0.a)).c.a, ~arg_0.c.b, _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(global1.c.c, global1.c.c), abs(_wgslsmith_div_vec4_u32(vec4<u32>(10725u, global1.c.c.x, 28698u, 4294967295u), global4.c)))), global4.b, vec4<f32>(-621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x) - _wgslsmith_f_op_f32(floor(580f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -219f)))), _wgslsmith_f_op_f32(1651f + _wgslsmith_f_op_f32(min(1090f, 1715f)))), Struct_1(_wgslsmith_div_vec4_i32(arg_0.c.a, vec4<i32>(var_0, global4.a.x, -20965i, -15213i)) << (arg_0.c.c % vec4<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, 31707u) >> (~23559u % 32u), ~(~0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.b.x ^ 9330u, arg_0.c.b.x, 68172u << (var_1 % 32u), ~0u), global4.c)), true);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global0 = array<i32, 24>();
    global3 = -global4.a;
    let var_0 = func_4(func_2(vec3<bool>(global1.a, false, true)), global4.b.x, Struct_1(_wgslsmith_add_vec4_i32(-func_2(vec3<bool>(false, global1.a, true)).c.a, global4.a), select(vec2<u32>(global1.c.c.x, 13421u) | ~vec2<u32>(92184u, 4294967295u), func_2(!vec3<bool>(global1.a, global1.a, global1.a)).c.b, true), abs(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4294967295u, 26530u, arg_0.c.x, global4.c.x)), global1.c.c << (global1.c.c % vec4<u32>(32u))))));
    var var_1 = Struct_2(var_0.d, ~_wgslsmith_clamp_vec2_u32(select(arg_0.c.xw ^ vec2<u32>(var_0.d.c.x, 4294967295u), global4.c.zx, true), abs(vec2<u32>(global1.c.b.x, 12039u)), ~countOneBits(vec2<u32>(51526u, u_input.d.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 169f, -1140f, -733f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b.x, global1.b.x, 894f, var_0.c.x)))))))), global1.c, var_0.e);
    global4 = func_2(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(var_1.e, false, var_0.e), true), select(vec3<bool>(true, var_0.e, false), vec3<bool>(global1.a, var_0.e, false), vec3<bool>(var_0.e, var_1.e, var_1.e)), true))).c;
    return func_2(!select(select(vec3<bool>(false, false, global1.a), !vec3<bool>(var_1.e, var_0.e, false), true), select(!vec3<bool>(false, global1.a, false), vec3<bool>(var_0.e, true, false), !vec3<bool>(false, var_1.e, var_0.e)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.e, true), true))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1) -> StorageBuffer {
    global3 = select(_wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(arg_1.c.a.x, -2147483647i, global1.c.a.x, 0i)), _wgslsmith_add_vec4_i32(~(vec4<i32>(1892i, arg_0.x, 59840i, 23483i) ^ global4.a), vec4<i32>(firstLeadingBit(-36520i), -32965i, 80970i, arg_1.c.a.x))), func_1(Struct_1(firstTrailingBit(vec4<i32>(0i, 1i, global0[_wgslsmith_index_u32(arg_1.c.c.x, 24u)], 1i)), u_input.d, vec4<u32>(4294967295u, ~arg_2.c.x, _wgslsmith_sub_u32(31764u, arg_1.c.b.x), 45467u))).c.a, !(!select(!vec4<bool>(arg_1.a, true, false, true), vec4<bool>(global1.a, arg_1.a, true, false), u_input.d.x != global1.c.c.x)));
    return StorageBuffer(~(-_wgslsmith_add_vec3_i32(arg_2.a.yww, global4.a.xyz)), global1.c.c.zxw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(-u_input.a & _wgslsmith_sub_vec3_i32(vec3<i32>(-global4.a.x, 77657i, -2147483647i >> (global4.c.x % 32u)), -(global3.zxw << (vec3<u32>(global1.c.c.x, global4.b.x, u_input.d.x) % vec3<u32>(32u)))), func_1(global1.c), Struct_1(_wgslsmith_sub_vec4_i32(global1.c.a, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, global4.a.x, global3.x), vec4<i32>(11538i, -1i, 23342i, -2147483647i)) | (vec4<i32>(global1.c.a.x, -25288i, global1.c.a.x, u_input.c) & vec4<i32>(global3.x, global3.x, 1i, -1i))), global4.b, vec4<u32>(61205u, 11708u, 1780u, _wgslsmith_dot_vec2_u32(~global1.c.c.xw, vec2<u32>(0u, global1.c.c.x) | global4.b))));
}

