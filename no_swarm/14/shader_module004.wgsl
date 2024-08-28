struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global0 = vec2<bool>(false, !(39104u <= max(u_input.c, u_input.c)) | true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -616f)))));
    let var_1 = Struct_4(-2147483647i, Struct_1(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, global0.x), global0.x)), true, false), ~(-arg_0.x)), Struct_1(select(!(!vec3<bool>(global0.x, global0.x, true)), vec3<bool>(select(false, true, true), !global0.x, true), vec3<bool>(global0.x | false, true, any(vec2<bool>(false, true)))), ~(~(-u_input.d.x))), vec3<i32>(arg_0.x, 1i, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-804f, _wgslsmith_f_op_f32(floor(383f)), true))))));
    var_0 = var_1.e;
    var var_2 = -11964i;
    return 4230i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = arg_3;
    var_0 = Struct_2(_wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(35702u, ~arg_3.a.x)), Struct_1(select(var_0.c.a, vec3<bool>(all(vec2<bool>(false, global0.x)), arg_3.b.a.x, !global0.x), arg_3.c.a), 0i), arg_3.c, any(select(!vec3<bool>(true, arg_3.b.a.x, var_0.c.a.x), vec3<bool>(!global0.x, !arg_3.d, !var_0.d), 0u > abs(u_input.a))));
    global0 = vec2<bool>(false, !(arg_3.d || all(select(arg_3.b.a.xy, vec2<bool>(var_0.b.a.x, arg_3.c.a.x), false))));
    var var_1 = Struct_4(4152i, var_0.c, Struct_1(!vec3<bool>(false, global0.x, any(var_0.c.a)), 1i), countOneBits(~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(-1i, -2147483647i, -3282i)), vec3<i32>(-7259i, arg_3.c.b, -76244i))), _wgslsmith_f_op_f32(-813f + 1f));
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -2147483647i ^ var_0.c.b, _wgslsmith_mod_i32(i32(-1i) * -18614i, firstTrailingBit(u_input.d.x)), 13915i), -(~select(vec4<i32>(arg_1, var_1.c.b, -5309i, 1i), vec4<i32>(var_0.c.b, -1i, arg_1, var_1.d.x), true)), ~(-vec4<i32>(12686i, -1i, arg_3.b.b, -1i))), vec4<i32>(-21138i, -19865i ^ countOneBits(var_0.b.b), select(_wgslsmith_add_i32(2147483647i, var_1.c.b), reverseBits(arg_2), select(true, true, false)), u_input.b));
    return false;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-851f, arg_1.e, arg_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e, 1259f, arg_1.e)), true))))));
    let var_1 = u_input.e & _wgslsmith_mod_vec2_u32(vec2<u32>(8804u, u_input.e.x), _wgslsmith_div_vec2_u32(u_input.e, ~(~u_input.e)));
    var var_2 = reverseBits(vec3<i32>(~max(_wgslsmith_sub_i32(arg_1.d.x, arg_1.d.x), 1i), arg_1.d.x, u_input.b));
    var var_3 = func_4(~(~_wgslsmith_clamp_i32(arg_1.c.b, u_input.d.x, u_input.d.x)) & countOneBits(func_3(vec2<i32>(var_2.x, arg_1.a))), -26374i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(arg_1.d << (vec3<u32>(11580u, var_1.x, var_1.x) % vec3<u32>(32u))), -arg_1.d), Struct_2(~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, u_input.a), u_input.e) >> (~(~vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)), arg_1.c, Struct_1(select(arg_1.b.a, arg_1.b.a, !arg_1.b.a), _wgslsmith_clamp_i32(21242i, u_input.b, abs(-95968i))), arg_0));
    var var_4 = vec4<bool>(!any(vec4<bool>(global0.x || global0.x, !arg_0, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1340f - arg_1.e)) * 1035f) < 615f, !func_4(~u_input.d.x, -reverseBits(-16137i), reverseBits(max(0i, 39031i)), Struct_2(var_1, Struct_1(arg_1.c.a, -2147483647i), arg_1.c, all(vec4<bool>(arg_1.b.a.x, global0.x, true, arg_1.b.a.x)))), false);
    return !vec2<bool>(false, var_4.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_4 {
    global0 = arg_2.zx;
    global0 = !(!select(!(!arg_2.yz), func_2(arg_1, Struct_4(arg_0.x, Struct_1(vec3<bool>(global0.x, arg_1, arg_2.x), u_input.b), Struct_1(vec3<bool>(true, arg_2.x, false), u_input.d.x), u_input.d, -371f)), true));
    var var_0 = Struct_4(_wgslsmith_mod_i32(min(-arg_0.x, 1i), -(~u_input.d.x)), Struct_1(select(select(!arg_2, select(vec3<bool>(false, arg_1, global0.x), vec3<bool>(arg_1, false, false), arg_1), !arg_2), vec3<bool>(arg_2.x, select(arg_1, arg_2.x, true), all(vec3<bool>(arg_2.x, false, arg_2.x))), true), -1i), Struct_1(vec3<bool>(false, true || global0.x, global0.x), countOneBits(-36905i)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(u_input.d.x, 0i), 18854i, arg_0.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(u_input.b, u_input.b, arg_0.x)), u_input.d), vec3<i32>(arg_0.x, 0i >> (0u % 32u), 2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1422f)) * _wgslsmith_f_op_f32(-1000f - 611f))))));
    let var_1 = select(vec4<i32>(var_0.b.b, -13515i, ~arg_0.x, var_0.c.b) ^ vec4<i32>(arg_0.x, u_input.b, func_3(var_0.d.zy), _wgslsmith_mod_i32(u_input.d.x, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_0.b.b, arg_0.x, 25980i) >> (~vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, u_input.c) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.d.x, 1i), var_0.d), -26163i, -var_0.d.x, ~var_0.b.b)), !(!any(arg_2))) << (~select(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 66782u, 4294967295u, u_input.a), vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.e.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 33452u, 20210u, 0u), vec4<u32>(40396u, u_input.c, u_input.a, 0u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(1u, u_input.e.x, 0u, u_input.a)), !select(vec4<bool>(true, true, global0.x, arg_1), vec4<bool>(true, var_0.c.a.x, arg_2.x, false), true)) % vec4<u32>(32u));
    var_0 = Struct_4(abs(-1i), var_0.b, var_0.b, reverseBits(vec3<i32>(_wgslsmith_mult_i32(countOneBits(u_input.b), countOneBits(arg_0.x)), 1i, ~22836i)), 484f);
    return Struct_4(var_1.x, var_0.b, Struct_1(select(!vec3<bool>(var_0.c.a.x, false, true), arg_2, vec3<bool>(false, false, false)), abs(arg_0.x)), select(max(var_0.d, abs(-u_input.d)), -_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(-2147483647i, arg_0.x, var_1.x)), !arg_2), 968f);
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(firstTrailingBit(u_input.e.x), ~max(countOneBits(23103u) ^ (129379u ^ u_input.a), ~reverseBits(u_input.e.x)));
    global0 = vec2<bool>(select(true, _wgslsmith_f_op_f32(sign(1000f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.e * -989f))), global0.x), !(~max(u_input.a, var_0) == (u_input.a & firstTrailingBit(0u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-372f + _wgslsmith_f_op_f32(floor(-1599f))))), 573f)), -206f, _wgslsmith_f_op_f32(floor(arg_0.e)));
    let var_2 = Struct_3(max(func_1(firstLeadingBit(vec2<i32>(arg_0.c.b, 42291i)), global0.x, !(!vec3<bool>(arg_2.c.a.x, false, false))).d, arg_2.d), -vec3<i32>(arg_0.a, min(min(arg_2.d.x, arg_0.b.b), ~1i), firstTrailingBit(max(arg_0.a, 2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.yz - _wgslsmith_f_op_vec2_f32(var_1.yz + vec2<f32>(arg_2.e, 1620f))), var_1.yz)) + vec2<f32>(1557f, -751f)), Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e, select(u_input.e, vec2<u32>(1u, 0u), arg_2.b.a.yz)), _wgslsmith_add_u32(113541u, u_input.e.x)), func_1(max(arg_2.d.zz, arg_2.d.xx), true, !select(vec3<bool>(global0.x, global0.x, arg_0.c.a.x), vec3<bool>(arg_2.c.a.x, true, arg_2.c.a.x), vec3<bool>(arg_2.c.a.x, false, global0.x))).b, Struct_1(vec3<bool>(arg_1 == arg_3, arg_2.b.a.x, false), 2147483647i), any(!(!vec4<bool>(global0.x, global0.x, false, arg_2.b.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.e, -1000f, arg_1)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -551f, _wgslsmith_f_op_f32(arg_3 + -338f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, arg_3, 2055f))))));
    let var_3 = ~(~vec4<u32>(firstTrailingBit(var_0), _wgslsmith_mult_u32(8052u, 3546u), u_input.a, 66879u)) ^ reverseBits(countOneBits(vec4<u32>(abs(0u), u_input.c, 20514u, var_2.d.a.x)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec2<i32>(u_input.d.x, u_input.b), any(!select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, true, false, false), vec4<bool>(global0.x, true, global0.x, false))), !(!vec3<bool>(false, true, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1087f, -355f), _wgslsmith_f_op_f32(floor(-1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1280f)))), Struct_4(~_wgslsmith_div_i32(~u_input.d.x, func_3(vec2<i32>(u_input.b, 46559i))), func_1(-u_input.d.yx, any(vec2<bool>(true, global0.x)) | all(vec2<bool>(global0.x, false)), select(!vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, true), global0.x | global0.x)).c, func_1(~vec2<i32>(u_input.b, u_input.b), !(u_input.d.x >= -2193i), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x))).b, vec3<i32>(min(~(-2147483647i), -41665i), i32(-1i) * -2147483647i, 18970i), _wgslsmith_div_f32(_wgslsmith_div_f32(-1224f, 1025f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(735f + -843f), _wgslsmith_f_op_f32(round(875f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + -851f)) - 1349f));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(abs(1u), ~(~u_input.c >> (reverseBits(40577u) % 32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, var_0.d.a.x), vec3<u32>(u_input.a, 0u, 0u)), ~(vec3<u32>(14409u, u_input.c, 4294967295u) ^ vec3<u32>(u_input.e.x, 4294967295u, var_0.d.a.x))), vec3<u32>(firstLeadingBit(u_input.c), ~abs(86106u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.a.x, u_input.e.x, 3211u), vec3<u32>(0u, 1u, u_input.e.x)), ~var_0.d.a.x))));
    var var_2 = Struct_4(-1i, func_1(_wgslsmith_mult_vec2_i32(abs(u_input.d.zz), var_0.b.zx), _wgslsmith_mod_u32(abs(var_0.d.a.x), u_input.e.x) > var_0.d.a.x, var_0.d.b.a).b, Struct_1(func_1(vec2<i32>(2147483647i, -11036i), !var_0.d.d, var_0.d.b.a).c.a, u_input.b), -firstLeadingBit(max(func_5(Struct_4(-19232i, var_0.d.b, var_0.d.c, var_0.a, 615f), var_0.c.x, Struct_4(var_0.b.x, Struct_1(vec3<bool>(false, true, global0.x), u_input.d.x), Struct_1(var_0.d.b.a, u_input.b), u_input.d, var_0.e.x), -472f).a, vec3<i32>(-12878i, -1i, u_input.d.x))), _wgslsmith_f_op_f32(var_0.e.x - func_1(u_input.d.yy >> (~vec2<u32>(10707u, 4294967295u) % vec2<u32>(32u)), !global0.x, func_5(Struct_4(-1i, Struct_1(vec3<bool>(true, var_0.d.b.a.x, true), 8135i), Struct_1(var_0.d.b.a, var_0.d.b.b), vec3<i32>(-1i, u_input.d.x, -1i), -2613f), _wgslsmith_f_op_f32(-var_0.c.x), Struct_4(u_input.b, var_0.d.c, Struct_1(vec3<bool>(true, false, false), 6064i), var_0.a, 1000f), _wgslsmith_f_op_f32(-301f + var_0.e.x)).d.c.a).e));
    let var_3 = countOneBits(abs(vec3<u32>(4294967295u, var_1.x, firstLeadingBit(~u_input.e.x))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.e))))));
    let var_5 = 48008u;
    var_4 = var_2.e;
    var_2 = Struct_4(62628i, var_0.d.c, func_1(u_input.d.xz, true, !vec3<bool>(true, true || var_2.c.a.x, global0.x & global0.x)).b, var_2.d, var_2.e);
    var_4 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(4294967295u & min(u_input.a, 1u)), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(var_1.x, 4294967295u, var_3.x, var_0.d.a.x)), vec4<u32>(14983u, 1u, firstLeadingBit(1423u), 36047u >> (var_5 % 32u)))));
}

