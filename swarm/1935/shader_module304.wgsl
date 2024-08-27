struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(-1821f, 610f, 285f, 613f);

var<private> global2: Struct_2 = Struct_2(false, vec3<i32>(-6629i, i32(-2147483648), 0i));

var<private> global3: array<vec4<bool>, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    global2 = Struct_2(!global0.b.x && arg_1.b.x, -(reverseBits(vec3<i32>(u_input.c.x, -41728i, 7637i)) << (min(vec3<u32>(1u, global0.a, arg_1.a) >> (vec3<u32>(5624u, arg_1.a, u_input.b) % vec3<u32>(32u)), vec3<u32>(u_input.b, 65731u, global0.a)) % vec3<u32>(32u))));
    var var_0 = Struct_2(false, -(~vec3<i32>(_wgslsmith_clamp_i32(90i, 1i, global2.b.x), max(u_input.d.x, -32676i), ~(-2147483647i))));
    var var_1 = u_input.c;
    let var_2 = Struct_1(4294967295u, global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, -607f, -1070f, 496f))))));
    let var_3 = var_2;
    return 4294967295u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, -1i), -(~arg_1.x)), abs(1i));
    let var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(countOneBits(global0.a), min(84601u, ~u_input.b)), countOneBits(vec2<u32>(_wgslsmith_sub_u32(1u, func_3(0i, arg_2)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a, arg_2.a, global0.a), vec3<u32>(global0.a, u_input.b, 31628u)), abs(vec3<u32>(global0.a, 50270u, global0.a))))));
    let var_2 = !all(select(vec2<bool>(!global2.a, any(global3[_wgslsmith_index_u32(110988u, 11u)])), select(vec2<bool>(false, global2.a), arg_2.b, global2.a), !vec2<bool>(global2.a, global2.a)));
    var var_3 = arg_2;
    var var_4 = Struct_1(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 50105u, var_1.x)) ^ ~vec3<u32>(31068u, var_1.x, arg_2.a), ~(~vec3<u32>(var_1.x, var_1.x, 4294967295u))), vec2<bool>(!global0.b.x, all(select(vec3<bool>(false, var_2, false), select(vec3<bool>(arg_2.b.x, true, false), vec3<bool>(arg_2.b.x, true, global2.a), global2.a), vec3<bool>(arg_2.b.x, global0.b.x, false)))), global0.c);
    return ~(~(~(1u & var_1.x)) << (global0.a % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = 1i;
    let var_1 = global0.b.x;
    global2 = Struct_2(true, vec3<i32>(~select(u_input.c.x, global2.b.x, global0.b.x), -abs(2147483647i), abs(u_input.c.x >> (0u % 32u))) << (~(~vec3<u32>(u_input.b, u_input.b, 9438u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global2.b.x, ~_wgslsmith_add_i32(1i, global2.b.x)), ~(i32(-1i) * -36924i) ^ arg_0.x, _wgslsmith_div_i32(abs(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(1i, arg_0.x, global2.b.x, u_input.d.x))), countOneBits(~global2.b.x)), u_input.a.x), u_input.c);
    var var_3 = 47606u;
    return Struct_1(~(4294967295u & u_input.b), select(!global0.b, select(vec2<bool>(u_input.a.x == 0i, all(vec4<bool>(global0.b.x, global0.b.x, global2.a, global0.b.x))), global0.b, !global0.b), select(global0.b, !global0.b, global0.b.x)), global0.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_1 {
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(u_input.b, func_4(global2.b.xy, _wgslsmith_div_u32(arg_0.a, u_input.b)).b, vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.x)))), -875f, _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(max(-383f, -1000f)))));
    let var_0 = _wgslsmith_sub_u32(arg_1.x, ~0u | ~_wgslsmith_sub_u32(arg_0.a, arg_1.x));
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1698f))), global1.x, _wgslsmith_f_op_f32(min(global0.c.x, -1176f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.c))))));
    global1 = _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(global0.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-969f, _wgslsmith_f_op_f32(min(global0.c.x, 905f))), func_4(reverseBits(global2.b.zx), 9678u).c.x), 493f, 1359f));
    var var_1 = ~arg_1;
    return Struct_1(~(~var_1.x), arg_0.b, _wgslsmith_f_op_vec4_f32(round(arg_0.c)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = func_6(func_5(arg_2, _wgslsmith_sub_vec3_i32(u_input.c.yzy, -(~u_input.a)), vec4<bool>(var_0.a, !(true && global0.b.x), !(arg_1.a || false), true)), abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 1u), vec2<u32>(59815u, u_input.b)), vec2<u32>(global0.a, 1u)) ^ ~vec2<u32>(u_input.b, 4943u))).b.x;
    let var_2 = arg_0;
    var var_3 = 17250i;
    let var_4 = _wgslsmith_f_op_f32(-global0.c.x);
    return Struct_2(func_5(arg_2, firstLeadingBit(vec3<i32>(arg_0.b.x, -2147483647i, u_input.c.x) | vec3<i32>(2147483647i, u_input.c.x, -1i)), select(global3[_wgslsmith_index_u32(max(84769u, 1u), 11u)], select(vec4<bool>(false, false, arg_0.a, arg_2.b.x), select(global3[_wgslsmith_index_u32(u_input.b, 11u)], vec4<bool>(var_1, global0.b.x, global0.b.x, false), vec4<bool>(var_0.a, true, false, global0.b.x)), global3[_wgslsmith_index_u32(abs(arg_2.a), 11u)]), !(!vec4<bool>(false, false, var_1, global2.a)))).b.x, select(-vec3<i32>(-12215i, _wgslsmith_clamp_i32(global2.b.x, -83611i, 30192i), var_0.b.x), -vec3<i32>(1i, abs(-34107i), -u_input.a.x), true));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global2 = func_7(Struct_2(true, u_input.a), Struct_2(!global2.a, vec3<i32>(-arg_0.x ^ u_input.c.x, global2.b.x, arg_0.x)), func_6(func_5(func_4(_wgslsmith_div_vec2_i32(vec2<i32>(12614i, arg_0.x), global2.b.zx), func_2(arg_0.xww, global2.b.zy, Struct_1(0u, global0.b, vec4<f32>(global1.x, global0.c.x, 1045f, global1.x)))), ~vec3<i32>(u_input.d.x, u_input.a.x, arg_0.x), !select(vec4<bool>(global2.a, global0.b.x, global0.b.x, global2.a), vec4<bool>(global0.b.x, global0.b.x, global2.a, true), global2.a)), vec2<u32>(4294967295u, 103024u)));
    let var_0 = select(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(~(~min(0u, firstLeadingBit(1u))), 11u)], !global3[_wgslsmith_index_u32(~64282u, 11u)]);
    let var_1 = Struct_1(func_2(_wgslsmith_mult_vec3_i32(-(~arg_0.wxy), vec3<i32>(global2.b.x | 0i, select(u_input.c.x, 0i, global2.a), u_input.d.x)), global2.b.zz, func_6(func_4(-vec2<i32>(arg_0.x, -1i), _wgslsmith_mult_u32(global0.a, 78920u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, 76312u), _wgslsmith_div_vec2_u32(vec2<u32>(14792u, 0u), vec2<u32>(4294967295u, 34076u))))), vec2<bool>(global0.b.x, u_input.b > global0.a), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), func_4(-vec2<i32>(arg_0.x, global2.b.x), _wgslsmith_mod_u32(~global0.a, global0.a)).c.x, 292f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -317f), global2.a)), _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(621f * global0.c.x))))));
    global2 = Struct_2(func_6(var_1, vec2<u32>(~4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.a, global0.a), vec3<u32>(global0.a, u_input.b, 4294967295u)), u_input.b)).b.x, abs(max(~(u_input.a ^ vec3<i32>(global2.b.x, -1i, -46302i)), -vec3<i32>(-2147483647i, 0i, -22404i))));
    var var_2 = arg_0.yx;
    return func_5(func_4(-arg_0.yw >> (_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.a, 32359u), vec2<u32>(15379u, u_input.b) << (vec2<u32>(66263u, global0.a) % vec2<u32>(32u))) % vec2<u32>(32u)), func_4((vec2<i32>(15082i, u_input.d.x) | global2.b.yy) ^ vec2<i32>(u_input.d.x, -17591i), global0.a >> (~9939u % 32u)).a), vec3<i32>(_wgslsmith_add_i32(global2.b.x >> (global0.a % 32u), -9945i) << (select(_wgslsmith_clamp_u32(global0.a, 4294967295u, 5031u), 0u, false | var_0.x) % 32u), arg_0.x ^ _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x, -2147483647i), var_2.x), func_7(func_7(Struct_2(false, global2.b), Struct_2(var_0.x, global2.b), func_6(Struct_1(70731u, global0.b, vec4<f32>(global0.c.x, 267f, global0.c.x, global0.c.x)), vec2<u32>(1652u, u_input.b))), Struct_2(global0.a == 4294967295u, ~vec3<i32>(var_2.x, arg_0.x, 0i)), var_1).b.x), vec4<bool>(!var_1.b.x, global0.c.x != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1054f, var_1.c.x)), func_7(func_7(func_7(Struct_2(true, vec3<i32>(2147483647i, 1i, arg_0.x)), Struct_2(true, vec3<i32>(global2.b.x, var_2.x, -25539i)), Struct_1(var_1.a, global0.b, vec4<f32>(1114f, 384f, -821f, -1334f))), Struct_2(true, arg_0.wyw), Struct_1(103632u, vec2<bool>(true, true), vec4<f32>(var_1.c.x, var_1.c.x, -661f, global0.c.x))), Struct_2(true, vec3<i32>(-2147483647i, -2147483647i, 2147483647i)), Struct_1(func_3(2147483647i, Struct_1(9222u, vec2<bool>(true, true), global0.c)), !vec2<bool>(false, var_1.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(236f, -234f, 682f, global1.x) * var_1.c))).a, !var_0.x)).a;
}

