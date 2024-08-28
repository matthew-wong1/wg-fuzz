struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = vec3<bool>(false, firstLeadingBit(~u_input.c) <= _wgslsmith_mod_u32(35412u, ~4552u), true);
    let var_1 = Struct_1(vec3<f32>(1f, -1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f + -406f) - _wgslsmith_f_op_f32(f32(-1f) * -487f))), countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(min(u_input.a, vec3<i32>(1i, u_input.a.x, 2147483647i)), -vec3<i32>(u_input.a.x, -5173i, u_input.b.x)), ~(~(-1i)))), max(vec4<u32>(u_input.d.x, abs(u_input.c), ~max(u_input.d.x, 1u), select(u_input.c >> (107011u % 32u), u_input.c, !var_0.x)), vec4<u32>(u_input.d.x, u_input.d.x & u_input.d.x, 1u, u_input.d.x) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), u_input.d.x, 42753u)), ~max(~(~(-19079i)), u_input.e));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(var_1.a.xx))));
    let var_3 = 0i;
    let var_4 = 0u;
    return ~_wgslsmith_mult_u32(var_1.c.x, 13670u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(~(~1u >> ((~u_input.d.x ^ ~0u) % 32u)), firstTrailingBit(abs(~func_3())));
    var var_1 = Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1868f), _wgslsmith_f_op_f32(round(arg_0)))), vec2<i32>(-68808i, u_input.b.x), _wgslsmith_mod_vec4_u32(u_input.d, u_input.d), reverseBits(select(1i, ~countOneBits(-1i), any(vec4<bool>(true, true, true, true)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), max(select(max(vec2<i32>(-2147483647i, 30376i), vec2<i32>(1i, u_input.a.x)), _wgslsmith_sub_vec2_i32(var_1.b, u_input.b), all(vec4<bool>(true, true, true, false))), var_1.b), ~u_input.d, _wgslsmith_mult_i32(_wgslsmith_mult_i32(reverseBits(_wgslsmith_mult_i32(-25045i, var_1.d)), _wgslsmith_mod_i32(59119i, var_1.b.x)), firstLeadingBit(var_1.b.x >> (_wgslsmith_div_u32(41595u, var_1.c.x) % 32u))));
    let var_2 = u_input.b.x;
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(1068f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.a.x))))), _wgslsmith_f_op_f32(abs(arg_0))), vec2<i32>(5202i, 16032i), u_input.d, 0i);
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(var_1.a)), vec3<f32>(1308f, -1193f, 2002f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, var_1.a.x, arg_0)))), _wgslsmith_sub_vec2_i32(var_1.b, u_input.b & vec2<i32>(var_1.b.x, -30448i)) << (vec2<u32>(~var_1.c.x, ~4294967295u) % vec2<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(select(var_0, 1u, true), 1u, _wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(1u, var_1.c.x))), var_1.c.x, _wgslsmith_sub_u32(1u, var_0), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(28050u, 1u, u_input.d.x), vec3<u32>(10887u, 3099u, var_1.c.x)), var_1.c.x, var_0)), u_input.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = func_2(-1023f);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -488f);
    let var_3 = func_2(_wgslsmith_f_op_f32(-arg_1.a.x));
    var var_4 = var_0.a.x;
    return func_2(var_1.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) * arg_0.a.x), arg_0.a.x)))).d;
    let var_1 = ~abs(_wgslsmith_mod_u32(select(~arg_0.c.x, u_input.c | 20531u, any(vec3<bool>(true, true, false))), ~46379u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_div_f32(415f, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), 609f);
    let var_3 = select(_wgslsmith_dot_vec3_u32(arg_1, ~_wgslsmith_add_vec3_u32(select(vec3<u32>(1u, arg_0.c.x, 1u), u_input.d.zww, vec3<bool>(false, false, false)), func_2(var_2.x).c.yzx)), ~(~(~15213u)), any(select(vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec2<bool>(true, true)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), all(vec2<bool>(false, true)))));
    let var_4 = countOneBits(~func_2(_wgslsmith_f_op_f32(sign(-1164f))).c.x) >> (abs(0u | (var_3 ^ 4294967295u)) % 32u);
    return min(1u, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(4294967295u & reverseBits(func_4(func_1(vec2<f32>(876f, -471f), Struct_1(vec3<f32>(-534f, 846f, 1000f), vec2<i32>(1i, u_input.e), u_input.d, 2147483647i), vec3<f32>(-1000f, 1780f, 710f), Struct_1(vec3<f32>(747f, 372f, -373f), u_input.a.xx, u_input.d, u_input.e)), vec3<u32>(0u, u_input.d.x, u_input.c) >> (u_input.d.xxy % vec3<u32>(32u)), u_input.e)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u), u_input.d.x), min((u_input.d.x & ~0u) | ~30741u, ~_wgslsmith_add_u32(u_input.c, 1u)));
    var var_1 = -vec4<i32>(-22750i, max(u_input.e, -(u_input.a.x & u_input.e)), abs(~u_input.b.x), 1i);
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1009f)), -586f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-250f, -125f), vec2<f32>(-1000f, -1139f))) + vec2<f32>(810f, -975f))), func_2(-1000f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-703f)))), -1000f, _wgslsmith_f_op_f32(floor(973f))), Struct_1(vec3<f32>(_wgslsmith_div_f32(-432f, -833f), -104f, 119f), vec2<i32>(-1i, var_1.x) | vec2<i32>(u_input.e, -1i), _wgslsmith_sub_vec4_u32(abs(u_input.d), min(u_input.d, vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u))), reverseBits(var_1.x))).c.wz << (_wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(var_0.x) & select(var_0.x, var_0.x, false), u_input.c), func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(356f, -1043f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, -876f, -674f)), -var_1.xy, _wgslsmith_clamp_vec4_u32(vec4<u32>(32224u, 11926u, u_input.c, var_0.x), u_input.d, vec4<u32>(1u, 7472u, u_input.c, 4294967295u)), 2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1624f, 1138f, -1636f) - _wgslsmith_div_vec3_f32(vec3<f32>(157f, -459f, 1100f), vec3<f32>(1046f, -1303f, 559f))), func_2(_wgslsmith_f_op_f32(abs(394f)))).c.wz) % vec2<u32>(32u));
    var_1 = vec4<i32>(-(~u_input.a.x), _wgslsmith_add_i32(39048i, ~firstLeadingBit(u_input.b.x)) ^ u_input.b.x, -func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(314f, 181f))), func_1(vec2<f32>(1278f, -136f), func_2(-356f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1927f, -884f, -587f), vec3<f32>(-1006f, 871f, 388f))), Struct_1(vec3<f32>(-426f, 347f, -1155f), u_input.b, u_input.d, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, 850f, -716f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -767f, 273f)), min(var_1.xy, u_input.b), u_input.d, ~5443i)).b.x, u_input.a.x);
    var_2 = ~(~(~reverseBits(~vec2<u32>(var_0.x, 0u))));
    var_2 = u_input.d.wz;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1690f + -937f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) - 1886f), _wgslsmith_f_op_f32(-func_2(-320f).a.x))), -vec2<i32>(~(~(-610i)), reverseBits(~11524i)), vec4<u32>(_wgslsmith_sub_u32(~(~u_input.d.x), ~_wgslsmith_mult_u32(var_0.x, var_2.x)), _wgslsmith_mod_u32(max(1u, firstTrailingBit(4294967295u)), 0u), ~(~min(0u, var_0.x)), 0u), ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, -1i, u_input.e, -57494i), -vec4<i32>(var_1.x, var_1.x, 0i, var_1.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 2147483647i, 0i, -2147483647i), vec4<i32>(u_input.b.x, u_input.e, var_1.x, var_1.x), vec4<i32>(u_input.e, var_1.x, u_input.b.x, u_input.b.x))));
    var_1 = countOneBits(_wgslsmith_sub_vec4_i32(-min(-vec4<i32>(50293i, 637i, 0i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b.x, u_input.b.x, 0i, 93430i), vec4<i32>(var_3.d, var_1.x, u_input.a.x, u_input.e))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, _wgslsmith_sub_i32(u_input.e, var_3.b.x), var_3.b.x, min(var_3.b.x, var_3.d)), ~select(vec4<i32>(u_input.a.x, 27704i, 0i, 78738i), vec4<i32>(var_1.x, var_3.d, var_3.d, -26417i), false))));
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, 33352i);
}

