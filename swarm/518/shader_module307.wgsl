struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = !select(vec4<bool>(false, select(84551u, 0u, false) > ~u_input.a, all(vec3<bool>(false, true, true)), true), vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(false, false, true) != true, ~39913u > u_input.a), vec4<bool>(select(true, false, true), true, true, !all(vec3<bool>(false, false, true))));
    var var_1 = _wgslsmith_mult_u32(~reverseBits(~56820u), min(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a, 40823u, u_input.a, 1u)), ~vec4<u32>(56207u, 1u, u_input.a, u_input.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(8797u, u_input.a, 0u, u_input.a), vec4<u32>(80306u, u_input.a, 25679u, u_input.a)) % vec4<u32>(32u))), ~firstTrailingBit(u_input.a ^ u_input.a)));
    var_1 = ~58148u;
    var_1 = u_input.a;
    var_1 = u_input.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2052f, 2498f), _wgslsmith_f_op_f32(f32(-1f) * -299f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) - _wgslsmith_div_f32(-1942f, -226f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1524f - 1218f)) - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1362f)))));
    let var_1 = -_wgslsmith_add_vec3_i32(firstTrailingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.e.x, -1i), vec3<i32>(u_input.c, 44510i, -2147483647i), u_input.d.www), firstLeadingBit(u_input.e), false)), -(vec3<i32>(-43766i, -42197i, u_input.e.x) & u_input.e) & u_input.e);
    var var_2 = Struct_4(Struct_3(vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, false), vec3<i32>(~min(2147483647i, -37799i), var_1.x, u_input.e.x), !(var_1.x <= _wgslsmith_div_i32(1i, 1i))), firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(max(u_input.a, 13289u), max(0u, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a)), _wgslsmith_add_u32(u_input.a, firstLeadingBit(1u)), 4294967295u, ~u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 34363u, 1u, 0u), vec4<u32>(u_input.a, 8318u, u_input.a, 50090u)) % 32u))), select(vec4<bool>(!(u_input.d.x != var_1.x), !any(vec2<bool>(true, true)), false, true), !vec4<bool>(true, all(vec3<bool>(true, false, false)), 2082f >= var_0, true), true), -305f);
    let var_3 = Struct_1(reverseBits(u_input.d & u_input.d), !select(vec2<bool>(any(var_2.c), all(vec4<bool>(false, false, var_2.c.x, false))), vec2<bool>(true | var_2.a.a.x, !var_2.a.a.x), var_2.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(686f, 324f, var_0) + vec3<f32>(1017f, 990f, var_0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-825f, -595f, -1906f)) + vec3<f32>(_wgslsmith_f_op_f32(1212f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -959f), -1674f))), select(_wgslsmith_clamp_vec2_i32(var_2.a.b.yx, (vec2<i32>(var_2.a.b.x, 14682i) >> (var_2.b.yy % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(30124u, 99099u), var_2.b.yx) % vec2<u32>(32u)), var_2.a.b.yz), ~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.a.b.xz, vec2<i32>(0i, var_1.x)), var_1.zy ^ vec2<i32>(-1i, var_1.x)), true));
    return var_2.c.x;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = Struct_3(vec4<bool>(false, func_2(), any(vec3<bool>(arg_0, false, true)), true), vec3<i32>(0i, ~(-_wgslsmith_sub_i32(-1i, u_input.e.x)), min(firstTrailingBit(0i) & -2930i, 2147483647i)), any(!(!(!vec4<bool>(true, false, true, arg_0)))));
    var var_1 = _wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, _wgslsmith_sub_i32(var_0.b.x, 13866i), -u_input.e.x), max(-var_0.b, ~var_0.b))), u_input.e);
    var var_2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(35799u, 18651u, 52339u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(63399u, 0u, arg_1.x, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 51604u))) >> (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 70468u, u_input.a, 4294967295u), vec4<u32>(u_input.a, arg_1.x, 23817u, arg_1.x))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(min(select(vec4<u32>(1u, 49086u, u_input.a, 4294967295u), vec4<u32>(1364u, arg_1.x, u_input.a, 3912u), var_0.a), vec4<u32>(36186u, u_input.a, u_input.a, 12011u)), abs(firstTrailingBit(vec4<u32>(arg_1.x, u_input.a, u_input.a, 4294967295u)))), _wgslsmith_div_vec4_u32(~min(vec4<u32>(arg_1.x, 22467u, 25297u, 7018u), vec4<u32>(0u, 7149u, 4294967295u, arg_1.x)) >> (vec4<u32>(arg_1.x | 1u, ~0u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(arg_1.x, countOneBits(max(u_input.a, arg_1.x)), 34643u, ~arg_1.x << (arg_1.x % 32u))));
    var var_3 = ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.a, 53135u, 63572u), vec4<u32>(1u, arg_1.x, 0u, 1u))), abs(~49800u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 91586u), abs(var_2.wz)));
    let var_4 = Struct_2(vec2<i32>(-1i) * -abs(select(vec2<i32>(u_input.b.x, var_0.b.x), u_input.d.yw, vec2<bool>(false, arg_0))));
    return vec4<u32>(_wgslsmith_mod_u32(~countOneBits(4294967295u), arg_1.x), countOneBits(_wgslsmith_add_u32(30197u, ~_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(1u, u_input.a, u_input.a)))), min(_wgslsmith_sub_u32(var_2.x >> (var_2.x % 32u), 1u >> (~4294967295u % 32u)), ~u_input.a), select(u_input.a, _wgslsmith_sub_u32(arg_1.x, u_input.a), true));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = arg_0.a.b.x;
    var var_1 = func_2();
    var var_2 = arg_0;
    var_1 = arg_1.b.x && (_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_1.d.x, -1i), _wgslsmith_dot_vec3_i32(arg_0.a.b, var_2.a.b), var_2.a.b.x & u_input.c, arg_1.d.x), arg_1.a >> (vec4<u32>(738u, 0u, 0u, u_input.a) % vec4<u32>(32u))) < -2147483647i);
    var_2 = arg_0;
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 1u << (u_input.a % 32u)), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec4<bool>(true, true, !all(vec4<bool>(false, false, true, true)), true));
    var var_1 = u_input.e.x;
    var var_2 = vec3<u32>(~u_input.a, func_4(Struct_4(Struct_3(select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false), u_input.e, var_0), ~func_1(false, vec3<u32>(u_input.a, u_input.a, u_input.a)), !(!vec4<bool>(var_0, var_0, true, var_0)), _wgslsmith_div_f32(1030f, 263f)), Struct_1(u_input.d, vec2<bool>(var_0, all(vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -775f, 1432f) * vec3<f32>(-177f, -796f, -836f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-638f, -1000f, 726f), vec3<f32>(-730f, 1846f, 613f))), vec2<i32>(~0i, 18440i)), all(vec4<bool>(var_0, any(vec3<bool>(false, true, var_0)), true, var_0))), u_input.a);
    var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x) << (vec3<u32>(0u, 19443u, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a, var_2.x, ~0u)), ~1u, min(var_2.x, 1u));
    let var_3 = ~select(firstLeadingBit(-u_input.e) ^ (vec3<i32>(-1i) * -u_input.d.xxw), u_input.d.ywz, var_0);
    var var_4 = var_2.yz;
    var var_5 = countOneBits(_wgslsmith_sub_i32(~u_input.c, countOneBits(-var_3.x) ^ abs(var_3.x)));
    var_5 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, countOneBits(u_input.e.x), abs(u_input.b.x), _wgslsmith_sub_i32(58283i, 1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-65852i, 0i), vec2<i32>(2147483647i, var_3.x)), -2147483647i, firstTrailingBit(-1i), 1i)) >> (var_2.x % 32u), u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~(-u_input.d) | vec4<i32>(-(~var_3.x), var_3.x, firstLeadingBit(_wgslsmith_sub_i32(0i, var_3.x)), u_input.b.x), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_clamp_i32(-51187i, u_input.c, var_3.x));
}

