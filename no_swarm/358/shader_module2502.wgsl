struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_5) -> f32 {
    let var_0 = Struct_4(-vec2<i32>(13163i, u_input.a) << (vec2<u32>(0u, arg_2.c.x) % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-841f, 1151f, arg_2.d, 637f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -738f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)))));
    var var_1 = var_0.b;
    var_1 = var_0.b;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.c);
    return var_1.a.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, ~arg_0), vec2<i32>(_wgslsmith_clamp_i32(46724i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0, u_input.b, -2147483647i), vec4<i32>(-2147483647i, -5125i, 0i, 1i)), arg_0), ~1i));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-835f + arg_1.x), _wgslsmith_f_op_f32(arg_1.x + -1108f))), _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-1666f * arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(func_3(2164u, vec2<u32>(1734u, 1u), Struct_5(u_input.c, u_input.c.wz, vec2<u32>(u_input.c.x, 54794u), arg_1.x, Struct_1(vec2<i32>(5183i, u_input.b), vec3<bool>(true, true, false))))))), arg_1.x));
    var_1 = Struct_2(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(761f, _wgslsmith_f_op_f32(ceil(arg_1.x))))), _wgslsmith_div_f32(1551f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1822f, 1971f)))), var_1.a.x));
    var var_2 = Struct_4(max(-countOneBits(abs(vec2<i32>(-1i, 0i))), firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(u_input.a, 1i), -1i))), Struct_2(var_1.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1)))))));
    var_2 = Struct_4(vec2<i32>(u_input.a, -32926i), var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.a.wyw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.xzw))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.x, var_1.a.x, arg_1.x), vec3<f32>(101f, 816f, var_1.a.x))), var_1.a.wxx) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.x, -1000f, arg_1.x)))));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-14927i, arg_0, u_input.a, arg_0), vec4<i32>(u_input.a, var_2.a.x, 49187i, -76644i)), min(vec4<i32>(arg_0, 0i, u_input.b, 0i), vec4<i32>(u_input.a, -19794i, -5485i, 36975i)) ^ vec4<i32>(var_2.a.x, 1i, var_2.a.x, -2147483647i), vec4<i32>(arg_0, -38544i, -31462i, -1i) & _wgslsmith_div_vec4_i32(vec4<i32>(21414i, u_input.a, -24699i, arg_0), vec4<i32>(7988i, 1i, arg_0, 1i))), vec4<i32>(abs(-1i & u_input.b), (arg_0 ^ 54416i) | var_2.a.x, max(~2147483647i, -2717i), ~var_2.a.x << (0u % 32u))) ^ firstTrailingBit(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-13194i, 15208i, 0i, u_input.b)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, arg_0, 2147483647i), vec4<i32>(-16517i, 2147483647i, arg_0, -17378i)), select(vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, u_input.b), vec4<i32>(u_input.b, 11724i, 19009i, -2147483647i) ^ vec4<i32>(-1i, 741i, -1i, var_2.a.x), false)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec3<u32> {
    let var_0 = Struct_2(vec4<f32>(1585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f + 2053f) * -420f) - 1f), _wgslsmith_f_op_f32(258f * 370f), _wgslsmith_f_op_f32(ceil(319f))));
    var var_1 = -20504i;
    let var_2 = var_0;
    var_1 = u_input.a;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1259f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1896f + var_2.a.x), var_2.a.x)))));
    return u_input.c.yxy << (select(u_input.c.xzw, _wgslsmith_div_vec3_u32(~u_input.c.zwz, vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.yw, u_input.c.ww), 4294967295u)), !any(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(true, false, arg_1.x), vec3<bool>(true, false, true)))) % vec3<u32>(32u));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(func_4(select(-vec4<i32>(u_input.a, 15323i, 1i, u_input.a) | func_2(0i, vec3<f32>(469f, -1216f, -1000f)), vec4<i32>(~0i, 6774i, u_input.b, -40351i), false), vec2<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false)))), vec3<u32>(4294967295u << (u_input.c.x % 32u), 86654u, ~(~max(107520u, u_input.c.x))), ~max(~u_input.c.xyy >> (~vec3<u32>(45740u, 4294967295u, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, select(4294967295u, u_input.c.x, true), 1u)));
    var var_1 = Struct_5(~u_input.c, u_input.c.zw, ~(max(u_input.c.xx << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(u_input.c.x, var_0.x))) >> (vec2<u32>(~u_input.c.x, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(func_3(~u_input.c.x, vec2<u32>(var_0.x, 69266u) | u_input.c.ww, Struct_5(vec4<u32>(u_input.c.x, var_0.x, 4294967295u, u_input.c.x), var_0.xx, vec2<u32>(51116u, u_input.c.x), 843f, Struct_1(vec2<i32>(u_input.a, 1i), vec3<bool>(true, true, true)))))), 722f)), Struct_1(-min(vec2<i32>(-37205i, 2147483647i) >> (u_input.c.wy % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(42176i, u_input.b), vec2<i32>(-6447i, u_input.b))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)));
    var var_2 = ~u_input.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-241f, var_1.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.d + var_1.d)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_1.d, var_1.d) * vec3<f32>(652f, 279f, 379f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1044f, var_1.d, 352f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -1027f, var_1.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1672f, -225f, 953f)))))));
    var_1 = Struct_5(~u_input.c, ~(~(~(~vec2<u32>(u_input.c.x, 27395u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(u_input.c.wzz ^ vec3<u32>(var_0.x, 51019u, 0u)), ~vec3<u32>(60446u, 0u, 1u)), func_4(-(~vec4<i32>(48825i, -2147483647i, var_1.e.a.x, u_input.a)), select(select(vec2<bool>(true, var_1.e.b.x), vec2<bool>(var_1.e.b.x, false), vec2<bool>(var_1.e.b.x, true)), vec2<bool>(var_1.e.b.x, false), select(var_1.e.b.xz, vec2<bool>(false, true), var_1.e.b.x))).x), var_1.d, var_1.e);
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1460f, _wgslsmith_f_op_f32(func_1(u_input.a)), 1028f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1175f, 876f)) * _wgslsmith_div_f32(1736f, 1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-487f, 371f, -275f, -819f)))) + vec4<f32>(1f, 1f, 1f, 1f)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, 1989f, -954f), vec4<f32>(155f, var_0.x, var_0.x, -297f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 122f, var_0.x, 794f)))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, u_input.a) << (firstLeadingBit(u_input.c.yw) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.a, 0i), false), min(vec2<i32>(7054i, u_input.b), vec2<i32>(36141i, u_input.b)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.c.x >= u_input.c.x), vec3<bool>(true, all(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-368f, var_0.x, 999f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1533f, var_0.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(262f, var_0.x, var_0.x, 923f))))), !vec4<bool>(select(false, false, true), true, true, true))), ~4586i, !all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(abs(vec2<i32>(u_input.a, u_input.b)), firstTrailingBit(vec2<i32>(u_input.b, u_input.a)) << (max(reverseBits(u_input.c.wx), firstLeadingBit(vec2<u32>(70655u, 825u))) % vec2<u32>(32u)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), true)));
    var_1 = Struct_3(Struct_1(vec2<i32>(select(var_1.c, ~u_input.a, true), _wgslsmith_clamp_i32(~u_input.a, var_1.a.a.x, ~var_1.a.a.x)), !select(!vec3<bool>(var_1.a.b.x, var_1.a.b.x, false), vec3<bool>(true, true, false), u_input.c.x > 1u)), _wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.b - var_1.b))))), u_input.b, false, var_1.a.a);
    let var_2 = ~1u;
    var_0 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.xzw)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(726f, 745f, -532f), vec3<f32>(-684f, 2841f, var_1.b.x)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xyw))))), abs(0u));
}

