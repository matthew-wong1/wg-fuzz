struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 905f;

var<private> global1: vec4<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_3(~16422i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_0.yw)), vec2<f32>(arg_0.x, arg_0.x), 297f > arg_1)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-672f)), _wgslsmith_f_op_f32(-635f - arg_1))))));
    let var_1 = i32(-1i) * -1i;
    var_0 = Struct_3(-(u_input.c << (~(~4020u) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2733f, _wgslsmith_f_op_f32(-var_0.b.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-337f, 392f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-589f, arg_0.x) * vec2<f32>(-558f, arg_0.x))) - arg_0.wz)));
    var_0 = Struct_3(_wgslsmith_dot_vec4_i32(~u_input.a | -firstTrailingBit(vec4<i32>(42657i, u_input.c, 0i, u_input.c)), countOneBits(u_input.a)), _wgslsmith_f_op_vec2_f32(-var_0.b));
    var var_2 = vec4<f32>(-679f, arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(trunc(-140f)), true)) * 408f), arg_1, true)), arg_0.x);
    return select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, !(u_input.c < var_0.a) & select(var_1 < var_1, global1.x, global1.x), any(vec4<bool>(all(vec2<bool>(global1.x, global1.x)), true, global1.x, false & global1.x)), !global1.x), select(vec4<bool>((global1.x & true) || true, !any(vec3<bool>(global1.x, global1.x, false)), true, false), !(!vec4<bool>(false, false, true, global1.x)), any(!(!global1.yxx))));
}

