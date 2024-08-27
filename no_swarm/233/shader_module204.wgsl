struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mult_u32(24685u, u_input.e.x)), 1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(32681u, u_input.b.x, 75521u, u_input.b.x) ^ vec4<u32>(0u, u_input.b.x, u_input.e.x, 4294967295u), ~vec4<u32>(u_input.e.x, 26927u, u_input.b.x, 118u)) % 32u), ~_wgslsmith_mult_u32(u_input.c.x ^ u_input.b.x, 1u)), ~8603u << (u_input.c.x % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 * arg_1) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, arg_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, global0.x)))), select(!vec2<bool>(all(vec3<bool>(arg_0, arg_0, true)), var_0.x >= 4294967295u), !select(vec2<bool>(false, arg_0), vec2<bool>(true, true), false), any(!vec3<bool>(arg_0, false, arg_0)))));
    let var_1 = u_input.c;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f - arg_1.x))));
    var var_2 = 0u;
    return u_input.d;
}

fn func_4(arg_0: f32, arg_1: i32) -> vec4<i32> {
    var var_0 = vec4<f32>(global0.x, 1f, _wgslsmith_f_op_f32(-1000f - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_div_f32(arg_0, -1193f)));
    let var_1 = _wgslsmith_div_u32(~min(max(_wgslsmith_add_u32(u_input.c.x, 4294967295u), u_input.e.x << (u_input.b.x % 32u)), u_input.c.x & _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(15206u, 91310u))), max(~(~(~u_input.e.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.b.x, u_input.b.x) >> (max(u_input.c, vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x)) % vec3<u32>(32u)), u_input.c)));
    let var_2 = Struct_1(~50939i, any(!vec3<bool>(true, -806f < var_0.x, true)), !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), true)), select(u_input.c, ~_wgslsmith_mult_vec3_u32(vec3<u32>(4630u, u_input.c.x, var_1), ~u_input.c), _wgslsmith_f_op_f32(select(1870f, _wgslsmith_div_f32(377f, -737f), true)) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(130f, 740f)), _wgslsmith_f_op_f32(abs(arg_0))))), arg_1);
    var var_3 = var_1;
    let var_4 = var_2;
    return u_input.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_add_i32(min(-22073i & u_input.d, -u_input.d), -1i << (_wgslsmith_mod_u32(21949u, u_input.b.x) % 32u)), 2147483647i, -27952i, _wgslsmith_mod_i32(_wgslsmith_div_i32(20769i, 2147483647i) ^ (u_input.a.x ^ u_input.a.x), u_input.a.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1183f)), vec2<f32>(1898f, 1000f))))));
    var var_2 = firstLeadingBit(~(i32(-1i) * -2147483647i));
    var_1 = func_4(global0.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(-56i, 47533i, u_input.a.x), firstLeadingBit(min(u_input.a.zxz, vec3<i32>(1i, var_1.x, u_input.d)))) | _wgslsmith_mult_i32(-func_3(arg_3.x, vec2<f32>(global0.x, global0.x)), abs(var_1.x)));
    return Struct_1(_wgslsmith_sub_i32(-_wgslsmith_div_i32(var_1.x, -2147483647i) << (arg_2.x % 32u), select(5761i, u_input.a.x, arg_3.x)), !arg_3.x, arg_3.yz, (~abs(vec3<u32>(arg_0.x, arg_0.x, 54563u)) >> (firstTrailingBit(min(vec3<u32>(0u, arg_2.x, 4294967295u), arg_0)) % vec3<u32>(32u))) | reverseBits(vec3<u32>(39798u, arg_2.x, var_0.x) | _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(31591u, 0u, 25064u))), 11836i);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), global0.x) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(exp2(global0.x)))));
    let var_0 = func_2(~countOneBits(vec3<u32>(~arg_0.d.x, 4294967295u, u_input.b.x)), -516f, min(_wgslsmith_div_vec2_u32(firstTrailingBit(countOneBits(arg_0.d.xz)), u_input.e), select(vec2<u32>(u_input.e.x, firstTrailingBit(0u)), u_input.c.zz, arg_1 & arg_1)), !vec3<bool>(!all(vec4<bool>(false, arg_0.c.x, arg_0.c.x, false)), any(!vec4<bool>(true, false, arg_1, arg_1)), arg_1));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-323f, 292f), vec2<f32>(global0.x, -959f)))), true)))));
    var var_1 = _wgslsmith_div_f32(-426f, _wgslsmith_f_op_f32(-global0.x));
    var var_2 = func_2(countOneBits(vec3<u32>(_wgslsmith_div_u32(~var_0.d.x, max(arg_0.d.x, u_input.c.x)), countOneBits(~1u), ~(29017u ^ var_0.d.x))), _wgslsmith_f_op_f32(global0.x + global0.x), vec2<u32>(37329u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_0.d.zx, vec2<u32>(u_input.c.x, 11704u) << (vec2<u32>(72652u, arg_0.d.x) % vec2<u32>(32u))), ~(~arg_0.d.x))), vec3<bool>(all(select(vec4<bool>(arg_0.c.x, var_0.c.x, false, arg_1), vec4<bool>(true, false, arg_0.b, arg_1), arg_0.b)) != any(select(vec4<bool>(false, false, var_0.c.x, arg_1), vec4<bool>(true, false, true, true), vec4<bool>(arg_1, arg_1, false, var_0.b))), true, all(select(!vec3<bool>(arg_0.c.x, false, false), !vec3<bool>(true, false, var_0.b), false))));
    return Struct_1(-2147483647i, true, vec2<bool>(true, !(arg_0.c.x | !var_2.c.x)), var_2.d ^ _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(var_0.d.x, var_0.d.x, 1u)), var_0.d), -1i);
}

