struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_2(arg_3.xy, -vec4<i32>(-1610i, abs(-28i), 2147483647i, arg_2) | reverseBits(abs(~vec4<i32>(arg_0, -84285i, arg_2, u_input.b.x))), ~abs(max(vec3<u32>(7333u, u_input.a.x, 5225u), arg_1.a.wyz)) >> (_wgslsmith_div_vec3_u32(~arg_1.a.xxz, ~u_input.a.yzw) % vec3<u32>(32u)), min(_wgslsmith_add_vec3_u32(u_input.a.zwz, ~arg_1.a.xwx >> ((vec3<u32>(arg_1.a.x, 4294967295u, 1u) & u_input.a.zxw) % vec3<u32>(32u))), u_input.a.yyx), ~(countOneBits(vec3<u32>(4294967295u, global0.x, global0.x)) << (arg_1.a.xxx % vec3<u32>(32u))) | abs(vec3<u32>(22288u, 3935u, _wgslsmith_clamp_u32(52727u, arg_1.a.x, 1u))));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.b, _wgslsmith_div_vec4_i32(-vec4<i32>(0i, -8089i, -14188i, var_0.b.x) & _wgslsmith_sub_vec4_i32(var_0.b, var_0.b), vec4<i32>(abs(5003i), _wgslsmith_sub_i32(arg_0, u_input.b.x), arg_2, arg_2)), vec4<i32>(u_input.d, -select(2147483647i, var_0.b.x, true), ~(-30154i), abs(u_input.b.x))), select(var_0.b, vec4<i32>(var_0.b.x, ~abs(u_input.c.x), -1i, arg_2), arg_3));
    var var_2 = Struct_1(arg_1.b, -_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(1i, _wgslsmith_div_i32(arg_0, u_input.c.x), 1i)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -696f);
    var var_4 = var_2.b;
    return u_input.a;
}

fn func_2(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec4_u32(u_input.a, ~max(u_input.a ^ u_input.a, func_3(u_input.c.x, Struct_3(vec4<u32>(58447u, global0.x, 0u, 4294967295u), false), 0i, vec4<bool>(false, true, true, true)))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(countOneBits(u_input.a.x), u_input.a.x), 87754u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.e.x, u_input.a.x, 71533u), vec4<u32>(global0.x, global0.x, 0u, 9810u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 55485u, u_input.a.x, 89738u), u_input.a), 4294967295u | u_input.e.x, 0u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 7402u, 1u), u_input.a.xxw)) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(abs(arg_0.x));
    let var_2 = true;
    global0 = vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(var_0.x, _wgslsmith_clamp_u32(global0.x, global0.x, u_input.e.x)), global0.x), 1u);
    var var_3 = Struct_2(!select(vec2<bool>(true, true), select(!vec2<bool>(true, var_2), !vec2<bool>(var_2, var_2), var_2), true), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(0i, u_input.c.x), countOneBits(28587i), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_add_i32(u_input.b.x, -1i)), -vec4<i32>(u_input.b.x, -29709i, 1i, 0i) ^ ~vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(0i, -10710i)), 1i << (global0.x % 32u), -5737i | u_input.c.x)), firstLeadingBit(~vec4<i32>(u_input.d, 22112i, -1i, u_input.d))), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, max(var_0.x, 50826u), 45932u), select(abs(vec3<u32>(var_0.x, u_input.e.x, global0.x)), u_input.a.yzw >> (vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(var_2, true, true))) ^ u_input.a.zzx, var_0.xxz, select(~vec3<u32>(28978u, ~u_input.e.x, firstTrailingBit(u_input.e.x)), u_input.a.ywy, select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, var_2), vec3<bool>(var_2, false, var_2)), select(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, var_2), false), vec3<bool>(var_2, var_2, true), any(vec3<bool>(var_2, var_2, var_2))), vec3<bool>(all(vec3<bool>(var_2, true, true)), any(vec4<bool>(false, var_2, false, false)), true))));
    return var_0.zz;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec3<bool> {
    global0 = _wgslsmith_sub_vec2_u32(u_input.e, ~u_input.a.xz);
    global0 = vec2<u32>(arg_0.a.x, u_input.a.x);
    global0 = _wgslsmith_div_vec2_u32(~arg_0.a.yz, u_input.e | func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, arg_2.x))));
    global0 = ~vec2<u32>(~(func_3(1i, Struct_3(arg_0.a, arg_1.x), 2147483647i, vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b)).x >> (1u % 32u)), arg_0.a.x);
    let var_0 = arg_0;
    return vec3<bool>(true, arg_0.b, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> vec3<bool> {
    let var_0 = 2147483647i;
    global0 = max(~u_input.e, _wgslsmith_sub_vec2_u32(u_input.a.zw, reverseBits(u_input.a.xz)));
    global0 = vec2<u32>(u_input.a.x, 4294967295u);
    global0 = vec2<u32>(14018u, global0.x) & u_input.e;
    global0 = ~u_input.e;
    return !vec3<bool>(true, _wgslsmith_div_i32(~(-1051i), var_0) <= -2147483647i, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.wxw;
    var var_1 = func_4(select(select(!func_1(Struct_3(vec4<u32>(1u, u_input.a.x, u_input.e.x, global0.x), false), vec2<bool>(true, true), vec2<f32>(-219f, 1000f)), vec3<bool>(true, u_input.b.x == 13370i, select(false, true, true)), false), !select(func_1(Struct_3(u_input.a, false), vec2<bool>(true, false), vec2<f32>(396f, -1688f)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1507f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-482f, -928f) + _wgslsmith_f_op_f32(-600f - 515f))) * 640f));
    var var_2 = firstLeadingBit(-select(min(-vec4<i32>(u_input.b.x, u_input.d, 0i, -32172i), min(vec4<i32>(u_input.b.x, u_input.d, -1655i, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.c.x, -62214i))), abs(~vec4<i32>(2147483647i, -6255i, 2147483647i, u_input.b.x)), var_1.x));
    let var_3 = ~(~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(~var_0.x, 1u >> (var_0.x % 32u)), 4294967295u, 36790u));
    var var_4 = Struct_3(~var_3, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_3 ^ vec4<u32>(u_input.a.x, 18731u, var_4.a.x, 30568u), u_input.a | var_4.a), vec4<u32>(0u, ~var_3.x, _wgslsmith_clamp_u32(var_4.a.x, 16742u, 0u), _wgslsmith_dot_vec3_u32(var_3.yzx, u_input.a.wwz))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4828u, 27199u), ~var_3.xx), ~(~4294967295u), _wgslsmith_add_u32(global0.x, global0.x & global0.x), firstTrailingBit(global0.x)) % vec4<u32>(32u)), u_input.b.x, 1u, _wgslsmith_f_op_f32(min(-138f, _wgslsmith_f_op_f32(1397f * 438f))));
}

