struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global1: Struct_5 = Struct_5(38788i);

var<private> global2: Struct_5 = Struct_5(-38634i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: bool) -> bool {
    global2 = Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_2.a.d, -1i) & vec2<i32>(global1.a, arg_2.a.d)), u_input.b.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-7833i, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(3812i, -2147483647i), vec2<i32>(arg_2.a.e.x, u_input.a.x))), _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-34744i, u_input.a.x))), vec4<i32>(1i, arg_2.a.e.x, _wgslsmith_mult_i32(-36032i, _wgslsmith_mult_i32(66729i, arg_2.a.e.x)), u_input.a.x)));
    global1 = Struct_5(global1.a);
    let var_0 = any(global0[_wgslsmith_index_u32(0u, 27u)]) & true;
    global2 = Struct_5(arg_2.a.e.x);
    global0 = array<vec3<bool>, 27>();
    return 8325u > arg_2.a.c.x;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global2 = Struct_5(2147483647i >> (~u_input.c.x % 32u));
    let var_0 = Struct_5(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(4935i, -u_input.a.x), 2147483647i));
    let var_1 = u_input.a.wz;
    var var_2 = ~arg_0.c.x;
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(i32(-1i) * -arg_0.d, var_0.a)), _wgslsmith_div_i32(19885i, u_input.b.x), -(~(~abs(global1.a))), _wgslsmith_mod_i32(u_input.b.x, ~select(2147483647i >> (arg_0.c.x % 32u), var_0.a ^ 35470i, func_3(2696f, vec4<f32>(arg_0.a.x, -1061f, -156f, arg_0.a.x), Struct_3(arg_0), false))));
    return Struct_2(arg_0.a, _wgslsmith_mult_u32(1u, u_input.c.x) <= min(6894u, countOneBits(1u)), countOneBits(~(~vec4<u32>(u_input.c.x, 22415u, 5130u, arg_0.c.x) ^ _wgslsmith_mod_vec4_u32(u_input.c, u_input.c))), -max(-40664i, i32(-1i) * -32309i), abs(vec3<i32>(arg_0.e.x, -1i, -2147483647i)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    var var_0 = max(u_input.a, reverseBits(u_input.a));
    global1 = Struct_5(0i);
    global0 = array<vec3<bool>, 27>();
    var var_1 = Struct_5(countOneBits(~firstLeadingBit(-2147483647i)));
    global2 = Struct_5(52560i);
    return Struct_5(-26633i << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(firstTrailingBit(arg_0.a.c.x), ~4294967295u), arg_0.a.c.x >> (46402u % 32u)) % 32u));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: bool, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = -1i;
    var var_1 = Struct_3(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(879f, -2059f, -995f) - vec3<f32>(524f, 945f, 430f))), arg_0, ~reverseBits(u_input.c), 0i, -firstLeadingBit(vec3<i32>(-2147483647i, arg_1.a, arg_3.x)))));
    let var_2 = vec2<bool>(any(vec3<bool>(!all(vec2<bool>(arg_2, true)), var_1.a.b, var_1.a.b)), true);
    var_1 = Struct_3(var_1.a);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1112f, _wgslsmith_f_op_f32(-962f + -234f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-839f, var_1.a.a.x), -1594f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.a.x, -1396f)))))));
    return Struct_4(Struct_3(var_1.a), max(var_1.a.e << (u_input.c.yzz % vec3<u32>(32u)), ~vec3<i32>(u_input.b.x, -2147483647i, -8906i) >> (~vec3<u32>(u_input.c.x, var_1.a.c.x, 20350u) % vec3<u32>(32u))), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1217f, var_3.a.x, 980f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-784f, var_1.a.a.x, var_1.a.a.x), vec3<f32>(var_3.a.x, 1577f, var_1.a.a.x), vec3<bool>(false, true, true))), u_input.b.x <= 20639i)), false, ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, var_1.a.c.x), select(_wgslsmith_div_i32(global2.a, var_1.a.d), ~arg_1.a, !arg_2), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -16197i, -1i), u_input.a.ywz) | vec3<i32>(arg_1.a, arg_1.a, 0i))));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_5 {
    var var_0 = all(select(vec4<bool>(true, arg_2.x, any(vec4<bool>(arg_3.c.a.b, true, false, arg_0)), true), !select(vec4<bool>(arg_0, false, false, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_3.c.a.b), vec4<bool>(arg_2.x, true, false, arg_2.x)), select(select(vec4<bool>(false, true, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, true), arg_0), vec4<bool>(false, arg_3.c.a.b, false, true), vec4<bool>(arg_0, true, false, false)))) && arg_3.c.a.b;
    var var_1 = arg_3;
    global0 = array<vec3<bool>, 27>();
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.a.a.x, 428f))), _wgslsmith_f_op_f32(-var_1.c.a.a.x)));
    var var_3 = vec4<i32>(reverseBits(((global1.a << (23388u % 32u)) & -1i) >> (reverseBits(32908u) % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, -2147483647i)), ~vec2<i32>(-35834i, global2.a)), vec2<i32>(-16899i, -45472i)), ~(-(i32(-1i) * -4884i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.a.a.e, ~(~vec3<i32>(var_1.b.x, 31764i, global2.a))), -_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -4806i, -49431i), u_input.a.xxx, u_input.a.zwz), arg_3.c.a.e >> (vec3<u32>(arg_1, u_input.c.x, 4294967295u) % vec3<u32>(32u)))));
    return Struct_5(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(var_3.x, -arg_3.c.a.e.x, 37363i), _wgslsmith_add_i32(~_wgslsmith_div_i32(global2.a, 2147483647i), u_input.a.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_5 {
    global1 = func_6(false, _wgslsmith_add_u32(abs(arg_1.c.x), u_input.c.x), vec3<bool>(false, any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 11588u, 71054u, u_input.c.x), ~arg_1.c), 27u)]), any(!select(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_1.b, arg_1.b, false)))), func_5(false, func_4(Struct_3(arg_1), arg_1.a.x, func_2(Struct_2(vec3<f32>(arg_1.a.x, 384f, -1604f), arg_1.b, vec4<u32>(arg_1.c.x, 38802u, u_input.c.x, 23492u), 2147483647i, arg_1.e))), true, -firstLeadingBit(u_input.a.yz)));
    let var_0 = vec2<i32>(func_4(func_5(true, Struct_5(2147483647i), false, vec2<i32>(arg_2.x, -1i) | vec2<i32>(global2.a, global1.a)).a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x))), arg_1).a ^ _wgslsmith_sub_i32(reverseBits(1i), ~func_4(Struct_3(Struct_2(vec3<f32>(564f, arg_1.a.x, arg_1.a.x), arg_1.b, u_input.c, arg_1.e.x, arg_1.e)), arg_1.a.x, Struct_2(arg_1.a, arg_1.b, arg_1.c, 4320i, u_input.a.wyy)).a), -13784i);
    global0 = array<vec3<bool>, 27>();
    global0 = array<vec3<bool>, 27>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * 2210f)), _wgslsmith_f_op_f32(ceil(arg_1.a.x)));
    return func_4(Struct_3(arg_1), -933f, arg_1);
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_5) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(457f + 1284f), 1163f)), -367f, func_5(true, Struct_5(35904i), false, u_input.b).a.a.a.x))), all(vec4<bool>(19223u <= ~u_input.c.x, true, arg_0.x, true)), reverseBits(~firstTrailingBit(abs(vec4<u32>(26957u, 4294967295u, u_input.c.x, 0u)))), _wgslsmith_mult_i32(select(2147483647i, -2147483647i, select(true, arg_0.x, arg_0.x && true)), ~(~(~25928i))), abs(vec3<i32>(-1i, min(select(global2.a, 56770i, true), -1i), _wgslsmith_dot_vec2_i32(func_5(arg_0.x, Struct_5(0i), arg_0.x, u_input.a.zw).c.a.e.xz, -u_input.a.wz))));
    global2 = func_1(vec4<i32>(var_0.e.x, global2.a, i32(-1i) * -1i, _wgslsmith_add_i32(var_0.e.x, func_4(Struct_3(var_0), -547f, func_5(true, arg_1, arg_0.x, vec2<i32>(3974i, global2.a)).a.a).a)), func_2(func_2(var_0)), firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(var_0).e, vec3<i32>(global2.a, 5982i, var_0.d) ^ u_input.a.xwx), ~var_0.e)));
    var var_1 = firstTrailingBit(4294967295u);
    global1 = func_1(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-_wgslsmith_clamp_i32(global2.a, global2.a, -45065i), u_input.a.x, 1i, global2.a)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, -898f)) * _wgslsmith_f_op_f32(f32(-1f) * -883f)), func_5(var_0.b, Struct_5(-28939i), any(vec3<bool>(false, false, true)), ~var_0.e.xz).a.a.a.x, 848f), !all(!vec3<bool>(true, var_0.b, false)), ~func_2(Struct_2(vec3<f32>(1192f, var_0.a.x, -1175f), false, vec4<u32>(0u, 4046u, 4294967295u, u_input.c.x), global1.a, vec3<i32>(2147483647i, -2147483647i, 2147483647i))).c, global1.a | ~(~global1.a), select(func_2(var_0).e, u_input.a.yww, arg_0.zwz)), u_input.a.zzz);
    var var_2 = (~firstTrailingBit(~u_input.c) | vec4<u32>(func_5(true, Struct_5(var_0.d), var_0.b, u_input.a.yz).a.a.c.x ^ abs(var_0.c.x), ~(u_input.c.x >> (21458u % 32u)), 1u, ~(1u | u_input.c.x))) & vec4<u32>(4294967295u, firstLeadingBit(var_0.c.x), u_input.c.x, ~(~4294967295u ^ u_input.c.x));
    return ~26948i;
}