fn func_5(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0.c.x;
    let var_1 = func_2(vec3<u32>(0u, func_1(func_1(arg_0, arg_0.b), arg_0.c.x).d.x, u_input.c.x), global0.x, ~vec2<u32>(min(arg_0.d.x, 6263u), u_input.b.x), vec3<bool>(arg_0.b, !(!(u_input.d < 5464i)), arg_0.c.x));
    var var_2 = !arg_0.b;
    let var_3 = func_1(func_2(_wgslsmith_div_vec3_u32(func_1(var_1, var_1.b).d, ~countOneBits(vec3<u32>(arg_0.d.x, var_1.d.x, 11996u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * global0.x))))), u_input.e, select(select(select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), vec3<bool>(arg_0.b, arg_0.b, false), var_1.b), !vec3<bool>(false, arg_0.b, true), false), !(!vec3<bool>(arg_0.c.x, false, arg_0.c.x)), !vec3<bool>(false, false, arg_0.b))), !arg_0.c.x || all(func_2(~u_input.c, _wgslsmith_f_op_f32(abs(-513f)), countOneBits(var_1.d.xy), vec3<bool>(var_1.c.x, true, true)).c));
    let var_4 = func_2(max(~_wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(var_3.d, var_1.d)), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.b.x >> (70460u % 32u), 65502u), abs(var_3.d.x))), 203f, ~vec2<u32>(~var_1.d.x, firstLeadingBit(var_1.d.x ^ u_input.e.x)), vec3<bool>(var_3.b, var_1.c.x, var_1.b));
    return vec2<i32>(-(~u_input.d), -(~(-u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(4294967295u << (~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.e.x), vec4<u32>(u_input.b.x, u_input.c.x, 0u, 45274u)), vec4<u32>(u_input.e.x, u_input.b.x, u_input.e.x, 82011u)) % 32u), firstTrailingBit(~(4294967295u >> (0u % 32u)) ^ u_input.e.x), 4294967295u ^ u_input.c.x);
    var var_1 = firstTrailingBit(-func_5(func_1(Struct_1(-62599i, false, vec2<bool>(true, true), u_input.c, u_input.a.x), true)) | vec2<i32>(-5027i, ~firstLeadingBit(-2147483647i)));
    var var_2 = func_2(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.c.x), reverseBits(u_input.e)), ~(vec2<u32>(0u, 0u) >> (u_input.e % vec2<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(1u, u_input.e.x, u_input.e.x)), min(1u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))), _wgslsmith_mod_u32(1523u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))), abs(vec2<u32>(u_input.b.x, 19570u)), vec3<bool>(!select(false, select(false, false, true), any(vec4<bool>(false, false, true, true))), true, true));
    var_0 = ~1u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -604f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-726f * _wgslsmith_f_op_f32(global0.x - global0.x)), global0.x)) * -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~select(u_input.a.www, u_input.a.yzz, vec3<bool>(var_2.b, var_2.c.x, true))), u_input.a.zzx), 0u, (vec3<u32>(countOneBits(49712u), select(u_input.e.x, 4294967295u, var_2.b), _wgslsmith_sub_u32(var_2.d.x, var_2.d.x)) ^ firstLeadingBit(func_1(Struct_1(-1i, var_2.c.x, vec2<bool>(true, var_2.b), vec3<u32>(16515u, 35168u, 63193u), 14173i), true).d)) ^ vec3<u32>(1u & var_2.d.x, ~4294967295u, var_2.d.x), _wgslsmith_f_op_f32(-1f), ~firstLeadingBit(abs(vec4<u32>(var_2.d.x, 4294967295u, 43256u, 4294967295u))) << ((select(~vec4<u32>(u_input.e.x, 1u, 88081u, 33084u), abs(vec4<u32>(4014u, 0u, var_2.d.x, 26214u)), false) | vec4<u32>(var_2.d.x, u_input.b.x, select(4294967295u, var_2.d.x, var_2.b), firstTrailingBit(var_2.d.x))) % vec4<u32>(32u)));
}

