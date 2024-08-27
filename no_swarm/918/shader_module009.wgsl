struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
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

var<private> global0: bool;

var<private> global1: vec3<i32> = vec3<i32>(-43338i, 1i, -32678i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    let var_0 = !(!(arg_1.b.d.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1387f))));
    global1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(reverseBits(vec3<i32>(2147483647i, arg_0.b, arg_1.c.c.b))), -_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -1i, 1i), vec3<i32>(-111064i, arg_1.c.c.b, arg_0.c))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(3468i, arg_0.b, global1.x), vec3<i32>(-59689i, arg_0.c, arg_0.c)), ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c.c.c, -20492i, arg_0.c), vec3<i32>(global1.x, arg_1.b.c.c, -1i)))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b.b, ~4294967295u, abs(0u)) | vec3<u32>(47449u, ~arg_1.e, ~1u), abs(vec3<u32>(41910u, arg_1.b.a, 28285u)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(50259u, 4294967295u, arg_1.b.b), abs(vec3<u32>(arg_1.e, 70123u, 112418u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global1 = min(abs(abs(firstTrailingBit(vec3<i32>(-3382i, arg_0.b, arg_0.b))) << (reverseBits(vec3<u32>(u_input.b.x, arg_1.b.a, u_input.a)) % vec3<u32>(32u))), -vec3<i32>(arg_0.c, max(~1i, firstLeadingBit(arg_0.b)), -2147483647i));
    var var_1 = arg_1.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * -969f) + arg_1.c.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(469f, -1952f)))))) - _wgslsmith_f_op_f32(-var_1.d.x));
    return 1i;
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = false & (~(-abs(arg_0.c.c.c)) >= abs(countOneBits(select(6617i, arg_0.c.c.c, arg_0.a.a))));
    global1 = vec3<i32>(1i, ~(i32(-1i) * -(~0i)), arg_0.d.c.c ^ 2147483647i);
    global0 = !any(vec3<bool>(var_0, false, any(vec3<bool>(arg_0.b.c.a, true, false)))) & true;
    var var_1 = Struct_3(arg_0.a, Struct_2(~max(arg_0.d.b, _wgslsmith_clamp_u32(u_input.a, arg_0.b.a, 102270u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.e, arg_0.e, arg_0.b.b)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c.a, 25172u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 15234u))) | _wgslsmith_add_u32(_wgslsmith_add_u32(7290u, 1u), _wgslsmith_add_u32(arg_0.d.a, 30787u)), Struct_1(all(select(vec3<bool>(var_0, true, arg_0.a.a), vec3<bool>(true, var_0, arg_0.d.c.a), vec3<bool>(arg_0.c.c.a, true, true))), _wgslsmith_clamp_i32(arg_0.d.c.c, _wgslsmith_add_i32(-52763i, global1.x), 1i), global1.x), arg_0.c.d), Struct_2(_wgslsmith_add_u32(11797u, 0u), firstLeadingBit(abs(0u)), arg_0.d.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d.d))), Struct_2(_wgslsmith_add_u32(9557u, 81178u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.e, u_input.b.x, arg_0.c.a), vec4<u32>(89004u, u_input.a, 111099u, 4294967295u)), _wgslsmith_div_u32(arg_0.d.a, 1u), u_input.b.x <= 44088u) & 1u, arg_0.d.c, vec4<f32>(_wgslsmith_div_f32(526f, _wgslsmith_f_op_f32(select(arg_0.d.d.x, 118f, false))), _wgslsmith_f_op_f32(-arg_0.b.d.x), -1272f, arg_0.b.d.x)), 53866u ^ ~(~arg_0.b.b));
    var var_2 = var_1.c.d.x;
    return var_0 || !(!var_0);
}

