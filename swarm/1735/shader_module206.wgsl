struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_sub_vec4_u32(~arg_0.b, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c, 1u, arg_0.c, arg_0.c), vec4<u32>(arg_0.c, 18351u, 82316u, 4294967295u)), arg_0.b)), 24966u, global0.a);
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global1 = true;
    let var_0 = arg_3.a;
    global3 = _wgslsmith_mod_u32(reverseBits(func_2(Struct_1(!var_0, ~arg_3.b, 14179u ^ u_input.a, -26795i), reverseBits(select(1811i, arg_3.d, true))).b.x), arg_3.b.x);
    var var_1 = ~_wgslsmith_mod_i32(~countOneBits(~(-16503i)), countOneBits(arg_0.d));
    global3 = arg_0.c;
    return Struct_2(~(-4906i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = firstLeadingBit(u_input.d.yz | u_input.d.zz);
    var var_1 = select(vec2<bool>(!(!func_2(Struct_1(vec2<bool>(true, true), vec4<u32>(0u, 4294967295u, var_0.x, var_0.x), var_0.x, arg_0.a), arg_0.a).a.x), all(vec2<bool>(23916u <= arg_2, true))), func_2(func_2(func_2(Struct_1(vec2<bool>(true, false), vec4<u32>(1u, arg_2, u_input.a, u_input.c), arg_2, 42267i), ~u_input.b.x), min(max(arg_0.a, u_input.b.x), arg_1.a ^ u_input.b.x)), -global0.a).a, !vec2<bool>(true, all(vec2<bool>(true, true))));
    let var_2 = 870f;
    let var_3 = Struct_3(~(~u_input.d.zx), func_3(Struct_1(vec2<bool>(true, true), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 0u, var_0.x, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, 4294967295u, u_input.c), vec4<u32>(15128u, 0u, 9492u, 4294967295u))), ~(~81351u), -1i), ~var_0.x, true, func_2(Struct_1(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), var_1.x), abs(vec4<u32>(u_input.a, 4294967295u, var_0.x, arg_2)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, var_0.x, 4294967295u), u_input.d), 1i), i32(-1i) * -u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2260f), _wgslsmith_f_op_f32(trunc(1286f))), arg_1);
    global2 = func_3(Struct_1(func_2(Struct_1(!vec2<bool>(var_1.x, false), ~vec4<u32>(4294967295u, 44729u, 4294967295u, u_input.a), select(u_input.d.x, 1u, var_1.x), -global0.a), -2147483647i).a, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, 75450u, 0u), vec4<u32>(u_input.a, 1u, u_input.d.x, u_input.a)), ~vec4<u32>(4294967295u, 1u, 0u, var_0.x), vec4<u32>(4294967295u, 0u, arg_2, var_3.a.x) | vec4<u32>(4294967295u, arg_2, 4294967295u, var_3.a.x)), 0u, -3815i), 0u, var_1.x, func_2(func_2(func_2(func_2(Struct_1(vec2<bool>(false, var_1.x), vec4<u32>(85179u, 22276u, 24253u, 4294967295u), 8299u, 1i), var_3.d.a), _wgslsmith_add_i32(7940i, 5386i)), _wgslsmith_sub_i32(arg_0.a, 1i) & global2.a), ~global2.a));
    return Struct_2(-50320i);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    global2 = func_4(Struct_2(-15103i), func_3(func_2(Struct_1(vec2<bool>(true, true), ~vec4<u32>(50442u, 34545u, arg_0.x, arg_3.a.x), 4294967295u, _wgslsmith_div_i32(global0.a, u_input.b.x)), firstLeadingBit(firstTrailingBit(-2147483647i))), arg_2, false, Struct_1(!func_2(Struct_1(vec2<bool>(false, true), vec4<u32>(36955u, 8690u, arg_2, arg_0.x), arg_2, global0.a), -34249i).a, max(~vec4<u32>(arg_3.a.x, 15595u, arg_2, u_input.d.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_3.a.x, 1u, 8664u), vec4<u32>(30731u, 21664u, arg_0.x, 1u))), u_input.d.x << (~1u % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, global0.a, arg_3.b.a), abs(vec3<i32>(-11488i, -1i, global0.a))))), u_input.d.x);
    global0 = func_3(Struct_1(select(vec2<bool>(true, 4294967295u > arg_3.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), abs(~(vec4<u32>(arg_0.x, arg_2, u_input.d.x, arg_3.a.x) >> (vec4<u32>(4294967295u, 32560u, 22538u, 22079u) % vec4<u32>(32u)))), arg_3.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, -1i, 16912i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, global0.a, 1i), vec3<i32>(u_input.b.x, 9691i, 57631i))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_3.b.a, arg_3.b.a), ~vec3<i32>(arg_3.b.a, -1i, u_input.b.x)))), 4294967295u, !(func_2(func_2(Struct_1(vec2<bool>(true, true), vec4<u32>(76881u, 1u, 1u, arg_3.a.x), 23836u, 2147483647i), global0.a), global0.a).a.x | ((-667f <= arg_3.c) || true)), func_2(func_2(func_2(func_2(Struct_1(vec2<bool>(false, true), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 38246u), 10057u, 1i), u_input.b.x), arg_3.b.a << (1u % 32u)), countOneBits(-2147483647i)), global2.a));
    var var_0 = _wgslsmith_add_vec3_i32(~abs(vec3<i32>(u_input.b.x >> (47827u % 32u), _wgslsmith_add_i32(-38815i, u_input.b.x), u_input.b.x)), max(vec3<i32>(~global0.a, _wgslsmith_clamp_i32(arg_3.b.a | 15292i, -u_input.b.x, 1894i), func_2(func_2(Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 39729u, 25498u, 5548u), 39036u, 32912i), u_input.b.x), global2.a).d), ~(-vec3<i32>(global0.a, arg_3.d.a, global2.a))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(-1000f)), -298f, -2754f) * vec4<f32>(_wgslsmith_f_op_f32(step(392f, 174f)), -759f, 1468f, 1752f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(262f, arg_3.c, arg_3.c, arg_3.c) + vec4<f32>(380f, 1232f, 312f, -482f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -488f, arg_3.c, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, arg_1, -195f, arg_1))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3.c, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, arg_1, 312f, 965f)), vec4<bool>(true, true, true, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, -1273f, arg_3.c, -2337f)), vec4<f32>(arg_1, arg_1, 587f, arg_1)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-958f, arg_1, arg_3.c, arg_3.c), vec4<f32>(393f, arg_3.c, -238f, -179f), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1025f, arg_1, -1000f, 773f) * vec4<f32>(724f, arg_1, arg_3.c, arg_1)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))))));
    let var_2 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.d.a, -u_input.b.x), u_input.b, ~(-u_input.b)), min(~var_0.zz, _wgslsmith_sub_vec2_i32(u_input.b, var_0.yz)), !vec2<bool>(all(vec3<bool>(false, true, true)), true)) << ((reverseBits(arg_3.a) >> (arg_0 % vec2<u32>(32u))) % vec2<u32>(32u));
    return func_2(func_2(func_2(Struct_1(vec2<bool>(false, false), vec4<u32>(60265u, arg_3.a.x, arg_3.a.x, arg_2), 1u << (u_input.c % 32u), -56451i), _wgslsmith_add_i32(global2.a << (arg_2 % 32u), _wgslsmith_sub_i32(1i, -6822i))), countOneBits(_wgslsmith_mult_i32(u_input.b.x >> (4294967295u % 32u), -1i))), _wgslsmith_clamp_i32(var_0.x, -15826i, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, -80321i, 29320i), _wgslsmith_sub_vec3_i32(vec3<i32>(-25975i, var_0.x, -2147483647i), vec3<i32>(9126i, u_input.b.x, u_input.b.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = arg_1.c;
    global3 = abs(8961u);
    global3 = firstLeadingBit(abs(0u));
    let var_1 = ~2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, arg_1.c, 220f, arg_2.x)))))));
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<bool>) -> vec3<i32> {
    var var_0 = func_5(func_1(~(~countOneBits(vec2<u32>(0u, 44930u))), arg_0.c, 65856u, arg_0), func_5(func_2(func_1(u_input.d.yy, 930f, 1u, func_5(Struct_1(vec2<bool>(true, true), vec4<u32>(arg_0.a.x, arg_0.a.x, 29192u, 0u), 31043u, 0i), Struct_3(arg_0.a, arg_0.b, arg_0.c, arg_0.b), vec2<f32>(arg_0.c, arg_0.c))), global2.a ^ global0.a), Struct_3(~vec2<u32>(arg_0.a.x, 31809u) | u_input.d.zz, func_4(Struct_2(arg_0.b.a), arg_0.d, ~u_input.a), arg_0.c, Struct_2(_wgslsmith_mult_i32(-1i, global0.a))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_0.c * 699f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, arg_0.c))), vec2<f32>(arg_0.c, arg_0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1545f, 1000f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)))))));
    global3 = u_input.a;
    var var_1 = var_0.d;
    global1 = !arg_3.x;
    return vec3<i32>(func_3(func_1(~(~vec2<u32>(12680u, 1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.c)))), ~max(u_input.d.x, 4294967295u), arg_0), _wgslsmith_clamp_u32(var_0.a.x, func_5(func_2(Struct_1(arg_3.yx, vec4<u32>(u_input.a, var_0.a.x, 1u, u_input.c), arg_2, -29217i), 2147483647i), func_5(Struct_1(arg_3.yw, vec4<u32>(u_input.a, arg_2, var_0.a.x, 14087u), var_0.a.x, 2147483647i), Struct_3(vec2<u32>(u_input.a, 45642u), var_0.b, -1817f, Struct_2(var_0.b.a)), vec2<f32>(-317f, var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-943f, arg_0.c))).a.x, 14906u), true, Struct_1(vec2<bool>(func_1(vec2<u32>(5546u, var_0.a.x), arg_0.c, 0u, arg_0).a.x, arg_3.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(29585u, arg_0.a.x, 17735u, 11609u), vec4<u32>(66336u, arg_0.a.x, 1u, arg_2)), u_input.c | u_input.c, ~u_input.b.x)).a, 0i, func_2(func_2(Struct_1(vec2<bool>(false, true), vec4<u32>(6840u, arg_2, u_input.a, arg_0.a.x), ~u_input.c, countOneBits(-2147483647i)), _wgslsmith_mult_i32(36777i, ~global0.a)), 1i).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(func_6(func_5(func_1(u_input.d.yz, -1000f, u_input.d.x, Struct_3(u_input.d.yx, Struct_2(-21287i), -1117f, Struct_2(global2.a))), Struct_3(u_input.d.zz, Struct_2(-25644i), -631f, Struct_2(12130i)), vec2<f32>(-1219f, -1000f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.a == 41503u), ~u_input.a, !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)), _wgslsmith_mult_vec3_i32(vec3<i32>(20349i ^ global0.a, _wgslsmith_sub_i32(5336i, global2.a), ~1i), vec3<i32>(-1i, global0.a, -2147483647i) ^ firstTrailingBit(vec3<i32>(23620i, 2147483647i, global2.a)))), global0.a);
    let var_1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(550f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(675f, 1332f, -1642f) + vec3<f32>(2692f, -464f, 734f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1145f, 1000f, -232f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1468f, 920f, 773f)))))), u_input.b.x);
}

