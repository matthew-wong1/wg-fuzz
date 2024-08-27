struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) + _wgslsmith_f_op_f32(ceil(-255f)))));
    let var_1 = Struct_3(Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 663f))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, false), select(true, true, false)), -1i, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(2002f, -708f) + vec2<f32>(-473f, 2529f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-833f, 136f))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), u_input.b.x, select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), var_0 < -615f)), !(min(u_input.a, 60265u) >= u_input.a), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 36552u), vec2<u32>(1u, 0u)), vec2<u32>(42897u, u_input.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -508f) * vec2<f32>(var_0, var_0)))))), _wgslsmith_sub_u32(40403u, min(5400u, u_input.a)), Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1115f, var_0)))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0), 1774f)), vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, select(u_input.a >= 4294967295u, true, true), false), i32(-1i) * -42177i, vec2<bool>(select(all(vec3<bool>(true, true, false)), false, any(vec4<bool>(true, true, false, true))), true)), Struct_1(!(var_0 >= _wgslsmith_div_f32(-604f, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2039f, 981f)))), vec4<bool>((u_input.b.x & u_input.b.x) >= 2147483647i, false, any(vec2<bool>(false, false)) && true, true && all(vec4<bool>(true, true, false, false))), firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)) | min(u_input.b.x, u_input.b.x), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true)));
    let var_2 = vec4<i32>(17247i, 0i, _wgslsmith_mult_i32(~0i, 7157i) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-u_input.b, u_input.b), -var_1.c.d << (var_1.a.d.x % 32u)), var_1.d.d);
    let var_3 = _wgslsmith_mod_vec3_u32(~(~abs(~vec3<u32>(var_1.b, var_1.b, var_1.a.d.x))), ~firstLeadingBit(vec3<u32>(~4294967295u, 4294967295u, _wgslsmith_clamp_u32(1u, var_1.a.d.x, var_1.b))));
    var var_4 = vec2<bool>(!var_1.c.c.x, !(!(!any(vec2<bool>(false, var_1.d.e.x)))));
    return !(!(!(~0u > u_input.a)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    let var_0 = vec2<bool>(false, !arg_0.c.x);
    let var_1 = vec4<bool>(!(!func_3()), !any(select(select(arg_0.c.ywz, arg_0.c.xwy, false), select(arg_0.c.xxz, arg_0.c.yyy, arg_0.c.zyz), arg_0.c.yzy)), any(arg_0.c.xxy), true);
    let var_2 = select(vec4<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 9852u), min(vec2<u32>(0u, u_input.a), vec2<u32>(8250u, 4294967295u))) < ~(~u_input.a), var_1.x, func_3(), var_1.x), select(vec4<bool>(func_3(), false, !arg_0.a, any(var_0)), !(!select(arg_0.c, arg_0.c, var_1)), select(select(select(var_1, vec4<bool>(true, false, true, arg_0.c.x), vec4<bool>(true, true, var_1.x, false)), !arg_0.c, var_0.x), arg_0.c, arg_0.b.x != _wgslsmith_f_op_f32(arg_0.b.x + 711f))), u_input.b.x >= _wgslsmith_dot_vec2_i32(u_input.b.zy, abs(-vec2<i32>(arg_0.d, -30753i))));
    var var_3 = Struct_2(Struct_1(true, vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, false, true)) | any(vec4<bool>(true, var_1.x, var_2.x, arg_0.c.x)), var_0.x, _wgslsmith_f_op_f32(214f * 476f) < _wgslsmith_f_op_f32(arg_0.b.x - -1313f), true), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_1, 2147483647i, -16984i), ~(u_input.b.wwy & u_input.b.xxx)), vec2<bool>(true, !var_2.x)), arg_0, var_2.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, countOneBits(u_input.a)) >> (~vec2<u32>(48018u, u_input.a) % vec2<u32>(32u)), ~countOneBits(abs(vec2<u32>(810u, 0u))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(1u, 21072u)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)), arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(148f - arg_0.b.x), 373f)))));
    var var_4 = Struct_2(var_3.a, var_3.b, any(vec3<bool>(!select(false, false, false), var_0.x, ~var_3.a.d <= -arg_0.d)), ~(~(~(~vec2<u32>(4294967295u, 0u)))), var_3.b.b);
    return vec4<bool>(!select(var_0.x, !(!var_0.x), false), var_4.c, true, true);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = select(select(!(!func_2(Struct_1(false, vec2<f32>(465f, -1000f), vec4<bool>(arg_0, arg_0, false, arg_0), u_input.b.x, vec2<bool>(arg_0, arg_0)), u_input.b.x)), select(!(!vec4<bool>(true, arg_0, arg_0, false)), vec4<bool>(arg_0, false, all(vec3<bool>(arg_0, false, arg_0)), true), !arg_0 | any(vec3<bool>(false, false, true))), _wgslsmith_clamp_u32(u_input.a, 1u, ~47728u) >= u_input.a), !select(vec4<bool>(arg_0, true, arg_0, any(vec2<bool>(true, arg_0))), select(func_2(Struct_1(true, vec2<f32>(-2068f, 336f), vec4<bool>(arg_0, arg_0, true, true), u_input.b.x, vec2<bool>(arg_0, arg_0)), u_input.b.x), func_2(Struct_1(true, vec2<f32>(-2226f, -1024f), vec4<bool>(false, arg_0, arg_0, false), u_input.b.x, vec2<bool>(false, true)), u_input.b.x), select(true, true, true)), func_2(Struct_1(true, vec2<f32>(-785f, -163f), vec4<bool>(arg_0, false, arg_0, arg_0), u_input.b.x, vec2<bool>(arg_0, false)), 792i)), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(209f, 1686f) * vec2<f32>(-1773f, -597f))))))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-1868f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-524f)), _wgslsmith_f_op_f32(sign(-1213f))))));
    let var_2 = Struct_1(all(var_0.zzx), vec2<f32>(-1000f, var_1.x), !(!func_2(Struct_1(arg_0, vec2<f32>(926f, var_1.x), vec4<bool>(var_0.x, arg_0, false, var_0.x), -28319i, vec2<bool>(false, false)), -61159i)), 0i, var_0.ww);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-2057f)))))), var_2.b.x);
    let var_3 = Struct_2(var_2, Struct_1(all(vec4<bool>(func_2(var_2, -2147483647i).x, var_0.x, var_2.e.x & true, var_1.x != 407f)), vec2<f32>(var_1.x, -1311f), !vec4<bool>(55577i >= u_input.b.x, true, any(vec4<bool>(arg_0, true, var_0.x, false)), !var_0.x), var_2.d, var_0.xw), false, _wgslsmith_sub_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 0u)), vec2<u32>(34397u, 1u))), vec2<u32>(abs(40031u), 19902u) ^ vec2<u32>(select(10977u, u_input.a, true), ~5701u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, 552f))))), _wgslsmith_f_op_f32(round(var_1.x))));
    return !select(vec2<bool>(u_input.a < 69789u, var_2.c.x), select(var_2.c.yw, !select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), arg_0), !var_3.a.e), !func_2(var_3.a, var_2.d).xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(-222f, 415f), true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), true), -1i, func_1(all(vec3<bool>(true, true, true)) == true));
    var var_1 = !vec3<bool>(all(!select(vec4<bool>(true, true, var_0.c.x, true), var_0.c, var_0.a)), func_3(), false);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x)))))));
    var var_3 = Struct_2(Struct_1(any(vec4<bool>(var_0.b.x < var_0.b.x, true, any(vec2<bool>(true, true)), var_1.x)), var_0.b, vec4<bool>(true, all(var_0.c), !func_2(Struct_1(var_1.x, var_0.b, vec4<bool>(true, false, var_0.a, false), u_input.b.x, vec2<bool>(false, true)), var_0.d).x, -1423f > var_0.b.x), max(u_input.b.x, -_wgslsmith_sub_i32(0i, var_0.d)), !(!vec2<bool>(false, var_0.c.x))), var_0, !all(!(!var_0.c)), (vec2<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.a, 0u)) ^ firstTrailingBit(~vec2<u32>(u_input.a, u_input.a))) >> (select(~vec2<u32>(0u, 1u), select(firstLeadingBit(vec2<u32>(1u, 1u)), firstTrailingBit(vec2<u32>(u_input.a, 79400u)), all(vec4<bool>(true, true, var_1.x, var_0.c.x))), true) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)))));
    var var_4 = Struct_2(var_0, var_0, true, var_3.d, vec2<f32>(_wgslsmith_f_op_f32(-1052f - var_0.b.x), _wgslsmith_f_op_f32(ceil(var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_3.d.x, ~var_3.d.x));
}