fn func_2() -> vec4<bool> {
    global0 = func_4(Struct_3(Struct_1(false, select(1i, -1i, false), ~countOneBits(-2147483647i)), Struct_2(~(~u_input.b.x), ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), Struct_1(false, 2147483647i >> (u_input.b.x % 32u), firstLeadingBit(global1.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-525f, 802f, 280f, -1123f), vec4<f32>(-1148f, -1082f, -210f, 681f))))), Struct_2(reverseBits(firstLeadingBit(u_input.a)), u_input.b.x, Struct_1(select(true, true, true), ~global1.x, 3854i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(171f, 1310f, 2313f, 1212f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(898f, 1298f, 891f, 750f) * vec4<f32>(673f, -1535f, 194f, -2367f)))), Struct_2(u_input.a, 1u, Struct_1(true, ~global1.x, func_3(Struct_1(true, global1.x, global1.x), Struct_3(Struct_1(true, global1.x, global1.x), Struct_2(4294967295u, 35293u, Struct_1(true, -9491i, 57213i), vec4<f32>(468f, -1727f, -625f, 351f)), Struct_2(u_input.a, 0u, Struct_1(false, 24936i, global1.x), vec4<f32>(650f, 417f, -335f, 2596f)), Struct_2(0u, u_input.a, Struct_1(true, global1.x, 41657i), vec4<f32>(-1685f, -1818f, 939f, -562f)), 9364u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, -543f, 1098f, 721f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1794f, -275f, 700f, 1000f), vec4<f32>(-178f, -107f, -636f, 1185f), false)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(16960u, 101869u, 4294967295u, u_input.a), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 4294967295u)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(810f, _wgslsmith_f_op_f32(f32(-1f) * -931f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1080f + -571f))));
    global0 = var_0 <= var_0;
    let var_1 = ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(global1.x), global1.x, -32067i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(global1.x, global1.x, -1i, -2147483647i))), ~vec4<i32>(global1.x, -2147483647i, -65015i, -2147483647i)), vec4<i32>(-(global1.x << (24445u % 32u)), 0i, ~(global1.x ^ global1.x), -13087i));
    global1 = max(var_1.ywx | var_1.wxw, var_1.yxx);
    return vec4<bool>(!(!(all(vec2<bool>(false, false)) && true)), true, any(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), false);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_1 {
    global1 = select(-(~((vec3<i32>(global1.x, -40897i, global1.x) & vec3<i32>(0i, 28879i, global1.x)) | vec3<i32>(global1.x, global1.x, global1.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-30948i, _wgslsmith_clamp_i32(-1i, -1i, 89345i) ^ global1.x, -636i), vec3<i32>(~global1.x << (~u_input.b.x % 32u), ~global1.x, global1.x), ~vec3<i32>(_wgslsmith_clamp_i32(0i, global1.x, -67359i), reverseBits(global1.x), global1.x)), vec3<bool>(all(arg_1), arg_0.x > 1606f, false));
    let var_0 = 1i;
    global0 = !(any(!select(vec2<bool>(false, arg_1.x), arg_1, false)) && select(arg_1.x, true, false));
    global0 = any(!select(vec4<bool>(true, all(vec3<bool>(arg_1.x, true, arg_1.x)), false, false), func_2(), 59995u == u_input.a));
    let var_1 = Struct_3(Struct_1(arg_0.x <= 1000f, -64041i, global1.x), Struct_2(_wgslsmith_mult_u32(~(u_input.a ^ u_input.a), ~28924u), 1u, Struct_1(false, _wgslsmith_div_i32(global1.x, -31316i), reverseBits(~(-1i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -393f, 327f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1643f, arg_0.x, -1000f) - vec4<f32>(-974f, -649f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 492f) + vec4<f32>(486f, -1000f, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, 838f, arg_0.x, arg_0.x), vec4<f32>(535f, arg_0.x, arg_0.x, 1979f)))), vec4<bool>(arg_1.x, !arg_1.x, !arg_1.x, true)))), Struct_2(~firstTrailingBit(0u), u_input.b.x, Struct_1((arg_1.x | true) | func_2().x, func_3(Struct_1(false, global1.x, global1.x), Struct_3(Struct_1(arg_1.x, global1.x, global1.x), Struct_2(u_input.a, u_input.a, Struct_1(arg_1.x, var_0, 34928i), vec4<f32>(1890f, arg_0.x, 479f, -1144f)), Struct_2(u_input.b.x, 0u, Struct_1(true, var_0, var_0), vec4<f32>(arg_0.x, 2157f, arg_0.x, 516f)), Struct_2(u_input.b.x, u_input.b.x, Struct_1(arg_1.x, global1.x, 7627i), vec4<f32>(462f, 1187f, 1043f, -436f)), 0u)), ~_wgslsmith_dot_vec2_i32(global1.zz, vec2<i32>(934i, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 939f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 769f))))))), Struct_2(firstTrailingBit(_wgslsmith_add_u32(36123u, 1u)) >> (22553u % 32u), ~_wgslsmith_add_u32(abs(u_input.b.x), max(u_input.b.x, 42493u)), Struct_1(true, -2147483647i, abs(countOneBits(0i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - 987f), 331f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 616f, arg_0.x) - vec4<f32>(arg_0.x, -581f, arg_0.x, 1375f)))))), u_input.a);
    return Struct_1(true, var_0, reverseBits(firstTrailingBit(var_1.a.b) ^ 0i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    global0 = true;
    let var_0 = -(~arg_2);
    global1 = vec3<i32>(abs(2147483647i), global1.x, arg_1.c);
    let var_1 = arg_0;
    let var_2 = Struct_4(Struct_3(Struct_1(true, var_0.x, -1i), Struct_2(u_input.b.x, max(1u, 47584u), Struct_1(func_2().x, -23113i, 46813i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(235f, -579f, 1490f, -323f), vec4<f32>(-310f, -1118f, -659f, -343f)))))), Struct_2(36745u, ~abs(75365u), func_1(vec2<f32>(-775f, -134f), func_2().xz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2015f, -2175f, -1000f, 1665f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1253f, 563f, -1788f, 1018f)))), Struct_2(_wgslsmith_mult_u32(1u >> (u_input.b.x % 32u), 0u), 1u, Struct_1(true, countOneBits(arg_2.x), i32(-1i) * -1i), vec4<f32>(_wgslsmith_f_op_f32(sign(614f)), 859f, _wgslsmith_div_f32(-790f, 2597f), _wgslsmith_f_op_f32(-1480f - -1690f))), ~u_input.b.x), arg_0);
    return vec4<bool>(var_2.a.b.c.a, false, true, arg_1.a);
}

