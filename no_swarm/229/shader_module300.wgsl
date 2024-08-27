struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 7>;

var<private> global2: bool;

var<private> global3: vec4<f32> = vec4<f32>(708f, -1000f, 514f, 332f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-748f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1277f, global3.x)))))));
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1930f, global3.x, global3.x, -1690f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -677f, -192f, -977f) * vec4<f32>(global3.x, global3.x, 1312f, global3.x))) - vec4<f32>(global3.x, _wgslsmith_f_op_f32(1358f - 913f), global3.x, -1028f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, -724f, -922f, global3.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(140f, 879f, global3.x, 1253f), vec4<f32>(global3.x, 1133f, global3.x, global3.x)))))), vec4<bool>(arg_0.c.x, arg_0.a.c.x, !arg_0.c.x, true)));
    let var_0 = Struct_3(_wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, arg_0.a.a), _wgslsmith_mult_u32(arg_0.a.a, 0u)), 51039u), min(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, 0i, u_input.a, -9300i)), _wgslsmith_mult_i32(u_input.a, 1i)), u_input.a), arg_0.a.a);
    var var_1 = select(23764u >> (arg_0.a.a % 32u), 4294967295u, arg_0.a.a < (0u >> (_wgslsmith_clamp_u32(1u, 39435u, arg_0.a.a) % 32u))) ^ 29470u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(func_3(Struct_2(arg_1.a, false, select(vec3<bool>(arg_1.c.x, arg_1.b, true), select(vec3<bool>(false, false, arg_1.c.x), arg_1.a.b, arg_1.b), select(arg_1.c, vec3<bool>(arg_1.c.x, false, arg_1.b), arg_1.c)))), arg_1.c, select(select(select(arg_1.c, vec3<bool>(arg_1.a.b.x, true, arg_1.b), true), arg_1.a.c, !(!arg_1.c)), select(!vec3<bool>(true, arg_1.b, false), arg_1.a.b, !select(vec3<bool>(true, arg_1.a.c.x, false), arg_1.a.c, false)), true), false);
    var var_1 = !select(!(!vec4<bool>(var_0.c.x, arg_1.a.d, false, arg_1.a.b.x)), vec4<bool>(true, var_0.b.x, false, arg_1.b), select(!(!vec4<bool>(true, true, var_0.b.x, var_0.c.x)), select(!vec4<bool>(arg_1.b, false, var_0.c.x, true), select(vec4<bool>(true, arg_1.b, false, arg_1.a.b.x), vec4<bool>(var_0.d, true, false, var_0.b.x), var_0.b.x), true), select(vec4<bool>(arg_1.a.d, arg_1.a.c.x, arg_1.c.x, true), vec4<bool>(arg_1.b, var_0.d, arg_1.c.x, true), arg_1.b)));
    var var_2 = vec3<bool>(!any(vec3<bool>(any(arg_1.a.c), all(vec4<bool>(true, var_1.x, var_1.x, false)), 49166u >= arg_1.a.a)), !(!(arg_1.a.a != var_0.a) | true), var_0.b.x);
    var var_3 = select(_wgslsmith_mult_vec4_i32(-min(vec4<i32>(-18010i, -18021i, u_input.a, 2147483647i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(72272i, -1i, u_input.a, u_input.a) | -vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a, u_input.a, -42254i, u_input.a), ~vec4<i32>(10154i, 2147483647i, u_input.a, 2147483647i)), abs(firstTrailingBit(vec4<i32>(1i, 25313i, u_input.a, u_input.a)))), !select(select(vec4<bool>(true, var_0.b.x, var_2.x, false), vec4<bool>(true, var_2.x, var_1.x, var_2.x), false), !vec4<bool>(var_1.x, false, false, true), !vec4<bool>(var_0.c.x, true, var_1.x, false))) >> (_wgslsmith_add_vec4_u32(~firstTrailingBit(abs(vec4<u32>(arg_1.a.a, 99696u, arg_1.a.a, 1u))), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 1u, 7344u, 0u), vec4<u32>(var_0.a, 4294967295u, 1u, arg_1.a.a)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(5907u, 0u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 21958u, arg_1.a.a)))) % vec4<u32>(32u));
    let var_4 = vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.a, var_0.a), select(var_0.a, 4294967295u, true), 4294967295u) >> (arg_1.a.a % 32u), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = 184f;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-729f + -748f))) - 850f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(func_2(global3.x, global1[_wgslsmith_index_u32(44127u, 7u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))));
    global1 = array<Struct_2, 7>();
    var var_1 = vec2<f32>(global3.x, global3.x);
    global2 = select(!(!arg_0.b.x), true, any(!(!(!vec3<bool>(true, arg_0.d, arg_0.b.x)))));
    return !(any(!select(vec4<bool>(true, arg_0.c.x, arg_0.c.x, arg_0.d), vec4<bool>(false, false, true, arg_0.c.x), vec4<bool>(true, true, arg_0.c.x, arg_0.b.x))) & true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global1 = array<Struct_2, 7>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))));
    global1 = array<Struct_2, 7>();
    var var_1 = select(!(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), !vec4<bool>(select(false, true, func_1(Struct_1(1u, vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), true & all(vec4<bool>(false, true, false, true)), true, true), select(vec4<bool>(true, true, !select(false, true, false), true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), true), false));
    global2 = !var_1.x;
    let var_2 = _wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(floor(-347f))))), _wgslsmith_f_op_f32(trunc(global3.x))));
    let var_3 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(4289u, 1u), abs(0u)))), 7u)];
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1482f - _wgslsmith_f_op_f32(723f - global3.x)))) + -862f), var_2, -315f, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(global3.xx)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-656f)) * _wgslsmith_f_op_f32(max(-1111f, global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_vec3_f32(global3.xzw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global3.wxw)))), var_3.a.c)), ~(var_0 ^ reverseBits(_wgslsmith_div_i32(-22253i, var_0))), -((_wgslsmith_add_vec3_i32(vec3<i32>(var_0, u_input.a, 2147483647i), vec3<i32>(33432i, 2300i, var_0)) | vec3<i32>(22741i, 1i, 2147483647i)) >> (vec3<u32>(_wgslsmith_add_u32(70732u, var_3.a.a), 4294967295u, _wgslsmith_sub_u32(var_3.a.a, var_3.a.a)) % vec3<u32>(32u))), var_2);
}

