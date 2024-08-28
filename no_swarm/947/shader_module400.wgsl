struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(Struct_1(vec3<i32>(47079i, 2147483647i, -1i), vec3<i32>(0i, -1484i, -1i), vec3<bool>(false, true, false))), Struct_5(Struct_1(vec3<i32>(15262i, 25498i, -19470i), vec3<i32>(-46833i, 1i, i32(-2147483648)), vec3<bool>(false, false, false))), Struct_5(Struct_1(vec3<i32>(i32(-2147483648), 7494i, 42326i), vec3<i32>(-40561i, -1i, 25975i), vec3<bool>(false, true, false))), Struct_5(Struct_1(vec3<i32>(9543i, 25313i, 23415i), vec3<i32>(17168i, 49728i, -36253i), vec3<bool>(false, true, false))), Struct_5(Struct_1(vec3<i32>(-1i, -1i, -6409i), vec3<i32>(i32(-2147483648), 1i, -1086i), vec3<bool>(false, true, true))), Struct_5(Struct_1(vec3<i32>(1i, 1i, -39432i), vec3<i32>(-55203i, 15870i, 16299i), vec3<bool>(false, false, false))), Struct_5(Struct_1(vec3<i32>(2147483647i, -19670i, 13339i), vec3<i32>(1i, 0i, -36326i), vec3<bool>(false, false, true))), Struct_5(Struct_1(vec3<i32>(i32(-2147483648), 1i, 3585i), vec3<i32>(0i, -1i, 1i), vec3<bool>(true, false, true))), Struct_5(Struct_1(vec3<i32>(1i, 17430i, -41145i), vec3<i32>(-14579i, -22370i, 0i), vec3<bool>(true, true, false))), Struct_5(Struct_1(vec3<i32>(13530i, -1i, -1i), vec3<i32>(12816i, 45249i, -58365i), vec3<bool>(true, true, true))), Struct_5(Struct_1(vec3<i32>(i32(-2147483648), 9797i, 31018i), vec3<i32>(10143i, -10811i, -17719i), vec3<bool>(false, true, false))), Struct_5(Struct_1(vec3<i32>(-1i, 34324i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 23699i), vec3<bool>(true, true, true))), Struct_5(Struct_1(vec3<i32>(8026i, 0i, 15364i), vec3<i32>(7631i, -45493i, -1i), vec3<bool>(false, false, true))), Struct_5(Struct_1(vec3<i32>(-2904i, 0i, 1i), vec3<i32>(23903i, 31591i, -31267i), vec3<bool>(false, true, true))), Struct_5(Struct_1(vec3<i32>(9366i, 3432i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 7035i), vec3<bool>(false, true, false))), Struct_5(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(-19152i, -18559i, 41221i), vec3<bool>(false, false, false))), Struct_5(Struct_1(vec3<i32>(42128i, 2147483647i, 1i), vec3<i32>(-1i, 0i, -17991i), vec3<bool>(true, true, false))));

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 25>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = -1i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(492f + -1000f), 945f, _wgslsmith_f_op_f32(max(1079f, -642f)), _wgslsmith_f_op_f32(trunc(-1201f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(969f, 799f, -351f, -580f)))), select(select(!vec4<bool>(global1.a.x, false, false, false), !vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(true, global1.a.x, global1.a.x, false)), !(!vec4<bool>(global1.a.x, false, global1.a.x, true)), select(select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), vec4<bool>(global1.a.x, false, false, false), global1.a.x), !vec4<bool>(false, true, global1.a.x, false), !vec4<bool>(global1.a.x, false, false, global1.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(187f, 306f, global1.a.x)))), -218f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -677f))), 1f));
}

