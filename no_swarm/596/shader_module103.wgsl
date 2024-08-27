struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.b;
    var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(~47059u, u_input.c >> (9660u % 32u), 4294967295u), min(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(1u, 13823u, u_input.c) | vec3<u32>(u_input.c, u_input.b, u_input.c)) ^ vec3<u32>(_wgslsmith_mod_u32(13852u, 1u), abs(6740u), _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.b)));
    var var_1 = min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, u_input.b), u_input.b), u_input.b), ~select(vec4<u32>(18569u, u_input.c, 0u, u_input.c), vec4<u32>(1u, 4294967295u, u_input.c, u_input.c), all(vec2<bool>(true, true)))), ~_wgslsmith_mod_vec4_u32(select(abs(vec4<u32>(u_input.c, u_input.b, u_input.c, 4294967295u)), max(vec4<u32>(58091u, u_input.b, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<bool>(true, true, true, false)), vec4<u32>(4294967295u, 66024u, u_input.c, ~u_input.b)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(max(1000f, -381f)), true))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1866f * -845f) + -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1186f, -2911f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) * _wgslsmith_f_op_f32(f32(-1f) * -474f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1268f, -431f, -145f)), vec3<f32>(1000f, 1563f, 1170f))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(floor(693f))))));
    let var_3 = var_2;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_3)), var_3);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = -min((_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, arg_0.x), vec2<i32>(u_input.a.x, -37261i)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(17573u, 0u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(21059u, u_input.b)) % vec2<u32>(32u))) >> (vec2<u32>(u_input.c, 96227u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(arg_0.wz ^ vec2<i32>(47210i, 2147483647i), vec2<i32>(arg_0.x, -21153i)));
    var var_1 = false;
    let var_2 = select(true, any(vec2<bool>(true, !arg_2.x)), arg_2.x);
    var_1 = !any(vec3<bool>(!select(var_2, true, arg_2.x), !(false | var_2), true));
    var_1 = true;
    return vec4<bool>(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-373f))) >= _wgslsmith_f_op_f32(-arg_3.x), select(var_2, (_wgslsmith_add_i32(-9678i, u_input.a.x) != countOneBits(u_input.a.x)) && false, arg_2.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> bool {
    var var_0 = abs(u_input.a.zz);
    var_0 = ~_wgslsmith_clamp_vec2_i32(u_input.a.wy, ~u_input.a.xx, u_input.a.zz);
    var_0 = min(u_input.a.wz, vec2<i32>(-16310i, 1i));
    var_0 = ~firstLeadingBit(vec2<i32>(u_input.a.x >> (4294967295u % 32u), u_input.a.x) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 73525i), vec2<i32>(-25709i, -1i))));
    var var_1 = 0i;
    return any(!func_4(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -1i, u_input.a.x, var_0.x), u_input.a, vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x))), arg_0.xx, select(vec2<bool>(false, false), vec2<bool>(true, true), arg_1 == -601f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_div_vec3_f32(arg_0.zzw, arg_0.wwx)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c >> (u_input.c % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.c), ~u_input.c) >> (abs(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 27451u, ~u_input.c, 0u), ~vec4<u32>(1u, u_input.c, u_input.b, u_input.c))) & ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u) & ~u_input.b, ~76693u);
    var var_1 = Struct_1((u_input.a.zy & ~u_input.a.zw) | vec2<i32>(-u_input.a.x, u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(trunc(1100f));
    let var_3 = -17349i;
    var var_4 = Struct_1(u_input.a.zx);
    return Struct_1(abs(select(select(reverseBits(u_input.a.xw), vec2<i32>(1i, 0i) | vec2<i32>(var_3, 30659i), func_4(vec4<i32>(var_1.a.x, -12188i, var_3, -1i), vec2<f32>(-917f, 1128f), vec2<bool>(arg_0.x, true), vec3<f32>(var_2, -1000f, 1727f)).wx), abs(abs(vec2<i32>(1i, 48175i))), false)));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !vec2<bool>(true, !select(true, all(vec4<bool>(true, true, false, true)), true));
    var var_1 = _wgslsmith_clamp_vec2_u32(min(vec2<u32>(1u, 71595u), abs(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(95048u, u_input.c), vec2<u32>(u_input.b, u_input.c)), vec2<u32>(u_input.c, 0u)))), abs(_wgslsmith_add_vec2_u32(~vec2<u32>(19670u, u_input.c) ^ (vec2<u32>(26775u, u_input.c) >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))), ~vec2<u32>(1u, 1u))), _wgslsmith_mult_vec2_u32(max(firstLeadingBit(vec2<u32>(4294967295u, u_input.c) | vec2<u32>(u_input.c, u_input.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(49388u, 20037u), vec2<u32>(62406u, 37841u))), select(~(~vec2<u32>(u_input.c, u_input.b)), vec2<u32>(u_input.c, 4294967295u) << (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), func_4(max(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-arg_0.zz), !vec2<bool>(var_0.x, var_0.x), vec3<f32>(arg_0.x, arg_0.x, -635f)).zw)));
    var_1 = _wgslsmith_clamp_vec2_u32(select(select(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(50952u, u_input.b), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), true)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(40639u, 0u)) ^ ~vec2<u32>(9325u, 41110u), !var_0.x && var_0.x), vec2<u32>(var_1.x, reverseBits(var_1.x)), min(firstTrailingBit(vec2<u32>(4294967295u, var_1.x)), vec2<u32>(0u, u_input.c)) << ((_wgslsmith_mod_vec2_u32(vec2<u32>(59180u, u_input.b), vec2<u32>(4294967295u, var_1.x)) & ~vec2<u32>(50220u, var_1.x)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 45340u), vec2<u32>(15834u, 31663u))), _wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x >> (1u % 32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 9084u, 0u), vec3<u32>(u_input.b, 0u, var_1.x)), ~vec3<u32>(var_1.x, u_input.b, var_1.x)), max(vec3<u32>(43237u, u_input.b, 20627u), vec3<u32>(var_1.x, u_input.c, 13189u)))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = arg_1;
    return Struct_1(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(29129i, -30288i, u_input.a.x, 2147483647i), u_input.a), -arg_1.a.x)), -firstLeadingBit(vec2<i32>(4907i, u_input.a.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, arg_2, 211f))))), func_5(vec4<bool>(!(arg_3.x < arg_0.x), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), false | func_2(vec4<f32>(-1052f, arg_2, 2012f, arg_2), arg_2), !(1098f >= arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(-772f, 769f)))), arg_2)));
    var_0 = Struct_1(max(_wgslsmith_mod_vec2_i32(abs(-vec2<i32>(var_0.a.x, arg_1)), var_0.a), ~(vec2<i32>(-25486i, -2147483647i) | vec2<i32>(u_input.a.x, 41732i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * arg_2), arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2, 151f), _wgslsmith_f_op_f32(arg_2 + 783f))), _wgslsmith_f_op_f32(abs(arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, arg_2, 1444f, 238f), vec4<f32>(-227f, -986f, 522f, arg_2), vec4<bool>(true, false, false, true))))))));
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(4294967295u, 25268u, 55640u, 4294967295u), vec4<u32>(1u, arg_0.x, 0u, arg_3.x)), arg_3), _wgslsmith_mult_u32(arg_0.x, ~u_input.c), 55253u);
    let var_3 = var_1.xw;
    return Struct_1(vec2<i32>(select(abs(1i), 2147483647i, 2147483647i > u_input.a.x), countOneBits(~28535i)) | ~_wgslsmith_add_vec2_i32(var_0.a & vec2<i32>(31665i, arg_1), ~vec2<i32>(u_input.a.x, -5616i)));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1425f, -250f))))));
    return select(vec2<bool>(false, true), select(select(arg_2, !(!arg_2), false), arg_2, select(vec2<bool>(true, arg_2.x), !(!vec2<bool>(arg_2.x, arg_2.x)), false)), true);
}

