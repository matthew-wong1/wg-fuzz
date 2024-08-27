struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_div_u32(arg_1.b.x, firstTrailingBit(~1u) << (~_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(arg_1.c.x, 8335u) ^ vec2<u32>(4294967295u, u_input.a)) % 32u));
    let var_2 = any(vec2<bool>(false, false));
    var_1 = u_input.a;
    let var_3 = _wgslsmith_add_i32((firstTrailingBit(0i) & select(max(12091i, arg_0), -arg_0, arg_1.a.x)) << ((arg_1.b.x & max(firstTrailingBit(0u), _wgslsmith_add_u32(arg_1.c.x, 0u))) % 32u), _wgslsmith_dot_vec4_i32(countOneBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, arg_0, -10097i, -16903i), vec4<i32>(32141i, 0i, u_input.c.x, 1i))), vec4<i32>(-1i, _wgslsmith_add_i32(u_input.c.x, countOneBits(-2147483647i)), -select(2147483647i, 0i, true), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0, arg_0), _wgslsmith_mult_i32(arg_0, arg_0)))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1113f - -348f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-825f))), -1471f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1573f, -832f, -405f), vec3<f32>(-610f, 959f, 1412f), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(954f, -921f, -1114f), vec3<f32>(671f, -198f, 821f), arg_1.a.zyz)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(874f, 764f, -1752f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(179f - _wgslsmith_f_op_f32(max(-549f, -1338f))), -971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1299f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-962f)), _wgslsmith_f_op_f32(-312f + -324f), _wgslsmith_div_f32(-201f, -434f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, -936f, 707f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(1i, Struct_1(vec4<bool>(arg_1, false, false, true), u_input.b.zxx, u_input.b.yz))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, 1285f, -630f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, -884f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-623f, -742f)), _wgslsmith_f_op_f32(f32(-1f) * -635f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, -1581f)))), !(!arg_1) || (u_input.c.x == firstTrailingBit(-2147483647i)))), Struct_2(_wgslsmith_mod_u32(~(~45508u), 20067u), -select(-vec2<i32>(1i, u_input.c.x), vec2<i32>(7106i, 0i), select(vec2<bool>(true, false), arg_2.yx, arg_2.yx)), Struct_1(vec4<bool>(arg_1, any(arg_2.xy), true, true), vec3<u32>(~u_input.a, 11021u ^ arg_0.x, 0u), countOneBits(u_input.b.zx))));
    var var_1 = select(select(!var_0.b.c.a.ywy, var_0.b.c.a.yzy, false || arg_2.x), !vec3<bool>(30867u != abs(u_input.b.x), true, select(12625i == u_input.c.x, all(vec2<bool>(false, var_0.b.c.a.x)), all(vec3<bool>(true, var_0.b.c.a.x, arg_1)))), vec3<bool>(!(!arg_2.x), arg_1, true));
    let var_2 = u_input.c.xx;
    var var_3 = select(vec3<bool>(arg_2.x, false, arg_1), select(arg_2, vec3<bool>(!any(vec3<bool>(false, var_0.b.c.a.x, true)), false, !(!arg_2.x)), any(vec3<bool>(arg_1, var_0.b.c.a.x, false)) || arg_1), var_0.b.c.a.zyz);
    var_1 = !arg_2;
    return ~(-vec3<i32>(countOneBits(var_2.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c.x, -19759i, u_input.c.x, u_input.c.x), vec4<i32>(var_2.x, u_input.c.x, var_2.x, -1i), vec4<bool>(true, false, var_0.b.c.a.x, arg_2.x)), vec4<i32>(-2147483647i, var_2.x, u_input.c.x, -9689i)), -var_2.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = !vec2<bool>(!(!select(false, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2057f + 1173f)));
    var var_1 = -(~func_2(_wgslsmith_mult_vec3_u32(arg_0.zyx, arg_2.zwx), true, vec3<bool>(var_0.x, true, true)) ^ (abs(firstTrailingBit(u_input.c)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 48564u, 4294967295u), vec3<u32>(0u, 25317u, 4294967295u)) % vec3<u32>(32u))));
    var var_2 = Struct_2(1u, _wgslsmith_mult_vec2_i32(var_1.yx, -abs(var_1.zz)), Struct_1(select(vec4<bool>(!var_0.x, false, var_0.x, !var_0.x), select(!vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, false, true), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)), vec4<bool>(true, var_0.x, true, all(vec4<bool>(true, true, false, var_0.x)))), vec3<u32>(arg_0.x, ~(~95076u), u_input.b.x), countOneBits(u_input.b.zw)));
    var var_3 = Struct_3(var_2.c, -1086f, select(vec3<bool>(var_2.c.a.x, true, var_0.x), vec3<bool>(true, var_2.c.a.x, ~(-38665i) != var_2.b.x), !vec3<bool>(var_2.c.a.x != false, any(var_2.c.a.zwy), any(vec2<bool>(var_0.x, var_2.c.a.x)))), Struct_2(_wgslsmith_sub_u32(~(~arg_0.x), ~720u | firstTrailingBit(1u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-23698i, ~2147483647i), var_2.b), Struct_1(!select(var_2.c.a, vec4<bool>(var_2.c.a.x, var_2.c.a.x, var_0.x, var_2.c.a.x), var_2.c.a), vec3<u32>(arg_2.x, var_2.a, var_2.a ^ u_input.a), u_input.b.yz)), Struct_2(arg_0.x, var_2.b ^ reverseBits(u_input.c.xz), Struct_1(!(!vec4<bool>(true, true, true, var_2.c.a.x)), arg_2.zwz | _wgslsmith_div_vec3_u32(arg_2.wwx, u_input.b.zwy), ~vec2<u32>(arg_2.x, u_input.b.x) >> (vec2<u32>(var_2.a, var_2.a) % vec2<u32>(32u)))));
    let var_4 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-732f - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, 274f), -1000f)))), var_3.b), Struct_2(u_input.b.x, vec2<i32>(~(var_3.d.b.x & u_input.c.x), ~_wgslsmith_mult_i32(-10934i, var_2.b.x)), Struct_1(select(var_2.c.a, select(var_2.c.a, vec4<bool>(false, var_2.c.a.x, true, var_0.x), var_2.c.a), true), vec3<u32>(58833u, 46447u, var_2.c.c.x) | vec3<u32>(1u, 1u, 1u), ~abs(u_input.b.yx))));
    return max(var_3.d.b | _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2656i), vec2<i32>(-27321i, -54410i) | vec2<i32>(38992i, var_3.d.b.x), -vec2<i32>(u_input.c.x, 3975i)), ~var_1.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.b.x);
    let var_1 = _wgslsmith_dot_vec2_i32(func_1(vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 0u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 41625u), 1u, abs(4294967295u)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)), -1000f), u_input.b), abs(-u_input.c.zx) >> (firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.b.wy, vec2<u32>(u_input.a, u_input.b.x)) | u_input.b.yz) % vec2<u32>(32u)));
    let var_2 = vec3<u32>((~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) ^ 113657u) ^ 52886u, u_input.a, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 10911u, 51178u) ^ u_input.b.zww) & min(u_input.b.zyx, u_input.b.yxw ^ vec3<u32>(0u, 1u, u_input.b.x)), max(~u_input.b.xyw, u_input.b.ywy)));
    let var_3 = !select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), false), !vec3<bool>(any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, true, true))));
    var var_4 = vec3<i32>(54280i << (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x, var_2.x), vec2<u32>(~436u, u_input.a)) % 32u), abs(_wgslsmith_mod_i32(min(var_1 & 5014i, reverseBits(356i)), 1i)), -var_1);
    var var_5 = Struct_1(!(!vec4<bool>(u_input.c.x != u_input.c.x, true, var_3.x, var_3.x)), ~firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(var_2.x, u_input.b.x), ~17052u, 1u)), vec2<u32>(var_2.x, (1u >> (min(47291u, var_2.x) % 32u)) ^ abs(1u >> (1u % 32u))));
    let var_6 = Struct_3(Struct_1(var_5.a, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xxw, vec3<u32>(u_input.a, 5584u, var_5.b.x) & var_5.b), var_2), vec2<u32>(~(~41311u), ~u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(148f, _wgslsmith_f_op_f32(f32(-1f) * -549f)))), var_5.a.zww, Struct_2(~max(75153u, var_2.x << (u_input.b.x % 32u)), _wgslsmith_mult_vec2_i32(~u_input.c.xz, ~(-vec2<i32>(-10572i, var_1))), Struct_1(vec4<bool>(var_5.a.x, false, all(vec3<bool>(true, true, var_5.a.x)), !var_5.a.x), countOneBits(firstTrailingBit(var_2)), countOneBits(~vec2<u32>(u_input.a, 78372u)))), Struct_2(4294967295u, vec2<i32>(_wgslsmith_mod_i32(var_4.x | var_1, var_4.x), _wgslsmith_sub_i32(14093i >> (1u % 32u), 1i)), Struct_1(!vec4<bool>(true, var_3.x, var_3.x, true), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_2.x, var_2.x), var_5.b), reverseBits(vec2<u32>(u_input.b.x, 44394u)))));
    var_5 = var_6.a;
    var_0 = abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~firstTrailingBit(0u), 17415u), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f + 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_6.b + var_6.b), _wgslsmith_f_op_f32(abs(var_6.b)))))));
}