fn func_2(arg_0: vec3<bool>) -> vec2<i32> {
    global1 = select(select(vec4<bool>(true, !all(arg_0), any(vec3<bool>(global1.x, arg_0.x, true)), global1.x), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, -1000f, -101f, -1039f) * vec4<f32>(1368f, 976f, -1631f, 239f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-131f))), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 26660u, u_input.b.x), global1.x) ^ ~vec4<u32>(13401u, 22630u, 1u, 45371u)), vec4<bool>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.d.x, u_input.d.x, -2147483647i)) > u_input.c, global1.x, global1.x, false)), !select(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1904f, -887f, 1000f, 2527f), vec4<f32>(1393f, -1313f, 311f, 222f), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(round(378f)), abs(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 32362u))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, 1056f, 461f, 131f)), _wgslsmith_f_op_f32(1219f + 844f), vec4<u32>(21862u, 11990u, 0u, u_input.b.x)), arg_0.x), select(!select(!vec4<bool>(arg_0.x, true, global1.x, false), vec4<bool>(arg_0.x, global1.x, false, false), true), !(!(!vec4<bool>(arg_0.x, arg_0.x, global1.x, false))), vec4<bool>(!any(vec4<bool>(true, arg_0.x, arg_0.x, global1.x)), true, true, global1.x)));
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1188f + 1000f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1647f, 1000f), _wgslsmith_f_op_f32(-770f - -213f)))), _wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_div_f32(261f, _wgslsmith_f_op_f32(trunc(754f)))), reverseBits(vec4<i32>(u_input.a.x & u_input.c, -_wgslsmith_mult_i32(u_input.d.x, u_input.a.x), -(~u_input.a.x), ~(-63879i))), vec3<i32>(_wgslsmith_dot_vec4_i32(max(u_input.a, abs(vec4<i32>(u_input.d.x, -38412i, 12364i, 1i))), vec4<i32>(max(u_input.c, 921i), countOneBits(13356i), u_input.d.x, 25971i)), abs(-(i32(-1i) * -1i)), u_input.a.x), vec3<i32>(_wgslsmith_mod_i32(33397i, u_input.a.x), _wgslsmith_add_i32(u_input.d.x, abs(2147483647i)), -1i));
    var var_1 = vec4<i32>(22584i, -1i, -(~1i), u_input.a.x);
    let var_2 = -_wgslsmith_dot_vec2_i32(vec2<i32>(1812i, ~select(u_input.c, -24226i, global1.x)), abs(reverseBits(vec2<i32>(u_input.d.x, var_1.x))) | u_input.d);
    var var_3 = arg_0.zx;
    return vec2<i32>(1i, countOneBits(-(var_0.c.x >> (1u % 32u))) | countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 40482i, var_0.b.x) & var_1.zxx, var_0.b.wxw)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 83268u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 36573u, u_input.b.x, 32972u) ^ vec4<u32>(1u, u_input.b.x, 117757u, u_input.b.x))));
    var var_1 = Struct_3(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~arg_0.x), vec2<i32>(-19665i, arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a.x, -999f) + vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(min(arg_1.b, arg_1.a.a.x)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.c.a.x, arg_1.b)))))));
    let var_2 = Struct_3(-39259i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b.x, var_1.b.x))), vec2<f32>(arg_1.c.a.x, 706f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b, arg_1.c.a.zy, true))), true)))));
    var var_3 = ~1i;
    var_3 = ~max(0i, -21581i);
    return arg_1;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.b.x, 4294967295u, 35711u, 62564u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 4294967295u, 12739u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x))), ~(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u), vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x)))) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, ~firstTrailingBit(u_input.b.x), u_input.b.x, ~u_input.b.x), vec4<u32>(~(u_input.b.x ^ u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 0u), min(_wgslsmith_mod_u32(56096u, 4294967295u), 4757u), u_input.b.x));
    var var_1 = func_4(~(~func_2(global1.zyy)) << (max(select(vec2<u32>(38905u, 0u), select(vec2<u32>(4294967295u, 4294967295u), var_0.zx, vec2<bool>(global1.x, global1.x)), select(global1.yx, global1.zy, true)), vec2<u32>(54643u, _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, 41340u)))) % vec2<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1179f, -1193f, -103f))), countOneBits(vec4<i32>(u_input.c, -1i, u_input.a.x, -2147483647i)), vec3<i32>(u_input.d.x, u_input.c & u_input.c, -1i), select(vec3<i32>(u_input.a.x, u_input.a.x, -349i), u_input.a.zyy, global1.yyz) << ((vec3<u32>(var_0.x, var_0.x, var_0.x) ^ vec3<u32>(0u, var_0.x, u_input.b.x)) % vec3<u32>(32u))), -975f, Struct_1(vec3<f32>(-1874f, 759f, _wgslsmith_f_op_f32(step(-325f, -490f))), max(vec4<i32>(-1i, -15903i, u_input.d.x, -36333i), vec4<i32>(16108i, -1i, u_input.d.x, u_input.d.x) & vec4<i32>(u_input.c, -1i, u_input.d.x, u_input.c)), u_input.a.wyw, vec3<i32>(-31422i, u_input.a.x, _wgslsmith_add_i32(u_input.c, -1i)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.x, var_1.b, -416f)) - _wgslsmith_f_op_vec3_f32(-var_1.c.a)) - var_1.c.a) * _wgslsmith_f_op_vec3_f32(-var_1.c.a)), u_input.a, _wgslsmith_clamp_vec3_i32(var_1.a.c, var_1.c.c, vec3<i32>(u_input.a.x, 1i << (u_input.b.x % 32u), func_4(vec2<i32>(u_input.a.x, 1i), Struct_2(Struct_1(vec3<f32>(var_1.a.a.x, var_1.c.a.x, var_1.a.a.x), vec4<i32>(2147483647i, 0i, u_input.c, -1i), var_1.c.b.wxw, vec3<i32>(u_input.c, -2147483647i, var_1.c.b.x)), 1365f, var_1.c)).c.c.x)), _wgslsmith_mult_vec3_i32(u_input.a.xxw, vec3<i32>(-_wgslsmith_clamp_i32(u_input.d.x, -19369i, 35769i), u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), 2147483647i)));
    var var_3 = global1.x;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))));
    return StorageBuffer(var_0, var_0.zzw, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

