struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, false, true, true, false, false, false, false, true, true, false, true, false, false, true, true, false, false, false, true, true, true, true, true, true, true, false);

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = Struct_1(vec2<bool>(false, true), vec2<i32>(-((i32(-1i) * -52810i) << (_wgslsmith_div_u32(4294967295u, u_input.a.x) % 32u)), ~(~0i)));
    var var_1 = _wgslsmith_mult_u32(~(~u_input.a.x), ~u_input.a.x);
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)), -1526f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1497f))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(296f, arg_0.x)), _wgslsmith_f_op_f32(round(arg_0.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-474f, 1000f), arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))));
    return abs(17117u) & ~(_wgslsmith_dot_vec4_u32(vec4<u32>(70403u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(19377u, u_input.a.x, 8274u, 46757u)) & u_input.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_0.e;
    var_0 = Struct_3(arg_0.b.a, arg_2.e.b, firstTrailingBit(~4294967295u), arg_2.e.d);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-202f, var_0.d.x))) + arg_0.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(arg_2.b.d.x * -561f))))))));
    var_1 = _wgslsmith_f_op_f32(trunc(1522f));
    var var_2 = arg_1;
    return _wgslsmith_clamp_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(47872i, -49386i, arg_0.d.b.x, arg_1.b.x), vec4<i32>(arg_2.b.b.b.x, 0i, arg_2.e.b.b.x, var_0.b.b.x)), vec4<i32>(-1i) * -vec4<i32>(arg_2.d.b.x, 0i, 1649i, arg_2.b.b.b.x)) | vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-11048i, 0i, -27624i, arg_0.d.b.x), min(vec4<i32>(arg_0.b.b.b.x, arg_1.b.x, -2147483647i, -5407i), vec4<i32>(-21880i, arg_2.b.b.b.x, arg_0.b.b.b.x, -1i))), ~min(-6778i, var_0.b.b.x), firstTrailingBit(_wgslsmith_mult_i32(20538i, arg_2.e.b.b.x)), 81721i), vec4<i32>(-3243i, select(~(~arg_0.e.b.b.x), _wgslsmith_add_i32(7313i, var_0.b.b.x), all(select(vec3<bool>(arg_0.d.a.x, arg_1.a.x, false), vec3<bool>(true, false, arg_1.a.x), arg_2.c.x))), _wgslsmith_mult_i32(-(~(-14910i)), -var_2.b.x), abs(_wgslsmith_div_i32(arg_0.b.b.b.x, -1i) ^ ~(-7786i))), vec4<i32>(_wgslsmith_mult_i32(-24559i & var_2.b.x, select(-2101i, arg_1.b.x, false)) << (_wgslsmith_add_u32(arg_3, ~4294967295u) % 32u), 1i, arg_0.e.b.b.x, var_2.b.x));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    return func_4(Struct_4(Struct_2(firstTrailingBit(u_input.a.x)), Struct_3(Struct_2(u_input.a.x >> (u_input.a.x % 32u)), Struct_1(vec2<bool>(true, false), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 7087i))), u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1094f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 977f, -2705f), global0[_wgslsmith_index_u32(5708u, 27u)])) + vec4<f32>(1000f, arg_0, 343f, -446f))), vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), Struct_1(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true), vec2<bool>(false, false)), -vec2<i32>(-2147483647i, 1i)), Struct_3(Struct_2(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x)), Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 10572i), vec2<i32>(-2147483647i, 0i))), 18120u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1278f, 1407f, -439f) - vec4<f32>(-849f, -816f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, -2052f, arg_0, 126f))))), Struct_1(!(!select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(14200u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))), vec2<i32>(select(-6724i, _wgslsmith_mod_i32(14354i, 30595i), -212f == arg_0), max(_wgslsmith_mod_i32(-45148i, -9511i), -25673i))), Struct_4(Struct_2(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -201f)))), Struct_3(Struct_2(u_input.a.x), Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(2687u, 27u)]), firstLeadingBit(vec2<i32>(40761i, 6539i))), ~1u | select(0u, u_input.a.x, global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1132f, 1000f, 371f) - vec4<f32>(arg_0, -934f, 223f, arg_0)))), !(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(4569u, 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], false))), Struct_1(select(select(vec2<bool>(global0[_wgslsmith_index_u32(20893u, 27u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true), vec2<bool>(false, false)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 30233u)), 27u)]), max(vec2<i32>(1i, 1i), vec2<i32>(15568i, -13464i))), Struct_3(Struct_2(select(21484u, u_input.a.x, true)), Struct_1(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), false), _wgslsmith_add_vec2_i32(vec2<i32>(-8922i, -37033i), vec2<i32>(2147483647i, 18395i))), 4294967295u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1183f, -1000f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, arg_0), true)))))), u_input.a.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    let var_0 = -2147483647i;
    var var_1 = arg_2.a;
    global0 = array<bool, 27>();
    return Struct_3(arg_2.a, arg_2.b, u_input.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, -2031f, 412f, arg_2.d.x))), _wgslsmith_f_op_vec4_f32(abs(arg_2.d)), select(global0[_wgslsmith_index_u32(arg_1.a, 27u)], arg_2.b.a.x == arg_2.b.a.x, true))), arg_2.d)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_2 {
    global1 = 2147483647i;
    global1 = 0i;
    global0 = array<bool, 27>();
    global1 = func_4(Struct_4(func_5(vec4<i32>(-2147483647i, 1i, 31699i >> (1u % 32u), i32(-1i) * -2147483647i), func_5(vec4<i32>(-7547i, 10995i, arg_0.b.b.x, arg_0.b.b.x) << (vec4<u32>(arg_1.x, u_input.a.x, 26829u, 39072u) % vec4<u32>(32u)), arg_0.a, func_5(vec4<i32>(arg_2.b.b.x, arg_0.b.b.x, arg_0.b.b.x, -1i), Struct_2(arg_0.a.a), arg_2)).a, Struct_3(Struct_2(0u), Struct_1(arg_0.b.a, arg_2.b.b), u_input.a.x, vec4<f32>(arg_0.d.x, -1000f, arg_0.d.x, -1326f))).a, func_5(vec4<i32>(1i, 1i, -58555i, ~arg_2.b.b.x), func_5(func_4(Struct_4(arg_0.a, arg_0, arg_0.b.a, Struct_1(vec2<bool>(arg_0.b.a.x, arg_2.b.a.x), vec2<i32>(-1i, arg_0.b.b.x)), Struct_3(arg_2.a, arg_0.b, 66968u, arg_0.d)), arg_0.b, Struct_4(Struct_2(34973u), arg_2, arg_2.b.a, arg_2.b, Struct_3(Struct_2(71999u), Struct_1(arg_2.b.a, arg_0.b.b), 12545u, arg_2.d)), 46315u), arg_2.a, func_5(vec4<i32>(2147483647i, arg_2.b.b.x, 7277i, arg_2.b.b.x), Struct_2(17796u), arg_0)).a, Struct_3(arg_2.a, Struct_1(arg_0.b.a, arg_0.b.b), ~arg_0.a.a, arg_2.d)), !vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_0.b.a.x)), !arg_2.b.a.x), func_5(select(abs(vec4<i32>(23736i, -1i, 27196i, 60548i)), ~vec4<i32>(arg_2.b.b.x, -10295i, arg_0.b.b.x, 2147483647i), arg_2.b.b.x > 2147483647i), func_5(-vec4<i32>(arg_0.b.b.x, arg_0.b.b.x, -26755i, arg_2.b.b.x), Struct_2(7331u), func_5(vec4<i32>(-12230i, -2147483647i, arg_0.b.b.x, -19696i), Struct_2(0u), Struct_3(arg_0.a, Struct_1(arg_2.b.a, arg_2.b.b), arg_1.x, arg_2.d))).a, arg_2).b, arg_0), func_5(vec4<i32>(_wgslsmith_sub_i32(-14858i << (arg_0.c % 32u), -2147483647i), 24779i, arg_0.b.b.x, 1i), Struct_2(arg_2.a.a), Struct_3(arg_0.a, Struct_1(vec2<bool>(arg_0.b.a.x, arg_0.b.a.x), -vec2<i32>(arg_0.b.b.x, -34924i)), arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x), 351f, arg_0.d.x, _wgslsmith_f_op_f32(abs(arg_0.d.x))))).b, Struct_4(arg_2.a, func_5(-_wgslsmith_mult_vec4_i32(vec4<i32>(-21190i, arg_0.b.b.x, arg_0.b.b.x, -2147483647i), vec4<i32>(0i, arg_2.b.b.x, 16172i, arg_2.b.b.x)), arg_0.a, arg_2), vec2<bool>(true, false), func_5(firstLeadingBit(~vec4<i32>(1i, 1i, -1i, 6973i)), Struct_2(abs(57668u)), arg_2).b, arg_2), ~abs(countOneBits(_wgslsmith_mod_u32(6202u, arg_2.c)))).x;
    global0 = array<bool, 27>();
    return Struct_2(~arg_2.c ^ 4294967295u);
}

