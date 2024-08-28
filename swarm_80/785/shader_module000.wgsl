struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 32>;

var<private> global2: Struct_2 = Struct_2(0u, Struct_1(true), vec3<i32>(0i, i32(-2147483648), -18633i), Struct_1(true));

var<private> global3: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(~2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global2.c.xz, _wgslsmith_add_vec2_i32(arg_2, vec2<i32>(global0.x, global0.x))), _wgslsmith_add_i32(26503i, abs(-23016i)))), vec2<i32>(min(_wgslsmith_mod_i32(global2.c.x << (10389u % 32u), global2.c.x), _wgslsmith_clamp_i32(-arg_2.x, u_input.a, ~(-2147483647i))), global0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_1, arg_1, arg_0), vec4<f32>(174f, arg_1, arg_0, 1781f), vec4<bool>(true, arg_3, true, false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -168f, -814f, -1020f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-1807f)), arg_1, _wgslsmith_f_op_f32(1897f * _wgslsmith_f_op_f32(floor(591f))), 1068f)));
    let var_2 = _wgslsmith_sub_u32(16678u, 1u);
    return select(!vec2<bool>(_wgslsmith_add_i32(-1766i, arg_2.x) == global2.c.x, !(!global2.b.a)), !select(!vec2<bool>(global2.d.a, true), select(!vec2<bool>(global2.d.a, arg_3), select(vec2<bool>(false, global2.b.a), vec2<bool>(arg_3, global2.d.a), false), all(vec4<bool>(arg_3, false, global2.b.a, global2.b.a))), select(vec2<bool>(false, false), !vec2<bool>(global2.b.a, global2.d.a), global0.x >= -1i)), select(select(select(vec2<bool>(false, arg_3), select(vec2<bool>(false, global2.d.a), vec2<bool>(false, true), arg_3), !global2.b.a), vec2<bool>(arg_3, all(global3[_wgslsmith_index_u32(var_2, 10u)])), !select(vec2<bool>(true, arg_3), vec2<bool>(true, arg_3), false)), vec2<bool>(global2.d.a, all(vec3<bool>(global2.d.a, false, true))), !(_wgslsmith_f_op_f32(arg_0 - arg_0) <= arg_0)));
}

