struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = vec4<i32>(u_input.b.x, _wgslsmith_div_i32(-(~(-u_input.c.x)), firstLeadingBit(1i)), abs(_wgslsmith_div_i32(~(-2147483647i | u_input.b.x), -24952i)), ~_wgslsmith_clamp_i32(-2147483647i, 1i, ~(-84264i)) & (~max(u_input.a.x, 1i) ^ abs(-48197i >> (arg_2.x % 32u))));
    var var_1 = ~arg_2;
    var_1 = select(arg_2, _wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(35851u, ~_wgslsmith_dot_vec2_u32(var_1.yw, arg_2.xy), min(var_1.x, 71007u) ^ abs(1u), arg_1 ^ arg_2.x)), !(true && !any(vec4<bool>(false, true, true, true))));
    return ~min(_wgslsmith_clamp_vec3_i32(firstTrailingBit(firstTrailingBit(u_input.a.xzy)), vec3<i32>(u_input.c.x, var_0.x, ~25001i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_0.x, 0i) | vec3<i32>(1i, u_input.b.x, var_0.x), select(vec3<i32>(var_0.x, -1i, -2147483647i), u_input.c, true))), reverseBits(u_input.b));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f))))));
    var var_1 = 31965u << (select(~firstTrailingBit(abs(0u)), 20164u, _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(551f, -699f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))) % 32u);
    var_1 = ~1u;
    var var_2 = Struct_3(1u, Struct_1(1000f, vec3<u32>(1u, 1u, 1u), ~(-_wgslsmith_div_i32(12633i, u_input.c.x)), u_input.b & abs(max(u_input.c, u_input.c))));
    let var_3 = func_3(~56891u, var_2.a, abs((vec4<u32>(0u, 1u, var_2.b.b.x, var_2.b.b.x) | vec4<u32>(var_2.a, 29814u, 68438u, 4294967295u)) >> (select(vec4<u32>(var_2.a, 0u, 0u, 4294967295u), max(vec4<u32>(4294967295u, 18362u, var_2.a, var_2.b.b.x), vec4<u32>(var_2.b.b.x, var_2.b.b.x, var_2.b.b.x, var_2.a)), all(vec2<bool>(true, false))) % vec4<u32>(32u))));
    return reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-13347i, 2147483647i, u_input.b.x, -56614i), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, var_3.x), var_3.x << (4294967295u % 32u), -25547i, min(var_3.x, var_3.x))), ~u_input.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 552f);
    var_0 = -711f;
    let var_1 = Struct_2(reverseBits(~select(-vec3<i32>(arg_1.c, arg_2.x, 1i), vec3<i32>(46515i, u_input.c.x, u_input.c.x) << (vec3<u32>(24861u, 0u, 56741u) % vec3<u32>(32u)), any(vec2<bool>(false, true)))), -1i, Struct_1(arg_0.x, vec3<u32>(select(_wgslsmith_dot_vec2_u32(arg_1.b.zy, arg_1.b.yy), 84735u, true), _wgslsmith_div_u32(1u >> (arg_1.b.x % 32u), reverseBits(10297u)), _wgslsmith_mod_u32(countOneBits(arg_1.b.x), 4857u)), _wgslsmith_add_i32(min(0i, 21968i | arg_1.c), _wgslsmith_add_i32(~(-2147483647i), countOneBits(arg_2.x))), min(-arg_1.d, _wgslsmith_mult_vec3_i32(~arg_1.d, vec3<i32>(-38075i, arg_1.c, arg_2.x)))), _wgslsmith_div_i32(select(reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_2.x, -1i, 57149i, -59633i))), -(arg_2.x & -7567i), all(vec3<bool>(false, false, true))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_2.x, arg_1.c, -1i, u_input.c.x)), arg_2)), 177f > _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(542f)), arg_0.x, false))));
    var_0 = _wgslsmith_f_op_f32(-127f * arg_0.x);
    return _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(floor(830f)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(1000f * -593f);
    let var_1 = select(select(select(vec2<bool>(arg_2.x, true), arg_2.zy, select(select(vec2<bool>(false, arg_2.x), vec2<bool>(arg_2.x, true), arg_2.x), !vec2<bool>(arg_2.x, false), all(arg_2))), arg_2.xz, !arg_2.yy), arg_2.zz, !select(arg_2.yy, !arg_2.zy, any(vec2<bool>(false, arg_2.x))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(vec2<f32>(1130f, _wgslsmith_f_op_f32(1007f - 763f)), Struct_1(1557f, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, arg_3, 0u), vec3<u32>(arg_3, arg_3, arg_3), vec3<u32>(arg_3, 11085u, arg_3)), _wgslsmith_div_i32(-1i, arg_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, 67986i), u_input.a.xwx)), func_2())), -1547f)));
    var_0 = 1538f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) + _wgslsmith_f_op_f32(sign(1078f))))), vec3<u32>(~abs(arg_3 ^ 0u), ~(~select(arg_3, 1u, true)), ~(arg_3 | (1u ^ arg_3))), ~_wgslsmith_dot_vec3_i32(u_input.c, select(select(vec3<i32>(2147483647i, -95i, arg_0), u_input.a.zwz, vec3<bool>(var_1.x, var_1.x, arg_2.x)), -u_input.c, all(vec4<bool>(true, false, false, arg_2.x)))), countOneBits(vec3<i32>(1i, u_input.b.x, -2147483647i)) ^ (u_input.b | vec3<i32>(select(arg_0, -23048i, var_1.x), _wgslsmith_clamp_i32(0i, arg_0, arg_0), arg_0)));
    return ~select(0u, _wgslsmith_mod_u32(arg_3, _wgslsmith_mod_u32(arg_3, ~4294967295u)), countOneBits(var_2.b.x) > ~(~var_2.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = -1400f;
    let var_1 = arg_2;
    let var_2 = Struct_1(var_1.c.a, ~(~abs(_wgslsmith_div_vec3_u32(arg_3.b.b, vec3<u32>(var_1.c.b.x, var_1.c.b.x, 4294967295u)))), _wgslsmith_add_i32((~arg_0.c >> (var_1.c.b.x % 32u)) | _wgslsmith_div_i32(-22459i, var_1.c.c ^ u_input.a.x), arg_2.d), vec3<i32>(_wgslsmith_clamp_i32(arg_1.x, firstLeadingBit(arg_1.x), -2147483647i), arg_3.b.c, ~(~0i)) ^ vec3<i32>(-11478i, -2147483647i >> (~arg_3.a % 32u), arg_2.b));
    var_0 = 619f;
    var var_3 = _wgslsmith_f_op_f32(arg_2.c.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.a * arg_2.c.a), 498f)));
    return !var_1.e || !all(!vec4<bool>(var_1.e, false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(320f + -452f), select(vec3<u32>(min(0u, 24100u), 2856u, func_1(79811i, vec2<i32>(-69264i, u_input.c.x), vec3<bool>(true, false, true), 0u)), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), firstLeadingBit(u_input.b.x), u_input.a.yyy), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, abs(u_input.a)), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), Struct_2(u_input.b, u_input.b.x, Struct_1(-1085f, firstTrailingBit(~vec3<u32>(1u, 4294967295u, 4294967295u)), -u_input.b.x, u_input.b), 16553i, true), Struct_3(~4294967295u, Struct_1(_wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(round(-1000f))), vec3<u32>(~20073u, 1u, ~0u), _wgslsmith_clamp_i32(~(-1717i), firstTrailingBit(-2147483647i), u_input.b.x), vec3<i32>(u_input.b.x & 56957i, 43009i, max(-1i, 14794i)))));
    var_0 = ~(~firstTrailingBit(_wgslsmith_add_i32(6688i, u_input.a.x))) == _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x ^ 16035i, func_2().x), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x))));
    var var_1 = true;
    var var_2 = 7843u;
    let var_3 = Struct_3(reverseBits(_wgslsmith_mod_u32(~(~0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(39317u, 13346u), vec2<u32>(0u, 20002u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f)), vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(1u, 11224u)), ~(~4294967295u), ~4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(776u, 9421u, 1u), vec3<u32>(0u, 36916u, 77966u))), u_input.b.x ^ ~_wgslsmith_mod_i32(2147483647i, u_input.c.x), vec3<i32>(max(-u_input.a.x, max(u_input.a.x, -24236i)), -1i, max(firstLeadingBit(u_input.c.x), u_input.a.x))));
    var var_4 = vec4<u32>(var_3.a, ~(~1u), var_3.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_3.a, ~var_3.a)), min(vec2<u32>(26389u, abs(var_3.b.b.x)), var_3.b.b.xz)));
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(max(vec2<u32>(_wgslsmith_div_u32(var_3.b.b.x, var_4.x), ~1u), ~(var_4.wy << (var_3.b.b.xz % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_4.x, _wgslsmith_dot_vec3_u32(var_4.zzy, var_4.ywz)), var_4.yx, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.b.b.x, var_4.x), vec2<u32>(var_3.b.b.x, var_4.x)), var_3.b.b.yy, vec2<u32>(var_4.x, 0u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<f32>(var_3.b.a, -657f), var_3.b, func_2()))), _wgslsmith_div_f32(548f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.a))))));
}

