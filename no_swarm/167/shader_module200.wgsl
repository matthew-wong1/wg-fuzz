struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -8553i, 17228i, 2147483647i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = ~_wgslsmith_mult_vec4_i32(max(vec4<i32>(global0.x, ~u_input.a.x, _wgslsmith_clamp_i32(2147483647i, 2147483647i, 6133i), ~(-2147483647i)), -(vec4<i32>(1218i, -1i, 1i, global0.x) >> (vec4<u32>(10228u, u_input.b, arg_0.d.a.x, 4294967295u) % vec4<u32>(32u)))), abs(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_0.b.a, global0.x, u_input.a.x, 11478i)), _wgslsmith_mod_vec4_i32(vec4<i32>(23697i, 30260i, 0i, global0.x), vec4<i32>(-13337i, u_input.a.x, 1i, arg_0.b.a)))));
    var var_0 = select(vec4<bool>(countOneBits(0u & u_input.b) > (~0u >> (u_input.b % 32u)), true, true, !all(vec2<bool>(true, false))), vec4<bool>(true, true, arg_0.a.x < _wgslsmith_f_op_f32(f32(-1f) * -1226f), select(true, true, select(u_input.b > 98145u, arg_0.a.x == -1063f, all(vec4<bool>(true, true, true, false))))), vec4<bool>(true, any(vec3<bool>(true, false, true)), ~u_input.b >= 34708u, false));
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(select(vec3<i32>(12965i, arg_0.c.x, -30342i), vec3<i32>(-16749i, u_input.a.x, -31724i), var_0.x) << (arg_0.d.a.yzy % vec3<u32>(32u))), ~max(u_input.a, vec3<i32>(-76901i, arg_0.b.a, -17514i)) | u_input.a), -1i, (64182i >> (0u % 32u)) << (arg_0.d.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-u_input.a.x), countOneBits(_wgslsmith_mod_i32(2147483647i, 1i)), _wgslsmith_sub_i32(arg_0.c.x, reverseBits(arg_0.c.x)), arg_0.c.x), firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(arg_0.b.a, global0.x, -10541i, 52311i))));
    var var_1 = Struct_4(_wgslsmith_clamp_vec3_u32(~arg_0.d.a.yzw, arg_0.d.a.yxx, _wgslsmith_sub_vec3_u32(select(abs(arg_0.d.a.yxy), ~vec3<u32>(65130u, 1u, arg_0.b.b), vec3<bool>(true, true, true)), select(_wgslsmith_mod_vec3_u32(arg_0.d.a.zyy, vec3<u32>(72432u, u_input.b, 5103u)), vec3<u32>(0u, arg_0.b.b, 4294967295u), false))), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1020f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.a.x)), 1221f))))));
    var var_2 = var_0.xw;
    return ~56536u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1225f, _wgslsmith_f_op_f32(arg_3.b.a.x + arg_3.b.a.x)))))), vec2<f32>(433f, 1365f)));
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(arg_3.b.c, (vec3<i32>(u_input.a.x, arg_3.b.c.x, -1i) & arg_3.b.c) & u_input.a), arg_3.b.c.x, ~countOneBits(global0.x), u_input.a.x) ^ vec4<i32>(1i, _wgslsmith_div_i32(-2147483647i, ~global0.x) >> ((arg_3.b.b.b << ((arg_1.a.x >> (1u % 32u)) % 32u)) % 32u), 1i, (global0.x >> (func_3(arg_3.b) % 32u)) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 24083i), vec3<i32>(u_input.a.x, global0.x, global0.x)));
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(795f, -769f)));
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(122f, -397f, true | arg_0)))), _wgslsmith_f_op_f32(905f * _wgslsmith_f_op_f32(f32(-1f) * -527f))));
    return arg_0;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1536f)) + 114f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1642f)) + _wgslsmith_f_op_f32(-2340f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(543f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f + var_0.x)))), -1062f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-912f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 341f, 1591f) - vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    let var_1 = !vec4<bool>(false, !func_2(false, Struct_1(vec4<u32>(u_input.b, 16138u, 106734u, u_input.b)), vec3<u32>(u_input.b, 9186u, 33998u), Struct_4(vec3<u32>(53961u, u_input.b, 0u), Struct_3(vec3<f32>(var_0.x, 277f, 391f), Struct_2(-2147483647i, u_input.b), u_input.a, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))), -690f)) || true, any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), select(true, true, true));
    var var_2 = vec2<f32>(331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-217f)) - _wgslsmith_f_op_f32(-var_0.x)));
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), -295f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(max(-620f, 599f))))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(866f, var_2.x, -207f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, -1321f, 333f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -661f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -415f, var_0.x)))))), Struct_2(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(-52952i, 40952i), u_input.a.x)), abs(u_input.b)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, 13922i, u_input.a.x), max(-vec3<i32>(u_input.a.x, global0.x, -2147483647i), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 1i, u_input.a.x))), Struct_1(vec4<u32>(64083u, ~(36496u << (u_input.b % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 36111u), vec2<u32>(1u, u_input.b)), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 2147483647i), -2147483647i, global0.x, 10266i) << (abs(vec4<u32>(u_input.b, 0u, 46696u, u_input.b) >> (vec4<u32>(0u, u_input.b, 83486u, 59327u) % vec4<u32>(32u))) % vec4<u32>(32u)), ((vec4<i32>(u_input.a.x, 0i, global0.x, u_input.a.x) << (vec4<u32>(1u, u_input.b, 45533u, u_input.b) % vec4<u32>(32u))) ^ ~vec4<i32>(1i, u_input.a.x, 37232i, 0i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 103076u, u_input.b, 1u) & vec4<u32>(30211u, u_input.b, 1u, u_input.b), vec4<u32>(1u, 4294967295u, 51348u, 0u)) % vec4<u32>(32u)));
    let var_0 = func_1();
    global0 = reverseBits(~_wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.b.a, 1i, 1i, -1i), vec4<i32>(var_0.b.a, global0.x, 3548i, -59770i), true), vec4<i32>(var_0.b.a, 2147483647i, -27571i, 0i)) ^ _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.a, var_0.b.a, 1i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 1i, global0.x, u_input.a.x), vec4<i32>(global0.x, var_0.c.x, u_input.a.x, global0.x))), -vec4<i32>(u_input.a.x, var_0.b.a, u_input.a.x, u_input.a.x)));
    global0 = reverseBits(-select(firstTrailingBit(vec4<i32>(-38004i, 29382i, u_input.a.x, u_input.a.x)), -vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))) >> (_wgslsmith_div_vec4_u32(abs(vec4<u32>(11293u, var_0.b.b, var_0.b.b, u_input.b) & (vec4<u32>(0u, var_0.b.b, var_0.d.a.x, u_input.b) >> (var_0.d.a % vec4<u32>(32u)))), var_0.d.a) % vec4<u32>(32u));
    var var_1 = Struct_5(var_0.b, -vec4<i32>(-firstTrailingBit(-28071i), i32(-1i) * -1i, 1i, firstTrailingBit(_wgslsmith_div_i32(9301i, 17701i))), Struct_2(1i, 1u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(max(_wgslsmith_add_u32(var_0.b.b, 43268u), u_input.b), var_0.d.a.x), var_0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.a.zy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(598f, _wgslsmith_f_op_f32(abs(1416f)), var_0.a.x, 1601f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -1387f, 1417f), vec4<f32>(-710f, var_0.a.x, var_0.a.x, var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(2248f, var_0.a.x, 1861f, var_0.a.x) * vec4<f32>(var_0.a.x, var_0.a.x, 575f, var_0.a.x)), vec4<f32>(-357f, _wgslsmith_f_op_f32(floor(-1263f)), func_1().a.x, 140f)))));
}

