struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 27798u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b, -20613i), 3261i | arg_2.a.x, -7855i), abs(5649i)) | -(~arg_2.a.wy);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f - -1031f) * 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(468f - -1844f), _wgslsmith_div_f32(806f, -237f)), 1497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(664f)) - _wgslsmith_f_op_f32(-653f * 1033f)))));
    var_0 = u_input.c;
    var_0 = vec2<i32>((44340i | (arg_1.a.c >> (4294967295u % 32u))) ^ 1i, -(min(var_0.x, -2147483647i) | _wgslsmith_div_i32(-2147483647i, arg_2.c))) | select(vec2<i32>(u_input.b, -25220i), -select(vec2<i32>(u_input.c.x, 0i), arg_1.a.a.yx, vec2<bool>(false, arg_1.b.b)) ^ abs(_wgslsmith_mult_vec2_i32(arg_2.a.yz, arg_2.a.yz)), select(vec2<bool>(arg_2.b.b == arg_1.a.d, true), vec2<bool>(true, true), all(vec4<bool>(arg_1.a.b.b, false, false, true))));
    let var_2 = arg_2.b.b;
    return vec3<u32>(~_wgslsmith_add_u32(select(4294967295u, u_input.a.x, true) << (u_input.d.x % 32u), arg_0.b.x), ~_wgslsmith_sub_u32(4294967295u, ~arg_1.a.b.a.a), ~_wgslsmith_mod_u32(arg_2.b.a.b.x, ~(arg_0.b.x | arg_0.a)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool) -> u32 {
    global0 = arg_1.a.a;
    global0 = 24591u;
    let var_0 = ~func_3(arg_1.a, Struct_4(Struct_3(vec4<i32>(2147483647i, arg_0.x, 80691i, u_input.c.x), arg_1, arg_0.x, false), arg_1, -31887i, Struct_1(arg_1.a.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_3(vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x), arg_1, 0i, arg_1.b)) & _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(28461u, 4294967295u, arg_1.a.b.x), arg_1.a.b), vec3<u32>(3138u, u_input.d.x, u_input.a.x)), min(vec3<u32>(14259u, 4294967295u, arg_1.a.b.x), ~vec3<u32>(u_input.d.x, 21297u, arg_1.a.b.x))), countOneBits(arg_1.a.b) | vec3<u32>(u_input.a.x, u_input.d.x, 0u));
    global0 = 1710u;
    global0 = _wgslsmith_mod_u32(u_input.a.x, 25738u);
    return countOneBits(~reverseBits(22143u));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f - -1495f) * _wgslsmith_f_op_f32(sign(330f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1973f))))))));
    global0 = ~16756u;
    var var_1 = ((_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.d.x), 4294967295u, ~0u) | 22106u) == ~func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, 2147483647i), vec3<i32>(arg_0, u_input.c.x, -7190i)), Struct_2(Struct_1(u_input.d.x, vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), true), true)) == true;
    var_1 = arg_1.x;
    var var_2 = ~(~29614u);
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = u_input.d.x;
    var var_1 = !arg_0;
    var var_2 = 45277u;
    var_0 = max(arg_3.b.a.b.x ^ abs(func_2(arg_3.a.www ^ vec3<i32>(0i, u_input.c.x, -1284i), arg_3.b, arg_0)), u_input.d.x << (46858u % 32u));
    var_1 = any(!vec3<bool>(true, arg_3.d, true));
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(0u);
    global0 = 22170u;
    var var_0 = func_4(func_1(u_input.c.x, !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2107f, _wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(-636f * -2553f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(901f)), _wgslsmith_f_op_f32(f32(-1f) * -1387f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-265f, 280f) - _wgslsmith_f_op_f32(-321f + -541f)), _wgslsmith_f_op_f32(round(1131f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1304f, -1035f), _wgslsmith_f_op_f32(431f * -774f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-220f + -1739f)))))), Struct_3(~select(vec4<i32>(15997i, u_input.c.x, u_input.c.x, u_input.c.x), firstLeadingBit(vec4<i32>(1i, u_input.b, 20744i, u_input.c.x)), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(~1u, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), select(all(vec4<bool>(true, false, true, false)), 14350i >= u_input.c.x, true)), i32(-1i) * -2147483647i, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))));
    var var_1 = Struct_4(Struct_3(_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 63387i), vec4<i32>(u_input.b, 2147483647i, -2147483647i, -2147483647i)), select(max(vec4<i32>(u_input.c.x, u_input.b, 10467i, 11341i), vec4<i32>(u_input.b, u_input.c.x, 28231i, u_input.b)), -vec4<i32>(u_input.b, -2147483647i, -1i, 41927i), vec4<bool>(false, true, var_0.b, var_0.b))), Struct_2(Struct_1(0u, _wgslsmith_mod_vec3_u32(vec3<u32>(6438u, 0u, 7731u), var_0.a.b)), !all(vec2<bool>(false, false))), -u_input.c.x & countOneBits(u_input.b), (var_0.a.b.x << (var_0.a.b.x % 32u)) > _wgslsmith_div_u32(var_0.a.a, 95929u)), func_4(true & !(var_0.b && var_0.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, -535f, 213f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, 515f, 131f) + vec3<f32>(749f, -919f, 102f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1052f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -159f), _wgslsmith_f_op_f32(f32(-1f) * -429f), false | var_0.b))), Struct_3(countOneBits(-vec4<i32>(14115i, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_2(var_0.a, true), ~1i, func_1(~2147483647i, vec4<bool>(false, var_0.b, true, var_0.b)))), 0i, func_4(var_0.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-219f, 1000f)))), _wgslsmith_f_op_f32(-772f - _wgslsmith_f_op_f32(f32(-1f) * -1111f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1875f, 411f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-975f, 2003f)))), Struct_3(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 11958i, -13742i, -19815i), vec4<i32>(u_input.b, 2147483647i, -37157i, u_input.b)), Struct_2(var_0.a, var_0.b), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, -16517i), u_input.b), (u_input.a.x > 50468u) && var_0.b)).a);
    var_1 = Struct_4(var_1.a, Struct_2(var_0.a, var_1.a.d || false), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(select(var_1.a.a.zzw, var_1.a.a.wyx, var_0.b), vec3<i32>(0i, var_1.a.c, 55681i)), select(vec3<i32>(-1i) * -var_1.a.a.yyw, vec3<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), 0i & u_input.b, countOneBits(u_input.b)), select(!vec3<bool>(true, false, var_0.b), select(vec3<bool>(var_1.b.b, var_0.b, true), vec3<bool>(true, var_1.b.b, true), vec3<bool>(false, var_0.b, var_0.b)), var_0.b))), func_4(true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1252f, -1658f, -967f))), vec3<f32>(-611f, _wgslsmith_f_op_f32(1025f + -689f), _wgslsmith_div_f32(-224f, 1724f)))), vec2<f32>(1397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f + -344f) * _wgslsmith_f_op_f32(f32(-1f) * -326f))), Struct_3(vec4<i32>(~(-212i), 18836i, var_1.c << (1u % 32u), _wgslsmith_dot_vec4_i32(var_1.a.a, vec4<i32>(2147483647i, 31832i, -796i, u_input.b))), Struct_2(Struct_1(u_input.d.x, vec3<u32>(u_input.d.x, var_1.b.a.a, 18730u)), all(vec2<bool>(var_0.b, false))), firstTrailingBit(abs(-26085i)), all(select(vec4<bool>(var_1.b.b, var_0.b, true, false), vec4<bool>(false, var_0.b, var_0.b, var_1.a.b.b), var_1.a.b.b)))).a);
    let var_2 = abs(vec2<u32>(~u_input.a.x, 15908u | var_0.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.a.a.xxy >> (select(~var_0.a.b, vec3<u32>(0u, ~u_input.a.x, _wgslsmith_mod_u32(var_2.x, u_input.a.x)), select(!vec3<bool>(var_0.b, false, var_1.a.b.b), !vec3<bool>(false, var_1.a.d, var_0.b), select(vec3<bool>(true, var_1.a.d, true), vec3<bool>(var_1.b.b, var_0.b, false), vec3<bool>(false, true, false)))) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))), 383f), max(16493u, u_input.a.x) | _wgslsmith_mod_u32(23451u, ~(~u_input.a.x)));
}

