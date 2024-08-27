struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    let var_0 = u_input.e.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, _wgslsmith_mult_u32(4294967295u, u_input.e.x) >> (~u_input.e.x % 32u)), vec3<u32>(1030u, u_input.e.x, ~_wgslsmith_div_u32(u_input.e.x, u_input.e.x))) % 32u);
    let var_1 = vec4<i32>(abs(-18683i), ~2147483647i, min(1i, abs(u_input.a)), _wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-2469i, 1i), u_input.d.yz), (u_input.b >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u))) >> ((u_input.e >> (vec2<u32>(var_0, u_input.e.x) % vec2<u32>(32u))) % vec2<u32>(32u)), true), _wgslsmith_add_vec2_i32(u_input.d.xz, vec2<i32>(~75613i, -3636i))));
    let var_2 = _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, var_0, 1u), max(vec3<u32>(48478u, var_0, 0u), vec3<u32>(var_0, 32812u, 37316u)), vec3<u32>(u_input.e.x, var_0, 41974u)), vec3<u32>(~min(var_0, u_input.e.x), ~_wgslsmith_add_u32(u_input.e.x, 0u), ~_wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, u_input.e.x))) & vec3<u32>(35058u << (~_wgslsmith_mult_u32(20140u, u_input.e.x) % 32u), min(u_input.e.x, ~_wgslsmith_sub_u32(u_input.e.x, var_0)), _wgslsmith_mod_u32(u_input.e.x, u_input.e.x));
    var var_3 = Struct_4(Struct_2(25787i, Struct_1(-1387f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-568f, 1231f) + vec2<f32>(-1823f, -1218f))), select(4294967295u, ~var_2.x, select(false, false, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-636f + 364f), _wgslsmith_f_op_f32(-300f + -402f)), ~var_1), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1022f * 271f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2887f, 175f)))), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-454f + -429f) + _wgslsmith_f_op_f32(f32(-1f) * -1588f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, 0i, u_input.c), ~vec4<i32>(u_input.a, 2147483647i, var_1.x, 5608i), u_input.d & vec4<i32>(-18949i, 1i, var_1.x, -9374i)))), vec2<f32>(_wgslsmith_f_op_f32(select(-2184f, 286f, true)), _wgslsmith_div_f32(-1865f, _wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(max(-444f, 1605f))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1869f), _wgslsmith_f_op_f32(var_3.a.c.a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.b.b.x + -1780f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(max(-262f, -733f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(var_3.a.c.d, _wgslsmith_f_op_f32(f32(-1f) * -315f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c.a) * var_4.x) == _wgslsmith_f_op_f32(-705f * 966f);
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, 199f, -680f, 903f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, 296f, -532f, -3013f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-317f, -757f, 754f, 1000f) - vec4<f32>(-236f, 798f, -1072f, 446f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(901f, 1000f, 1000f, -202f), vec4<f32>(-1413f, 1507f, 387f, 499f))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2235f + -944f), _wgslsmith_f_op_f32(ceil(1255f)))), _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-722f)))), -1184f));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -269f, var_0.x, -126f)))))));
    let var_1 = Struct_4(Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(524f, -993f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(2521f + 888f)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1515f)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -1i, -1i, u_input.c), u_input.d, u_input.d)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -476f), -423f)), var_0.yy, u_input.e.x, _wgslsmith_f_op_f32(trunc(var_0.x)), abs(u_input.d) | u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.x) - var_0.wz), var_0.yx)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = var_1.a.c;
    return vec2<bool>(true, func_3());
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(21699u);
    let var_1 = 33974u;
    var var_2 = Struct_4(Struct_2(u_input.d.x, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1095f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1002f), func_2(8233u).x)), _wgslsmith_div_vec2_f32(vec2<f32>(1717f, -2282f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(573f, -577f)))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-200f, -641f, true))), -firstLeadingBit(vec4<i32>(u_input.b.x, 1i, u_input.d.x, -4264i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(383f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(572f, -1834f))), ~(u_input.e.x ^ 1u), _wgslsmith_f_op_f32(-1321f - -428f), ~(-vec4<i32>(u_input.d.x, 22826i, u_input.d.x, u_input.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1684f + 194f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(157f - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2895f, _wgslsmith_f_op_f32(-2273f * -852f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1206f * 311f) + _wgslsmith_f_op_f32(floor(-1631f))))));
    var var_3 = 448f;
    var var_4 = false;
    return Struct_3(4294967295u, u_input.d, all(!vec3<bool>(var_2.b.x > var_2.b.x, !var_0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(6421i, ~(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) | _wgslsmith_mult_i32(-73656i, u_input.d.x))), _wgslsmith_dot_vec4_i32(~(~_wgslsmith_add_vec4_i32(u_input.d, u_input.d)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, u_input.c), 2147483647i, max(u_input.b.x, u_input.c), u_input.a), countOneBits(u_input.d), _wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(-1i, u_input.c, 2147483647i, u_input.d.x)) | u_input.d)), u_input.b.x);
    var var_1 = func_1();
    let var_2 = vec3<bool>(false, true, var_1.c);
    var_1 = Struct_3(abs(~u_input.e.x & (var_1.a << (u_input.e.x % 32u))), vec4<i32>(var_1.b.x, -13702i, u_input.a, -1i), var_2.x);
    let var_3 = firstTrailingBit(~(~(~(~vec3<u32>(u_input.e.x, var_1.a, u_input.e.x)))));
    let var_4 = Struct_3(1402u, countOneBits(u_input.d), u_input.e.x >= 4294967295u);
    var_1 = Struct_3(reverseBits(u_input.e.x), vec4<i32>(_wgslsmith_add_i32(select(46479i, 0i, var_1.c), ~(-23187i)), var_1.b.x, countOneBits(-2147483647i), u_input.d.x) << (~((vec4<u32>(var_3.x, 4294967295u, 4294967295u, var_3.x) & vec4<u32>(u_input.e.x, 0u, var_1.a, 140698u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 0u, 1u, 52240u), vec4<u32>(var_3.x, 1u, 1u, var_1.a))) % vec4<u32>(32u)), true);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -292f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1369f), vec2<f32>(905f, 596f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, 1055f)), vec2<f32>(122f, -109f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(453f, 873f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1515f, -173f)))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(var_3, var_3), countOneBits(var_3.x), 0u, 1u), abs(~vec4<u32>(0u, 1u, 25131u, 127816u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - 206f)))), (~(var_1.b ^ var_4.b) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_4.b.x, u_input.a, 0i), var_4.b), vec4<i32>(-19530i, 38753i, -28310i, var_0.x))) >> (~vec4<u32>(abs(46148u), 4294967295u, 95202u, ~115324u) % vec4<u32>(32u)));
    var var_6 = Struct_4(Struct_2(func_1().b.x, Struct_1(var_5.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.b.x, var_5.d) + var_5.b)), ~(~var_5.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_5.d * var_5.d))), vec4<i32>(var_0.x >> (var_5.c % 32u), abs(var_1.b.x), 1i, -293i)), Struct_1(_wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-905f, var_5.d)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(242f, var_5.a), var_5.b)))), var_1.a, _wgslsmith_f_op_f32(max(1023f, _wgslsmith_f_op_f32(floor(-1734f)))), abs(var_4.b << (vec4<u32>(var_4.a, var_3.x, 1u, 1u) % vec4<u32>(32u))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.d, var_5.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_5.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_6.a.b.d)), _wgslsmith_f_op_f32(-var_5.a))), -373f), _wgslsmith_f_op_f32(exp2(var_5.a)))), var_5.e.zwx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_5.b.x, -876f)))), var_6.a.b.b, _wgslsmith_dot_vec2_u32(vec2<u32>(max(34145u, firstLeadingBit(var_1.a)), 5761u), var_3.yx));
}

