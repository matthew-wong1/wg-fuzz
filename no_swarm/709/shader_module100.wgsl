struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec3<i32>) -> i32 {
    global0 = 21590u;
    return ~(arg_0.x >> (88266u % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = Struct_2(-(~_wgslsmith_add_vec4_i32(arg_1.a, vec4<i32>(u_input.a, arg_0.a.x, -37654i, arg_1.b.x))) ^ arg_0.a, arg_1.a.xw, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, firstTrailingBit(~u_input.b), max(4294967295u, 0u) | _wgslsmith_sub_u32(4294967295u, arg_1.c)), vec3<u32>(3239u, ~arg_1.c & arg_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 15512u) >> (vec2<u32>(u_input.b, arg_0.c) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(0u, u_input.b))))));
    global0 = arg_0.c;
    let var_1 = Struct_4(abs(arg_0.a.x), Struct_3(Struct_1(vec3<bool>(true, true, all(vec3<bool>(false, true, true)))), vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true && (arg_2 > var_0.b.x)), Struct_1(vec3<bool>(true, all(vec3<bool>(false, true, false)), true))), Struct_3(Struct_1(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), Struct_1(vec3<bool>(true, true, true))), 0i, Struct_1(vec3<bool>(true, true, true)));
    var var_2 = Struct_4(-2147483647i, Struct_3(var_1.c.a, select(!select(vec4<bool>(var_1.b.a.a.x, false, var_1.c.c.a.x, var_1.c.a.a.x), var_1.b.b, var_1.e.a.x), var_1.b.b, vec4<bool>(any(var_1.c.c.a.yx), true, true, false)), var_1.e), var_1.c, -22056i, var_1.b.c);
    var_2 = var_1;
    return var_0.c;
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    global0 = 0u;
    global0 = func_4(Struct_2(vec4<i32>(_wgslsmith_div_i32(17501i, 1i), countOneBits(-63128i), max(u_input.c, -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(20281i, u_input.a, -31134i, 66716i), vec4<i32>(-19591i, -2147483647i, 0i, -11980i))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(17762i, u_input.c), vec2<i32>(-59300i, u_input.c) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), abs(vec2<i32>(-40056i, u_input.a))) | ((vec2<i32>(u_input.c, u_input.a) | vec2<i32>(u_input.a, 1i)) ^ select(vec2<i32>(u_input.a, -425i), vec2<i32>(-2147483647i, u_input.c), vec2<bool>(arg_0.a.x, arg_0.a.x))), _wgslsmith_sub_u32(~1u, u_input.b) >> (u_input.b % 32u)), Struct_2(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.a, 21365i), vec4<i32>(14240i, u_input.c, u_input.a, -33759i)), -(~vec4<i32>(u_input.c, -20467i, u_input.c, 1i)), true), vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.c), abs(func_3(vec3<i32>(47710i, -1i, 5146i), Struct_4(-1i, Struct_3(Struct_1(vec3<bool>(true, false, true)), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0), Struct_3(arg_0, vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), u_input.c, arg_0), vec3<i32>(12293i, -2147483647i, u_input.c)))), _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(~u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b)))), u_input.a);
    let var_0 = -635i;
    global0 = select(~(u_input.b >> (~37091u % 32u)) | ~(~(~0u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 48644u, 1u), reverseBits(vec3<u32>(47136u, 81172u, 0u))) ^ select(24968u, _wgslsmith_mod_u32(~u_input.b, ~u_input.b), any(select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, true), vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x), true))), arg_0.a.x & !arg_0.a.x);
    let var_1 = arg_0.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-611f, -889f, 101f, 438f), vec4<f32>(-866f, 681f, 398f, -1717f)), vec4<f32>(-383f, -368f, -1400f, 702f), vec4<bool>(false, arg_0.a.x, var_1, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1773f, -348f, 1004f, -1401f), vec4<f32>(548f, -1088f, 1449f, -1153f))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    global0 = select(~20976u, 62784u, ~0i > (u_input.a | u_input.a));
    global0 = 1u;
    global0 = countOneBits(0u);
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) - _wgslsmith_f_op_f32(f32(-1f) * -1983f)), -192f, arg_0.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(func_2(arg_2)));
    return all(vec4<bool>(arg_2.a.x, any(!vec4<bool>(arg_2.a.x, true, false, true)) != true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, !(!any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)))), all(vec2<bool>(!select(true, false, true), func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -107f, 1133f))), vec3<u32>(u_input.b, 22066u, u_input.b), Struct_1(vec3<bool>(false, true, true))))));
    var var_1 = vec3<bool>(1u <= _wgslsmith_mod_u32(~70731u, ~(~u_input.b)), !var_0.x, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(304f, -699f, 1353f), vec3<f32>(103f, -1166f, 1097f))))), ~vec3<u32>(39886u, 4294967295u, 8256u), Struct_1(vec3<bool>(true, false, var_0.x))));
    global0 = u_input.b;
    let var_2 = ~(-13510i);
    global0 = reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, countOneBits(u_input.b), ~u_input.b), _wgslsmith_sub_u32(~u_input.b, ~u_input.b)), u_input.b));
    var var_3 = Struct_4(abs(-abs(2147483647i) ^ u_input.c), Struct_3(Struct_1(select(!var_0.zxz, !var_0.wyw, any(var_1.xz))), !vec4<bool>(!var_1.x, !var_0.x, false, true), Struct_1(vec3<bool>(true, false, var_0.x))), Struct_3(Struct_1(vec3<bool>(true, true, select(true, false, false))), select(!vec4<bool>(false, true, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_0.x, var_1.x), var_1.x), Struct_1(var_0.yxx)), 13651i, Struct_1(select(vec3<bool>(var_0.x, false, !var_1.x), vec3<bool>(var_0.x || var_0.x, false, false), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, -1i), 1i), u_input.c, -1i), Struct_4(u_input.c, var_3.c, var_3.c, i32(-1i) * -2147483647i, Struct_1(var_0.wzz)), abs(~firstLeadingBit(vec3<i32>(51246i, var_2, u_input.c)))));
}

