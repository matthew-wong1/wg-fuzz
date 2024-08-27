struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
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

var<private> global0: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<i32> {
    let var_0 = Struct_1(u_input.a, _wgslsmith_div_u32(u_input.b.x, ~_wgslsmith_add_u32(~37808u, select(0u, u_input.b.x, false))), arg_0);
    global0 = any(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, true));
    var var_1 = !select(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(all(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, false)), false), select(false, false, false)));
    return vec4<i32>(i32(-1i) * -24921i, 7465i, _wgslsmith_add_i32(0i, abs(countOneBits(firstLeadingBit(1i)))), _wgslsmith_dot_vec2_i32(~vec2<i32>(~arg_1, u_input.a.x), firstTrailingBit(firstTrailingBit(-vec2<i32>(10619i, 85143i)))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_sub_vec4_i32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-647f))), u_input.a.x), vec4<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -54828i) >> (u_input.b % vec4<u32>(32u))) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(vec4<i32>(-20585i, -10372i, 2147483647i, -21043i))), ~u_input.a.x, abs(u_input.a.x), 1i >> (countOneBits(1u) % 32u)));
    global0 = all(vec2<bool>(true, !all(vec3<bool>(false, true, true))));
    let var_1 = 52843u;
    var var_2 = 1i;
    var var_3 = select(select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(false, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(any(vec3<bool>(true, true, false)) & (20845u <= ~var_1), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), all(vec4<bool>(false, true, false, true)))), any(vec4<bool>(true, true, true, true))), any(vec2<bool>(true, !all(vec2<bool>(false, false)))));
    return Struct_4(Struct_1(var_0.zzz ^ firstTrailingBit(-vec3<i32>(u_input.a.x, var_0.x, -23435i)), abs(countOneBits(4294967295u)) >> ((_wgslsmith_clamp_u32(u_input.b.x, var_1, 4294967295u) >> ((var_1 >> (105247u % 32u)) % 32u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 1700f))) - 1307f)), vec3<u32>(select(u_input.b.x & var_1, _wgslsmith_add_u32(u_input.b.x, var_1), !var_3.x), u_input.b.x, ~min(var_1, 2556u)) << (~u_input.b.wxz % vec3<u32>(32u)), Struct_3(!all(var_3.wy), Struct_1(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, var_0.x)) & u_input.a, 43527u, _wgslsmith_f_op_f32(max(-969f, _wgslsmith_f_op_f32(2355f - 1130f)))), Struct_2(~max(u_input.b, u_input.b), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1582f), -55394i).yxy)), any(vec4<bool>(false | (-1i >= var_0.x), !(var_0.x <= 2147483647i), select(all(vec2<bool>(false, true)), var_3.x, !var_3.x), !var_3.x)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: u32) -> vec4<bool> {
    var var_0 = !(!vec4<bool>(-arg_1 <= func_2().c.c.b.x, arg_0.d, arg_0.d, arg_0.c.b.c < _wgslsmith_div_f32(1525f, 2719f)));
    global0 = true;
    global0 = -352f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.c));
    var var_1 = Struct_2(arg_0.c.c.a, u_input.a);
    var var_2 = arg_0;
    return !(!vec4<bool>(!any(vec2<bool>(false, var_2.c.a)), true, !(var_0.x != arg_0.d), (var_1.b.x == 2147483647i) & false));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = select(true, !any(func_4(func_2(), 1i, u_input.b.x)), func_2().d);
    let var_0 = -612f;
    var var_1 = false;
    let var_2 = Struct_3(select(true, !(func_4(Struct_4(Struct_1(vec3<i32>(u_input.a.x, 29045i, 47310i), u_input.b.x, 849f), u_input.b.wxz, Struct_3(true, Struct_1(vec3<i32>(1i, -1i, arg_0.x), u_input.b.x, 1170f), Struct_2(u_input.b, arg_0)), true), 1i, 57116u).x | true), false), func_2().c.b, Struct_2(u_input.b, u_input.a));
    var var_3 = var_2.c.a.yyy;
    return Struct_1(~vec3<i32>(max(u_input.a.x, arg_0.x), -64213i, reverseBits(arg_0.x)), reverseBits(var_3.x), _wgslsmith_f_op_f32(step(var_0, var_2.b.c)));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) - arg_1.c), _wgslsmith_f_op_f32(round(func_2().a.c))) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), 168f)))), false));
    let var_1 = Struct_2(u_input.b, ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x << (31062u % 32u), -u_input.a.x, arg_1.a.x), ~abs(vec3<i32>(arg_1.a.x, u_input.a.x, 13455i))));
    var var_2 = Struct_1(abs(-vec3<i32>(-1i, var_1.b.x, u_input.a.x) >> (reverseBits(var_1.a.yyy) % vec3<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(var_1.a.zyw, vec3<u32>(57576u, 4294967295u, 0u))), ~max(vec3<u32>(60141u, arg_1.b, 42582u), var_1.a.yzz)), reverseBits(func_1(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.a.x)).b)), 262f);
    var_2 = arg_1;
    var var_3 = vec2<bool>(false, any(vec3<bool>(true, true, true)));
    return Struct_3(arg_0, arg_1, func_2().c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = !all(vec4<bool>(true, true, true, true));
    let var_1 = func_5(false, func_1(countOneBits(~_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -1633i, ~(-2734i)), reverseBits(var_0 >> (u_input.b.xyx % vec3<u32>(32u))));
    global0 = var_1.a;
    var var_3 = Struct_1(vec3<i32>(var_0.x, 1i, u_input.a.x), abs(~12554u), _wgslsmith_f_op_f32(-func_5(_wgslsmith_dot_vec3_u32(var_1.c.a.yxx, u_input.b.yyx) == 57802u, var_1.b).b.c));
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(45464u);
}

