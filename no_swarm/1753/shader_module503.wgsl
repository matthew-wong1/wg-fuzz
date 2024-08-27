struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1955f, 1000f, -171f);

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false))), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, true))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, true))));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    return global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), firstTrailingBit(~(~1u))), 9u)];
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x))) - _wgslsmith_div_f32(global0.x, global0.x)));
    var var_1 = Struct_3(Struct_2(Struct_1(func_2(arg_0).a, !(!vec2<bool>(arg_0.b.b.x, false))), func_2(arg_0)), func_2(Struct_3(arg_0.a, Struct_1(func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, arg_0.b.a.x)))).a, vec2<bool>(arg_0.a.a.a.x, arg_0.b.b.x)))));
    global1 = array<Struct_2, 30>();
    global2 = array<Struct_1, 9>();
    var var_2 = arg_0;
    return (vec2<i32>(-1i) * -abs(vec2<i32>(1i, u_input.c))) | ~vec2<i32>(firstTrailingBit(62017i) >> (reverseBits(u_input.a.x) % 32u), u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(exp2(global0.x))), global0.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(-613f, global0.x, global0.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, global0.x, global0.x))))), arg_3.a.wzz));
    global1 = array<Struct_2, 30>();
    var var_1 = arg_0.a.x;
    var var_2 = select(u_input.e.x, 0u, func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.e.x, 30u)], arg_0)).a.x);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 401f, global0.x))) + var_0) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(848f, 491f, 309f) - vec3<f32>(368f, -1542f, 504f))) * vec3<f32>(-796f, _wgslsmith_f_op_f32(round(594f)), _wgslsmith_f_op_f32(trunc(1801f))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(335f, _wgslsmith_f_op_f32(select(852f, var_0.x, false)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -778f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-305f, global0.x, arg_3.b.x)) * _wgslsmith_f_op_f32(var_0.x * var_0.x))), 535f));
    return Struct_1(!(!arg_3.a), select(vec2<bool>(true, true), arg_0.b, arg_3.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<bool> {
    global1 = array<Struct_2, 30>();
    let var_0 = min(max(vec3<i32>(-19397i ^ u_input.c, max(21137i, firstLeadingBit(1i)), u_input.c), min(~vec3<i32>(-2147483647i, u_input.c, u_input.c), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c, 1i, 51532i), vec3<i32>(28233i, 7308i, u_input.c)))), vec3<i32>(-19506i, _wgslsmith_div_i32(u_input.c, 0i), ~select(0i, ~u_input.c, all(arg_1))));
    let var_1 = 47689u;
    let var_2 = min(var_1, var_1);
    global1 = array<Struct_2, 30>();
    return func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~28724u, ~1u), vec2<u32>(u_input.b.x ^ u_input.e.x, var_2)), 9u)])).b;
}

