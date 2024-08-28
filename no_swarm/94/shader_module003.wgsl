struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, false, true, true, false, true, false, false, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_4 {
    return Struct_4(~4147u, !(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(37472u, 11u)], false)))), Struct_1(abs(~countOneBits(vec4<u32>(u_input.a, 0u, u_input.c, u_input.c))), 1u, -_wgslsmith_clamp_vec2_i32(~vec2<i32>(-36774i, -1i), ~vec2<i32>(21306i, -39990i), vec2<i32>(1i, 1i)), -403f));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    let var_0 = arg_1;
    var var_1 = vec3<u32>(~func_1().a, ~(arg_1.b ^ 6270u), func_1().c.a.x);
    var_1 = ~var_0.a.xyw;
    let var_2 = -vec3<i32>(~1420i, ~_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(arg_2.x, arg_2.x)), abs(-1i >> (~4294967295u % 32u)));
    var_1 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(4294967295u, 77935u, ~arg_1.a.x), _wgslsmith_div_vec3_u32(arg_1.a.xxy, vec3<u32>(52362u, 4294967295u, var_0.a.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 11u)]), vec3<bool>(arg_3, true, false), global1[_wgslsmith_index_u32(4294967295u, 11u)]))), vec3<u32>(min(arg_1.a.x, u_input.c), 8871u & arg_1.b, 71988u) | var_0.a.yyw) << (var_0.a.zyx % vec3<u32>(32u));
    return ~4294967295u;
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = !(!select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a.a.x, 11u)], global1[_wgslsmith_index_u32(arg_0.a.a.x, 11u)], true, global1[_wgslsmith_index_u32(arg_0.a.a.x, 11u)]), vec4<bool>(!global1[_wgslsmith_index_u32(arg_0.a.b, 11u)], -25936i > arg_0.a.c.x, global1[_wgslsmith_index_u32(arg_0.a.b, 11u)] & true, !global1[_wgslsmith_index_u32(u_input.a, 11u)]), true));
    global1 = array<bool, 11>();
    var var_1 = !select(!select(!vec4<bool>(global1[_wgslsmith_index_u32(53412u, 11u)], false, false, false), vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(u_input.a, 11u)] | var_0.x), vec4<bool>(true, var_0.x, global1[_wgslsmith_index_u32(arg_0.a.b, 11u)], all(select(vec3<bool>(var_0.x, false, global1[_wgslsmith_index_u32(arg_0.a.b, 11u)]), var_0.xwy, false))), global1[_wgslsmith_index_u32(~u_input.a, 11u)]);
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(11397i, arg_0.a.c.x), vec2<i32>(-2147483647i, -2147483647i), arg_0.a.c)), vec2<i32>(abs(arg_0.a.c.x), arg_0.a.c.x)), _wgslsmith_mult_vec2_i32(func_1().c.c, arg_0.a.c));
    let var_2 = vec3<bool>(global1[_wgslsmith_index_u32(min(1u, arg_0.a.b), 11u)], true, select(global1[_wgslsmith_index_u32(~4294967295u, 11u)], var_1.x, false) && var_0.x);
    return abs(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(arg_0.a.c.x), -2147483647i, -1i), vec3<i32>(-2839i, _wgslsmith_mult_i32(arg_0.a.c.x, -2147483647i), -2147483647i >> (1u % 32u)))) >> (abs(~(~vec3<u32>(35636u, arg_0.a.a.x, u_input.c) ^ _wgslsmith_add_vec3_u32(vec3<u32>(2139u, 54403u, arg_0.a.a.x), vec3<u32>(u_input.b.x, 4294967295u, 1u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_4) -> i32 {
    let var_0 = func_4(Struct_2(Struct_1(~vec4<u32>(arg_0.c.a.x, 1u, 80471u, 87245u) >> (vec4<u32>(arg_0.c.b, arg_0.a, 95889u, u_input.a) % vec4<u32>(32u)), firstTrailingBit(func_3(1i, arg_0.c, vec4<i32>(arg_0.c.c.x, arg_0.c.c.x, -1i, -2147483647i), arg_0.b.x)), arg_0.c.c, _wgslsmith_f_op_f32(step(-1000f, arg_0.c.d)))));
    let var_1 = Struct_3(var_0.x, u_input.a, 0u, _wgslsmith_f_op_f32(-func_1().c.d) >= arg_0.c.d);
    var var_2 = 1u;
    let var_3 = Struct_2(arg_0.c);
    global1 = array<bool, 11>();
    return -((firstLeadingBit(17807i) ^ var_0.x) << (47398u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.a, ~(u_input.b.x & 4294967295u)), ~u_input.a);
    var var_1 = Struct_3(_wgslsmith_add_i32(-func_2(func_1()), _wgslsmith_clamp_i32(1i, firstLeadingBit(_wgslsmith_mod_i32(1i, 6800i)), 17659i)), 4294967295u, var_0, false);
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1486f, 1000f, -2155f) + vec3<f32>(-1919f, 1124f, -1777f)), _wgslsmith_div_vec3_f32(vec3<f32>(409f, -372f, 153f), vec3<f32>(-225f, -938f, 232f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, -440f, 499f))))));
    let var_4 = Struct_1(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 4236u, max(var_1.b, var_0), u_input.b.x), vec4<u32>(var_0, firstLeadingBit(4294967295u), abs(var_0), ~33215u)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0, 1u, var_1.b, 46331u)), vec4<u32>(u_input.b.x, abs(u_input.b.x), abs(1u), var_1.b))), u_input.a, min(max(-vec2<i32>(-1i, 2147483647i), vec2<i32>(-33244i, -30663i)) & -countOneBits(vec2<i32>(-25280i, var_1.a)), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -48896i, 38341i), vec3<i32>(-1i, -2147483647i, -2147483647i)), -var_1.a))), var_3.x);
    let var_5 = abs(var_4.a.xx);
    var_1 = Struct_3(~func_4(Struct_2(var_4)).x, func_1().a, var_5.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 37104u), 11u)]);
    let var_6 = min(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_5.x, 1u, var_5.x, u_input.a) | vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 13038u), var_4.a), _wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, var_1.c, 2794u, var_0), vec4<u32>(var_0, var_5.x, var_1.c, 4294967295u), vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], false, var_1.d, true)), select(var_4.a, vec4<u32>(0u, var_4.b, 5283u, 10533u), vec4<bool>(var_1.d, true, global1[_wgslsmith_index_u32(4901u, 11u)], var_1.d)))), vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(var_4.b, var_1.b), 28557u, 4294967295u), func_1().a & ~(var_1.b & 0u), _wgslsmith_mod_u32(var_0, 0u), _wgslsmith_add_u32(var_4.a.x, 4294967295u) & 47677u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(var_5, var_4.a.wx)) & (vec2<u32>(reverseBits(87994u), _wgslsmith_sub_u32(4294967295u, 1u)) & var_4.a.zz), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, -791f, var_4.d, -1481f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, var_4.d, -446f, var_3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, var_3.x, 921f, -1276f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-108f, _wgslsmith_f_op_f32(-1636f * 719f), _wgslsmith_f_op_f32(-561f + var_4.d), _wgslsmith_f_op_f32(-var_3.x)), vec4<f32>(var_3.x, var_3.x, -1278f, _wgslsmith_f_op_f32(var_3.x * 791f)))), vec4<bool>(global1[_wgslsmith_index_u32(~(u_input.c | 0u), 11u)], global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(var_1.c, u_input.b.x)), 11u)], !select(global1[_wgslsmith_index_u32(var_4.a.x, 11u)], global1[_wgslsmith_index_u32(20479u, 11u)], var_1.d), !select(var_1.d, global1[_wgslsmith_index_u32(1u, 11u)], var_1.d)))), abs(func_2(func_1())));
}