fn func_2(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = Struct_3(select(vec2<bool>(true, any(func_3(962f, -1000f, global2.c.zy, false))), !(!func_3(3078f, 116f, vec2<i32>(u_input.a, -1i), arg_1)), arg_1), vec2<i32>(min(_wgslsmith_dot_vec3_i32(global2.c, global2.c) & _wgslsmith_add_i32(31343i, global2.c.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, 19712i, -2147483647i), global2.c)), -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17908i, 35845i, global1[_wgslsmith_index_u32(u_input.c, 32u)], -2147483647i), vec4<i32>(27102i, global2.c.x, 0i, global1[_wgslsmith_index_u32(global2.a, 32u)])), -u_input.a)), _wgslsmith_f_op_f32(1000f * -819f));
    global1 = array<i32, 32>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.c) * vec2<f32>(1000f, -1792f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 954f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c, 663f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, var_0.c))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c, -882f))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-var_0.c))));
    return _wgslsmith_dot_vec3_i32(min(global2.c, global2.c), global2.c);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = -func_2(global2.d.a, global2.d.a);
    global2 = Struct_2(abs(42600u), Struct_1(all(!vec2<bool>(arg_0.b.a, global2.d.a))), -(~vec3<i32>(countOneBits(-2147483647i), arg_0.c.x, ~arg_0.c.x)), arg_0.b);
    var var_1 = Struct_3(vec2<bool>(true, arg_0.d.a), ~global2.c.zx, -1567f);
    let var_2 = global2.b;
    let var_3 = Struct_4(!(!var_1.a), Struct_3(vec2<bool>(all(select(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(35117u, 10u)], vec3<bool>(true, true, true))), !var_2.a), abs(global2.c.yx), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.c, 747f)), _wgslsmith_f_op_f32(var_1.c * var_1.c))))), _wgslsmith_dot_vec3_u32(~(select(vec3<u32>(1u, 45588u, global2.a), vec3<u32>(0u, arg_0.a, u_input.b), vec3<bool>(var_2.a, false, var_1.a.x)) >> (vec3<u32>(global2.a, 4294967295u, 38124u) % vec3<u32>(32u))), vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(0u, global2.a))), abs(~u_input.c), ~countOneBits(24520u))));
    return Struct_1(var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>) -> i32 {
    global2 = Struct_2(firstLeadingBit(global2.a), Struct_1(func_1(Struct_2(~global2.a, func_1(Struct_2(4294967295u, arg_0, vec3<i32>(global0.x, global1[_wgslsmith_index_u32(u_input.b, 32u)], u_input.a), Struct_1(true))), global2.c, Struct_1(global2.b.a))).a), -_wgslsmith_add_vec3_i32(global2.c, ~global2.c << (vec3<u32>(u_input.c, 4294967295u, 1u) % vec3<u32>(32u))), Struct_1(arg_1.a.x));
    global0 = global2.c.zy;
    var var_0 = 121f;
    let var_1 = ~vec3<u32>(38478u, 4294967295u, ~(~firstTrailingBit(4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(arg_1.b.c + 1156f);
    return ~(global0.x | ~(-(~2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -abs(vec2<i32>(func_4(func_1(Struct_2(global2.a, global2.b, global2.c, global2.d)), Struct_4(vec2<bool>(false, global2.b.a), Struct_3(vec2<bool>(true, global2.d.a), vec2<i32>(26908i, 27705i), -444f), global2.a), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(global2.a, u_input.b))), i32(-1i) * -1i));
    global2 = Struct_2(~u_input.b | global2.a, func_1(Struct_2(u_input.c, func_1(Struct_2(u_input.b, Struct_1(global2.b.a), vec3<i32>(-2450i, global1[_wgslsmith_index_u32(global2.a, 32u)], u_input.a), Struct_1(true))), vec3<i32>(_wgslsmith_mult_i32(global2.c.x, global0.x), ~u_input.a, i32(-1i) * -11867i), func_1(Struct_2(u_input.c, global2.b, global2.c, global2.d)))), -global2.c, func_1(Struct_2(1909u, Struct_1(all(vec4<bool>(false, true, true, false))), global2.c, Struct_1(global2.d.a))));
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2045f + _wgslsmith_f_op_f32(216f - 420f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)), _wgslsmith_f_op_f32(f32(-1f) * -150f))));
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(max(u_input.b, _wgslsmith_sub_u32(u_input.b, 43068u)), u_input.c, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 0u), ~u_input.b), 1u ^ global2.a), vec4<u32>(select(global2.a, 7136u, true || select(global2.b.a, false, false)), 4294967295u, ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(u_input.b, u_input.c)), u_input.c));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -298f, -782f, _wgslsmith_f_op_f32(f32(-1f) * -1414f)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, -229f)), _wgslsmith_div_f32(-414f, _wgslsmith_f_op_f32(trunc(454f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-242f))))))));
    let var_2 = !(!select(!func_3(var_0.x, -828f, vec2<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 32u)]), global2.b.a), vec2<bool>(any(vec2<bool>(global2.b.a, true)), true), vec2<bool>(!global2.b.a, !global2.d.a)));
    let var_3 = Struct_4(!vec2<bool>(any(vec4<bool>(false, var_2.x, global2.b.a, var_2.x)) || all(vec3<bool>(true, true, true)), true), Struct_3(!(!var_2), global2.c.zy, 363f), global2.a);
    let var_4 = vec4<i32>(-2147483647i, _wgslsmith_add_i32(~abs(~global2.c.x), func_4(global2.b, Struct_4(!var_2, Struct_3(vec2<bool>(true, var_3.a.x), var_3.b.b, 368f), select(0u, var_3.c, false)), vec2<u32>(0u | var_3.c, reverseBits(var_1)))), _wgslsmith_clamp_i32(max(u_input.a, -1i), firstTrailingBit(-countOneBits(-22592i)), _wgslsmith_mult_i32(var_3.b.b.x, func_4(func_1(Struct_2(u_input.c, global2.b, global2.c, Struct_1(var_2.x))), var_3, vec2<u32>(4294967295u, 19533u) & vec2<u32>(var_1, 35217u)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-25029i, global2.c.x, -2147483647i, -12248i), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global0.x, global1[_wgslsmith_index_u32(var_3.c, 32u)], 2147483647i), vec4<i32>(-2472i, 1i, global0.x, global0.x), vec4<i32>(-58126i, -6698i, var_3.b.b.x, var_3.b.b.x)), vec4<i32>(-28848i, var_3.b.b.x, 1i, global0.x))), select(vec4<i32>(-u_input.a, 0i, global2.c.x, global2.c.x), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, global0.x, 15835i), vec4<i32>(global2.c.x, global2.c.x, 23485i, -45071i)), ~vec4<i32>(u_input.a, global2.c.x, 0i, u_input.a)), vec4<bool>(global2.b.a, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(5182i), 2147483647i >> (_wgslsmith_mod_u32(var_3.c, var_1 ^ 8680u) % 32u), _wgslsmith_sub_i32(global0.x, abs(func_4(global2.b, Struct_4(var_2, Struct_3(var_2, vec2<i32>(-2147483647i, global2.c.x), var_0.x), var_3.c), vec2<u32>(31212u, 1425u))))), firstLeadingBit(abs(vec4<u32>(var_1, var_3.c, var_1, 0u)) | firstTrailingBit(max(vec4<u32>(var_3.c, 68793u, var_3.c, var_1), vec4<u32>(global2.a, 35601u, 0u, 4294967295u)))));
}

