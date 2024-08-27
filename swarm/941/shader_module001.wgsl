struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global1: Struct_5 = Struct_5(14690i, vec2<f32>(722f, -340f));

var<private> global2: array<u32, 21>;

var<private> global3: Struct_5 = Struct_5(i32(-2147483648), vec2<f32>(1665f, 2173f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global3 = Struct_5(_wgslsmith_dot_vec3_i32(-(vec3<i32>(global1.a, u_input.a, 1i) & vec3<i32>(global3.a, u_input.a, u_input.a)) & vec3<i32>(global3.a, firstTrailingBit(global1.a), max(1i, u_input.a)), -(~vec3<i32>(1i, -1i, 27944i))), vec2<f32>(global3.b.x, 703f));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2339f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.b.x)), global1.b.x, all(vec2<bool>(true, false)))))), Struct_1(any(vec2<bool>(false, select(true, false, arg_0.d))), true, countOneBits(_wgslsmith_mod_vec3_u32(arg_0.c | arg_0.c, ~arg_0.c)), true), 1i, -1716f, Struct_1(arg_0.d && arg_0.d, any(select(vec3<bool>(false, false, arg_0.d), vec3<bool>(arg_0.b, true, arg_0.a), !global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), arg_0.c >> (max(~arg_0.c, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)], 35055u, 0u)) % vec3<u32>(32u)), arg_0.a));
    var_0 = Struct_2(global3.b.x, var_0.e, _wgslsmith_mult_i32(45252i, -1i), -557f, arg_0);
    global2 = array<u32, 21>();
    let var_1 = 202f;
    return !(!(!(!(!vec4<bool>(var_0.e.a, true, var_0.e.b, arg_0.a)))));
}

