struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-991f - 850f)));
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(24710u, 4294967295u, 25073u), vec3<u32>(u_input.a.x, u_input.c, u_input.c))) ^ select(vec3<u32>(9590u, 4294967295u, 0u), ~vec3<u32>(u_input.c, 42108u, u_input.a.x), true), firstLeadingBit(~vec3<u32>(u_input.a.x, 4294967295u, 6071u)) << (firstTrailingBit(~vec3<u32>(6351u, u_input.a.x, u_input.c)) % vec3<u32>(32u)), select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, 23153u), vec3<u32>(4294967295u, 15851u, 4294967295u)), select(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, u_input.a.x, u_input.a.x)), true), vec3<bool>(true, true, true))), -reverseBits(_wgslsmith_div_i32(arg_0.x, u_input.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(13454u, u_input.a.x, 1u, u_input.c), vec4<u32>(1u, 1u, u_input.c, u_input.c)) % 32u)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f))), -1641f));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(304f, -1599f, arg_1.x))))), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(838f - 1166f)))))));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = 2930i;
    let var_1 = arg_0;
    global0 = 673f;
    var_0 = min(0i, -u_input.b);
    var var_2 = Struct_4(arg_0.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(var_1.b, arg_0.b, -41501i)), -vec3<i32>(-2147483647i, 30048i, 1i)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)))), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true))), var_1.b);
    return true;
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-149f, _wgslsmith_f_op_f32(-495f * arg_0.d.a.x)), _wgslsmith_f_op_f32(sign(arg_0.d.a.x)))));
    let var_1 = arg_0.d.a;
    return !arg_0.d.b;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    global0 = 898f;
    let var_0 = func_4(Struct_3(_wgslsmith_add_i32(~u_input.b, u_input.b), select(vec3<bool>(false, u_input.b > 29229i, arg_1.x), !arg_1.xzw, vec3<bool>(func_2(Struct_2(vec3<u32>(1u, 0u, u_input.a.x), u_input.b)), func_2(Struct_2(vec3<u32>(4294967295u, 4294967295u, u_input.c), -2147483647i)), arg_0 <= 1294f)), firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(5347u, 23191u), u_input.a), vec2<u32>(u_input.a.x, 31997u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, arg_0, arg_0), vec3<f32>(-1000f, 982f, -760f)))), !(!vec2<bool>(true, arg_1.x)))));
    var var_1 = select(func_4(Struct_3(u_input.b, select(!vec3<bool>(var_0.x, var_0.x, true), select(arg_1.wyy, arg_1.yzz, vec3<bool>(true, arg_1.x, arg_1.x)), func_4(Struct_3(0i, arg_1.zwz, u_input.a, Struct_1(vec3<f32>(-581f, 158f, -1595f), vec2<bool>(arg_1.x, var_0.x)))).x), u_input.a, Struct_1(vec3<f32>(-233f, 575f, 1000f), select(vec2<bool>(true, false), var_0, vec2<bool>(arg_1.x, false))))), select(var_0, select(arg_1.xx, arg_1.yy, func_4(Struct_3(u_input.b, vec3<bool>(false, false, arg_1.x), u_input.a, Struct_1(vec3<f32>(arg_0, 2025f, 993f), var_0)))), !func_4(Struct_3(u_input.b, vec3<bool>(true, var_0.x, arg_1.x), u_input.a, Struct_1(vec3<f32>(-1229f, arg_0, 1939f), arg_1.zx)))), func_4(Struct_3(34544i, !select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, true, true), false), vec2<u32>(~49523u, 4294967295u), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1183f, -369f, arg_0), vec3<f32>(arg_0, arg_0, arg_0))), vec2<bool>(var_0.x, var_0.x)))));
    let var_2 = _wgslsmith_add_i32(u_input.b, ~(u_input.b & 1i));
    let var_3 = max(~vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), select(1u, ~42650u, var_0.x)), ~vec2<u32>(countOneBits(1u), 4294967295u));
    return Struct_3(reverseBits(countOneBits(-1i) | var_2) >> (u_input.a.x % 32u), select(arg_1.xxx, !arg_1.xxz, vec3<bool>(true, true, true)), var_3, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, -371f), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(312f, 211f, 422f) + vec3<f32>(arg_0, 1080f, arg_0))))), arg_1.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u);
    global0 = 1509f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(round(-230f)));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(f32(-1f) * -2316f))));
    var var_1 = func_1(-541f, !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), all(vec2<bool>(false, false)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, var_1.d.a.x))) + _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(-157f, var_1.d.a.x)))))));
    let var_2 = Struct_4(countOneBits(_wgslsmith_mod_u32(var_1.c.x, 1u)), var_1.d, i32(-1i) * -66242i);
    let var_3 = 1i ^ _wgslsmith_mult_i32(_wgslsmith_clamp_i32(firstTrailingBit(1i), -1i, 2147483647i), -12374i | _wgslsmith_sub_i32(var_1.a ^ u_input.b, ~u_input.b));
    var_1 = func_1(1000f, vec4<bool>(!all(select(var_1.b, var_1.b, var_1.b.x)), !var_1.d.b.x, false, !any(vec3<bool>(var_1.d.b.x, false, var_1.d.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.d.a, var_1.d.a) + _wgslsmith_f_op_vec3_f32(-var_1.d.a)))), ~vec4<i32>(abs(~22163i), u_input.b, var_3, -2147483647i));
}

