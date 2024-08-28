struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: vec4<f32>;

var<private> global3: vec2<u32>;

var<private> global4: array<vec3<i32>, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> vec4<u32> {
    global1 = any(!select(vec4<bool>(false, any(vec4<bool>(true, false, true, false)), false, all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false)), true));
    var var_0 = ~firstTrailingBit(24512u);
    let var_1 = false;
    global4 = array<vec3<i32>, 9>();
    var_0 = u_input.c;
    return ~arg_0.b.a;
}

fn func_2(arg_0: u32) -> vec4<i32> {
    global4 = array<vec3<i32>, 9>();
    var var_0 = 73941u;
    let var_1 = select(vec3<bool>(_wgslsmith_add_u32(~1u, arg_0) <= arg_0, true, true), !vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), all(vec3<bool>(false, false, false)) && any(vec2<bool>(false, false)), true), !vec3<bool>(!all(vec4<bool>(false, true, false, false)), !any(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_3 = Struct_4(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, ~u_input.c, arg_0, 78061u), func_3(Struct_3(vec4<i32>(u_input.b, -24877i, 1i, -34179i), Struct_1(u_input.d, vec3<u32>(0u, u_input.c, global3.x)), 1i, vec3<i32>(u_input.b, 0i, 7897i), vec2<u32>(u_input.d.x, global3.x)), vec4<f32>(global2.x, global2.x, global2.x, -125f))), abs(vec3<u32>(~arg_0, 24019u, 1u))), Struct_3((~vec4<i32>(2147483647i, -2147483647i, 2147483647i, u_input.b) | -vec4<i32>(-1i, 2147483647i, u_input.b, u_input.b)) & min(vec4<i32>(u_input.b, 0i, 1i, 58021i) & vec4<i32>(-30431i, u_input.b, 1i, u_input.b), -vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), Struct_1(vec4<u32>(4294967295u, u_input.d.x, firstLeadingBit(global3.x), _wgslsmith_sub_u32(arg_0, 81719u)), _wgslsmith_div_vec3_u32(~u_input.d.zxw, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, global3.x), u_input.a))), u_input.b, max(global4[_wgslsmith_index_u32(u_input.c, 9u)], vec3<i32>(u_input.b, u_input.b, u_input.b) | reverseBits(global4[_wgslsmith_index_u32(arg_0, 9u)])), firstLeadingBit(firstTrailingBit(abs(vec2<u32>(40725u, 1454u))))), 1u, vec4<i32>(u_input.b, ~(~1i), ~3857i, 36819i));
    return ~vec4<i32>(firstTrailingBit(-14325i ^ var_3.b.a.x), ~((var_3.b.d.x ^ u_input.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, global3.x, 220u), u_input.d) % 32u)), 0i, select(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_3.b.d.x, var_3.b.d.x), var_3.b.d), var_3.d.x, var_1.x));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    global1 = true;
    global3 = u_input.d.zy & ~select(u_input.d.wx, vec2<u32>(42829u, ~0u), false);
    global0 = 9778u;
    var var_0 = Struct_3(~(func_2(u_input.c) | -min(vec4<i32>(arg_0.x, u_input.b, u_input.b, -1i), vec4<i32>(arg_0.x, u_input.b, u_input.b, 46682i))), Struct_1(u_input.d, u_input.d.zzx), _wgslsmith_mult_i32(-func_2(~u_input.c).x, u_input.b), _wgslsmith_mult_vec3_i32(global4[_wgslsmith_index_u32(reverseBits(43454u), 9u)], -(~arg_0)), ~u_input.a.zz);
    let var_1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -1000f) + global2.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-611f)) - _wgslsmith_div_f32(1135f, -120f)), any(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, global2.x == global2.x)), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true))), select(!vec4<bool>(true, true, true, all(vec3<bool>(true, false, true))), select(vec4<bool>(-1i > arg_0.x, all(vec2<bool>(true, true)), var_0.b.a.x <= var_0.e.x, true), vec4<bool>(true, true, true, true), true), !(!any(vec2<bool>(true, false)))), vec4<bool>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x * -921f)) <= _wgslsmith_f_op_f32(global2.x - 781f), false, true, false));
    return Struct_3(var_0.a, Struct_1(reverseBits(var_0.b.a), u_input.d.wyy), arg_0.x & 75157i, vec3<i32>(-firstLeadingBit(-2147483647i), ~_wgslsmith_add_i32(func_2(15206u).x, func_2(var_0.b.a.x).x), var_0.c), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x ^ 0u, global3.x), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global3.x, 10433u), u_input.a.xz), reverseBits(var_0.b.a.yw)), ~firstLeadingBit(u_input.a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    global0 = 1u;
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 274f, -582f, global2.x)), vec4<f32>(-543f, -1324f, global2.x, global2.x), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1370f, _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(-740f)))))));
    let var_1 = func_1(-select(vec3<i32>(0i, ~2147483647i, reverseBits(u_input.b)), select(-vec3<i32>(u_input.b, 26450i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<bool>(true, true, true)), u_input.b == u_input.b));
    let var_2 = vec4<bool>(!(!(!select(true, true, true))), !all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), true, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-67275i, var_1.a.x, 2147483647i)), -var_1.a.yzx) != select(29429i, ~u_input.b | var_1.a.x, true));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) - _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f - global2.x) + -1319f)))));
    var var_4 = _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(594f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-849f, _wgslsmith_f_op_f32(f32(-1f) * -328f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a, vec2<i32>(countOneBits(_wgslsmith_mult_i32(17964i, -34469i)), ~abs(-47074i)) << (abs(var_1.e) % vec2<u32>(32u)), select(vec3<u32>(18951u, 71624u, var_1.e.x) << (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, var_1.b.b), vec3<u32>(var_1.e.x, 1u, 22682u) ^ vec3<u32>(0u, 86853u, var_1.b.a.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(abs(var_1.b.b), reverseBits(vec3<u32>(74847u, global3.x, var_1.e.x))) & ~vec3<u32>(1u, global3.x, 4294967295u), vec3<bool>(false && !var_2.x, var_2.x, func_3(Struct_3(vec4<i32>(var_1.a.x, u_input.b, 16594i, u_input.b), var_1.b, 1i, vec3<i32>(25174i, 0i, 5798i), var_1.b.a.zw), vec4<f32>(-389f, global2.x, global2.x, var_3.x)).x > firstLeadingBit(4294967295u))));
}

