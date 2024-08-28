struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(vec4<i32>(u_input.a, ~min(_wgslsmith_mod_i32(-2147483647i, -38029i), min(0i, u_input.b.x)), u_input.a ^ u_input.a, _wgslsmith_sub_i32(-17921i, ~_wgslsmith_mod_i32(u_input.c.x, u_input.a))), Struct_1(~firstTrailingBit(-u_input.b), u_input.b.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-568f, 128f, -383f, -1111f) + vec4<f32>(963f, -984f, 757f, 877f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1022f, -150f, -612f, 443f) * vec4<f32>(1203f, -799f, 1813f, -3361f))))), vec3<bool>(!any(vec4<bool>(true, false, false, false)), true, all(vec2<bool>(true, true))), ~u_input.b.x == u_input.b.x), Struct_1(_wgslsmith_add_vec4_i32(~(vec4<i32>(0i, 1i, u_input.c.x, u_input.a) & u_input.b), -abs(vec4<i32>(u_input.c.x, 62117i, u_input.c.x, u_input.b.x))), -_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-37403i, u_input.c.x), vec2<i32>(-1529i, u_input.a)), u_input.c.zx), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) - 475f), -462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f))), vec3<bool>(-u_input.b.x > u_input.a, any(vec2<bool>(true, true)), true), !(!any(vec3<bool>(false, false, false)))));
    let var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u & (_wgslsmith_mod_u32(u_input.d, u_input.d) << ((24549u ^ u_input.d) % 32u)), ((0u ^ u_input.d) & countOneBits(u_input.d)) >> (~94287u % 32u)), vec2<u32>(max(firstTrailingBit(u_input.d), ~17549u), u_input.d) >> (abs(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 74908u), vec2<u32>(u_input.d, u_input.d)))) % vec2<u32>(32u)), vec2<u32>(~(1u << (_wgslsmith_mult_u32(u_input.d, 4294967295u) % 32u)), 1u));
    return _wgslsmith_div_vec4_u32(min(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 27u, var_1.x, 1u) >> (vec4<u32>(u_input.d, 0u, 1u, var_1.x) % vec4<u32>(32u))), countOneBits(vec4<u32>(var_1.x, u_input.d, u_input.d, var_1.x)) | vec4<u32>(var_1.x, var_1.x, 0u, 3492u), vec4<u32>(21289u, u_input.d, u_input.d, 1u) >> ((vec4<u32>(var_1.x, u_input.d, var_1.x, u_input.d) & vec4<u32>(55315u, 49149u, 1u, u_input.d)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(18111u, 1106u, u_input.d, 51818u) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), vec4<u32>(var_1.x, 1u, u_input.d, u_input.d)), ~(~vec4<u32>(1u, u_input.d, u_input.d, 24921u)))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1, vec2<u32>(0u, u_input.d)), var_1.x ^ u_input.d, select(var_1.x, 0u, false), ~4294967295u) << (_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.d, var_1.x), vec4<u32>(var_1.x, 4294967295u, 1u, 39513u)), ~vec4<u32>(var_1.x, 1u, 51643u, var_1.x) | max(vec4<u32>(7795u, 15214u, 56080u, 28570u), vec4<u32>(1u, 0u, var_1.x, 1u)), ~vec4<u32>(u_input.d, u_input.d, var_1.x, var_1.x) ^ abs(vec4<u32>(u_input.d, 4294967295u, var_1.x, var_1.x))) % vec4<u32>(32u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(abs(_wgslsmith_mod_vec4_i32(-countOneBits(u_input.b), countOneBits(vec4<i32>(15430i, u_input.a, 47838i, u_input.b.x)) << (func_3() % vec4<u32>(32u)))), Struct_1(~(~countOneBits(u_input.b)), max(_wgslsmith_clamp_vec2_i32(~u_input.c.yy, -u_input.c.yy, reverseBits(vec2<i32>(u_input.b.x, u_input.b.x))), u_input.b.yw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(749f, -1000f, -887f, -471f) - vec4<f32>(1000f, -707f, -529f, 245f)))), vec3<bool>(true, false | all(vec2<bool>(false, false)), true), !all(vec3<bool>(true, true, true))), Struct_1(u_input.b, countOneBits(select(vec2<i32>(-54149i, 35810i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.b.x, 0i)), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(371f, -173f, 1189f, -327f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-350f, 631f, 2037f, -386f), vec4<f32>(1745f, -699f, -596f, 360f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-980f, 121f, -911f, -1000f)))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), false), (all(vec3<bool>(true, false, false)) | all(vec2<bool>(true, true))) || true));
    var var_1 = var_0;
    let var_2 = Struct_2(vec4<i32>(-41965i, firstTrailingBit(-2147483647i), -max(-40735i, -2147483647i) >> (1u % 32u), _wgslsmith_sub_i32(var_1.b.a.x, ~(var_1.b.b.x | 2147483647i))), Struct_1(vec4<i32>(u_input.c.x, -1i, -2147483647i ^ var_1.c.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_0.a.x), vec2<i32>(var_0.b.a.x, 59602i))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, u_input.d, 4294967295u, 48725u), min(vec4<u32>(4660u, 1139u, 0u, 25541u), vec4<u32>(4294967295u, u_input.d, u_input.d, 0u))) % vec4<u32>(32u)), ~reverseBits(u_input.c.xy), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.c.x), -504f, 170f, _wgslsmith_f_op_f32(-var_1.b.c.x)) + var_0.c.c), var_0.b.d, all(select(vec4<bool>(var_0.b.e, var_1.b.e, var_1.b.d.x, false), vec4<bool>(true, var_0.c.d.x, true, var_1.b.e), vec4<bool>(var_1.b.d.x, var_1.b.d.x, var_1.b.e, var_1.b.d.x))) == (abs(u_input.d) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u)))), Struct_1(_wgslsmith_sub_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -5238i, u_input.a, var_1.b.b.x), vec4<i32>(25435i, -40197i, 2147483647i, 31599i)), -u_input.b), u_input.b), var_1.a.yz, vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.c.x, var_1.b.c.x)), var_1.c.c.x, 273f, var_1.c.c.x), vec3<bool>(!select(false, true, false), !all(vec3<bool>(true, false, true)), !select(var_0.b.d.x, true, var_0.c.e)), true));
    var var_3 = -2147483647i;
    var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, var_2.a.x, 39508i), vec4<i32>(u_input.a, var_1.c.a.x, var_0.c.b.x, var_2.b.a.x))), abs(vec4<i32>(_wgslsmith_sub_i32(var_0.b.a.x, var_1.a.x), 1i, var_2.a.x & var_0.c.a.x, ~0i)), firstLeadingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(497i, var_2.a.x, -10738i, 17561i), vec4<i32>(var_0.b.a.x, var_1.a.x, var_2.b.a.x, var_1.c.a.x)), var_2.a, true))), Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(16123i, var_2.a.x, var_2.b.b.x, 20219i), var_0.a) | vec4<i32>(_wgslsmith_mult_i32(var_0.c.a.x, -1i), -10340i, reverseBits(u_input.c.x), var_2.a.x), vec2<i32>(max(1i, select(u_input.c.x, u_input.c.x, true)), var_1.a.x), _wgslsmith_f_op_vec4_f32(-var_1.b.c), var_2.c.d, !any(select(vec4<bool>(true, var_1.b.d.x, var_1.b.d.x, true), vec4<bool>(true, var_0.b.e, var_1.c.e, true), false))), Struct_1(max(max(var_0.a, vec4<i32>(var_0.b.a.x, 7416i, var_2.a.x, u_input.b.x)), vec4<i32>(u_input.c.x, 24154i ^ var_0.b.a.x, abs(17992i), -u_input.c.x)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_2.c.a.xw, var_1.a.xy), u_input.b.x), var_2.a.x), vec4<f32>(_wgslsmith_div_f32(var_2.c.c.x, var_2.c.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-688f)) + -818f), -239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.c.x * var_2.c.c.x) - _wgslsmith_div_f32(-500f, 1399f))), !(!(!var_2.b.d)), !(abs(u_input.b.x) != (var_0.a.x >> (1u % 32u)))));
    return Struct_3(u_input.d, vec4<u32>(0u, u_input.d, 1886u, ~(~_wgslsmith_sub_u32(4294967295u, 13484u))), reverseBits(reverseBits(func_3().ww)), var_0.b.c.yx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, firstLeadingBit(0i), -15706i), arg_2.c.a.zwz);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(arg_0.c.wwz));
    var_0 = firstLeadingBit(-37309i) >> (firstTrailingBit(~arg_1.c.x) % 32u);
    var var_2 = arg_0.a.x;
    return Struct_1(-arg_0.a, arg_2.b.a.zz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1461f)), arg_0.c.x, 354f, -1147f), vec3<bool>(!(arg_0.a.x >= -53196i) || false, !arg_3 & false, true), arg_2.c.d.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_3 {
    var var_0 = vec2<i32>(-(-(-1i >> (arg_3 % 32u)) | arg_1.a.x), 0i);
    let var_1 = Struct_3(arg_3, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d, u_input.d), _wgslsmith_clamp_u32(0u, 4294967295u, 25941u), u_input.d), _wgslsmith_clamp_u32(1u, 1u, min(arg_3, 13697u)), arg_3), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_3, 47925u, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(44216u, 0u, 0u, arg_3), vec4<u32>(57003u, u_input.d, 0u, 1u)), vec4<u32>(1225u, u_input.d, arg_3, arg_3)), ~vec4<u32>(u_input.d, 0u, u_input.d, arg_3) << (vec4<u32>(0u, 210u, 55731u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(arg_3, 4294967295u), arg_1.c.d.zy), firstTrailingBit(vec2<u32>(arg_3, 1u))), vec2<u32>(arg_3, ~0u)) | (vec2<u32>(_wgslsmith_div_u32(arg_3, u_input.d), arg_3 | u_input.d) << (_wgslsmith_mod_vec2_u32(vec2<u32>(26303u, 382u), vec2<u32>(arg_3, arg_3)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 269f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1183f, _wgslsmith_f_op_f32(abs(-192f))))));
    var var_2 = var_1.b.xyz;
    let var_3 = func_4(Struct_1(u_input.b, vec2<i32>(0i, ~arg_1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(343f, _wgslsmith_f_op_f32(arg_0.x - arg_2), _wgslsmith_f_op_f32(min(502f, -1584f)), -1621f) - _wgslsmith_div_vec4_f32(vec4<f32>(632f, 212f, arg_1.c.c.x, arg_1.c.c.x), vec4<f32>(381f, 509f, var_1.d.x, arg_2))), select(vec3<bool>(arg_1.b.d.x, !arg_1.c.e, var_0.x < 2147483647i), vec3<bool>(false, true, arg_1.b.d.x), arg_1.c.e), true), func_2(), arg_1, false);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1.b.c, var_3.c)) + _wgslsmith_f_op_vec4_f32(var_3.c - arg_1.c.c)))))));
    return Struct_3(reverseBits(var_1.a | 4294967295u), _wgslsmith_div_vec4_u32(var_1.b, var_1.b), _wgslsmith_mod_vec2_u32(var_2.xz, vec2<u32>(_wgslsmith_mod_u32(reverseBits(var_2.x), ~u_input.d), ~arg_3 ^ reverseBits(0u))), vec2<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.c.x, var_3.c.x)))), var_3.c.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(abs(arg_1.b << (vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.a, 0u) % vec4<u32>(32u))), ~arg_1.b ^ firstLeadingBit(arg_1.b)), ~(~(~func_2().b)));
    var var_1 = 1000f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1013f);
    var var_2 = any(arg_0);
    var var_3 = all(vec2<bool>((~u_input.d <= _wgslsmith_dot_vec2_u32(arg_1.c, arg_1.b.xy)) & false, !all(vec2<bool>(false, arg_2.d.x))));
    return arg_2;
}

