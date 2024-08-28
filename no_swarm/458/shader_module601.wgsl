struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(select(~(-14329i), _wgslsmith_mod_i32(countOneBits(2147483647i), u_input.b.x | u_input.b.x), all(vec4<bool>(true, true, false, true))), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-730f, 305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2071f))))), firstLeadingBit(u_input.a)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(861f * _wgslsmith_f_op_f32(select(-1155f, 620f, false))), 476f), -815f), u_input.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1659f, _wgslsmith_f_op_f32(ceil(668f)), _wgslsmith_f_op_f32(1509f * 352f), 692f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(true, true, true, false))))))), vec4<i32>(-u_input.a.x << (0u % 32u), u_input.b.x, -u_input.b.x, -max(u_input.d.x, u_input.b.x)));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.d.x, var_0.b.x), var_0.a.c)), -(-1745i | -var_0.a.d.x) | _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 1i, 0i, 1i)), -(vec4<i32>(-9182i, 609i, 1i, 0i) << (vec4<u32>(0u, 4294967295u, u_input.c.x, 44099u) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(-var_0.a.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1872f)), 1053f, !var_0.a.b)))), var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.c)))), _wgslsmith_clamp_vec4_i32(-u_input.a, -(abs(var_0.e) | _wgslsmith_mod_vec4_i32(var_0.e, u_input.a)), vec4<i32>(_wgslsmith_add_i32(var_0.a.d.x, var_0.c >> (u_input.c.x % 32u)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(var_0.e.x)), var_0.e.x, _wgslsmith_add_i32(-31579i, countOneBits(var_0.a.d.x)))));
    var var_1 = vec4<u32>(u_input.e, u_input.c.x, countOneBits(~max(u_input.c.x, u_input.c.x)) >> (u_input.e % 32u), 15850u);
    var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, var_1.x, var_1.x, 1u) | vec4<u32>(0u, 4294967295u, 34535u, u_input.c.x), vec4<u32>(1u, 8298u, 0u, 84560u))), max(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.c.x), ~var_1.x, ~3698u, u_input.e), vec4<u32>(38411u, var_1.x, min(27787u, 4294967295u), ~0u))));
    let var_2 = ~vec4<i32>(var_0.e.x, 25938i | (i32(-1i) * -u_input.a.x), var_0.a.d.x, _wgslsmith_dot_vec3_i32(max(select(vec3<i32>(var_0.a.a, u_input.b.x, 17157i), vec3<i32>(u_input.d.x, u_input.a.x, var_0.a.a), vec3<bool>(var_0.a.b, true, var_0.a.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-48844i, var_0.e.x, -20555i), u_input.a.yzx, vec3<i32>(-20186i, u_input.b.x, 2147483647i))), var_0.a.d.yxx));
    return vec2<bool>(true, !(!any(select(vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, false), vec4<bool>(var_0.a.b, true, var_0.a.b, false), vec4<bool>(true, false, var_0.a.b, var_0.a.b)))));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = !any(vec4<bool>(all(func_3()), -1000f > _wgslsmith_f_op_f32(round(-234f)), arg_0 | arg_0, true));
    let var_1 = vec2<bool>(var_0 && any(vec4<bool>(true || arg_0, arg_0, true, arg_0)), var_0);
    var var_2 = Struct_1(~(0i << ((~u_input.e >> (~1u % 32u)) % 32u)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -u_input.a);
    let var_3 = _wgslsmith_f_op_f32(-2198f + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(var_2.c, 250f))));
    var_2 = Struct_1(-28716i, var_2.b, -1457f, u_input.a);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))), var_2.c));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = any(!arg_0.zy);
    var_0 = arg_0.x;
    let var_1 = Struct_2(Struct_1(arg_2, !arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(arg_0.x)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1))))))), -3121i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(927f, -454f, -229f, -1024f)))))))), min(~u_input.a, min(_wgslsmith_mult_vec4_i32(countOneBits(u_input.a), select(u_input.a, vec4<i32>(4524i, 7393i, 58682i, 20988i), vec4<bool>(false, false, arg_0.x, arg_0.x))), -vec4<i32>(-1i, arg_2, -16419i, arg_2))));
    let var_2 = ~41197u;
    let var_3 = 11599u;
    return Struct_1(arg_2, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_0.x)).x)) * arg_1), -(~vec4<i32>(~var_1.a.a, reverseBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(23651i, -2147483647i, -1i, -1i), vec4<i32>(2147483647i, -22342i, arg_2, u_input.d.x)), -28024i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_0;
    return func_1(select(select(!vec3<bool>(arg_2.b, true, arg_0.b), select(select(vec3<bool>(false, var_0.b, arg_2.b), vec3<bool>(var_0.b, arg_2.b, var_0.b), vec3<bool>(var_0.b, true, false)), select(vec3<bool>(true, false, arg_0.b), vec3<bool>(var_0.b, arg_0.b, arg_2.b), vec3<bool>(arg_2.b, arg_2.b, true)), true), arg_0.b), vec3<bool>(any(vec4<bool>(arg_2.b, true, true, false)), arg_0.b, false), _wgslsmith_div_f32(-594f, _wgslsmith_f_op_vec2_f32(func_2(arg_2.b)).x) < arg_2.c), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_sub_i32(-arg_0.d.x, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~vec3<i32>(u_input.b.x, u_input.a.x, countOneBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~46859u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.e, 287u), vec4<u32>(14319u, 1u, 68735u, 99112u))), 1u), min(select(vec2<u32>(firstTrailingBit(26526u), u_input.e), max(~vec2<u32>(u_input.c.x, 1u), vec2<u32>(4294967295u, u_input.e)), vec2<bool>(true, true)), vec2<u32>(~u_input.e, ~_wgslsmith_sub_u32(u_input.c.x, u_input.e))));
    var var_2 = func_4(func_1(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false), _wgslsmith_f_op_f32(684f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(3032f)), -618f)), abs(-2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1475f, -1443f, true))), -482f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-121f, 208f) + _wgslsmith_f_op_f32(f32(-1f) * -261f)), 398f) - vec4<f32>(_wgslsmith_f_op_f32(select(-336f, 1000f, true)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -591f), -1000f)))), Struct_1(_wgslsmith_sub_i32(var_0.x, u_input.d.x), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f * 1866f)), 1792f)), u_input.a), ~(abs(_wgslsmith_div_vec4_u32(vec4<u32>(19951u, u_input.c.x, u_input.e, 4294967295u), vec4<u32>(0u, 3658u, 1u, 1u))) << (abs(~vec4<u32>(48043u, u_input.e, 18075u, u_input.c.x)) % vec4<u32>(32u))));
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(var_2.a, var_2.d.x, 6980i), u_input.d), _wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.a.wzz), firstLeadingBit(u_input.a.wxy))) | func_4(Struct_1(-u_input.b.x, var_2.b, var_2.c, _wgslsmith_mult_vec4_i32(~var_2.d, vec4<i32>(9274i, -2147483647i, var_0.x, -32015i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.c, var_2.c, var_2.c, -910f)))), vec4<f32>(-730f, var_2.c, _wgslsmith_f_op_f32(exp2(var_2.c)), var_2.c), !var_2.b)), Struct_1(i32(-1i) * -1i, func_4(Struct_1(var_0.x, var_2.b, -1000f, vec4<i32>(var_0.x, 2147483647i, var_2.d.x, var_2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, -1019f, var_2.c, 117f) - vec4<f32>(var_2.c, 1000f, var_2.c, 620f)), Struct_1(-25738i, var_2.b, -548f, u_input.a), ~vec4<u32>(4294967295u, u_input.e, u_input.c.x, 4294967295u)).b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c), var_2.c)), vec4<i32>(~2147483647i, -12512i, var_0.x, firstLeadingBit(11830i))), vec4<u32>(~u_input.c.x, 86878u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 4294967295u, u_input.e)), ~0u) | (reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.e)) | vec4<u32>(0u, 7709u, u_input.e, u_input.e))).d.wxy;
    var var_3 = firstTrailingBit(abs(countOneBits(u_input.e >> (91849u % 32u))) ^ abs(1u));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, var_2.c, var_2.c))), vec4<f32>(var_2.c, var_2.c, _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-816f - -328f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-839f, -586f, 3006f, var_2.c), vec4<f32>(1701f, -1118f, var_2.c, var_2.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(879f, -1085f, var_2.c, 428f) - vec4<f32>(285f, -834f, var_2.c, var_2.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~max(u_input.c.zz << (vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.e))), var_0.x);
}

