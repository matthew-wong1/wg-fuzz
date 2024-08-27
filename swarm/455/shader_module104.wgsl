struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(33692i, 1i, 59162u, false);

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 9>;

var<private> global3: Struct_1 = Struct_1(1i, -2893i, 0u, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = min(vec3<u32>(firstLeadingBit(global3.c), ~0u, global1.c), (~(~vec3<u32>(17854u, 0u, global0.c)) << (firstTrailingBit(vec3<u32>(arg_0.c, 0u, global3.c)) % vec3<u32>(32u))) ^ ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, global1.c), vec3<u32>(80478u, 0u, arg_0.c))));
    global3 = arg_0;
    global2 = array<vec2<i32>, 9>();
    let var_1 = i32(-1i) * -(min(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yx, global2[_wgslsmith_index_u32(arg_0.c, 9u)])) << (countOneBits(arg_0.c) % 32u));
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(721f, 121f)))), _wgslsmith_div_f32(2647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2223f, -761f)))), -602f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<f32> {
    var var_0 = ~(~(-(1i & global1.a)));
    var_0 = arg_0.a;
    let var_1 = vec3<bool>(true, global3.d, !arg_0.d);
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(173f, _wgslsmith_f_op_f32(round(arg_3.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) * -475f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_3.x, -285f)), _wgslsmith_f_op_f32(-arg_3.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_sub_i32(-7816i, global0.a), global0.b, global1.c, global0.d), arg_1, arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global3.b, -33031i, global3.c, true))) * vec3<f32>(-581f, 975f, -1194f))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), -543f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2034f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) * -892f)))));
    var var_1 = vec2<i32>(~_wgslsmith_clamp_i32(1i, 32885i, arg_0.a), 1i);
    let var_2 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(45821i, global0.a, 1i, var_1.x), vec4<i32>(0i, 4358i, arg_1.b, arg_0.a))), ~select(vec4<i32>(-1i, -26661i, var_1.x, 0i), vec4<i32>(34000i, 25412i, arg_1.a, global1.b), vec4<bool>(global0.d, global1.d, false, arg_0.d))), -29889i);
    var var_3 = all(!select(select(select(vec3<bool>(true, global0.d, false), vec3<bool>(false, global1.d, global1.d), vec3<bool>(false, true, false)), select(vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_1.d, arg_1.d, false), false), select(vec3<bool>(global1.d, global1.d, global1.d), vec3<bool>(arg_0.d, true, true), false)), !(!vec3<bool>(false, arg_1.d, global1.d)), select(select(vec3<bool>(true, global1.d, global3.d), vec3<bool>(false, arg_1.d, global0.d), vec3<bool>(global0.d, arg_1.d, arg_1.d)), !vec3<bool>(false, global1.d, false), true)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0 * var_0), _wgslsmith_f_op_vec2_f32(trunc(var_0)))), vec2<f32>(1000f, -532f)))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    global1 = func_2(arg_0, Struct_1(~firstLeadingBit(1i), ~(~global1.b) ^ func_2(arg_0, func_2(Struct_1(u_input.a.x, -1i, global3.c, false), arg_0)).b, 13882u, any(vec4<bool>(global3.d, false, arg_0.d, true))));
    global0 = Struct_1(1i, global0.a, _wgslsmith_dot_vec4_u32(abs(~select(vec4<u32>(global1.c, global1.c, global1.c, 4294967295u), vec4<u32>(global1.c, 31850u, 1u, 1940u), true)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3.c) >> (vec2<u32>(12357u, global0.c) % vec2<u32>(32u)), ~vec2<u32>(global0.c, arg_0.c)), global1.c, u_input.b, global0.c)), !select(all(select(vec4<bool>(true, false, false, global1.d), vec4<bool>(true, global3.d, arg_0.d, false), global3.d)), global3.d, arg_0.d));
    var var_0 = select(!select(vec4<bool>(false, true, 4294967295u >= u_input.b, false), vec4<bool>(arg_0.d, true, arg_0.d && false, false), all(vec2<bool>(arg_0.d, global1.d))), vec4<bool>(true, !(abs(global1.b) <= ~(-2147483647i)), false, global3.d), func_2(arg_0, Struct_1(_wgslsmith_div_i32(1i, ~arg_1), 53079i, arg_0.c, !any(vec4<bool>(global1.d, true, global0.d, true)))).d);
    global3 = func_2(Struct_1(-arg_1, _wgslsmith_div_i32(abs(-2147483647i) << (~u_input.b % 32u), global1.a), 0u, arg_0.d), func_2(arg_0, Struct_1(global3.a, 27957i, ~arg_0.c, global1.d | !global3.d)));
    var var_1 = arg_0;
    return func_2(arg_0, arg_0);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec2<i32>, 9>();
    global3 = Struct_1(_wgslsmith_sub_i32(1i, max(arg_0.b, -arg_0.a) | countOneBits(-12189i)), ~(-(u_input.a.x ^ ~global1.b)), _wgslsmith_mult_u32(73709u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(arg_0.c, global3.c, 0u), vec3<u32>(global3.c, 8003u, 40548u)), abs(vec3<u32>(1u, global3.c, u_input.b))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(67495u, 13213u, global1.c), vec3<u32>(u_input.b, u_input.b, 2277u)))), _wgslsmith_f_op_vec3_f32(func_3(func_2(arg_0, arg_0))).x != _wgslsmith_f_op_f32(abs(1f)));
    var var_0 = func_2(arg_0, Struct_1(~_wgslsmith_clamp_i32(arg_0.b, 22104i, arg_0.b), (~global3.a >> (func_5(arg_0, global0.a, 52572i).c % 32u)) << (1u % 32u), u_input.b, !(global3.d && (4294967295u < global3.c)))).a;
    let var_1 = arg_0;
    global2 = array<vec2<i32>, 9>();
    return Struct_1(~(-reverseBits(arg_0.b & var_1.b)), arg_0.a, _wgslsmith_add_u32(1u, 69662u), !func_5(arg_0, var_1.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -1i, -2147483647i), ~vec3<i32>(-83354i, global0.a, arg_0.a))).d);
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    let var_0 = vec3<u32>(global1.c, 1u, countOneBits(_wgslsmith_mod_u32(~(~64584u), arg_0.c)));
    var var_1 = ~(~countOneBits(vec4<u32>(var_0.x, 1126u, u_input.b, global3.c)) << (vec4<u32>(~(~global3.c), global3.c, _wgslsmith_mult_u32(90710u, u_input.b & global3.c), arg_0.c) % vec4<u32>(32u)));
    let var_2 = arg_0;
    let var_3 = ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, min(6966i, -4678i), abs(global0.a)), u_input.a, max(u_input.a, vec3<i32>(28316i, u_input.a.x, -2916i) ^ _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-1i, 2147483647i, global3.b))));
    return var_2;
}