fn func_2() -> vec4<bool> {
    return !vec4<bool>(-1i > ~global3.a, !(!select(false, true, false)), !all(func_3(Struct_1(true, true, vec3<u32>(4294967295u, u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 21u)]), false))), all(vec2<bool>(false, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = select(~max(~_wgslsmith_mod_u32(1u, 1u), 110054u), 1u, all(select(func_2(), vec4<bool>(all(vec4<bool>(arg_3.b, arg_3.b, true, false)), false, global3.b.x < -939f, true), func_2())));
    var_0 = ~4294967295u;
    let var_1 = func_3(Struct_1(true, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_3.c.x, u_input.b.x), arg_3.c)) == arg_3.c.x, vec3<u32>(15181u, 39509u & u_input.b.x, 1u), func_2().x & arg_3.a)).x;
    global1 = Struct_5(18676i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(floor(-615f))))), _wgslsmith_f_op_vec2_f32(-global1.b)));
    var var_2 = Struct_4(i32(-1i) * -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1168f)), global1.b.x))), global3.b.x));
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    global0 = array<vec3<bool>, 2>();
    let var_0 = 280f;
    global2 = array<u32, 21>();
    let var_1 = vec2<bool>(arg_3.b, func_2().x);
    let var_2 = Struct_4(2147483647i ^ arg_2, 952f);
    return var_2;
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_5 {
    global3 = Struct_5(~firstTrailingBit(global1.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1236f, arg_2.b))) + _wgslsmith_f_op_vec2_f32(abs(global1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3.b)) * vec2<f32>(-1000f, -1000f))), any(vec4<bool>(false, true, true, true)))));
    var var_0 = !select(vec3<bool>(1u <= _wgslsmith_dot_vec4_u32(vec4<u32>(1360u, arg_3.x, arg_3.x, 44639u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 21479u, 25387u, u_input.b.x)), false, any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), select(select(global0[_wgslsmith_index_u32(32555u, 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.x, 21u)], 2u)], true), global0[_wgslsmith_index_u32(~4294967295u, 2u)], vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(u_input.b.x, 2u)], vec3<bool>(true, false, true))), true | !(-4723i <= global1.a));
    global3 = Struct_5(arg_1.x ^ _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-18020i, -1i), -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global3.b, vec2<f32>(arg_0, global3.b.x), var_0.yy)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-930f, arg_2.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(407f, arg_0))), !var_0.xy))) - global1.b));
    var var_1 = select(min(-select(-20460i, u_input.a, false), ~global1.a), global3.a, (1i >= _wgslsmith_mod_i32(arg_2.a, global3.a)) & !(!var_0.x)) < -1i;
    global3 = Struct_5(min(~(-_wgslsmith_clamp_i32(0i, global3.a, global1.a)), firstLeadingBit(12458i)), vec2<f32>(742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f + _wgslsmith_f_op_f32(min(309f, arg_2.b))))));
    return Struct_5(u_input.a, vec2<f32>(arg_0, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.x))))), -select(max(countOneBits(vec2<i32>(global3.a, global3.a)), _wgslsmith_div_vec2_i32(vec2<i32>(global3.a, global1.a), vec2<i32>(global1.a, -2147483647i))), abs(vec2<i32>(1i, -47446i)), _wgslsmith_f_op_f32(floor(-567f)) == -558f), func_4(vec3<u32>(0u, 10910u & u_input.b.x, u_input.b.x) << (reverseBits(~vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)], 21u)], 21u)], 21u)], 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(895f, 1715f, global3.b.x, -1221f), vec4<f32>(1756f, global1.b.x, global3.b.x, global3.b.x), vec4<bool>(false, true, true, true))))), global1.a, Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 20403u), 1u), 21u)], true, Struct_1(func_1(vec3<i32>(-6596i, global1.a, 2147483647i), -393f, -1073f, Struct_1(true, false, vec3<u32>(74936u, 16560u, u_input.b.x), true)), false, vec3<u32>(66376u, 1u, 4294967295u), func_3(Struct_1(true, true, vec3<u32>(0u, 1u, 0u), true)).x))), u_input.b);
    global1 = func_5(-1484f, -(~vec2<i32>(_wgslsmith_div_i32(65860i, -47977i), 2147483647i)), func_4(firstTrailingBit(~(vec3<u32>(1u, global2[_wgslsmith_index_u32(32006u, 21u)], global2[_wgslsmith_index_u32(56662u, 21u)]) << (vec3<u32>(1u, 24683u, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(561f, var_0.b.x, 1000f, -329f) + vec4<f32>(global1.b.x, 400f, global3.b.x, global3.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 2106f, var_0.b.x, global1.b.x) * vec4<f32>(global3.b.x, 1000f, global3.b.x, 936f)) + vec4<f32>(-337f, -427f, 1000f, 887f)))), _wgslsmith_clamp_i32(global3.a, var_0.a, ~_wgslsmith_div_i32(u_input.a, global1.a)), Struct_3(_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, u_input.b.x, 4294967295u), 4294967295u), true, Struct_1(true, false, ~vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(70760u, 21u)], global2[_wgslsmith_index_u32(47194u, 21u)]), func_1(vec3<i32>(1i, 46702i, -47702i), 248f, global3.b.x, Struct_1(false, false, vec3<u32>(global2[_wgslsmith_index_u32(46476u, 21u)], 26056u, 0u), true))))), u_input.b);
    var var_1 = ~u_input.b.x;
    var var_2 = 44192i;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, 2147483647i, global1.a), vec4<i32>(-2147483647i, var_0.a, u_input.a, global1.a)), firstTrailingBit(vec4<i32>(0i, -28217i, global3.a, var_0.a))), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_0.a, -2147483647i, global1.a, global3.a)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(39165i, var_0.a, u_input.a, 15317i), vec4<i32>(u_input.a, 16545i, -1i, -2147483647i)), -vec4<i32>(-33097i, u_input.a, 1i, global1.a), true))), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(global3.a, -2147483647i)), -34404i ^ abs(func_4(vec3<u32>(u_input.b.x, 35586u, 49549u), vec4<f32>(global3.b.x, global1.b.x, global3.b.x, global3.b.x), var_0.a, Struct_3(u_input.b.x, false, Struct_1(false, false, vec3<u32>(60359u, 29886u, 10175u), true))).a)), ~(-17291i));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-2147483647i, 1i, var_3.x, -2147483647i), -505f, vec2<i32>(-func_4(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec4<f32>(global1.b.x, global1.b.x, var_0.b.x, global3.b.x), -34777i, Struct_3(4294967295u, true, Struct_1(var_4, true, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(90325u, 21u)], 21u)], 21u)], 21u)], u_input.b.x, u_input.b.x), false))).a << (max(~4294967295u, u_input.b.x) % 32u), -1i));
}