fn func_8(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_7(func_7(Struct_2(true, global2.b), arg_2, Struct_1(arg_1.x, vec2<bool>(global0.b.x, any(global0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c - global0.c), _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(global1.x, global0.c.x, global0.c.x, 374f))))), func_7(func_7(func_7(func_7(arg_2, Struct_2(global2.a, vec3<i32>(arg_2.b.x, u_input.d.x, global2.b.x)), Struct_1(arg_1.x, global0.b, global0.c)), arg_2, Struct_1(global0.a, vec2<bool>(arg_2.a, global0.b.x), global0.c)), arg_2, Struct_1(~4294967295u, select(global0.b, global0.b, vec2<bool>(false, global2.a)), vec4<f32>(global0.c.x, -416f, 588f, -870f))), arg_2, func_6(Struct_1(4294967295u >> (arg_0.x % 32u), !global0.b, vec4<f32>(-1946f, global0.c.x, -218f, global1.x)), ~vec2<u32>(0u, 28792u))), Struct_1(arg_1.x, !(!select(global0.b, global0.b, global0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1000f, global1.x, global1.x) - global0.c)))))).a;
    let var_1 = func_7(arg_2, func_7(Struct_2((0i == arg_2.b.x) != any(global3[_wgslsmith_index_u32(75802u, 11u)]), vec3<i32>(-10399i, arg_2.b.x, -7105i) ^ select(vec3<i32>(-2147483647i, arg_2.b.x, -7216i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), true)), arg_2, func_6(Struct_1(max(arg_1.x, arg_0.x), vec2<bool>(arg_2.a, false), _wgslsmith_div_vec4_f32(global0.c, global0.c)), reverseBits(~vec2<u32>(0u, 32462u)))), func_5(func_5(func_4(abs(global2.b.yy), 1u), global2.b, select(!global3[_wgslsmith_index_u32(arg_0.x, 11u)], select(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], global2.a), vec4<bool>(false, global0.b.x, true, true))), global2.b, vec4<bool>(global2.a, false, true, true)));
    let var_2 = func_5(Struct_1(1u, func_5(func_6(func_4(arg_2.b.zz, arg_1.x), ~arg_1.xy), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.b.x, u_input.a.x), vec3<i32>(var_1.b.x, global2.b.x, -1i)), global3[_wgslsmith_index_u32(reverseBits(countOneBits(1566u)), 11u)]).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c * global0.c) * global0.c)), abs(vec3<i32>(0i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, 1i), var_1.b.yx)), var_1.b.x)), !vec4<bool>(any(select(global0.b, global0.b, false)), func_5(func_6(Struct_1(58287u, vec2<bool>(global2.a, var_1.a), global0.c), arg_0.zy), arg_2.b, !vec4<bool>(arg_2.a, false, true, true)).b.x, global0.b.x, !var_1.a));
    var var_3 = vec2<i32>(33073i, u_input.d.x);
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(550f)), global0.c.x, 802f, -270f))));
    return func_7(Struct_2(true, -var_1.b), func_7(func_7(func_7(func_7(Struct_2(false, vec3<i32>(0i, 0i, u_input.d.x)), Struct_2(true, u_input.a), Struct_1(4294967295u, vec2<bool>(var_2.b.x, var_1.a), vec4<f32>(-1599f, global0.c.x, 697f, -1884f))), Struct_2(global2.a, arg_2.b), func_4(vec2<i32>(var_3.x, var_1.b.x), u_input.b)), var_1, Struct_1(arg_1.x, func_6(var_2, arg_1.yy).b, vec4<f32>(207f, global1.x, -1000f, -740f))), func_7(var_1, func_7(var_1, func_7(var_1, var_1, var_2), var_2), Struct_1(func_2(var_1.b, u_input.a.zz, var_2), vec2<bool>(var_2.b.x, var_1.a), var_2.c)), var_2), func_5(var_2, -vec3<i32>(-1i, 2147483647i, 34794i), select(!vec4<bool>(false, var_1.a, false, var_2.b.x), global3[_wgslsmith_index_u32(reverseBits(4294967295u), 11u)], any(vec2<bool>(var_2.b.x, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(abs(firstLeadingBit(-vec2<i32>(11174i, 1i))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, u_input.b, 4294967295u), vec3<u32>(4294967295u, global0.a, 23960u)) >> (1u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 17463u, 4294967295u), firstLeadingBit(vec3<u32>(0u, u_input.b, u_input.b)))) % vec2<u32>(32u)));
    var var_1 = func_8(vec3<u32>(_wgslsmith_add_u32(0u, 4294967295u), select(1u, func_1(u_input.c | vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, -6429i)), global2.a), max(1u, firstLeadingBit(u_input.b)) & (func_1(u_input.c) >> (33778u % 32u))), ~(~vec4<u32>(global0.a, 28800u, u_input.b, 1u) ^ _wgslsmith_mod_vec4_u32(select(vec4<u32>(global0.a, 0u, 1u, u_input.b), vec4<u32>(4294967295u, 123405u, u_input.b, 0u), vec4<bool>(global0.b.x, global2.a, global2.a, true)), vec4<u32>(2445u, 15159u, 65982u, global0.a))), Struct_2(-23572i < u_input.d.x, func_7(func_7(func_7(Struct_2(false, vec3<i32>(global2.b.x, -7810i, u_input.d.x)), Struct_2(false, vec3<i32>(u_input.a.x, var_0.x, u_input.d.x)), Struct_1(4294967295u, global0.b, global0.c)), Struct_2(global2.a, global2.b), Struct_1(43363u, global0.b, global0.c)), func_7(Struct_2(false, u_input.a), func_7(Struct_2(true, u_input.c.xyw), Struct_2(true, vec3<i32>(var_0.x, global2.b.x, 2147483647i)), Struct_1(u_input.b, global0.b, vec4<f32>(-1943f, 681f, 599f, global0.c.x))), Struct_1(global0.a, global0.b, vec4<f32>(-231f, 1139f, -974f, global0.c.x))), func_4(-global2.b.zz, ~4294967295u)).b));
    global3 = array<vec4<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~(~(~(vec3<u32>(39447u, u_input.b, 0u) & vec3<u32>(21316u, 57209u, global0.a)))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.c.x, 640f), global0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global0.c.x)))), (_wgslsmith_div_u32(u_input.b | global0.a, ~48487u) << (~u_input.b % 32u)) & global0.a);
}