fn func_8(arg_0: bool, arg_1: vec2<f32>) -> Struct_5 {
    let var_0 = func_4(Struct_3(func_5(true, Struct_5(-11505i), !func_5(arg_0, Struct_5(1i), false, vec2<i32>(2147483647i, global1.a)).a.a.b, func_2(Struct_2(vec3<f32>(-1000f, arg_1.x, arg_1.x), true, vec4<u32>(5615u, 0u, 60676u, u_input.c.x), -2147483647i, vec3<i32>(global1.a, global1.a, 9028i))).e.xy).c.a), arg_1.x, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(572f, arg_1.x, 1176f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 240f, arg_1.x)))), func_2(func_5(true, Struct_5(0i), true, _wgslsmith_div_vec2_i32(vec2<i32>(global2.a, -16486i), vec2<i32>(34593i, -27294i))).a.a).b, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c.x, 64888u, abs(u_input.c.x)), select(vec4<u32>(30614u, 18347u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(arg_0, arg_0, arg_0, true))), u_input.a.x, firstTrailingBit(-vec3<i32>(-2147483647i, -1i, -2152i))));
    global0 = array<vec3<bool>, 27>();
    var var_1 = 513f;
    let var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, abs(u_input.c.x), select(u_input.c.x, u_input.c.x, arg_0), u_input.c.x), abs(vec4<u32>(28208u, 32389u, u_input.c.x, 5097u))), u_input.c >> ((countOneBits(u_input.c) & vec4<u32>(4294967295u, 19167u, 108129u, 14925u)) % vec4<u32>(32u)));
    let var_3 = Struct_3(func_5(any(vec4<bool>(true, true, false, arg_0)), Struct_5(~(var_0.a | 2147483647i)), !func_2(func_2(Struct_2(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), false, var_2, global1.a, u_input.a.xzx))).b, func_5(!(var_0.a > 1i), var_0, arg_0, vec2<i32>(_wgslsmith_sub_i32(var_0.a, var_0.a), u_input.b.x)).b.yx).c.a);
    return func_6(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, 1000f, arg_1.x)), !var_3.a.b, ~var_3.a.c, (var_0.a & u_input.b.x) & global2.a, var_3.a.e)).b, ~var_3.a.c.x, global0[_wgslsmith_index_u32(var_2.x, 27u)], Struct_4(Struct_3(func_2(var_3.a)), max(~(-vec3<i32>(var_3.a.e.x, -14046i, var_3.a.e.x)), u_input.a.wxz), func_5(true & !arg_0, func_6(true, ~var_3.a.c.x, global0[_wgslsmith_index_u32(var_2.x, 27u)], Struct_4(var_3, var_3.a.e, var_3)), arg_0, vec2<i32>(func_1(u_input.a, var_3.a, vec3<i32>(u_input.b.x, global2.a, global1.a)).a, 2147483647i)).a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 27>();
    global2 = func_8((_wgslsmith_clamp_i32(firstTrailingBit(u_input.b.x), ~0i, 1i) & u_input.a.x) <= func_7(vec4<bool>(true, true, true, true), func_1(-vec4<i32>(-50811i, 8217i, global1.a, 29814i), Struct_2(vec3<f32>(-438f, 676f, 682f), true, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), -1i, u_input.a.zwz), u_input.a.zww)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_div_f32(-644f, -795f)) + vec2<f32>(1f, 1f)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-1846f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-971f, -520f)) + func_5(true, Struct_5(global2.a), true, vec2<i32>(2147483647i, global1.a)).c.a.a.x))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-func_5(false, func_6(true, ~(~u_input.c.x), select(vec3<bool>(true, true, true), select(global0[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), Struct_4(func_5(true, Struct_5(global1.a), false, u_input.a.xw).a, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 4732i, 1i), u_input.a.yxy, vec3<i32>(45864i, u_input.b.x, 1i)), Struct_3(Struct_2(vec3<f32>(-1532f, 624f, -831f), false, vec4<u32>(80722u, 92043u, u_input.c.x, u_input.c.x), global2.a, u_input.a.wwx)))), (_wgslsmith_f_op_f32(step(-2065f, -123f)) <= -386f) & !any(vec2<bool>(true, false)), vec2<i32>(min(u_input.b.x, -25792i), global2.a)).a.a.a);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-func_5(func_5(true, Struct_5(global1.a), false, u_input.a.xw).a.a.b, func_1(vec4<i32>(u_input.b.x, global1.a, global1.a, global1.a), Struct_2(vec3<f32>(var_0.x, -965f, var_0.x), true, u_input.c, global2.a, vec3<i32>(global1.a, global2.a, global2.a)), u_input.a.xxx), true, u_input.b).c.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, abs(global2.a));
}