fn func_2() -> f32 {
    global0 = array<Struct_5, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_1 = Struct_4(-(u_input.b ^ (-33367i | u_input.d)) << (select(countOneBits(15041u), u_input.a, true) % 32u), Struct_2(_wgslsmith_sub_i32(-reverseBits(1i), -68783i), _wgslsmith_div_u32(u_input.a, global1.b.x)), Struct_3(vec2<bool>(global1.a.x, any(select(vec3<bool>(global1.a.x, false, false), vec3<bool>(global1.a.x, false, false), global1.a.x))), ~countOneBits(_wgslsmith_clamp_vec4_u32(global1.b, vec4<u32>(0u, u_input.a, 1u, 62619u), global1.b))));
    let var_2 = global1.a;
    global2 = array<Struct_2, 25>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -669f))), _wgslsmith_f_op_f32(abs(var_0.x))) - _wgslsmith_f_op_f32(-536f * var_0.x))));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec3<i32> {
    global2 = array<Struct_2, 25>();
    global2 = array<Struct_2, 25>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, global1.b.x, global1.b.x) >> ((global1.b ^ global1.b) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(0u, u_input.a, global1.b.x, global1.b.x))), vec4<u32>(1u, global1.b.x, ~0u, abs(0u)) ^ min(global1.b, vec4<u32>(36549u, global1.b.x, u_input.a, 28009u))), global1.b ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 27422u, 5590u, 1u))), 25u)];
    let var_1 = !select(select(select(!vec4<bool>(false, true, global1.a.x, false), select(vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, true, global1.a.x, false)), !vec4<bool>(true, global1.a.x, global1.a.x, false)), select(vec4<bool>(true, global1.a.x, true, true), !vec4<bool>(true, true, true, global1.a.x), !global1.a.x), vec4<bool>(2147483647i == arg_1.x, true, !global1.a.x, global1.a.x | true)), select(select(vec4<bool>(false, false, global1.a.x, global1.a.x), vec4<bool>(false, global1.a.x, global1.a.x, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, global1.a.x, true, global1.a.x), global1.a.x)), !(!vec4<bool>(global1.a.x, global1.a.x, false, true)), global1.a.x), !(!vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x)));
    global1 = Struct_3(global1.a, vec4<u32>(~(~42297u), ~abs(abs(0u)), firstTrailingBit(1u), firstLeadingBit(global1.b.x)));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -arg_2, 20578i, reverseBits(-1i)), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.zyw, arg_1.wzw), -78809i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.a, u_input.c.x), var_0.a)) ^ arg_1.ywz);
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(select(global1.a, !vec2<bool>(all(vec2<bool>(true, true)), true), !arg_0.c.yx), _wgslsmith_clamp_vec4_u32(global1.b, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mod_u32(1u, global1.b.x), u_input.a & global1.b.x, ~0u), vec4<u32>(_wgslsmith_sub_u32(94472u, 35791u), ~u_input.a, ~u_input.a, ~43850u)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(52286u, global1.b.x, 1u, u_input.a), vec4<u32>(u_input.a, 4294967295u, global1.b.x, u_input.a))));
    var_0 = Struct_3(!select(var_0.a, select(global1.a, !arg_0.c.yz, true), global1.a), _wgslsmith_clamp_vec4_u32(global1.b, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 17249u), 1u), ~global1.b.x ^ 1u, global1.b.x, u_input.a), var_0.b));
    let var_1 = Struct_5(arg_0);
    global2 = array<Struct_2, 25>();
    global1 = Struct_3(!arg_0.c.zy, ~(~(vec4<u32>(4294967295u, var_0.b.x, 21021u, 42274u) >> (firstTrailingBit(var_0.b) % vec4<u32>(32u)))));
    return Struct_3(vec2<bool>(true, true), _wgslsmith_add_vec4_u32(~global1.b, max(var_0.b, vec4<u32>(var_0.b.x, u_input.a, _wgslsmith_clamp_u32(global1.b.x, u_input.a, u_input.a), 36662u))));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    global1 = func_5(Struct_1(-func_4(_wgslsmith_f_op_f32(func_2()), countOneBits(vec4<i32>(-41820i, 2147483647i, u_input.c.x, u_input.c.x)), u_input.b << (0u % 32u)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, -456i, 2147483647i), -(~vec3<i32>(u_input.c.x, u_input.b, u_input.c.x))), select(select(vec3<bool>(true, true, true), !vec3<bool>(global1.a.x, false, global1.a.x), true), select(!vec3<bool>(true, global1.a.x, false), !vec3<bool>(false, global1.a.x, false), select(vec3<bool>(true, false, true), vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(true, global1.a.x, true))), (global1.a.x | global1.a.x) || (global1.a.x != global1.a.x))));
    global1 = Struct_3(select(global1.a, !(!global1.a), vec2<bool>(0u > ~u_input.a, any(vec4<bool>(false, true, global1.a.x, true)) == !global1.a.x)), abs(select(~countOneBits(global1.b), (global1.b & global1.b) ^ vec4<u32>(1u, global1.b.x, u_input.a, global1.b.x), !vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x))));
    let var_0 = func_5(Struct_1(firstLeadingBit(vec3<i32>(u_input.c.x, u_input.c.x, 1i)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, u_input.b, 1i) | max(vec3<i32>(-1i, 36224i, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), -firstLeadingBit(vec3<i32>(19430i, 0i, -2147483647i))), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.a.x, true, global1.a.x), !vec3<bool>(global1.a.x, global1.a.x, global1.a.x), select(vec3<bool>(false, true, false), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(false, global1.a.x, global1.a.x))), vec3<bool>(any(global1.a), true, any(vec4<bool>(global1.a.x, true, true, global1.a.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-889f * arg_1), arg_1, _wgslsmith_f_op_f32(-arg_1))) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(trunc(1541f))), arg_1)));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, abs(u_input.b) & 1i, 2147483647i), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, -2147483647i) | ~2147483647i, u_input.d | -28172i), ~firstTrailingBit(u_input.b), firstTrailingBit(-2147483647i)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, -2147483647i, 71751i << (1u % 32u)), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -22418i, u_input.c.x)), -vec3<i32>(-58512i, 88198i, u_input.c.x))), u_input.b, ~u_input.d));
    return var_0;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 17u)];
    var var_1 = ~arg_3.b;
    let var_2 = global0[_wgslsmith_index_u32(arg_1.x, 17u)];
    let var_3 = select(!(!(!select(vec3<bool>(arg_2.a.x, arg_0.x, false), arg_0, arg_2.a.x))), var_2.a.c, true);
    var var_4 = Struct_1(var_0.a.b, var_2.a.a, var_0.a.c);
    return Struct_2(arg_3.a, ~(~global1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 17>();
    var var_0 = func_6(vec3<bool>(true, true, global1.a.x), vec3<u32>(max(_wgslsmith_sub_u32(firstTrailingBit(global1.b.x), global1.b.x), 4294967295u), u_input.a, ~_wgslsmith_div_u32(firstTrailingBit(24168u), _wgslsmith_div_u32(52551u, 1663u))), func_1(select(~u_input.a, countOneBits(80162u), !(!global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))))), Struct_2(max(u_input.d, _wgslsmith_mult_i32(u_input.b, -u_input.c.x)), 0u));
    var_0 = func_6(!(!(!select(vec3<bool>(true, global1.a.x, true), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.a.x))), firstLeadingBit(vec3<u32>(~(~4294967295u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b, 0u), 0u), 61572u)), func_1(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b, 4294967295u), global1.b.x)), 1f), Struct_2(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(1000f))), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.d, var_0.a), vec4<i32>(6161i, u_input.d, -2147483647i, var_0.a)), select(var_0.a, min(-1i, var_0.a), all(global1.a))).x, _wgslsmith_mod_u32(1u, 29979u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1864f + -1143f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 337f) - -795f), -703f)) - vec3<f32>(1f, 1f, 1f));
    var_0 = func_6(!select(vec3<bool>(global1.a.x, true, global1.a.x), !select(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(false, global1.a.x, false), global1.a.x), !all(vec2<bool>(global1.a.x, global1.a.x))), abs(vec3<u32>(~min(0u, var_0.b), _wgslsmith_mult_u32(var_0.b, func_1(104742u, var_1.x).b.x), ~1013u)), func_5(Struct_1(vec3<i32>(var_0.a, -2185i, u_input.d) & countOneBits(vec3<i32>(u_input.c.x, u_input.b, u_input.c.x)), -vec3<i32>(var_0.a, var_0.a, u_input.d), select(select(vec3<bool>(false, global1.a.x, false), vec3<bool>(true, global1.a.x, global1.a.x), true), select(vec3<bool>(false, false, true), vec3<bool>(global1.a.x, true, true), vec3<bool>(false, global1.a.x, global1.a.x)), global1.a.x))), global2[_wgslsmith_index_u32(75953u, 25u)]);
    global1 = func_5(Struct_1(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 74317i) >> (global1.b.xzz % vec3<u32>(32u)), countOneBits(vec3<i32>(1i, -40060i, var_0.a))), vec3<i32>(u_input.c.x, reverseBits(var_0.a), 1i), select(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), !select(vec3<bool>(true, global1.a.x, global1.a.x), vec3<bool>(true, global1.a.x, false), vec3<bool>(global1.a.x, false, global1.a.x)), _wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(3913u, 1u, 78303u, 1u)) >= (global1.b.x & 123621u))));
    let var_2 = !select(true, all(vec4<bool>(global1.a.x, true, false, false)), true) || (~(u_input.c.x ^ -u_input.b) <= _wgslsmith_mod_i32(-22606i, _wgslsmith_div_i32(-30833i, u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(firstLeadingBit(-vec3<i32>(-22183i, u_input.d, var_0.a))), _wgslsmith_div_u32(countOneBits(~(u_input.a & 4294967295u)), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), var_1.x, _wgslsmith_div_f32(-328f, 951f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1011f, var_1.x, var_1.x) * vec4<f32>(-738f, -566f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_1.x, -805f, var_1.x))))))));
}