fn func_6(arg_0: vec4<bool>) -> Struct_2 {
    global0 = all(arg_0.zxy);
    var var_0 = 0i;
    var var_1 = Struct_2(_wgslsmith_sub_u32(~31841u, u_input.a), firstTrailingBit(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(21660u, 23747u, u_input.a, 0u), ~vec4<u32>(1545u, 51798u, u_input.b.x, u_input.a)))), Struct_1(false, -2814i, -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, -822f, -1053f, -427f) - vec4<f32>(-763f, -380f, -104f, -1203f))))));
    global0 = func_4(Struct_3(Struct_1(true, (-44408i << (var_1.b % 32u)) | global1.x, global1.x), Struct_2(u_input.a, u_input.b.x, var_1.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(140f, -1290f, -423f, -401f)))), Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, u_input.a, u_input.b.x, 4294967295u), ~vec4<u32>(39635u, 0u, var_1.a, var_1.a)), var_1.b, func_1(var_1.d.wy, vec2<bool>(var_1.c.a, var_1.c.a)), var_1.d), Struct_2(72774u, 10630u, Struct_1(func_1(var_1.d.wx, vec2<bool>(arg_0.x, var_1.c.a)).a, -14075i, 4497i), vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), -2920f, _wgslsmith_f_op_f32(round(var_1.d.x)), var_1.d.x)), 0u));
    let var_2 = Struct_1(true, _wgslsmith_add_i32(~var_1.c.b, global1.x), ~1i);
    return Struct_2(1u, var_1.a >> (var_1.a % 32u), var_2, vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_1.d.x)), var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_5(func_1(vec2<f32>(585f, -272f), vec2<bool>(false, true)), func_1(vec2<f32>(-432f, -1000f), vec2<bool>(true, false)), -vec3<i32>(-1i, -2147483647i, 2147483647i))), true));
    let var_1 = 1u;
    var var_2 = firstTrailingBit(i32(-1i) * -3021i);
    var_2 = _wgslsmith_sub_i32(func_6(vec4<bool>(false, !(var_0.c.a && false), func_5(var_0.c, func_1(vec2<f32>(1000f, var_0.d.x), vec2<bool>(var_0.c.a, false)), vec3<i32>(48391i, -1i, 163i) | vec3<i32>(global1.x, -19390i, -38617i)).x, var_0.c.a)).c.b, _wgslsmith_sub_i32(var_0.c.b, global1.x));
    global1 = vec3<i32>(countOneBits(77023i), global1.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(global1.x, 0i, var_0.c.c), vec3<i32>(0i, 46924i, -2147483647i))) ^ (countOneBits(vec3<i32>(var_0.c.c, global1.x, -52183i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(0i, global1.x, global1.x) & vec3<i32>(var_0.c.c, var_0.c.c, -3395i), vec3<i32>(2147483647i, -2147483647i, 2147483647i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(109f * -1000f), 925f)))), var_0.d.x, 4294967295u, vec3<i32>(-(i32(-1i) * -2147483647i), -func_3(func_1(vec2<f32>(2044f, -752f), vec2<bool>(false, true)), Struct_3(Struct_1(false, global1.x, 2147483647i), Struct_2(u_input.b.x, 38629u, Struct_1(false, var_0.c.b, -2147483647i), vec4<f32>(530f, -772f, -1312f, var_0.d.x)), var_0, var_0, 1u)), _wgslsmith_add_i32(var_0.c.c, 55i << ((var_1 & u_input.a) % 32u))));
}

