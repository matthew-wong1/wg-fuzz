struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: Struct_2;

var<private> global2: vec4<i32>;

var<private> global3: Struct_2 = Struct_2(-1i, i32(-2147483648), true, Struct_1(vec3<bool>(true, false, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<vec3<u32>, 25>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(682f + -2178f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-292f)), _wgslsmith_f_op_f32(abs(-1042f)), !global1.c))))), 479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1456f + -2501f) * 1008f)));
    var var_1 = Struct_1(global3.d.a);
    let var_2 = true || any(select(var_1.a.zy, select(global3.d.a.zy, !var_1.a.yz, select(var_1.a.xx, global1.d.a.yx, true)), vec2<bool>(true, global3.d.a.x)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3424f)))));
    return u_input.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    global2 = select(~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(global1.a, -38705i, 1068i, -8094i), abs(vec4<i32>(global2.x, global2.x, u_input.b, global1.a))), vec4<i32>(_wgslsmith_sub_i32(global2.x, 2147483647i), global2.x, u_input.b, ~arg_0.b)), firstTrailingBit(countOneBits(-vec4<i32>(global3.a, -2147483647i, u_input.b, global1.a))) & vec4<i32>(global1.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -49569i), firstTrailingBit(arg_0.a)), reverseBits(0i), ~(-546i)), vec4<bool>(false || (~global2.x <= countOneBits(global2.x)), true, !arg_0.c, global1.d.a.x));
    let var_0 = vec2<u32>(43112u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(arg_1, 4294967295u) | u_input.c), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_1, 1u), u_input.c.x, func_3()))) ^ vec2<u32>(1u, _wgslsmith_mult_u32(arg_1, abs(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 0u)))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(select(-600f, -1819f, all(global1.d.a))));
    global1 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec3<u32>, 25>();
    let var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(global1.b, -11777i), 1i), firstLeadingBit(1i)), global2.ww, global2.zw);
    var var_1 = ~firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.a, -1i, 1365i), vec3<i32>(arg_1.a, 28200i, global2.x)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-15680i, u_input.b, 0i)), vec3<i32>(arg_1.b, 1i, -45054i))));
    global1 = func_2(Struct_2(-41232i, select(-470i, -46394i, true), func_2(func_2(arg_1, u_input.c.x | 4294967295u, func_2(arg_1, u_input.c.x, Struct_1(vec3<bool>(global3.d.a.x, global1.d.a.x, false))).d), 3781u, global1.d).d.a.x, Struct_1(vec3<bool>(all(global3.d.a), global1.c, !arg_1.c))), reverseBits(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), Struct_1(vec3<bool>(all(!vec4<bool>(false, true, global1.c, true)), global1.c, func_2(arg_1, 25282u, func_2(Struct_2(arg_1.a, -34072i, arg_0.a.x, Struct_1(vec3<bool>(true, false, false))), 22672u, arg_1.d).d).c)));
    var_1 = -vec3<i32>(_wgslsmith_mod_i32(global2.x, ~u_input.a), var_0.x, _wgslsmith_sub_i32(var_0.x, -(i32(-1i) * -3939i)));
    return func_2(func_2(Struct_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, 15138i, -7996i, -8287i), vec4<i32>(global3.a, -2844i, global1.a, arg_1.b)), _wgslsmith_dot_vec2_i32(global2.yy, var_1.xz), true, Struct_1(vec3<bool>(true, true, true))), ~_wgslsmith_mult_u32(u_input.c.x, 0u) | func_3(), Struct_1(global3.d.a)), 1u, func_2(func_2(Struct_2(func_2(Struct_2(-1i, -2147483647i, true, arg_0), u_input.c.x, Struct_1(arg_1.d.a)).a, global2.x, true, arg_1.d), ~min(u_input.c.x, 1u), arg_0), min(~max(22596u, 4355u), u_input.c.x), Struct_1(global1.d.a)).d).d;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global3 = func_2(func_2(func_2(func_2(Struct_2(global2.x, -1i, global1.c, Struct_1(arg_0.a)), 1u, func_4(Struct_1(vec3<bool>(global1.d.a.x, true, false)), Struct_2(15481i, global1.a, false, arg_0))), ~(~0u), func_4(Struct_1(arg_0.a), Struct_2(0i, u_input.a, global3.d.a.x, global1.d))), 0u, Struct_1(!vec3<bool>(arg_0.a.x, true, false))), ~u_input.c.x, func_4(global3.d, func_2(Struct_2(28281i, global1.a, global3.d.a.x, Struct_1(global3.d.a)), _wgslsmith_div_u32(firstLeadingBit(u_input.c.x), 87053u | u_input.c.x), Struct_1(vec3<bool>(true, global1.d.a.x, arg_0.a.x)))));
    var var_0 = func_2(Struct_2(_wgslsmith_mod_i32(7141i, 1i), -74689i, !all(vec2<bool>(arg_0.a.x, global1.c)), func_4(func_2(func_2(Struct_2(1i, 0i, true, Struct_1(vec3<bool>(global1.d.a.x, true, false))), u_input.c.x, Struct_1(global1.d.a)), 0u, arg_0).d, Struct_2(func_2(Struct_2(global2.x, -1i, true, arg_0), u_input.c.x, global1.d).b, -2147483647i, all(vec4<bool>(false, true, global1.c, false)), func_2(Struct_2(18688i, global3.a, global3.c, arg_0), 0u, global3.d).d))), ~(~_wgslsmith_add_u32(0u, ~35504u)), func_2(Struct_2(reverseBits(max(u_input.a, global2.x)), global1.b, func_2(func_2(Struct_2(-29656i, -1092i, global1.c, arg_0), u_input.c.x, Struct_1(vec3<bool>(global1.d.a.x, global3.d.a.x, false))), _wgslsmith_add_u32(u_input.c.x, 4294967295u), Struct_1(arg_0.a)).d.a.x, func_2(func_2(Struct_2(1i, -22384i, false, Struct_1(vec3<bool>(true, true, global1.c))), 74016u, Struct_1(vec3<bool>(false, true, global3.c))), ~u_input.c.x, func_2(Struct_2(-4168i, 0i, global3.d.a.x, global1.d), 12914u, arg_0).d).d), 4294967295u, Struct_1(func_4(global1.d, func_2(Struct_2(global1.b, 21477i, false, global1.d), u_input.c.x, arg_0)).a)).d);
    var var_1 = arg_0;
    return func_2(func_2(Struct_2(i32(-1i) * -var_0.a, -55904i, ~17487i == global2.x, Struct_1(func_4(global3.d, Struct_2(global3.b, -19811i, false, Struct_1(vec3<bool>(false, arg_0.a.x, var_0.d.a.x)))).a)), ~u_input.c.x, Struct_1(vec3<bool>(true, global1.d.a.x | true, true))), select(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.c.x, all(func_2(func_2(Struct_2(53788i, -1i, arg_0.a.x, Struct_1(global3.d.a)), 43930u, Struct_1(var_1.a)), ~26942u, func_2(Struct_2(-38581i, global2.x, global1.d.a.x, var_0.d), u_input.c.x, Struct_1(vec3<bool>(true, true, var_0.d.a.x))).d).d.a.xy)), Struct_1(vec3<bool>(var_1.a.x, global1.d.a.x && false, global3.c))).d;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = func_5(func_4(Struct_1(vec3<bool>(true, all(vec2<bool>(global1.c, false)), global3.d.a.x)), func_2(Struct_2(u_input.a << (35771u % 32u), ~0i, global3.c, global1.d), 4294967295u, global3.d)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(f32(-1f) * -226f));
    var var_2 = Struct_1(select(!(!vec3<bool>(false, true, var_0.a.x)), func_4(var_0, Struct_2(-arg_0.x, _wgslsmith_div_i32(arg_0.x, u_input.b), all(var_0.a), global1.d)).a, vec3<bool>(var_0.a.x, true, func_4(Struct_1(var_0.a), func_2(Struct_2(u_input.a, 1i, global3.c, Struct_1(global1.d.a)), u_input.c.x, Struct_1(vec3<bool>(false, true, global3.d.a.x)))).a.x)));
    global0 = array<vec3<u32>, 25>();
    var var_3 = arg_0.wz;
    return Struct_2(1i, countOneBits(-2147483647i), any(global3.d.a.zz), var_0);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x), select(any(func_5(arg_1.d).a.yy), !(_wgslsmith_add_i32(arg_2.a, u_input.d) <= (1i >> (u_input.c.x % 32u))), false)));
    let var_1 = ~_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(0u, abs(u_input.c.x))), _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.c.x, 9663u), u_input.c.x));
    var var_2 = ~vec2<u32>(4294967295u, func_3());
    var var_3 = global1.d;
    let var_4 = 4294967295u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(275f, _wgslsmith_f_op_f32(-546f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 + var_0), -281f))))));
}

