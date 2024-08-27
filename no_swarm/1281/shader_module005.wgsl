struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-155f, 778f, 567f, -1004f), vec4<f32>(-1173f, 281f, 883f, -1916f), vec4<f32>(102f, 1193f, 589f, -1303f), vec4<f32>(2683f, 1461f, 414f, -1332f), vec4<f32>(-606f, -909f, -1388f, -1034f), vec4<f32>(241f, -323f, 311f, -713f), vec4<f32>(659f, 1000f, 948f, 1417f), vec4<f32>(343f, -161f, 136f, 476f), vec4<f32>(-1071f, -594f, 1327f, 252f), vec4<f32>(-534f, 555f, -591f, 1000f), vec4<f32>(436f, 1130f, -1000f, 1154f), vec4<f32>(462f, 1476f, 547f, -166f), vec4<f32>(321f, -734f, -509f, -389f), vec4<f32>(967f, -956f, 1000f, -648f), vec4<f32>(-1000f, 573f, 1000f, 533f), vec4<f32>(372f, 297f, -1262f, 707f), vec4<f32>(-993f, 2434f, -1462f, 451f), vec4<f32>(388f, -1000f, 2024f, 1728f), vec4<f32>(-1031f, 1117f, 179f, -345f), vec4<f32>(1221f, 3314f, -1639f, -1485f), vec4<f32>(-237f, -1389f, 994f, -469f), vec4<f32>(-252f, -171f, 2459f, -148f), vec4<f32>(520f, -1554f, 386f, 1109f), vec4<f32>(688f, 986f, 980f, -266f), vec4<f32>(326f, -487f, -188f, 1112f), vec4<f32>(782f, -281f, 259f, -1695f));

var<private> global1: bool = true;