fn func_1() -> f32 {
    var var_0 = func_6(vec4<bool>(true, !(!any(vec2<bool>(false, false))), true, true), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-259f, 1000f, -501f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1398f, 795f, 119f))))), Struct_2(u_input.b, Struct_1(-u_input.b, u_input.c.zz, vec4<f32>(-472f, 1274f, -1840f, 437f), vec3<bool>(true, true, false), select(true, true, true)), func_4(Struct_1(u_input.b, u_input.b.xy, vec4<f32>(-963f, -704f, -1000f, -761f), vec3<bool>(false, true, true), false), func_2(), Struct_2(u_input.b, Struct_1(vec4<i32>(2279i, -927i, u_input.b.x, 0i), u_input.c.yy, vec4<f32>(713f, 2233f, 236f, 1487f), vec3<bool>(true, false, true), false), Struct_1(vec4<i32>(-1i, u_input.a, 18791i, u_input.c.x), u_input.b.xy, vec4<f32>(2339f, 491f, -1012f, -1504f), vec3<bool>(true, false, true), false)), true)), _wgslsmith_f_op_f32(1f * 534f), ~u_input.d), func_4(func_4(func_4(Struct_1(vec4<i32>(-2147483647i, 0i, u_input.a, -2147483647i), vec2<i32>(u_input.b.x, -40322i), vec4<f32>(324f, -963f, 445f, -415f), vec3<bool>(true, false, true), false), Struct_3(4294967295u, vec4<u32>(4294967295u, 0u, u_input.d, u_input.d), vec2<u32>(31614u, 35503u), vec2<f32>(1499f, 820f)), Struct_2(vec4<i32>(1i, 22440i, -4532i, 1i), Struct_1(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 8706i), u_input.c.yx, vec4<f32>(276f, -1000f, 209f, -732f), vec3<bool>(true, true, false), true), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.b.x), vec2<i32>(46875i, 49839i), vec4<f32>(816f, 2144f, -2069f, 191f), vec3<bool>(false, true, true), true)), true), func_2(), Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.c.x, -15283i), vec4<i32>(u_input.b.x, 15507i, 12999i, u_input.b.x), u_input.b), func_4(Struct_1(u_input.b, vec2<i32>(u_input.c.x, 17612i), vec4<f32>(529f, 1266f, -199f, -383f), vec3<bool>(false, false, true), true), Struct_3(1u, vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec2<u32>(4294967295u, u_input.d), vec2<f32>(-935f, -507f)), Struct_2(vec4<i32>(u_input.a, u_input.b.x, -27272i, u_input.c.x), Struct_1(u_input.b, vec2<i32>(-20319i, u_input.a), vec4<f32>(-1050f, -1873f, -2327f, -411f), vec3<bool>(false, true, true), false), Struct_1(u_input.b, u_input.b.xw, vec4<f32>(559f, 586f, 1516f, 1114f), vec3<bool>(true, true, false), false)), true), func_4(Struct_1(u_input.b, vec2<i32>(u_input.c.x, -46039i), vec4<f32>(1043f, -1461f, -189f, -331f), vec3<bool>(false, false, true), false), Struct_3(39978u, vec4<u32>(0u, 57378u, u_input.d, u_input.d), vec2<u32>(u_input.d, 1u), vec2<f32>(-743f, -567f)), Struct_2(u_input.b, Struct_1(vec4<i32>(-1i, 2147483647i, -21076i, 0i), u_input.b.wy, vec4<f32>(1000f, 234f, -800f, -628f), vec3<bool>(false, true, false), true), Struct_1(vec4<i32>(u_input.a, -5783i, 26118i, -26862i), u_input.c.yy, vec4<f32>(-729f, 267f, 279f, 1235f), vec3<bool>(true, true, true), false)), true)), false), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1162f, 1512f, -334f)), Struct_2(vec4<i32>(u_input.a, u_input.c.x, u_input.a, u_input.b.x), func_4(Struct_1(u_input.b, u_input.b.yx, vec4<f32>(954f, -1548f, 1080f, 1143f), vec3<bool>(false, false, true), false), Struct_3(u_input.d, vec4<u32>(0u, u_input.d, u_input.d, 22185u), vec2<u32>(4294967295u, u_input.d), vec2<f32>(1172f, 349f)), Struct_2(vec4<i32>(0i, u_input.a, u_input.a, 0i), Struct_1(vec4<i32>(-1i, u_input.c.x, u_input.a, -62633i), u_input.b.zx, vec4<f32>(-1666f, 115f, -446f, -1000f), vec3<bool>(false, false, false), true), Struct_1(vec4<i32>(-6003i, -19053i, u_input.c.x, u_input.b.x), u_input.c.zx, vec4<f32>(-1589f, -1354f, -339f, 163f), vec3<bool>(false, false, false), false)), false), Struct_1(vec4<i32>(u_input.a, 13202i, u_input.c.x, u_input.a), vec2<i32>(u_input.b.x, u_input.a), vec4<f32>(-1527f, -1949f, 157f, -980f), vec3<bool>(true, true, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-468f, 395f))), 1u << (~u_input.d % 32u)), Struct_2(-vec4<i32>(u_input.a, -2147483647i, u_input.a, -1i), func_4(Struct_1(u_input.b, u_input.c.yz, vec4<f32>(1000f, 1218f, 748f, -1421f), vec3<bool>(false, true, true), true), Struct_3(u_input.d, vec4<u32>(u_input.d, 46002u, 1u, u_input.d), vec2<u32>(29895u, u_input.d), vec2<f32>(-860f, 476f)), Struct_2(vec4<i32>(-2147483647i, u_input.a, u_input.c.x, u_input.a), Struct_1(vec4<i32>(u_input.b.x, 6651i, u_input.a, u_input.a), u_input.b.zw, vec4<f32>(1488f, -300f, 758f, 933f), vec3<bool>(false, false, false), true), Struct_1(u_input.b, vec2<i32>(-2147483647i, -10679i), vec4<f32>(2047f, -1415f, -514f, -285f), vec3<bool>(true, false, true), true)), true), Struct_1(u_input.b, -u_input.b.yy, vec4<f32>(218f, -699f, -257f, 834f), func_4(Struct_1(u_input.b, u_input.b.xw, vec4<f32>(-438f, 442f, 670f, 834f), vec3<bool>(false, true, true), false), Struct_3(1u, vec4<u32>(u_input.d, 71547u, u_input.d, 24721u), vec2<u32>(u_input.d, 31846u), vec2<f32>(1062f, 1400f)), Struct_2(vec4<i32>(u_input.b.x, -36835i, 50692i, -1i), Struct_1(u_input.b, vec2<i32>(-2147483647i, -4190i), vec4<f32>(2546f, 1000f, -832f, 464f), vec3<bool>(false, false, true), false), Struct_1(vec4<i32>(u_input.a, -1i, -4258i, 0i), vec2<i32>(u_input.a, u_input.a), vec4<f32>(1273f, -687f, -666f, -574f), vec3<bool>(true, false, false), true)), true).d, true)), _wgslsmith_f_op_f32(239f - _wgslsmith_f_op_f32(sign(133f))) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, 570f))))));
    var_0 = func_4(func_4(Struct_1(_wgslsmith_div_vec4_i32(var_0.a, var_0.a >> (vec4<u32>(4294967295u, 19450u, u_input.d, u_input.d) % vec4<u32>(32u))), min(abs(vec2<i32>(var_0.a.x, var_0.b.x)), ~u_input.b.xy), vec4<f32>(-539f, var_0.c.x, var_0.c.x, var_0.c.x), var_0.d, !var_0.e), Struct_3(u_input.d, ~(~vec4<u32>(u_input.d, u_input.d, u_input.d, 1u)), func_5(_wgslsmith_f_op_vec3_f32(-var_0.c.wxy), Struct_2(vec4<i32>(var_0.a.x, u_input.c.x, var_0.b.x, u_input.c.x), Struct_1(vec4<i32>(1i, var_0.a.x, 48141i, -2147483647i), u_input.c.xz, vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.d, false), Struct_1(u_input.b, vec2<i32>(2777i, u_input.a), var_0.c, vec3<bool>(var_0.d.x, var_0.d.x, var_0.e), true)), -1040f, 1u).b.xx, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.c.yz), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-106f, var_0.c.x), vec2<f32>(var_0.c.x, -1609f)))))), Struct_2(vec4<i32>(select(-5418i, -51759i, false), u_input.c.x ^ var_0.b.x, -40560i, func_6(vec4<bool>(false, var_0.d.x, true, var_0.e), Struct_3(113079u, vec4<u32>(u_input.d, 7588u, u_input.d, 0u), vec2<u32>(0u, 1u), vec2<f32>(var_0.c.x, 1768f)), Struct_1(vec4<i32>(var_0.b.x, 2147483647i, -2147483647i, 27036i), vec2<i32>(var_0.a.x, var_0.b.x), var_0.c, vec3<bool>(var_0.d.x, false, false), var_0.d.x)).b.x), func_6(vec4<bool>(false, var_0.d.x, var_0.d.x, true), func_2(), func_4(Struct_1(u_input.b, vec2<i32>(var_0.a.x, u_input.a), var_0.c, var_0.d, var_0.e), Struct_3(4294967295u, vec4<u32>(46726u, u_input.d, u_input.d, u_input.d), vec2<u32>(4294967295u, u_input.d), vec2<f32>(-1092f, -581f)), Struct_2(vec4<i32>(1i, var_0.a.x, var_0.b.x, -1i), Struct_1(u_input.b, u_input.b.wx, var_0.c, vec3<bool>(true, true, var_0.d.x), var_0.e), Struct_1(vec4<i32>(var_0.a.x, -38336i, 0i, u_input.b.x), vec2<i32>(2147483647i, var_0.a.x), vec4<f32>(var_0.c.x, -332f, var_0.c.x, var_0.c.x), vec3<bool>(var_0.e, var_0.d.x, true), var_0.d.x)), true)), func_6(!vec4<bool>(true, var_0.d.x, var_0.d.x, false), Struct_3(u_input.d, vec4<u32>(2193u, 14750u, 0u, u_input.d), vec2<u32>(u_input.d, 12464u), var_0.c.xx), Struct_1(u_input.b, var_0.b, vec4<f32>(var_0.c.x, 773f, 1299f, -1424f), var_0.d, false))), true), func_2(), Struct_2(~countOneBits(vec4<i32>(-2147483647i, -1i, 64108i, var_0.b.x)), func_4(func_6(vec4<bool>(var_0.e, false, var_0.e, var_0.e), func_5(var_0.c.wxw, Struct_2(vec4<i32>(var_0.b.x, -1i, 17461i, u_input.a), Struct_1(vec4<i32>(0i, 21438i, var_0.b.x, -1i), var_0.b, vec4<f32>(var_0.c.x, -1071f, var_0.c.x, -340f), vec3<bool>(true, false, true), var_0.d.x), Struct_1(var_0.a, vec2<i32>(4684i, -1i), var_0.c, vec3<bool>(var_0.d.x, var_0.e, var_0.e), false)), 285f, u_input.d), func_4(Struct_1(u_input.b, u_input.b.yx, vec4<f32>(479f, 489f, var_0.c.x, var_0.c.x), var_0.d, false), Struct_3(36014u, vec4<u32>(12325u, 16213u, 14732u, u_input.d), vec2<u32>(u_input.d, u_input.d), var_0.c.zw), Struct_2(vec4<i32>(u_input.b.x, var_0.b.x, var_0.b.x, -3858i), Struct_1(vec4<i32>(var_0.a.x, 0i, -2147483647i, 50133i), u_input.c.zx, var_0.c, vec3<bool>(true, var_0.e, false), var_0.e), Struct_1(u_input.b, vec2<i32>(-1i, 1i), var_0.c, vec3<bool>(var_0.e, true, false), false)), true)), Struct_3(func_3().x, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 1u), vec4<u32>(u_input.d, 6400u, 1u, u_input.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)), var_0.c.zy), Struct_2(~u_input.b, func_6(vec4<bool>(false, var_0.e, var_0.d.x, false), Struct_3(67470u, vec4<u32>(50558u, u_input.d, 64771u, u_input.d), vec2<u32>(4294967295u, u_input.d), var_0.c.wx), Struct_1(u_input.b, u_input.c.zy, var_0.c, vec3<bool>(false, var_0.e, var_0.d.x), var_0.d.x)), Struct_1(u_input.b, vec2<i32>(-33059i, 2147483647i), var_0.c, vec3<bool>(true, var_0.e, false), var_0.d.x)), true), func_6(vec4<bool>(any(var_0.d), !var_0.e, select(var_0.d.x, var_0.e, true), false), Struct_3(min(0u, 1u), abs(vec4<u32>(u_input.d, u_input.d, 20145u, 28209u)), vec2<u32>(19796u, u_input.d), vec2<f32>(var_0.c.x, var_0.c.x)), Struct_1(u_input.b, ~var_0.a.yw, vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), !vec3<bool>(false, var_0.e, false), true))), false);
    let var_1 = any(var_0.d);
    var var_2 = !(!all(func_6(!vec4<bool>(true, true, var_1, false), func_2(), Struct_1(vec4<i32>(19676i, -30123i, -40279i, 0i), u_input.c.xz, vec4<f32>(-409f, -341f, -2596f, var_0.c.x), vec3<bool>(var_1, var_1, var_0.e), var_0.e)).d));
    let var_3 = var_0.d;
    return var_0.c.x;
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = abs(-(arg_0.a.xzz >> (vec3<u32>(27798u, 5169u, 0u) % vec3<u32>(32u))) >> ((_wgslsmith_mult_vec3_u32(func_3().zyx, ~vec3<u32>(4294967295u, u_input.d, u_input.d)) << (vec3<u32>(arg_1, 1u & arg_1, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = arg_3;
    return vec2<i32>(8513i, 73573i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(func_7(Struct_1(vec4<i32>(1i, u_input.c.x, 0i, u_input.a), ~vec2<i32>(u_input.c.x, 1i), vec4<f32>(-100f, -571f, 998f, -1581f), vec3<bool>(false, false, false), any(vec2<bool>(true, true))), ~u_input.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-755f)), _wgslsmith_f_op_f32(func_1()), any(vec3<bool>(true, false, false)))), Struct_2(-vec4<i32>(u_input.c.x, u_input.b.x, -1i, -2147483647i), Struct_1(vec4<i32>(u_input.a, 1i, 16282i, u_input.b.x), u_input.b.zw, vec4<f32>(-507f, -840f, 1101f, 308f), vec3<bool>(false, true, false), false), Struct_1(vec4<i32>(2147483647i, 0i, 1i, -9551i), vec2<i32>(u_input.c.x, 1i), vec4<f32>(1239f, -1000f, 472f, 2281f), vec3<bool>(true, true, true), false)))) | (u_input.b.xz & func_4(Struct_1(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(-50303i, 2147483647i, 4959i, -1i)), vec2<i32>(u_input.a, u_input.a), vec4<f32>(778f, 722f, -1000f, -1209f), func_6(vec4<bool>(true, true, false, false), Struct_3(1u, vec4<u32>(u_input.d, 53712u, u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d), vec2<f32>(-917f, -439f)), Struct_1(vec4<i32>(-21933i, 0i, -23034i, -112i), u_input.b.zy, vec4<f32>(-995f, 1485f, 1000f, -169f), vec3<bool>(false, false, false), false)).d, true), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1679f, -971f, -1622f) - vec3<f32>(842f, -1000f, -586f)), Struct_2(u_input.b, Struct_1(vec4<i32>(u_input.a, u_input.c.x, u_input.b.x, 0i), vec2<i32>(0i, u_input.a), vec4<f32>(-367f, 200f, 658f, 485f), vec3<bool>(true, true, true), false), Struct_1(u_input.b, u_input.c.zy, vec4<f32>(1756f, 267f, -597f, -389f), vec3<bool>(false, false, true), true)), -194f, u_input.d << (4294967295u % 32u)), Struct_2(vec4<i32>(-1i, -2147483647i, -1i, u_input.b.x) >> (vec4<u32>(4294967295u, u_input.d, 4294967295u, 28619u) % vec4<u32>(32u)), Struct_1(vec4<i32>(-31959i, u_input.b.x, 11654i, 21991i), u_input.b.yy, vec4<f32>(-610f, 1482f, 1614f, -1136f), vec3<bool>(true, false, true), true), func_4(Struct_1(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.zx, vec4<f32>(1433f, 849f, -1000f, -288f), vec3<bool>(false, false, false), false), Struct_3(u_input.d, vec4<u32>(14415u, u_input.d, 4294967295u, 1u), vec2<u32>(u_input.d, 1u), vec2<f32>(-487f, 1648f)), Struct_2(u_input.b, Struct_1(u_input.b, u_input.b.zz, vec4<f32>(-2170f, -800f, -1586f, 492f), vec3<bool>(true, false, true), false), Struct_1(vec4<i32>(13774i, u_input.a, 41853i, -12885i), u_input.b.ww, vec4<f32>(182f, -912f, 508f, 1000f), vec3<bool>(true, false, false), false)), true)), any(vec4<bool>(true, true, false, false))).b);
    var var_1 = Struct_1(-u_input.b, min(u_input.c.xx, reverseBits(abs(var_0))), vec4<f32>(339f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2228f)))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2491f, 1011f, -1244f) + vec3<f32>(178f, 516f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1007f, -668f, -1686f))), Struct_2(vec4<i32>(2147483647i, var_0.x, var_0.x, 0i), Struct_1(vec4<i32>(2147483647i, -2147483647i, u_input.c.x, var_0.x), vec2<i32>(0i, 2147483647i), vec4<f32>(-241f, 964f, 326f, -835f), vec3<bool>(true, true, false), true), func_6(vec4<bool>(false, false, false, true), Struct_3(27640u, vec4<u32>(1u, 59768u, 37695u, 38206u), vec2<u32>(90986u, 11847u), vec2<f32>(-303f, 1093f)), Struct_1(vec4<i32>(var_0.x, u_input.b.x, 0i, 5052i), vec2<i32>(var_0.x, u_input.b.x), vec4<f32>(-1166f, 899f, -2573f, 1333f), vec3<bool>(true, true, false), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -336f), _wgslsmith_div_f32(-1012f, -1429f)), 1u).d.x, func_2().d.x), func_4(func_6(vec4<bool>(any(vec3<bool>(true, false, true)), true, all(vec2<bool>(true, false)), true), Struct_3(~73502u, reverseBits(vec4<u32>(u_input.d, 4294967295u, 1u, u_input.d)), ~vec2<u32>(49352u, 17241u), vec2<f32>(-333f, 702f)), Struct_1(~vec4<i32>(-20521i, var_0.x, var_0.x, var_0.x), abs(u_input.c.zx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(915f, -416f, -512f, 175f)), vec3<bool>(false, false, true), true)), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -590f, -1112f) - vec3<f32>(503f, 312f, -1022f))), Struct_2(~vec4<i32>(u_input.c.x, var_0.x, var_0.x, u_input.a), func_4(Struct_1(vec4<i32>(u_input.b.x, 13805i, u_input.a, 2147483647i), vec2<i32>(u_input.b.x, -22263i), vec4<f32>(-1347f, -1096f, -548f, -840f), vec3<bool>(true, true, false), false), Struct_3(4294967295u, vec4<u32>(19269u, u_input.d, u_input.d, 0u), vec2<u32>(u_input.d, u_input.d), vec2<f32>(220f, -1832f)), Struct_2(u_input.b, Struct_1(vec4<i32>(-12927i, 0i, -2147483647i, u_input.a), vec2<i32>(var_0.x, u_input.a), vec4<f32>(-147f, 1725f, 108f, 1852f), vec3<bool>(false, true, false), true), Struct_1(u_input.b, vec2<i32>(2872i, var_0.x), vec4<f32>(1019f, -1490f, 1000f, -155f), vec3<bool>(true, true, false), false)), true), func_6(vec4<bool>(true, false, false, true), Struct_3(1u, vec4<u32>(u_input.d, 69686u, 64304u, 27084u), vec2<u32>(u_input.d, 1u), vec2<f32>(1300f, -1328f)), Struct_1(u_input.b, vec2<i32>(-2147483647i, u_input.a), vec4<f32>(831f, -660f, 1025f, -127f), vec3<bool>(false, false, true), false))), _wgslsmith_f_op_f32(ceil(func_2().d.x)), min(func_5(vec3<f32>(427f, 315f, 247f), Struct_2(vec4<i32>(48464i, -2147483647i, -2147483647i, 1i), Struct_1(u_input.b, var_0, vec4<f32>(-349f, -456f, 1697f, 1143f), vec3<bool>(true, false, false), false), Struct_1(u_input.b, vec2<i32>(1i, u_input.a), vec4<f32>(493f, 1252f, 101f, 854f), vec3<bool>(false, true, false), true)), -915f, 31370u).b.x, 29330u)), Struct_2(vec4<i32>(_wgslsmith_mult_i32(var_0.x, -65741i), _wgslsmith_sub_i32(-1i, u_input.b.x), ~var_0.x, min(var_0.x, 1i)), func_6(vec4<bool>(false, true, false, true), func_2(), Struct_1(vec4<i32>(var_0.x, 0i, 65946i, -1i), vec2<i32>(u_input.c.x, 0i), vec4<f32>(230f, 112f, -645f, 203f), vec3<bool>(false, true, true), true)), func_6(vec4<bool>(true, true, true, true), func_2(), Struct_1(u_input.b, var_0, vec4<f32>(230f, -490f, 3252f, 1513f), vec3<bool>(false, true, false), false))), true).d, all(vec4<bool>(true, !all(vec2<bool>(true, true)), true, !select(true, false, true))));
    let var_2 = ~u_input.d;
    var var_3 = Struct_1(func_6(vec4<bool>(all(vec3<bool>(var_1.d.x, var_1.e, var_1.e)), var_1.e, func_6(!vec4<bool>(var_1.d.x, true, true, false), func_5(var_1.c.wxw, Struct_2(vec4<i32>(-2147483647i, u_input.c.x, var_0.x, 6624i), Struct_1(u_input.b, vec2<i32>(-2147483647i, var_0.x), vec4<f32>(-890f, var_1.c.x, var_1.c.x, var_1.c.x), var_1.d, true), Struct_1(var_1.a, vec2<i32>(u_input.b.x, u_input.c.x), vec4<f32>(var_1.c.x, var_1.c.x, 186f, var_1.c.x), var_1.d, var_1.d.x)), var_1.c.x, var_2), func_4(Struct_1(u_input.b, vec2<i32>(-2147483647i, 0i), var_1.c, vec3<bool>(var_1.d.x, var_1.e, var_1.d.x), true), Struct_3(var_2, vec4<u32>(6160u, 1u, 62231u, 90691u), vec2<u32>(var_2, var_2), vec2<f32>(1040f, var_1.c.x)), Struct_2(vec4<i32>(var_0.x, -2147483647i, -1i, -2147483647i), Struct_1(vec4<i32>(var_0.x, var_1.b.x, var_1.b.x, var_0.x), u_input.b.wx, var_1.c, vec3<bool>(var_1.e, var_1.e, var_1.e), true), Struct_1(u_input.b, var_0, vec4<f32>(-722f, var_1.c.x, 1188f, -405f), vec3<bool>(true, var_1.e, false), true)), true)).e, true), Struct_3(~u_input.d, vec4<u32>(~19117u, ~u_input.d, 11897u, 4294967295u), ~(~vec2<u32>(0u, 4294967295u)), func_6(select(vec4<bool>(var_1.e, false, true, var_1.d.x), vec4<bool>(true, var_1.e, var_1.e, false), vec4<bool>(true, true, var_1.e, var_1.e)), func_2(), func_6(vec4<bool>(var_1.d.x, var_1.e, true, false), Struct_3(4716u, vec4<u32>(var_2, 13199u, 43685u, 23164u), vec2<u32>(59351u, u_input.d), vec2<f32>(1304f, 1875f)), Struct_1(var_1.a, u_input.c.zz, var_1.c, vec3<bool>(true, var_1.e, var_1.d.x), var_1.e))).c.zw), Struct_1(-vec4<i32>(2147483647i, 13536i, 0i, var_0.x), u_input.b.yx, _wgslsmith_f_op_vec4_f32(max(var_1.c, var_1.c)), vec3<bool>(var_1.e, var_2 == u_input.d, any(vec2<bool>(var_1.e, var_1.e))), any(select(vec3<bool>(var_1.e, false, var_1.d.x), vec3<bool>(true, false, var_1.d.x), var_1.d.x)))).a, vec2<i32>(~select(func_4(Struct_1(vec4<i32>(34976i, var_0.x, 11701i, u_input.a), var_1.b, vec4<f32>(-1602f, -328f, var_1.c.x, -964f), var_1.d, var_1.d.x), Struct_3(84441u, vec4<u32>(var_2, 4294967295u, u_input.d, u_input.d), vec2<u32>(5479u, var_2), vec2<f32>(var_1.c.x, var_1.c.x)), Struct_2(var_1.a, Struct_1(var_1.a, var_1.a.xx, vec4<f32>(-262f, var_1.c.x, var_1.c.x, -1096f), var_1.d, var_1.d.x), Struct_1(var_1.a, u_input.b.wx, vec4<f32>(785f, -155f, -1416f, 424f), vec3<bool>(var_1.d.x, false, false), var_1.e)), var_1.e).b.x, 1i, var_1.e), -2147483647i), _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c + var_1.c)))), select(vec3<bool>(any(vec4<bool>(var_1.d.x, var_1.e, false, var_1.d.x)), true, !(true != var_1.e)), var_1.d, select(select(select(vec3<bool>(var_1.d.x, false, var_1.e), vec3<bool>(false, var_1.d.x, false), true), var_1.d, func_4(Struct_1(vec4<i32>(-1i, var_1.a.x, -1i, 36407i), var_1.a.yw, vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, -2062f), vec3<bool>(false, var_1.e, false), false), Struct_3(48832u, vec4<u32>(0u, 0u, 0u, 41833u), vec2<u32>(1u, u_input.d), var_1.c.zx), Struct_2(var_1.a, Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, -10086i), var_0, var_1.c, var_1.d, var_1.d.x), Struct_1(vec4<i32>(var_0.x, 2147483647i, -16490i, 0i), var_1.b, vec4<f32>(var_1.c.x, -768f, var_1.c.x, var_1.c.x), var_1.d, false)), var_1.e).e), var_1.d, !(!vec3<bool>(var_1.d.x, true, var_1.e)))), func_7(Struct_1(vec4<i32>(var_0.x, var_0.x, 0i, u_input.a), var_1.b, _wgslsmith_div_vec4_f32(var_1.c, vec4<f32>(var_1.c.x, var_1.c.x, 214f, var_1.c.x)), vec3<bool>(var_1.e, var_1.d.x, var_1.d.x), true), var_2, _wgslsmith_f_op_f32(-var_1.c.x), Struct_2(~var_1.a, Struct_1(var_1.a, vec2<i32>(3546i, -146i), vec4<f32>(-264f, -1821f, var_1.c.x, var_1.c.x), vec3<bool>(false, var_1.e, true), true), Struct_1(u_input.b, vec2<i32>(var_1.a.x, var_0.x), var_1.c, vec3<bool>(true, true, var_1.e), false))).x > abs(select(i32(-1i) * -2147483647i, var_1.b.x, 1134f > var_1.c.x)));
    let var_4 = var_1.a.x;
    let var_5 = !(!(!(!all(vec4<bool>(var_3.d.x, var_1.e, true, true)))));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.yyz) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_6(select(vec4<bool>(false, true, var_3.e, var_1.e), vec4<bool>(true, true, true, var_1.d.x), vec4<bool>(true, true, var_1.e, false)), Struct_3(var_2, vec4<u32>(u_input.d, 0u, 0u, u_input.d), vec2<u32>(12329u, 24599u), var_1.c.zx), func_4(Struct_1(vec4<i32>(42587i, 2147483647i, 47961i, 61629i), vec2<i32>(u_input.c.x, 82856i), vec4<f32>(-1806f, -1196f, var_1.c.x, var_3.c.x), vec3<bool>(var_5, true, var_3.e), var_3.d.x), Struct_3(var_2, vec4<u32>(68080u, 1u, 0u, 4261u), vec2<u32>(71571u, var_2), var_1.c.xz), Struct_2(vec4<i32>(u_input.b.x, var_0.x, -13337i, 1i), Struct_1(vec4<i32>(0i, u_input.b.x, var_3.b.x, u_input.b.x), var_3.a.wx, vec4<f32>(-894f, var_1.c.x, var_3.c.x, var_3.c.x), vec3<bool>(var_3.d.x, var_3.d.x, false), var_1.e), Struct_1(vec4<i32>(var_1.b.x, u_input.a, var_1.b.x, 6133i), vec2<i32>(u_input.c.x, 19358i), vec4<f32>(var_3.c.x, -3203f, 803f, var_3.c.x), var_3.d, true)), true)).c.x, var_1.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.c.x), 643f)))));
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-920f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(sign(var_6.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_6.x), 502f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(func_4(func_6(vec4<bool>(var_1.d.x, var_1.e, var_1.d.x, var_3.e), Struct_3(var_2, vec4<u32>(42498u, 18097u, var_2, u_input.d), vec2<u32>(4294967295u, 1361u), var_3.c.wx), Struct_1(vec4<i32>(var_3.a.x, var_1.a.x, u_input.a, -2147483647i), vec2<i32>(var_1.a.x, -2147483647i), var_3.c, var_1.d, var_5)), Struct_3(1u, vec4<u32>(0u, 12491u, u_input.d, u_input.d), vec2<u32>(0u, u_input.d), vec2<f32>(var_3.c.x, -1372f)), Struct_2(u_input.b, Struct_1(vec4<i32>(-3902i, 0i, -1i, u_input.c.x), vec2<i32>(var_1.b.x, var_1.b.x), var_1.c, vec3<bool>(true, var_1.d.x, var_3.e), true), Struct_1(vec4<i32>(-7696i, var_3.a.x, -1i, -7429i), var_3.b, var_3.c, vec3<bool>(false, var_5, var_1.e), false)), var_1.d.x).a.xy)), u_input.c, abs(vec4<u32>(4294967295u, 65811u, 30314u, 0u)));
}