fn func_8(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(51165u, reverseBits(countOneBits(select(arg_2.c ^ 1u, u_input.b, true))), _wgslsmith_add_u32(~(~0u), func_5(Struct_1(11124i, -2147483647i, 1u, true), arg_2.b, global3.a).c) != _wgslsmith_clamp_u32(global3.c, 23469u, 42673u));
    global1 = Struct_1(-1i, -25802i, 1u, all(!(!vec3<bool>(false, false, global3.d))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.a, reverseBits(vec3<i32>(_wgslsmith_div_i32(2147483647i, 1i << (var_1.c % 32u)), _wgslsmith_mod_i32(-25694i, min(global0.a, -30411i)), select(var_1.b, arg_2.b, arg_2.d) | firstLeadingBit(-2147483647i))));
    let var_3 = Struct_1(max(0i, ~_wgslsmith_clamp_i32(global3.b, func_5(Struct_1(u_input.a.x, arg_2.b, 34189u, true), u_input.a.x, var_2).a, 1i << (global1.c % 32u))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(~global1.b, global1.a), ~max(_wgslsmith_add_i32(-32154i, -1i), ~var_2)), arg_2.c, !arg_0);
    return Struct_1(~func_5(var_3, ~max(0i, 1i), 2147483647i).b, var_2, max(_wgslsmith_mult_u32(global1.c, global0.c), ~firstLeadingBit(func_6(Struct_1(global1.a, global0.a, arg_2.c, true)).c)), all(vec3<bool>(false && (global0.d || arg_0), false, true)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_8(((0i >= ~global3.a) || any(vec2<bool>(global0.d, global0.d))) | global0.d, vec2<bool>(false, false), func_7(func_6(func_5(func_2(Struct_1(global0.b, u_input.a.x, 1u, true), Struct_1(3717i, global3.b, global0.c, true)), -u_input.a.x, select(arg_0, 0i, true)))));
    global1 = Struct_1(_wgslsmith_add_i32(min(func_8(true, vec2<bool>(false, global1.d), func_2(Struct_1(-42676i, -16282i, global0.c, true), Struct_1(0i, 0i, 44841u, false))).a, -2147483647i), -34842i), var_0.a, ~(~(global0.c ^ 35746u)) >> (u_input.b % 32u), -5474i > -global0.b);
    global1 = Struct_1(~2147483647i, ~var_0.b >> (~13559u % 32u), ~max(global0.c, 1u), !any(!select(vec2<bool>(global1.d, false), vec2<bool>(false, global0.d), true)));
    global3 = func_6(func_6(Struct_1(-(global0.a & var_0.a), min(global0.a, global0.a), 27585u, any(!vec2<bool>(true, global3.d)))));
    var var_1 = func_7(Struct_1(-17741i, var_0.b, global1.c, true));
    return Struct_1(~global0.b | arg_0, global3.b, select(_wgslsmith_mult_u32(~(~4294967295u), ~_wgslsmith_mod_u32(var_1.c, 0u)), 0u, true), var_1.d);
}

fn func_9(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -_wgslsmith_mult_i32(arg_2.b, arg_2.b);
    let var_1 = func_6(func_1(~(-global3.a)));
    var_0 = -27573i;
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))))))), _wgslsmith_f_op_vec2_f32(-arg_0)));
    return Struct_1(29823i, 87761i, ~global3.c, all(vec4<bool>(arg_2.a >= _wgslsmith_add_i32(33568i, -1i), select(false, any(vec3<bool>(arg_2.d, global0.d, false)), func_6(Struct_1(1i, -2147483647i, global0.c, false)).d), global0.d, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a ^ global0.a, global3.a, -2147483647i, -17259i), vec4<i32>(-1i, global1.a, -1i, 1i) << ((vec4<u32>(10703u, 4562u, 22712u, 1u) | vec4<u32>(global1.c, 46020u, global0.c, 81326u)) % vec4<u32>(32u))));
    global0 = func_9(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, 1000f)) + vec2<f32>(_wgslsmith_f_op_f32(820f - 1960f), -1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f + 165f))))), func_1(0i));
    var var_1 = func_6(Struct_1(-2147483647i, -u_input.a.x, abs(global1.c), !global0.d));
    let var_2 = Struct_1(firstLeadingBit(global3.b), _wgslsmith_add_i32(0i, global0.a), 53367u, global0.d);
    let var_3 = var_2;
    global1 = var_3;
    var var_4 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f - 311f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-819f, -2131f))), !all(!vec2<bool>(var_2.d, var_2.d)), global3.d);
    global3 = var_3;
    var_1 = Struct_1(-43104i, var_2.a, global3.c, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b, func_2(func_9(vec2<f32>(-683f, 1054f), 936f, var_2), var_2).c) | ~(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c, 8072u), vec2<u32>(44170u, 14233u)) ^ firstLeadingBit(vec2<u32>(0u, 1082u))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(global3.c, ~4294967295u), ~select(vec2<u32>(u_input.b, global3.c), vec2<u32>(33535u, var_2.c), false)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.c, 1u), vec2<u32>(global1.c, 0u)), vec2<u32>(u_input.b, 0u)) ^ select(firstLeadingBit(vec2<u32>(4294967295u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.c, 1u), vec2<u32>(66263u, 0u)), !var_4.yx)), _wgslsmith_dot_vec3_u32(abs(firstLeadingBit(~vec3<u32>(u_input.b, 4294967295u, u_input.b))), vec3<u32>(48169u, 1u, 4294967295u)), vec2<f32>(662f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1341f + 135f), -625f) * 381f)));
}