fn func_8(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = Struct_1(select(func_1(vec2<u32>(u_input.b, u_input.b), abs(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1273f, arg_2)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 46361u, 1u), vec4<u32>(4294967295u, u_input.c, 4294967295u, u_input.b)))).a, -abs(vec2<i32>(u_input.a.x, -2147483647i)) >> ((vec2<u32>(4637u, u_input.b) & ~vec2<u32>(u_input.b, 36610u)) % vec2<u32>(32u)), any(vec2<bool>(true, true))));
    var var_1 = u_input.a;
    let var_2 = var_0;
    var_1 = u_input.a;
    var_1 = -vec4<i32>(_wgslsmith_dot_vec2_i32(func_5(vec4<bool>(arg_3.x, arg_0, arg_0, arg_0), -1787f).a | var_2.a, var_1.ww), _wgslsmith_mod_i32(u_input.a.x, ~(-58950i) | var_0.a.x), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-53104i, 0i, var_1.x, u_input.a.x), ~vec4<i32>(0i, -1i, var_0.a.x, u_input.a.x)), ~u_input.a << (vec4<u32>(u_input.b, u_input.b, 26471u, 13822u) % vec4<u32>(32u))), func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, 2198f, 1994f)))), func_1(abs(vec2<u32>(0u, u_input.c)), 2147483647i, _wgslsmith_f_op_f32(-arg_1.x), ~vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.c))).a.x);
    return StorageBuffer((firstTrailingBit(min(vec4<u32>(u_input.b, 305u, u_input.c, 7315u), vec4<u32>(44607u, 0u, 0u, 0u))) | vec4<u32>(0u, 57917u, u_input.c, u_input.b)) & abs(abs(~vec4<u32>(1u, 24534u, u_input.b, 4294967295u))), u_input.a.x, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1206f, _wgslsmith_f_op_f32(f32(-1f) * -1474f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(select(624f, 611f, false))), -1098f)))));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, ~u_input.a.x), vec2<i32>(-1i) * -(-u_input.a.yx | -u_input.a.xw));
    let var_2 = u_input.a.xzw;
    var var_3 = vec4<i32>(var_2.x, var_1.x, ~u_input.a.x, _wgslsmith_sub_i32(~0i, var_1.x));
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = func_8(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) * _wgslsmith_f_op_f32(634f * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) + 2400f)), 947f, select(!func_7(func_1(vec2<u32>(0u, 1u), var_2.x, var_0.x, vec4<u32>(u_input.c, u_input.b, u_input.c, 1u)), ~vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.c), vec2<bool>(true, true)), vec2<bool>((-1770f <= var_0.x) == select(true, true, true), false), func_7(Struct_1(-vec2<i32>(0i, var_2.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 1626u) ^ vec4<u32>(u_input.c, 65633u, u_input.b, u_input.c), min(vec4<u32>(32757u, 0u, u_input.c, 4294967295u), vec4<u32>(0u, 68524u, 55111u, u_input.b)), vec4<u32>(3889u, u_input.b, u_input.c, u_input.c)), vec2<bool>(true, true))));
}

