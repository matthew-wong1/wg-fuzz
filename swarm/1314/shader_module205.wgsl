struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec3<u32> {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1221f);
    let var_2 = vec4<f32>(-437f, -1040f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -955f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1)))), _wgslsmith_f_op_f32(-929f * 1422f));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(var_2))))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -782f), ~(~vec3<u32>(1u, 4294967295u << (u_input.b.x % 32u), var_0)), vec2<i32>(-(~11466i), u_input.a), _wgslsmith_f_op_vec3_f32(max(var_3.ywz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-156f, var_1, var_3.x) * vec3<f32>(-1368f, -1677f, -375f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_2.x, 1482f))))))), Struct_1(~(2147483647i >> (1u % 32u)) & (-24105i >> (firstTrailingBit(u_input.b.x) % 32u))));
    return vec3<u32>(~select(~u_input.b.x, 0u, false) >> (_wgslsmith_mod_u32(~(u_input.b.x & 16854u), abs(var_4.b.x)) % 32u), var_4.b.x, var_0);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_5 {
    let var_0 = Struct_5(~firstLeadingBit(~arg_2), Struct_4(~(~_wgslsmith_clamp_u32(43532u, 97088u, u_input.b.x)), _wgslsmith_clamp_i32(reverseBits(u_input.a), firstLeadingBit(1i), 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1498f, _wgslsmith_f_op_f32(-1555f * -903f), -1187f) + vec3<f32>(-321f, 1044f, _wgslsmith_f_op_f32(f32(-1f) * -1629f))), ~u_input.b.xw << (_wgslsmith_sub_vec2_u32(u_input.b.wz, u_input.b.wy) % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(sign(1f)), reverseBits(~u_input.b.xzw), countOneBits(_wgslsmith_div_vec2_i32(u_input.c.yz, vec2<i32>(arg_0.x, u_input.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, 190f, -1719f))), Struct_1(-arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(f32(-1f) * -1955f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1544f, 651f)) - 1276f), -415f)), select(_wgslsmith_mod_vec3_u32(func_3(vec2<i32>(arg_0.x, 12979i) << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-7069i, -8906i, u_input.c.x), vec3<i32>(arg_0.x, arg_0.x, -19789i))), ~vec3<u32>(1u, arg_1, 0u) & ~u_input.b.zxw), _wgslsmith_div_vec3_u32(u_input.b.yzy, ~(~u_input.b.wzw)), true), abs(vec4<u32>(u_input.b.x, 1u, 1u, ~max(4294967295u, 1u))));
    let var_1 = Struct_4(u_input.b.x, arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-552f + _wgslsmith_f_op_f32(1639f * 988f)))), _wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e.d.x * _wgslsmith_f_op_f32(919f - -123f)))), countOneBits(~(~(vec2<u32>(1u, arg_2) | vec2<u32>(47906u, arg_3)))), var_0.b.e);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-var_1.e.d.x);
    var_2 = true;
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u);
    var var_1 = func_2(max(-vec4<i32>(82i, -3145i, u_input.a ^ 2147483647i, 52646i), vec4<i32>(0i, 0i, u_input.a << (~35901u % 32u), _wgslsmith_mod_i32(28065i, u_input.a))), u_input.b.x, 0u, 28933u);
    var_1 = func_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, ~(~(-12446i)), ~(-2147483647i) ^ u_input.c.x, select(-var_1.b.e.c.x, _wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.yx), any(vec3<bool>(false, false, true)))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_1.b.b, 1i), ~0i, countOneBits(u_input.c.x), max(u_input.a, var_1.b.e.e.a)), vec4<i32>(reverseBits(18466i), -u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -8948i, var_1.b.e.c.x), vec4<i32>(-2751i, u_input.d.x, var_1.b.b, var_1.b.e.c.x)), firstLeadingBit(12856i)))), ~_wgslsmith_div_u32(37289u, (1u >> (u_input.b.x % 32u)) & var_1.a), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.x) | vec2<u32>(var_0.x, 18854u), ~var_1.e.xz), vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.xzw ^ vec3<u32>(1u, var_1.b.d.x, 41918u), var_0.zyx), _wgslsmith_div_u32(min(u_input.b.x, var_1.a), u_input.b.x | 4294967295u))), 0u);
    var_1 = Struct_5(var_1.e.x, var_1.b, var_1.b.c, var_1.e.zzy, firstLeadingBit(_wgslsmith_mult_vec4_u32(~(vec4<u32>(29454u, u_input.b.x, u_input.b.x, 57805u) << (vec4<u32>(0u, var_0.x, u_input.b.x, var_1.a) % vec4<u32>(32u))), vec4<u32>(4249u, ~var_1.a, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 9008u), vec2<u32>(var_1.b.e.b.x, 4294967295u))))));
    var var_2 = u_input.c.x;
    return _wgslsmith_f_op_f32(ceil(var_1.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(true, true));
    var_0 = true;
    var var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(func_1()) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f * 291f)) - 1316f), all(vec4<bool>(false, select(true, true, any(vec4<bool>(true, false, true, false))), true, !all(vec2<bool>(false, false)))), all(vec4<bool>(true, true, false, true)));
    var_1 = vec4<bool>(var_1.x, var_1.x, var_1.x, false);
    let var_2 = _wgslsmith_clamp_i32(1i, -36111i, _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.xy)) != ~(-_wgslsmith_add_i32(select(u_input.c.x, u_input.d.x, false), u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(122f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f), -1579f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_mod_u32(abs(u_input.b.x), 31503u), ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) ^ 1u), abs(_wgslsmith_div_i32(~(-23686i), _wgslsmith_div_i32(firstLeadingBit(u_input.d.x), _wgslsmith_mod_i32(1i, 30937i)))), 2852i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, var_3.x, var_3.x, -1077f), vec4<f32>(1658f, var_3.x, -897f, var_3.x)))))));
}

