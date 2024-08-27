struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, -936f, -1333f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-357f, -235f, 1613f), vec3<f32>(359f, 375f, -813f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1098f, 720f, -1000f) + vec3<f32>(682f, -725f, 208f)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(325f - 290f), _wgslsmith_f_op_f32(884f + -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(643f * 167f), _wgslsmith_f_op_f32(f32(-1f) * -814f), -375f)), -firstLeadingBit(2147483647i) == _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 11149i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -43157i), vec2<i32>(28619i, 0i))))));
    let var_1 = select(!vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true), !vec3<bool>(true, true, _wgslsmith_f_op_f32(ceil(var_0.x)) < var_0.x), vec3<bool>(select(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), firstTrailingBit(arg_0.x) == firstTrailingBit(12742u), !select(true, false, false)), !any(vec2<bool>(true, false)), true));
    var var_2 = var_0.x;
    let var_3 = Struct_1(var_1.x, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -61748i, countOneBits(-1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -10739i, 20557i, 0i), vec4<i32>(2147483647i, -18827i, -1i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -6473i, 12304i, -19542i), vec4<i32>(2147483647i, 55018i, -857i, 30961i), vec4<i32>(-33821i, -2147483647i, 1i, -5690i))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-13673i, -24510i, 46404i, 17000i), vec4<i32>(-47953i, 9624i, -24887i, -2147483647i), false), vec4<i32>(31526i, -28108i, -2147483647i, 971i)), min(_wgslsmith_clamp_i32(-8852i, 1i, -64396i), _wgslsmith_mult_i32(-14260i, -32103i))), ~abs(abs(vec4<i32>(9777i, 22755i, 1693i, -1i)))), true);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-var_0.x), countOneBits(~firstTrailingBit(-vec2<i32>(-2147483647i, var_3.b.x))), abs(1i));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1699f, var_0.x)), _wgslsmith_f_op_f32(-140f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1132f)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(628f + 1000f), _wgslsmith_f_op_f32(-1276f * 584f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(765f, 1132f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-956f + -245f), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(func_3(abs(vec4<u32>(1u, u_input.a, u_input.a, 82219u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2083f))), -161f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-330f * -342f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1570f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2206f * 629f)), 947f)), !(!any(!vec4<bool>(arg_1.x, true, arg_1.x, true))));
    let var_1 = ~u_input.a;
    var var_2 = vec4<i32>(-49265i, -8343i, i32(-1i) * -arg_0.x, _wgslsmith_mod_i32(arg_0.x >> (~u_input.a % 32u), reverseBits(-_wgslsmith_add_i32(arg_0.x, -17073i))));
    let var_3 = var_1;
    var_0 = Struct_5(338f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1368f, _wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(step(317f, -807f)), var_0.a)))), select(all(select(vec3<bool>(var_0.c, var_0.c, arg_1.x), select(vec3<bool>(var_0.c, arg_1.x, arg_1.x), arg_1.xxw, arg_1.xyw), vec3<bool>(false, false, true))), !var_0.c, arg_1.x));
    return arg_0.x << (~reverseBits(max(var_1, var_3) & (var_3 >> (57246u % 32u))) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(!arg_1.x, vec4<i32>(9531i, -abs(-arg_0), (~(-62013i) << (_wgslsmith_mod_u32(9122u, u_input.a) % 32u)) ^ arg_0, arg_0 << (u_input.a % 32u)), true);
    var var_1 = vec3<u32>(21656u, u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(4294967295u, 101637u, u_input.a)), min(min(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), countOneBits(vec3<u32>(u_input.a, 25810u, u_input.a)))), select(abs(vec3<u32>(u_input.a, u_input.a, 21555u)), ~abs(vec3<u32>(u_input.a, u_input.a, 0u)), var_0.c == false)));
    var_1 = ~vec3<u32>(countOneBits(u_input.a), 74237u, 1u);
    let var_2 = Struct_1(true, ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, arg_0, -2147483647i, arg_0), var_0.b), vec4<i32>(arg_0, ~20904i, -3536i, var_0.b.x ^ -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, -2147483647i, 2147483647i, -1i), _wgslsmith_mult_vec4_i32(var_0.b, var_0.b))), any(!select(!arg_1, vec3<bool>(var_0.c, true, var_0.c), var_0.a)));
    var_1 = select(_wgslsmith_add_vec3_u32(vec3<u32>(~(~47925u), 0u, ~min(var_1.x, u_input.a)), countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_1.x), vec3<u32>(4294967295u, 81798u, 117650u)))), ~(~(vec3<u32>(var_1.x, 4294967295u, 0u) & vec3<u32>(1u, 1u, 17924u)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_1.x, u_input.a), vec3<u32>(36374u, 0u, 36282u)) << (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), var_0.c);
    return any(vec3<bool>(all(arg_1), any(vec4<bool>(var_2.c, var_2.a, false, false)) && ((var_1.x ^ u_input.a) != var_1.x), true));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-592f, 831f, arg_1.x)) + _wgslsmith_f_op_f32(abs(-618f))), 476f), -2157f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) + -646f))), min(-_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 0i), ~vec2<i32>(arg_0, -23441i)), vec2<i32>(2147483647i, _wgslsmith_div_i32(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(arg_0, 1i))))));
    var var_1 = all(select(vec2<bool>(true, !all(vec4<bool>(false, arg_1.x, arg_1.x, true))), select(select(!arg_1.yx, arg_1.yx, !arg_1.zz), arg_1.xx, vec2<bool>(false, true)), true));
    var_1 = arg_1.x;
    var var_2 = var_0.a.x;
    var var_3 = Struct_2(var_0.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~reverseBits(var_0.b), var_0.b), var_0.b, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, ~1i), vec2<i32>(_wgslsmith_clamp_i32(var_0.b.x, -2147483647i, 2147483647i), ~2147483647i))));
    return Struct_4(~abs(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_3.b.x, 53209i, 2678i, var_3.b.x)), vec4<i32>(2147483647i, 0i, 61419i, var_3.b.x))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), abs(vec2<u32>(45621u, u_input.a))), u_input.a), countOneBits(-_wgslsmith_div_vec4_i32(min(vec4<i32>(-5119i, var_0.b.x, -1i, -2147483647i), vec4<i32>(arg_0, 7822i, var_0.b.x, var_3.b.x)), ~vec4<i32>(var_0.b.x, arg_0, 2147483647i, 19479i))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    var var_0 = func_5(-select(i32(-1i) * -1i, _wgslsmith_mod_i32(-2147483647i, 1i), true) << (0u % 32u), vec3<bool>(any(vec2<bool>(true, true)), true, func_4(_wgslsmith_div_i32(54117i, func_2(vec4<i32>(arg_1.b.x, arg_1.b.x, -2147483647i, arg_1.b.x), vec4<bool>(true, true, true, false))), vec3<bool>(arg_1.a.x != arg_1.a.x, any(vec4<bool>(false, false, true, false)), true))));
    var_0 = func_5(func_2(select(~min(vec4<i32>(arg_1.b.x, arg_1.b.x, var_0.a.x, var_0.c.x), vec4<i32>(arg_1.b.x, 67608i, -64003i, 2147483647i)), var_0.c, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true))), vec3<bool>(true, true, true));
    let var_1 = ~21311u;
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.c.x, ~(~(-2147483647i))), _wgslsmith_mod_i32(var_0.a.x, min(-8786i, _wgslsmith_add_i32(var_0.c.x, -1i))));
    var_0 = Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-22549i, _wgslsmith_mod_i32(26831i, var_2), _wgslsmith_mod_i32(0i, ~(-14765i)), var_0.a.x), max(vec4<i32>(1i, firstLeadingBit(arg_1.b.x), var_2 << (0u % 32u), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.x, arg_1.b.x, var_0.c.x, 0i), _wgslsmith_div_vec4_i32(var_0.c, var_0.c)))), 0u, (~_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(1i, 1i, -1i, var_2), var_0.a) >> (arg_0 % vec4<u32>(32u))) ^ vec4<i32>(var_0.c.x, (arg_1.b.x << (var_0.b % 32u)) ^ ~var_2, arg_1.b.x, 37648i));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f * _wgslsmith_f_op_f32(2371f * arg_1.a.x))), arg_1.a.x), vec2<i32>(0i, ~var_2), arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~86020u);
    var var_1 = -1240f;
    var var_2 = func_1(vec4<u32>(~u_input.a, ~(~u_input.a) << ((~0u | u_input.a) % 32u), countOneBits(4294967295u), 51102u), Struct_2(vec3<f32>(1f, 2364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f + -666f))), vec2<i32>(1i, 1i)), 0u);
    var var_3 = ~_wgslsmith_sub_vec2_u32(max(min(~vec2<u32>(4253u, 1u), ~vec2<u32>(52134u, 1u)), vec2<u32>(0u, _wgslsmith_mult_u32(u_input.a, 81204u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), max(vec2<u32>(86831u, 59693u), vec2<u32>(13195u, 713u)), ~vec2<u32>(4294967295u, u_input.a))));
    let var_4 = u_input.a;
    var_3 = ~vec2<u32>(50790u, var_3.x);
    var var_5 = func_1(vec4<u32>(1u << ((1u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(0u, 27930u, 1u))) % 32u), u_input.a, var_3.x, _wgslsmith_mult_u32(~var_3.x, var_4) | ~select(0u, var_3.x, false)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(306f, 1278f, var_2.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a, var_2.a, var_2.a), vec3<f32>(var_2.a, 697f, -1471f))))), -func_1(vec4<u32>(u_input.a, 44u, var_3.x, var_3.x), Struct_2(vec3<f32>(var_2.a, var_2.a, -266f), var_2.b), _wgslsmith_sub_u32(u_input.a, var_4)).b), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), -346f, _wgslsmith_f_op_f32(-123f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1011f, -1660f))))), 1000f), var_5.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(abs(var_5.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, var_5.a, 185f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(453f, var_5.a, var_5.a, 1000f))))))), ~(~vec4<u32>(_wgslsmith_mod_u32(var_3.x, var_4), _wgslsmith_sub_u32(u_input.a, 0u), ~36210u, _wgslsmith_clamp_u32(1507u, var_4, 4294967295u))));
}