fn func_1(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(false, true))), vec2<bool>(true, 1441f != _wgslsmith_f_op_f32(346f + global0.x)), true), func_5(func_4(func_2(Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, true)), global2[_wgslsmith_index_u32(u_input.e.x, 9u)]), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, false)))), _wgslsmith_mult_i32(u_input.c, arg_0.x), func_3(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.e.x, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)]), global2[_wgslsmith_index_u32(u_input.d, 9u)])), Struct_1(vec4<bool>(true, false, false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), !func_2(Struct_3(global1[_wgslsmith_index_u32(0u, 30u)], func_2(Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false)))))).b);
    var var_1 = _wgslsmith_sub_vec4_u32(~u_input.a, u_input.a) | abs(reverseBits(~(vec4<u32>(594u, u_input.b.x, 28956u, 4294967295u) ^ vec4<u32>(32376u, u_input.a.x, u_input.d, 65129u))));
    global2 = array<Struct_1, 9>();
    var var_2 = func_4(func_2(Struct_3(global1[_wgslsmith_index_u32(var_1.x, 30u)], func_4(func_2(Struct_3(Struct_2(global2[_wgslsmith_index_u32(var_1.x, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), global2[_wgslsmith_index_u32(u_input.b.x, 9u)])), arg_0.x << (var_1.x % 32u), arg_0.zx, func_2(Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(vec4<bool>(false, var_0.x, false, var_0.x), vec2<bool>(var_0.x, true))), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec2<bool>(true, var_0.x))))))), ~abs(arg_0.x), arg_0.yx, func_4(global2[_wgslsmith_index_u32(~(~(~0u)), 9u)], -28631i, vec2<i32>(1i, -firstLeadingBit(22458i)), func_2(Struct_3(Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec2<bool>(var_0.x, var_0.x)), Struct_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec2<bool>(var_0.x, false))), func_2(Struct_3(Struct_2(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(u_input.e.x, 9u)]), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, false)))))))).a.zx;
    let var_3 = _wgslsmith_mod_vec3_i32(max((arg_0 | _wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(52906i, arg_0.x, u_input.c))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 1i, arg_0.x), vec3<i32>(-4331i, arg_0.x, u_input.c), arg_0), -arg_0, arg_0), arg_0 >> (vec3<u32>(var_1.x, ~u_input.e.x, 1u ^ u_input.a.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(arg_0.x, u_input.c, -1i)), select(vec3<i32>(_wgslsmith_clamp_i32(arg_0.x, -40429i, -13783i), u_input.c, arg_0.x), max(arg_0, ~vec3<i32>(-1i, 19329i, u_input.c)), !(!vec3<bool>(var_2.x, false, var_2.x)))));
    return min(select(u_input.a, vec4<u32>(~firstTrailingBit(var_1.x), 0u, _wgslsmith_dot_vec3_u32(abs(u_input.a.yxw), vec3<u32>(u_input.d, 18957u, var_1.x)), 0u), func_4(func_4(Struct_1(vec4<bool>(true, true, var_0.x, true), vec2<bool>(var_0.x, var_2.x)), 34037i, vec2<i32>(var_3.x, u_input.c), Struct_1(vec4<bool>(var_0.x, var_0.x, var_2.x, false), vec2<bool>(true, var_0.x))), select(var_3.x, var_3.x, true), vec2<i32>(var_3.x, u_input.c) ^ vec2<i32>(22877i, 2147483647i), func_2(Struct_3(Struct_2(global2[_wgslsmith_index_u32(0u, 9u)], Struct_1(vec4<bool>(var_0.x, var_2.x, var_2.x, var_0.x), vec2<bool>(var_2.x, false))), Struct_1(vec4<bool>(var_0.x, true, var_0.x, true), vec2<bool>(false, true))))).b.x && true), firstLeadingBit(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(u_input.c & firstTrailingBit(-2147483647i), _wgslsmith_sub_i32(u_input.c, -9398i));
    global1 = array<Struct_2, 30>();
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, 1u), 9u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x))), vec3<f32>(_wgslsmith_f_op_f32(min(715f, global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), -2296f)), _wgslsmith_f_op_f32(-1f)), select(select(var_1.a.a.zxz, vec3<bool>(true, true, true), true), var_1.b.a.wwy, all(var_1.a.a))));
    let var_3 = func_1(vec3<i32>(reverseBits(u_input.c), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.x, u_input.c, var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, var_0.x, u_input.c, 0i), vec4<i32>(u_input.c, u_input.c, var_0.x, var_0.x), vec4<i32>(u_input.c, var_0.x, -1i, var_0.x)))), -2147483647i));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, var_2.x, var_1.b.b.x)))));
    global1 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_mod_u32(var_3.x, 40636u), ~u_input.d << (u_input.a.x % 32u), min(u_input.b.x, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, var_3.x)), countOneBits(vec2<u32>(u_input.a.x, var_3.x))))), ~countOneBits(var_3.www), var_3.x, (_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -3693i, 0i), vec3<i32>(var_0.x, u_input.c, 1i)), abs(vec3<i32>(-16174i, 8937i, -2147483647i))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(24463u, 71591u, 0u), select(vec3<u32>(u_input.e.x, u_input.b.x, 0u), var_3.zwx, var_1.b.a.wyz), u_input.e ^ u_input.a.wzz) % vec3<u32>(32u))) | (vec3<i32>(-1i) * -vec3<i32>(var_0.x, -2147483647i, 43180i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-1000f - global0.x), _wgslsmith_f_op_f32(-global0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 690f) - _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1451f)))));
}