fn func_7(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<u32>(0u, u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x));
    var var_1 = arg_0.x;
    var var_2 = func_1(vec4<i32>(~global3.b, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, global2.x, 2147483647i, global2.x), vec4<i32>(2147483647i, -2147483647i, global2.x, global3.b), vec4<i32>(arg_0.x, u_input.d, 37856i, 0i)) >> (firstLeadingBit(vec4<u32>(3768u, u_input.c.x, 1u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(global3.b, -1i, u_input.a, -2147483647i), vec4<i32>(arg_0.x, arg_0.x, global2.x, -934i))), abs(firstTrailingBit(select(1i, global1.a, global1.c))), ~(~abs(global2.x)))).d;
    var var_3 = global1.d;
    let var_4 = 12722u;
    return func_4(global1.d, func_2(func_1(-vec4<i32>(arg_0.x, -2147483647i, global1.a, global1.b)), 0u, global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(global2.yxz, vec4<f32>(_wgslsmith_f_op_f32(-970f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-795f * -310f) * _wgslsmith_f_op_f32(sign(-2371f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1069f * _wgslsmith_f_op_f32(max(-851f, -1413f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-295f, -1317f))))), _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2406f, 1000f, 2164f) - vec3<f32>(1803f, 1238f, 898f))), func_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 618i, u_input.b, 0i), vec4<i32>(7680i, global2.x, -2147483647i, u_input.d))), func_1(vec4<i32>(global3.b, -1i, 43678i, -2147483647i) ^ vec4<i32>(-21424i, 52724i, global2.x, global3.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(-579f * -1000f), true)) - 288f)), func_2(Struct_2(global1.a >> (u_input.c.x % 32u), i32(-1i) * -27057i, global3.d.a.x, func_5(global3.d)), 1u, Struct_1(global1.d.a)).a > ~_wgslsmith_add_i32(u_input.a, max(39841i, u_input.d)));
    let var_1 = func_2(func_2(func_2(func_1(vec4<i32>(1699i, 0i, global3.a, 2147483647i) ^ vec4<i32>(global1.a, 1i, -9445i, 0i)), _wgslsmith_sub_u32(u_input.c.x, 1u) & ~u_input.c.x, func_1(vec4<i32>(u_input.a, global3.b, global2.x, global1.b)).d), u_input.c.x, var_0), firstTrailingBit(0u), var_0);
    let var_2 = 1572f;
    let var_3 = func_1(vec4<i32>(var_1.a, global3.b, select(var_1.b, countOneBits(7727i), _wgslsmith_f_op_f32(f32(-1f) * -1269f) > _wgslsmith_f_op_f32(-var_2)), select(~global3.b, min(u_input.b, _wgslsmith_clamp_i32(-28696i, u_input.d, global1.b)), false)));
    var var_4 = vec4<bool>(!any(func_2(func_1(vec4<i32>(-2147483647i, var_3.a, global1.a, u_input.d)), _wgslsmith_mult_u32(49461u, 36609u), global3.d).d.a.yz), -25862i == _wgslsmith_clamp_i32(reverseBits(firstTrailingBit(var_3.b)), 12397i, var_3.a), true, func_4(func_5(Struct_1(!vec3<bool>(true, false, global3.d.a.x))), var_1).a.x);
    var var_5 = -1i;
    var var_6 = u_input.a;
    let var_7 = _wgslsmith_clamp_i32(-5527i, var_3.a, firstTrailingBit(global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(countOneBits(min(vec4<i32>(var_1.a, var_7, 11039i, u_input.d), vec4<i32>(29349i, var_1.a, var_3.a, var_3.b)))), u_input.c.x, var_2, abs(reverseBits(_wgslsmith_sub_u32(1u, ~4294967295u))), select(select(abs(vec3<i32>(0i, global1.a, global1.a)), vec3<i32>(firstLeadingBit(global1.b), 1i, 0i), vec3<bool>(true, select(var_4.x, global1.d.a.x, false), var_1.c)), select(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, var_7), vec3<i32>(0i, global3.b, var_3.b)), min(vec3<i32>(var_3.b, -2147483647i, var_7), vec3<i32>(global1.a, 0i, 1i))), -vec3<i32>(u_input.b, -5041i, 2147483647i), true), !(!(!vec3<bool>(var_3.c, true, true)))));
}

