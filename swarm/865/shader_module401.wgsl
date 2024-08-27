struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<i32>(17530i, 66754i, 22148i), vec2<f32>(414f, -300f), vec3<i32>(2147483647i, -1i, i32(-2147483648)), false, vec3<i32>(1i, i32(-2147483648), 24015i)), Struct_2(vec2<f32>(1039f, 150f)), Struct_2(vec2<f32>(-1967f, -1542f)), true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(vec3<i32>(-13858i, ~(~26012i), global0.a.a.x), vec2<f32>(1574f, _wgslsmith_f_op_f32(arg_1 + arg_1)), vec3<i32>(-2147483647i, global0.a.a.x, abs(arg_3.c.x)), global0.a.d, firstTrailingBit(global0.a.e));
    global0 = Struct_3(var_0, global0.c, global0.b, var_0.d);
    let var_1 = 16028u;
    let var_2 = arg_0;
    global0 = Struct_3(Struct_1(-vec3<i32>(12214i, -41271i, -2147483647i) | ~arg_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))), global0.a.c, false != (arg_0.x != var_0.d), reverseBits(global0.a.c)), global0.b, global0.c, false);
    return vec4<i32>(-1i) * -vec4<i32>(select(-1i, firstTrailingBit(48481i), true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2008i, -1i, 7137i), vec4<i32>(39197i, -92369i, global0.a.c.x, var_0.a.x)), countOneBits(0i | global0.a.a.x), arg_3.a.x);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = global0.a;
    let var_2 = arg_0.c.zy;
    let var_3 = Struct_5(global0.c.a, ~func_3(arg_0.c, arg_0.e.b.x, arg_0.b, arg_0.e), select(vec3<bool>(all(select(vec3<bool>(var_2.x, true, global0.d), arg_0.c, arg_0.c)), false, any(!vec3<bool>(false, true, global0.a.d))), vec3<bool>(true, arg_0.c.x, arg_2), !arg_0.c), select(!(!arg_0.e.d), true, true));
    var var_4 = ~firstLeadingBit(vec3<u32>(0u, u_input.a | _wgslsmith_mult_u32(arg_0.b, arg_0.b), reverseBits(~1u)));
    return arg_0.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_1(global0.a.e, global0.c.a, ~arg_0.a, !(((arg_3.x < 43876u) & true) != true), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), arg_1.a.a.xx), _wgslsmith_div_i32(-(~(-28807i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.a.a.x, -50911i), ~global0.a.a.x)), func_2(Struct_4(arg_1.a.b.x, ~arg_2.x, !vec3<bool>(false, false, arg_0.d), arg_1.c, func_2(Struct_4(global0.c.a.x, 9794u, vec3<bool>(false, arg_0.d, false), global0.b, Struct_1(vec3<i32>(2147483647i, global0.a.e.x, arg_0.a.x), vec2<f32>(-1011f, arg_0.b.x), global0.a.c, false, vec3<i32>(1i, arg_0.c.x, 18624i))), 3425u, true, vec3<f32>(-316f, arg_0.b.x, arg_1.c.a.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, 0u, 915u, u_input.a), vec4<u32>(2251u, arg_3.x, 5647u, 1u)), vec4<u32>(arg_2.x, arg_2.x, u_input.a, 4294967295u) << (vec4<u32>(6378u, 1u, 28725u, 70603u) % vec4<u32>(32u))), true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -560f), -603f, _wgslsmith_f_op_f32(global0.c.a.x - arg_1.b.a.x))).a.x));
    global0 = Struct_3(arg_0, Struct_2(_wgslsmith_f_op_vec2_f32(arg_1.c.a + _wgslsmith_f_op_vec2_f32(global0.b.a - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1171f, -921f)))))), arg_1.b, !(!(arg_1.a.d & false) || global0.d));
    let var_1 = select(!select(!select(vec4<bool>(false, arg_0.d, arg_1.d, false), vec4<bool>(true, arg_0.d, arg_1.a.d, false), vec4<bool>(true, arg_1.d, var_0.d, true)), vec4<bool>(true, arg_0.d, any(vec3<bool>(true, true, false)), var_0.d), false), !select(select(select(vec4<bool>(true, var_0.d, true, false), vec4<bool>(true, true, true, global0.a.d), true), vec4<bool>(false, true, arg_0.d, true), select(vec4<bool>(arg_0.d, true, arg_0.d, global0.a.d), vec4<bool>(false, false, false, arg_0.d), arg_1.a.d)), select(!vec4<bool>(global0.a.d, global0.d, false, false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, arg_1.d, false, global0.d), vec4<bool>(true, arg_1.a.d, false, arg_0.d), true)), select(select(vec4<bool>(false, true, arg_1.a.d, true), vec4<bool>(arg_1.d, arg_1.d, true, true), true), select(vec4<bool>(arg_1.d, var_0.d, var_0.d, arg_1.d), vec4<bool>(arg_1.d, arg_0.d, arg_0.d, true), vec4<bool>(false, true, true, false)), true)), func_2(Struct_4(_wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(floor(arg_1.b.a.x))), firstLeadingBit(12299u), vec3<bool>(false, !var_0.d, false), global0.c, func_2(Struct_4(1000f, arg_3.x, vec3<bool>(var_0.d, var_0.d, true), Struct_2(vec2<f32>(-216f, -1045f)), arg_1.a), arg_2.x ^ arg_2.x, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, -1143f, -956f)))), min(firstTrailingBit(25423u), u_input.a), (_wgslsmith_div_f32(var_0.b.x, 258f) < arg_0.b.x) && !all(vec4<bool>(false, arg_0.d, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - arg_1.b.a.x), _wgslsmith_f_op_f32(max(arg_0.b.x, -1000f)), _wgslsmith_f_op_f32(-arg_0.b.x)))).d);
    let var_2 = abs(~vec3<u32>(max(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(45892u, 35790u, 17396u), vec3<u32>(arg_3.x, 27728u, arg_3.x))), ~0u, 32829u));
    var_0 = global0.a;
    return Struct_4(_wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(max(arg_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))))), 40987u, var_1.xwy, arg_1.c, func_2(Struct_4(-962f, u_input.a, select(var_1.yyx, var_1.yww, vec3<bool>(true, false, arg_0.d)), global0.c, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 9603i, 1i), vec3<i32>(-27021i, -44096i, -1i)), vec2<f32>(576f, 285f), -vec3<i32>(2147483647i, 2147483647i, arg_1.a.e.x), all(vec4<bool>(false, true, var_0.d, global0.a.d)), ~arg_0.c)), _wgslsmith_dot_vec3_u32((var_2 | var_2) | max(vec3<u32>(1u, 5189u, u_input.a), var_2), min(~var_2, var_2)), !var_0.d, _wgslsmith_div_vec3_f32(vec3<f32>(552f, global0.c.a.x, -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-628f, 1000f, -781f), vec3<f32>(arg_1.a.b.x, arg_1.c.a.x, -1726f), arg_0.d)) - vec3<f32>(661f, arg_0.b.x, global0.c.a.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_3) -> Struct_5 {
    global0 = Struct_3(func_4(func_4(Struct_1(-vec3<i32>(arg_0.e.a.x, arg_1.b.x, 1i), vec2<f32>(-901f, -2029f), abs(arg_1.b.zwy), arg_1.c.x, global0.a.a), arg_2, vec2<u32>(func_4(arg_2.a, arg_2, vec2<u32>(arg_0.b, u_input.a), vec2<u32>(u_input.a, 72106u)).b, _wgslsmith_add_u32(arg_0.b, 10034u)), ~vec2<u32>(58389u, arg_0.b) >> (vec2<u32>(arg_0.b, 89772u) % vec2<u32>(32u))).e, arg_2, _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, arg_0.b), abs(vec2<u32>(66727u, arg_0.b))), ~firstLeadingBit(vec2<u32>(26936u, 46877u))), abs(~vec2<u32>(13784u, 126109u))).e, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.b + _wgslsmith_f_op_vec2_f32(vec2<f32>(274f, arg_0.d.a.x) + vec2<f32>(631f, arg_1.a.x))))), global0.b, true & !arg_2.d);
    global0 = Struct_3(Struct_1(vec3<i32>(56777i >> (u_input.a % 32u), i32(-1i) * -1i, 9963i | _wgslsmith_mult_i32(global0.a.c.x, 26912i)), arg_0.d.a, abs(abs(vec3<i32>(-57487i, -2147483647i, arg_1.b.x))), arg_0.e.d, vec3<i32>((arg_0.e.e.x & 2147483647i) & arg_1.b.x, global0.a.a.x, ~arg_1.b.x)), func_4(func_4(Struct_1(global0.a.a, vec2<f32>(295f, arg_1.a.x), _wgslsmith_mult_vec3_i32(arg_0.e.e, vec3<i32>(arg_2.a.e.x, global0.a.e.x, arg_0.e.a.x)), true, -arg_2.a.e), arg_2, vec2<u32>(~56728u, 39497u), vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.b), vec2<u32>(0u, arg_0.b)))).e, Struct_3(func_2(arg_0, arg_0.b, true, vec3<f32>(138f, global0.c.a.x, -1895f)), func_4(global0.a, Struct_3(Struct_1(vec3<i32>(global0.a.e.x, arg_2.a.e.x, arg_0.e.a.x), arg_2.a.b, vec3<i32>(-2147483647i, -2147483647i, 20243i), arg_1.d, arg_0.e.a), arg_0.d, arg_2.b, global0.d), ~vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(0u, arg_0.b)).d, Struct_2(arg_0.e.b), u_input.a != _wgslsmith_mult_u32(arg_0.b, arg_0.b)), select(vec2<u32>(arg_0.b, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b, u_input.a), vec2<u32>(u_input.a, 5620u)), all(vec4<bool>(false, false, false, false))) & abs(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b, 58438u), vec2<u32>(u_input.a, 0u))), vec2<u32>(abs(arg_0.b & arg_0.b), ~(~21836u))).d, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(500f, 449f), _wgslsmith_f_op_vec2_f32(min(arg_1.a, arg_1.a)))))), all(vec3<bool>(false, (arg_0.b | 1102u) <= reverseBits(u_input.a), global0.a.d)));
    var var_0 = min(arg_1.b.zzz, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(arg_0.e.c.x, -2147483647i, global0.a.c.x), arg_2.a.c), _wgslsmith_add_vec3_i32(arg_0.e.a, vec3<i32>(global0.a.a.x, arg_2.a.e.x, global0.a.a.x))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.e.x, arg_2.a.a.x, 1i), arg_2.a.c)), -2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.a.e.x), min(arg_0.e.a.yx, vec2<i32>(global0.a.a.x, arg_2.a.a.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, 625f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a.x, -1969f, 623f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-669f, global0.b.a.x, 170f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.d.a.x, global0.a.b.x)))))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.d.a.x, 1583f), vec2<f32>(global0.b.a.x, arg_2.c.a.x)))), vec2<f32>(arg_0.a, arg_2.b.a.x), select(vec2<bool>(true, true), vec2<bool>(arg_2.a.d, arg_0.e.d), arg_0.c.yz))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(17297i, 19905i, 20706i), vec3<i32>(0i, -1i, 2701i)) & -24171i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.a.c.x, var_0.x), var_0.zy, arg_1.d), vec2<i32>(arg_2.a.e.x, 1i) << (vec2<u32>(arg_0.b, u_input.a) % vec2<u32>(32u)))), -1i, var_0.x, global0.a.e.x), select(vec3<bool>(true, false, arg_2.d), vec3<bool>(arg_0.e.d, arg_0.c.x, arg_1.c.x), !(!vec3<bool>(false, global0.d, arg_1.d))), true);
    return Struct_5(arg_1.a, abs(var_2.b) ^ arg_1.b, !var_2.c, false || !var_2.c.x);
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: u32) -> Struct_1 {
    global0 = Struct_3(Struct_1(vec3<i32>(arg_2.b.x, countOneBits(~global0.a.c.x), arg_0), _wgslsmith_f_op_vec2_f32(-func_5(Struct_4(arg_2.a.x, u_input.a, arg_2.c, global0.c, global0.a), Struct_5(global0.c.a, vec4<i32>(global0.a.a.x, -2147483647i, -62260i, global0.a.a.x), arg_2.c, false), Struct_3(Struct_1(vec3<i32>(global0.a.e.x, 0i, global0.a.c.x), global0.b.a, global0.a.c, global0.d, global0.a.e), Struct_2(vec2<f32>(global0.a.b.x, -393f)), Struct_2(vec2<f32>(arg_1.x, -1503f)), global0.a.d)).a), global0.a.e, all(vec4<bool>(false, !arg_2.d, false, true)), vec3<i32>(arg_0, -1i, _wgslsmith_div_i32(arg_0 >> (36417u % 32u), firstTrailingBit(-52099i)))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 938f))), _wgslsmith_f_op_f32(max(-2267f, _wgslsmith_f_op_f32(-2567f + -1250f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(Struct_4(2479f, u_input.a, arg_2.c, Struct_2(vec2<f32>(global0.b.a.x, 182f)), Struct_1(arg_2.b.wxy, vec2<f32>(arg_2.a.x, -359f), vec3<i32>(arg_2.b.x, -77417i, 2859i), true, global0.a.e)), u_input.a, arg_2.c.x, arg_1).b.x, 492f))), false);
    var var_0 = select(select(select(select(!vec4<bool>(false, true, global0.d, false), select(vec4<bool>(true, true, true, global0.a.d), vec4<bool>(false, true, arg_2.d, global0.d), vec4<bool>(global0.a.d, true, global0.d, false)), vec4<bool>(false, global0.a.d, global0.d, global0.a.d)), vec4<bool>(false, false, !arg_2.d, !global0.d), vec4<bool>(true, arg_2.b.x < -1i, any(vec4<bool>(global0.d, true, arg_2.c.x, false)), u_input.a <= 0u)), !vec4<bool>(arg_0 <= global0.a.a.x, !arg_2.c.x, global0.d, false), select(select(select(vec4<bool>(arg_2.d, false, arg_2.d, global0.a.d), vec4<bool>(false, global0.a.d, false, true), vec4<bool>(true, false, arg_2.c.x, global0.a.d)), vec4<bool>(global0.a.d, false, global0.a.d, global0.a.d), select(vec4<bool>(arg_2.c.x, arg_2.c.x, false, arg_2.c.x), vec4<bool>(true, true, arg_2.d, false), false)), !(!vec4<bool>(arg_2.d, global0.a.d, false, global0.a.d)), false)), vec4<bool>(all(arg_2.c), true, false, global0.d), vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(global0.d, arg_2.d), arg_2.c.zy)), global0.a.d, true, arg_2.d));
    var_0 = !select(select(select(!vec4<bool>(global0.a.d, var_0.x, var_0.x, arg_2.d), vec4<bool>(false, false, true, arg_2.c.x), arg_2.d), select(!vec4<bool>(var_0.x, true, arg_2.d, arg_2.c.x), select(vec4<bool>(true, false, true, true), vec4<bool>(global0.a.d, false, true, arg_2.d), vec4<bool>(false, arg_2.c.x, arg_2.c.x, false)), select(vec4<bool>(true, true, global0.a.d, global0.d), vec4<bool>(true, global0.a.d, var_0.x, true), vec4<bool>(true, arg_2.c.x, global0.d, false))), true), vec4<bool>(func_2(Struct_4(arg_2.a.x, u_input.a, var_0.ywy, Struct_2(vec2<f32>(1000f, arg_2.a.x)), Struct_1(vec3<i32>(-242i, arg_0, 9666i), vec2<f32>(326f, arg_1.x), arg_2.b.xwx, var_0.x, vec3<i32>(4066i, arg_2.b.x, -18205i))), arg_3, arg_2.c.x, vec3<f32>(169f, 1016f, arg_1.x)).d & !global0.d, false, func_5(func_4(global0.a, Struct_3(global0.a, global0.b, Struct_2(vec2<f32>(arg_1.x, global0.c.a.x)), arg_2.c.x), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_3, arg_3)), Struct_5(arg_1.xz, arg_2.b, var_0.wxx, arg_2.d), Struct_3(Struct_1(global0.a.a, vec2<f32>(arg_1.x, -606f), vec3<i32>(-2147483647i, -1i, 22526i), global0.a.d, global0.a.c), Struct_2(arg_2.a), global0.c, true)).c.x, arg_2.d), false);
    let var_1 = u_input.a;
    let var_2 = Struct_3(func_2(Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.b.a.x)), _wgslsmith_f_op_f32(1000f - -434f))), min(abs(42581u), 1u), var_0.wzy, Struct_2(arg_2.a), Struct_1(-vec3<i32>(13223i, 1i, global0.a.a.x), _wgslsmith_f_op_vec2_f32(-arg_2.a), vec3<i32>(-20439i, global0.a.a.x, 0i), true, vec3<i32>(arg_0, 17398i, arg_0) << (vec3<u32>(18966u, 32315u, u_input.a) % vec3<u32>(32u)))), min(~firstLeadingBit(4294967295u), arg_3), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1026f, 1165f, -708f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1409f, 1185f) + arg_1)), arg_1, func_5(func_4(global0.a, Struct_3(Struct_1(global0.a.e, arg_2.a, global0.a.a, true, vec3<i32>(0i, arg_0, arg_0)), global0.b, global0.c, global0.a.d), vec2<u32>(var_1, arg_3), vec2<u32>(u_input.a, 0u)), arg_2, Struct_3(Struct_1(global0.a.a, arg_2.a, vec3<i32>(32747i, -1i, -41901i), global0.d, vec3<i32>(-18310i, arg_2.b.x, 1i)), Struct_2(global0.a.b), Struct_2(global0.b.a), true)).d))), global0.c, global0.b, false);
    return Struct_1(arg_2.b.zyx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(func_5(func_4(Struct_1(vec3<i32>(var_2.a.a.x, -45900i, var_2.a.e.x), vec2<f32>(621f, 1649f), vec3<i32>(9006i, 1i, arg_2.b.x), false, arg_2.b.wyz), Struct_3(var_2.a, Struct_2(arg_1.zz), Struct_2(vec2<f32>(154f, arg_1.x)), arg_2.d), vec2<u32>(var_1, 4294967295u), vec2<u32>(arg_3, 1u)), func_5(Struct_4(-113f, 79315u, vec3<bool>(false, arg_2.d, true), var_2.c, global0.a), Struct_5(vec2<f32>(-120f, var_2.c.a.x), vec4<i32>(arg_2.b.x, var_2.a.e.x, 0i, 14735i), arg_2.c, var_2.d), var_2), var_2).a)) * _wgslsmith_f_op_vec2_f32(-func_4(var_2.a, var_2, vec2<u32>(48350u, var_1), select(vec2<u32>(arg_3, 18909u), vec2<u32>(22088u, var_1), vec2<bool>(arg_2.d, arg_2.d))).e.b)), vec3<i32>(arg_0, -1i, arg_0), !func_5(func_4(func_4(Struct_1(arg_2.b.wyy, vec2<f32>(-776f, arg_1.x), vec3<i32>(-33769i, var_2.a.e.x, -2147483647i), false, vec3<i32>(arg_0, global0.a.c.x, arg_0)), var_2, vec2<u32>(var_1, 0u), vec2<u32>(5799u, 48485u)).e, Struct_3(Struct_1(arg_2.b.xxx, vec2<f32>(global0.a.b.x, 148f), vec3<i32>(var_2.a.c.x, 52158i, -10446i), var_0.x, vec3<i32>(20252i, 2147483647i, -25286i)), Struct_2(global0.b.a), var_2.c, true), ~vec2<u32>(arg_3, 38631u), ~vec2<u32>(38202u, 69269u)), func_5(func_4(var_2.a, Struct_3(Struct_1(vec3<i32>(-17087i, -1i, -33314i), global0.c.a, vec3<i32>(arg_0, -13012i, 44340i), false, var_2.a.e), Struct_2(global0.c.a), Struct_2(var_2.b.a), true), vec2<u32>(4294967295u, 0u), vec2<u32>(arg_3, arg_3)), arg_2, var_2), var_2).d, var_2.a.c);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = Struct_3(func_6(-(arg_0.a.x & -global0.a.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b.x, 413f, 251f)) * vec3<f32>(-616f, global0.c.a.x, arg_0.b.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a.x, global0.a.b.x, 501f)), _wgslsmith_div_vec3_f32(vec3<f32>(-147f, global0.c.a.x, -271f), vec3<f32>(-935f, global0.a.b.x, arg_0.b.x)), arg_0.d))), func_5(func_4(func_2(Struct_4(arg_0.b.x, u_input.a, vec3<bool>(global0.d, true, arg_0.d), Struct_2(vec2<f32>(899f, 1000f)), arg_0), u_input.a, arg_0.d, vec3<f32>(-248f, arg_0.b.x, arg_0.b.x)), Struct_3(Struct_1(vec3<i32>(0i, global0.a.a.x, 18970i), global0.b.a, vec3<i32>(arg_0.c.x, 8142i, -19328i), false, vec3<i32>(global0.a.c.x, -24060i, global0.a.a.x)), Struct_2(arg_0.b), global0.b, false), vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 27112u)), Struct_5(vec2<f32>(1274f, -939f), vec4<i32>(11664i, -12801i, arg_0.a.x, arg_0.c.x), select(vec3<bool>(arg_0.d, global0.d, false), vec3<bool>(global0.d, global0.a.d, global0.a.d), global0.d), all(vec3<bool>(true, arg_0.d, global0.d))), Struct_3(Struct_1(vec3<i32>(-1i, global0.a.a.x, global0.a.e.x), vec2<f32>(1503f, global0.a.b.x), global0.a.c, arg_0.d, vec3<i32>(global0.a.c.x, -1i, -2147483647i)), func_4(arg_0, Struct_3(Struct_1(vec3<i32>(1i, global0.a.c.x, arg_0.a.x), vec2<f32>(global0.b.a.x, 435f), arg_0.c, global0.d, arg_0.a), global0.c, Struct_2(global0.b.a), arg_0.d), vec2<u32>(13377u, 6524u), vec2<u32>(u_input.a, u_input.a)).d, Struct_2(vec2<f32>(global0.c.a.x, global0.a.b.x)), !global0.a.d)), ~u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.a * global0.b.a) + global0.c.a) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a.b.x, -206f))))), func_4(arg_0, Struct_3(Struct_1(vec3<i32>(-2147483647i, global0.a.e.x, -6769i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1170f, -1698f) * global0.b.a), vec3<i32>(0i, 33521i, global0.a.e.x), true, vec3<i32>(-2147483647i, global0.a.e.x, arg_0.c.x)), Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.b)), global0.c, true), ~vec2<u32>(~u_input.a, 1u), ~(~vec2<u32>(u_input.a, 11811u))).d, select(global0.a.c.x == 1i, true, all(vec2<bool>(true || global0.a.d, true))));
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 23449u, u_input.a), ~vec3<u32>(u_input.a, 4294967295u, 0u)), ~u_input.a);
    global0 = Struct_3(global0.a, global0.b, global0.c, func_2(func_4(func_2(Struct_4(arg_0.b.x, u_input.a, vec3<bool>(false, false, false), Struct_2(global0.b.a), Struct_1(arg_0.a, arg_0.b, arg_0.e, arg_0.d, vec3<i32>(global0.a.e.x, 19234i, global0.a.c.x))), var_0.x, !arg_0.d, _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 2260f, global0.c.a.x), vec3<f32>(arg_0.b.x, -487f, 1000f))), Struct_3(Struct_1(global0.a.c, arg_0.b, arg_0.e, arg_0.d, arg_0.a), global0.b, func_4(Struct_1(vec3<i32>(arg_0.e.x, global0.a.e.x, global0.a.e.x), vec2<f32>(arg_0.b.x, arg_0.b.x), arg_0.e, arg_0.d, vec3<i32>(0i, arg_0.c.x, arg_0.c.x)), Struct_3(Struct_1(global0.a.c, vec2<f32>(-898f, global0.c.a.x), vec3<i32>(global0.a.c.x, global0.a.a.x, arg_0.c.x), global0.d, arg_0.c), global0.b, global0.b, true), var_0, var_0).d, global0.a.d | global0.d), vec2<u32>(min(4294967295u, var_0.x), 46951u), ~(~vec2<u32>(1u, var_0.x))), countOneBits(~(u_input.a & 4294967295u)), arg_0.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1202f, global0.a.b.x, -354f))))))).d);
    global0 = Struct_3(arg_0, func_4(func_6(countOneBits(arg_0.e.x), vec3<f32>(1987f, _wgslsmith_div_f32(global0.a.b.x, global0.b.a.x), -1523f), Struct_5(func_2(Struct_4(arg_0.b.x, 26427u, vec3<bool>(arg_0.d, arg_0.d, global0.d), Struct_2(vec2<f32>(global0.c.a.x, -371f)), Struct_1(global0.a.a, arg_0.b, vec3<i32>(0i, -1i, -14265i), arg_0.d, global0.a.c)), 1u, false, vec3<f32>(1000f, global0.c.a.x, arg_0.b.x)).b, abs(vec4<i32>(global0.a.a.x, -44555i, arg_0.c.x, arg_0.e.x)), !vec3<bool>(global0.d, global0.d, true), any(vec2<bool>(arg_0.d, true))), abs(1u)), Struct_3(global0.a, func_4(Struct_1(vec3<i32>(global0.a.c.x, -40974i, global0.a.c.x), global0.b.a, vec3<i32>(-2147483647i, 3818i, global0.a.a.x), arg_0.d, vec3<i32>(3005i, -38069i, 1i)), Struct_3(Struct_1(arg_0.c, vec2<f32>(496f, global0.a.b.x), arg_0.a, global0.a.d, vec3<i32>(arg_0.a.x, -38622i, 32028i)), global0.b, Struct_2(arg_0.b), global0.a.d), var_0 & var_0, select(var_0, var_0, false)).d, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(281f, global0.c.a.x) - vec2<f32>(global0.b.a.x, arg_0.b.x))), arg_0.d), var_0, _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.a, 77056u), ~var_0, true), var_0)).d, global0.b, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(316f))) <= global0.b.a.x));
    var var_1 = abs(select(~var_0, select(vec2<u32>(countOneBits(4294967295u), 55140u), ~countOneBits(var_0), vec2<bool>(true, true)), true));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-global0.a.e);
    let var_1 = Struct_1(select(min(min(~vec3<i32>(52323i, var_0.x, global0.a.e.x), vec3<i32>(1i, -18272i, global0.a.e.x)), _wgslsmith_sub_vec3_i32(global0.a.c, vec3<i32>(37355i, 40996i, 0i) ^ global0.a.e)), global0.a.c, any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x + -534f) + global0.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2335f * global0.a.b.x) * 755f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.c.a.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.a.x, -1600f) - vec2<f32>(global0.b.a.x, global0.c.a.x)))))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(25565i, _wgslsmith_mod_i32(1i, var_0.x)), -(~global0.a.c.x)), -2147483647i, -1i), global0.a.d, vec3<i32>(global0.a.a.x, min(~(-var_0.x), ~var_0.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, global0.a.e.x, -53160i), -vec4<i32>(var_0.x, global0.a.a.x, global0.a.c.x, 1i)) | -select(global0.a.c.x, -21348i, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a >> (42510u % 32u), func_1(Struct_1(global0.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.x, -737f)), global0.a.e | vec3<i32>(var_0.x, var_0.x, -23015i), global0.d, var_1.c))), u_input.a, vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f) - 315f)), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(45668u, min(~30950u, u_input.a)), u_input.a));
}