fn func_1() -> u32 {
    var var_0 = func_6(func_5(~func_2(1000f), Struct_2(u_input.a.x), Struct_3(Struct_2(~u_input.a.x), Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec2<i32>(-2147483647i, 29933i)), ~firstLeadingBit(0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(528f, -415f, -106f, -931f), vec4<f32>(-239f, -1435f, 1837f, -1000f)))))), ~reverseBits(~vec2<u32>(4294967295u, 19498u)), Struct_3(Struct_2(u_input.a.x), Struct_1(vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true), -func_2(328f).wx), u_input.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(825f, 1713f, -1596f, -1000f) + vec4<f32>(-1495f, 2379f, 710f, -130f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1393f, -489f, 159f, 1145f) - vec4<f32>(-1071f, 531f, -1000f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(631f, -1000f, 859f, 422f) * vec4<f32>(-1264f, 1241f, 393f, 585f)))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 10686i;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1111f, 728f, -188f, -126f) + vec4<f32>(1569f, 1950f, 1524f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 860f, -1807f, 784f) + vec4<f32>(-391f, 300f, -716f, 536f))))))));
    global0 = array<bool, 27>();
    var var_1 = Struct_3(Struct_2(~(func_1() | abs(21523u))), Struct_1(vec2<bool>(true, true), countOneBits(~vec2<i32>(43606i, 0i))), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x) ^ u_input.a.x, 18114u)), var_0);
    let var_2 = vec4<i32>(-(~var_1.b.b.x), var_1.b.b.x & ~func_2(1f).x, -4154i, var_1.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(var_0.ywy)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, ~var_1.b.b.x, var_2.x), var_2.yww));
}