var<private> global2: vec2<i32> = vec2<i32>(-52235i, 47375i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(-select(min(vec3<i32>(global2.x, 0i, global2.x), vec3<i32>(-2147483647i, u_input.c, global2.x)), vec3<i32>(-2147483647i, global2.x, global2.x), any(vec4<bool>(true, false, false, false))) >> (vec3<u32>(u_input.b.x, ~0u, 15516u) % vec3<u32>(32u)), 24008u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 900f))))), ~u_input.b.wx << (u_input.b.zx % vec2<u32>(32u)));
    let var_1 = _wgslsmith_div_vec3_u32(abs(firstLeadingBit(u_input.b.wxy)), countOneBits(u_input.b.zyz));
    let var_2 = Struct_2(Struct_1(var_0.a, max(4294967295u, ~(var_1.x << (var_1.x % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.c)), var_0.c)))), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.zy, var_0.d), 0u) >> (_wgslsmith_add_vec2_u32(var_0.d, vec2<u32>(var_1.x, 0u) & u_input.b.xw) % vec2<u32>(32u))), var_0.a.x, Struct_1(_wgslsmith_sub_vec3_i32(select(var_0.a, var_0.a, vec3<bool>(false, false, true)) & vec3<i32>(0i, 1i, var_0.a.x), ~var_0.a), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_0.c)), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), u_input.b.zz), _wgslsmith_mod_u32(max(0u, var_1.x), 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.c, var_0.c)), _wgslsmith_div_f32(_wgslsmith_div_f32(-2264f, var_0.c), var_0.c)));
    let var_3 = 2147483647i;
    var_0 = Struct_1(-vec3<i32>(1i, max(var_2.b, 38601i) << (~13406u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 55306i) | var_0.a.xz, var_0.a.yx)), 7748u, _wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_1.x, 37864u)), (var_0.d ^ abs(vec2<u32>(var_2.c.b, var_0.b))) ^ (vec2<u32>(var_1.x, 0u) & firstLeadingBit(var_2.c.d))));
    return vec2<u32>(_wgslsmith_sub_u32(1u, ~var_1.x & var_2.a.b), 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = func_3() | _wgslsmith_clamp_vec2_u32(u_input.b.zw, ~u_input.b.xy, u_input.b.yy);
    var var_1 = Struct_2(Struct_1(-max(vec3<i32>(-13310i, 59447i, global2.x), vec3<i32>(global2.x, global2.x, global2.x)), ~var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), vec2<u32>(var_0.x, _wgslsmith_clamp_u32(~12829u, u_input.a, u_input.a))), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.x, 1i, global2.x, global2.x) & -vec4<i32>(-2147483647i, -1i, 4792i, -54153i), select(vec4<i32>(u_input.c, -2147483647i, -1i, u_input.c), abs(vec4<i32>(global2.x, 38559i, 2147483647i, -459i)), !vec4<bool>(arg_1, true, arg_1, true))) | -u_input.c, Struct_1(vec3<i32>(~global2.x & (i32(-1i) * -1i), global2.x >> (1u % 32u), u_input.c), ~(u_input.b.x ^ u_input.b.x), _wgslsmith_div_f32(133f, 1000f), vec2<u32>(1u, 0u) << (firstLeadingBit(vec2<u32>(8077u, 39970u)) % vec2<u32>(32u))), _wgslsmith_div_f32(998f, 928f));
    var var_2 = -151f;
    var_0 = vec2<u32>(var_0.x, var_1.a.d.x);
    var var_3 = global2.x | _wgslsmith_sub_i32(u_input.c, 2147483647i);
    return firstTrailingBit(u_input.b.x);
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = vec4<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1358f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-887f, -1346f)))), all(vec3<bool>(true, false, false)))), ~(~(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.ww) | (u_input.b.x ^ u_input.b.x))), u_input.a);
    var var_1 = Struct_1(~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, global2.x, u_input.c), vec3<i32>(1i, _wgslsmith_add_i32(global2.x, -9090i), firstLeadingBit(global2.x))), min(select(var_0.x, var_0.x, false), _wgslsmith_div_u32(~abs(0u), u_input.a)), 230f, u_input.b.zy);
    var_1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(1i, global2.x, 16573i, var_1.a.x), ~vec4<i32>(u_input.c, var_1.a.x, global2.x, u_input.c), false), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, global2.x, 0i, 0i), abs(vec4<i32>(var_1.a.x, 33371i, var_1.a.x, var_1.a.x)))), global2.x, global2.x), 0u, var_1.c, _wgslsmith_add_vec2_u32(select(~var_1.d, var_0.wx, true), var_0.xx) << (vec2<u32>(abs(abs(var_0.x)), ~4294967295u) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-var_1.c);
    global2 = min(abs(var_1.a.zx), vec2<i32>(var_1.a.x, _wgslsmith_mod_i32(1i, firstLeadingBit(-2147483647i))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 869f) * vec2<f32>(861f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_f_op_f32(sign(var_1.c))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_1.c.a;
    let var_1 = any(select(vec2<bool>(select(any(vec2<bool>(false, true)), -31156i < global2.x, 0u > arg_0.x), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), all(vec2<bool>(true, false))), false)));
    return vec3<i32>(firstLeadingBit(u_input.c), _wgslsmith_div_i32(_wgslsmith_sub_i32(~(~34469i), firstLeadingBit(-arg_1.c.a.x)), ~(~global2.x) & (~global2.x >> ((34660u ^ u_input.b.x) % 32u))), arg_1.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(i32(-1i) * -56187i, -global2.x, 50671i | global2.x, 2147483647i)), firstTrailingBit(~vec4<i32>(-2147483647i, 18736i, -54515i, global2.x))), global2.x);
    global1 = select(true, true, any(vec4<bool>(true, true, true, true)) || (any(vec2<bool>(true, false)) & false)) || true;
    let var_1 = _wgslsmith_add_i32(2147483647i, 0i);
    let var_2 = -max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c >> (u_input.a % 32u), 1i, _wgslsmith_add_i32(0i, 11675i)), func_4(vec2<u32>(19093u, 62547u), Struct_2(Struct_1(vec3<i32>(u_input.c, 14075i, var_1), 49571u, -1040f, vec2<u32>(u_input.b.x, 78385u)), u_input.c, Struct_1(vec3<i32>(var_1, var_1, var_1), u_input.a, 802f, vec2<u32>(u_input.b.x, u_input.b.x)), 857f), _wgslsmith_f_op_vec2_f32(func_1(352f)), Struct_1(vec3<i32>(1i, 64194i, 1i), u_input.a, -1448f, u_input.b.zz))), (vec3<i32>(var_0, 66936i, -29510i) & vec3<i32>(var_1, var_1, 1i)) & vec3<i32>(-39925i, ~var_0, global2.x | var_0));
    let var_3 = Struct_2(Struct_1(vec3<i32>(-_wgslsmith_clamp_i32(1i, var_1, -4806i), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mod_i32(global2.x, 1493i), -2147483647i), var_0), 0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_f32(1000f, 432f))).x)), select(~(~u_input.b.zz), select(vec2<u32>(1u, u_input.b.x), u_input.b.wz | u_input.b.zx, true), !(u_input.a < 6960u))), -1i, Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0, -5919i, 1i, u_input.c), vec4<i32>(global2.x, 0i, global2.x, -36984i), vec4<bool>(false, true, true, true)), vec4<i32>(-27494i, 0i, 41896i, var_0)), var_2.x << (~0u % 32u), global2.x | ~(-38894i)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17780u, u_input.b.x), vec2<u32>(9476u, u_input.b.x)), u_input.b.x & 22511u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(min(-2577f, -1211f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2766f * -583f) + _wgslsmith_f_op_f32(select(983f, -2195f, false)))), u_input.b.xz), -1919f);
    let var_4 = ~(-global2.x);
    global0 = array<vec4<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c.d.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1034f, -515f, var_3.a.c, _wgslsmith_f_op_f32(var_3.c.c * _wgslsmith_f_op_f32(abs(-640f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(30871u, 26u)])))), any(vec3<bool>(true, true, true)))), func_3().x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f), 1f));
}

