struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> u32 {
    global0 = Struct_1(global0.a, ~1u, global0.c);
    var var_0 = vec4<i32>(firstTrailingBit(1i), -23748i, 11099i, min(_wgslsmith_mod_i32(-u_input.c, arg_2), arg_2));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, 1000f, false)) * -2018f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(step(473f, arg_1.x))), arg_1.x)) >= arg_1.x, _wgslsmith_clamp_i32(-25339i, -611i, abs(reverseBits(arg_2)) ^ firstLeadingBit(-2147483647i)));
    global1 = any(!(!(!select(vec4<bool>(true, var_1.b, var_1.b, true), vec4<bool>(var_1.b, true, false, var_1.b), var_1.b))));
    var_0 = countOneBits(~reverseBits(-vec4<i32>(arg_2, -2147483647i, arg_2, 2147483647i)) ^ vec4<i32>(global0.c.x, firstLeadingBit(-58529i), ~u_input.b & -21265i, 2147483647i));
    return countOneBits(3144u);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1215f)) + _wgslsmith_f_op_f32(-arg_0.x)))), true, min(u_input.c, 0i));
    var var_1 = (~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1, var_0.c), select(vec3<i32>(u_input.c, 0i, u_input.d), vec3<i32>(-28200i, var_0.c, var_0.c), true)) > u_input.c) & (var_0.b || false);
    var_0 = Struct_3(-434f, var_0.b, _wgslsmith_mult_i32(u_input.c, arg_1 << (func_3(~vec2<u32>(global0.a.x, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -369f, -1999f)), u_input.d, 30359u) % 32u)));
    var_1 = !all(vec2<bool>(true, all(!vec2<bool>(var_0.b, true))));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(global0.a, vec2<u32>(select(global0.a.x, 48871u, var_0.b), u_input.e)), global0.a) & vec2<u32>(global0.a.x, u_input.e);
    return Struct_1(~u_input.a, u_input.a.x, global0.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global0 = Struct_1(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(11856u, 16614u), global0.a)) >> (firstLeadingBit(reverseBits(vec2<u32>(4294967295u, 10011u))) % vec2<u32>(32u)), _wgslsmith_mod_u32(74193u, countOneBits(abs(_wgslsmith_mod_u32(4294967295u, global0.b)))), vec2<i32>(arg_0.c, arg_1.c.x) | -vec2<i32>(0i, -1i));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))) + arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a)), arg_0.a, 785f, arg_0.a), _wgslsmith_div_vec4_i32(vec4<i32>(~18865i, i32(-1i) * -3595i, u_input.d << (select(4166u, 4294967295u, true) % 32u), countOneBits(min(u_input.b, -28464i))), min(-vec4<i32>(35227i, -69953i, u_input.d, 0i), max(vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.c) & vec4<i32>(-17522i, global0.c.x, 2147483647i, arg_0.c), vec4<i32>(u_input.c, arg_1.c.x, -44900i, u_input.d)))), arg_0.b);
    var var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(-var_0.a)), ~17322i);
    var var_2 = vec2<bool>(!((886i <= arg_1.c.x) && var_0.d), all(select(vec4<bool>(var_0.d && true, false, true, true), vec4<bool>(true, var_0.d && false, var_0.d, true), false)));
    var var_3 = Struct_2(arg_0.a, _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(308f * arg_0.a), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1879f), arg_0.a))), vec4<i32>(-1i, u_input.b, _wgslsmith_div_i32(arg_0.c, arg_1.c.x >> (1u % 32u)), ~arg_1.c.x), true);
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = arg_2.a;
    global0 = global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(u_input.e, firstTrailingBit(_wgslsmith_div_u32(4294967295u, arg_1.x))))), 1u)];
    var var_1 = ~global0.c.x;
    let var_2 = Struct_1(~(u_input.a ^ u_input.a), firstLeadingBit(~u_input.a.x ^ global0.a.x) & arg_1.x, -vec2<i32>(64589i, -_wgslsmith_clamp_i32(-17532i, 1i, global0.c.x)));
    let var_3 = vec4<i32>(arg_2.c, 2147483647i << (_wgslsmith_add_u32(abs(_wgslsmith_div_u32(arg_1.x, 0u)), min(~global0.a.x, u_input.e)) % 32u), _wgslsmith_mod_i32(~(u_input.d & global0.c.x) ^ u_input.b, -17109i), 14265i);
    return Struct_2(arg_2.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(321f, var_0, -945f, arg_2.a), vec4<f32>(var_0, -1892f, var_0, -621f), arg_2.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-462f, 716f, -1948f, 1713f), vec4<f32>(arg_0.a, 296f, -796f, -636f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, arg_2.a, var_0, var_0))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_4(arg_0, var_2).a, _wgslsmith_f_op_f32(ceil(1415f)), arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1284f)), vec4<f32>(func_4(arg_0, var_2).a, _wgslsmith_f_op_f32(round(728f)), -246f, _wgslsmith_f_op_f32(arg_0.a - -252f)), arg_2.b)))), vec4<i32>(_wgslsmith_mult_i32(func_2(vec2<f32>(211f, arg_2.a), var_3.x).c.x ^ (var_3.x ^ u_input.c), -global0.c.x), 0i, arg_0.c, 0i), false);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    global2 = array<Struct_1, 1>();
    global1 = any(!vec3<bool>(_wgslsmith_div_u32(61028u, 140737u) != (global0.a.x ^ 1u), true, true));
    let var_0 = func_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1000f))), arg_0.d, ~_wgslsmith_sub_i32(min(u_input.d, arg_0.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 69939i), vec2<i32>(u_input.b, global0.c.x)))), vec2<u32>(~1u, ~(~61823u)), func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_1.x), false, abs(~0i)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yz * arg_1.wy)), abs(0i))));
    global0 = func_2(_wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-440f - -1934f)), _wgslsmith_f_op_vec2_f32(select(arg_1.xx, _wgslsmith_f_op_vec2_f32(-arg_1.xw), select(select(vec2<bool>(true, false), vec2<bool>(var_0.d, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, var_0.d), vec2<bool>(false, true), var_0.d))))), -29632i);
    let var_1 = Struct_1(global0.a, select(max(80347u, u_input.a.x), u_input.a.x, true), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(select(arg_0.c.xx, global0.c, vec2<bool>(arg_0.d, false)), vec2<i32>(u_input.b, global0.c.x)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(global0.c, vec2<i32>(u_input.b, var_0.c.x)), -arg_0.c.yw)), arg_0.c.wy));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.a, firstTrailingBit(1u), ~(abs(vec2<i32>(2147483647i, -23738i)) ^ min(global0.c, ~vec2<i32>(global0.c.x, global0.c.x))));
    var var_0 = ~4294967295u << (func_1(Struct_2(_wgslsmith_f_op_f32(max(2829f, -697f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1634f, -542f, -1000f, 158f), vec4<f32>(-517f, -975f, 889f, -648f)))), vec4<i32>(-1i, 1i, 1i, min(u_input.c, global0.c.x)), true), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1525f), _wgslsmith_div_f32(-658f, -390f)), _wgslsmith_f_op_f32(-938f * _wgslsmith_f_op_f32(ceil(-1457f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1668f - 566f)), -157f)) % 32u);
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(max(countOneBits(~vec4<i32>(global0.c.x, -1i, global0.c.x, 63685i)), abs(max(vec4<i32>(2147483647i, -1i, global0.c.x, 19437i), vec4<i32>(global0.c.x, 0i, global0.c.x, u_input.b)))), (-vec4<i32>(0i, u_input.b, global0.c.x, u_input.d) & _wgslsmith_add_vec4_i32(vec4<i32>(global0.c.x, 2147483647i, 1i, global0.c.x), vec4<i32>(u_input.d, -2147483647i, u_input.d, 8939i))) ^ select(vec4<i32>(u_input.b, -13950i, global0.c.x, -4102i), func_5(Struct_3(-1072f, true, 0i), global0.a, Struct_3(1000f, false, global0.c.x)).c, vec4<bool>(false, true, true, true))), vec4<i32>(firstTrailingBit(~1i), -13358i, u_input.b, _wgslsmith_mult_i32(func_4(Struct_3(-477f, false, -27113i), global2[_wgslsmith_index_u32(1u, 1u)]).c, _wgslsmith_div_i32(~global0.c.x, ~0i))), _wgslsmith_mod_vec4_i32(min(~vec4<i32>(-474i, global0.c.x, -30298i, 66118i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.x, global0.c.x, 65651i, 0i), vec4<i32>(u_input.d, u_input.b, global0.c.x, 0i), vec4<i32>(global0.c.x, 2147483647i, -2147483647i, global0.c.x))), ~(-vec4<i32>(49766i, -2147483647i, global0.c.x, -25251i))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(-317f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1554f * 135f))))), true)), vec4<f32>(_wgslsmith_f_op_f32(floor(func_5(Struct_3(189f, true, global0.c.x), u_input.a, Struct_3(-656f, true, u_input.b)).b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-481f))), -1995f), vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(u_input.d, u_input.b)), var_1.x, global0.c.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.c.x, -38675i), ~global0.c.x, func_4(Struct_3(279f, false, var_1.x), Struct_1(vec2<u32>(10343u, global0.b), 1u, vec2<i32>(var_1.x, global0.c.x))).c)) & ~(func_5(Struct_3(1411f, true, -2147483647i), vec2<u32>(u_input.e, global0.b), Struct_3(1000f, false, var_1.x)).c << (countOneBits(vec4<u32>(19945u, u_input.e, 87638u, global0.a.x)) % vec4<u32>(32u))), _wgslsmith_add_i32(-20694i, min(countOneBits(u_input.b), _wgslsmith_clamp_i32(global0.c.x, var_1.x, 56175i))) > reverseBits(0i));
    var var_3 = global2[_wgslsmith_index_u32(max(43812u, ~global0.a.x), 1u)];
    var var_4 = Struct_3(-915f, false, var_3.c.x);
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(332f + -659f), var_2.b.x));
    var var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, _wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a * var_2.a), 835f)), 197f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1506f, 1095f, var_4.a, 1048f)) * _wgslsmith_div_vec4_f32(vec4<f32>(301f, var_2.a, var_2.b.x, 1123f), var_2.b)))));
    var var_7 = select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, var_4.b, var_4.b))), vec3<bool>(true, true, !(countOneBits(var_3.b) > u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1462f)) == _wgslsmith_div_f32(-191f, _wgslsmith_f_op_f32(step(-172f, _wgslsmith_f_op_f32(1154f - 511f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x * -815f), -470f, var_6.x, _wgslsmith_f_op_f32(var_4.a * var_4.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, -612f, var_4.a, 1000f), vec4<f32>(var_6.x, var_2.a, 1054f, -1604f)) * _wgslsmith_f_op_vec4_f32(min(var_2.b, var_2.b)))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global0.b, 1581u), vec4<u32>(0u, global0.b, 2036u, var_3.b)), 4294967295u, global0.a.x ^ 5530u, u_input.e) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, 31885u, var_3.a.x, 26241u), vec4<u32>(var_3.a.x, 4294967295u, u_input.a.x, global0.a.x)) % vec4<u32>(32u)), vec4<u32>(u_input.e, max(u_input.e, 1u >> (var_3.a.x % 32u)), 1u, 14588u)), -251f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(223f)), _wgslsmith_div_f32(var_2.b.x, -1498f))), _wgslsmith_mult_i32(func_5(func_4(Struct_3(var_4.a, false, 1i), global2[_wgslsmith_index_u32(min(var_3.a.x, 0u), 1u)]), ~(vec2<u32>(global0.b, global0.b) << (var_3.a % vec2<u32>(32u))), Struct_3(var_2.b.x, false, -var_3.c.x)).c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.c, vec4<i32>(0i, var_2.c.x, var_1.x, 0i)), var_2.c), vec4<i32>(-1i, _wgslsmith_mult_i32(2147483647i, var_1.x), 0i, -u_input.b))));
}

