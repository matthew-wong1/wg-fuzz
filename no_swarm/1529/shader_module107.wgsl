struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(716f, 1848f, -101f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-866f, -145f, 153f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1011f, 1658f, 781f)))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(any(vec3<bool>(true, true, false)), arg_0 > arg_0, true))), Struct_1(56772u, _wgslsmith_dot_vec4_i32(vec4<i32>(-34278i, -62016i, 11536i, 63361i) >> (vec4<u32>(10380u, arg_0, u_input.b.x, 0u) % vec4<u32>(32u)), vec4<i32>(1i, -1i, -2147483647i, 14137i)) & ~0i, -1440f, -1i), countOneBits((-7064i ^ (-7002i << (arg_0 % 32u))) << ((_wgslsmith_mod_u32(4294967295u, 4294967295u) << (1u % 32u)) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.c, _wgslsmith_f_op_f32(f32(-1f) * -711f), true))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1333f), Struct_1(reverseBits(~_wgslsmith_div_u32(82126u, 35630u)), i32(-1i) * -23354i, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-329f)) + _wgslsmith_f_op_f32(-543f + -1336f))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(max(vec3<i32>(7510i, 39910i, -1i), vec3<i32>(var_0.d, var_0.d, 74777i)), -vec3<i32>(var_0.d, 8616i, -2457i), var_0.b))), Struct_3(vec3<f32>(-2868f, var_0.c.c, var_1), !vec3<bool>(all(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.x && var_0.b.x, var_0.b.x & true), var_0.c, firstTrailingBit(~(~42809i))), vec3<u32>(u_input.d.x, ~1u, ~(~firstTrailingBit(u_input.c))));
    let var_3 = ~(~min(~(vec2<u32>(85075u, arg_0) << (vec2<u32>(var_0.c.a, 4294967295u) % vec2<u32>(32u))), u_input.d.zz));
    return vec4<i32>(-1i) * -vec4<i32>(1i, var_2.b.b ^ var_0.c.d, -firstTrailingBit(-2147483647i), ~firstTrailingBit(48299i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = arg_2.wzy;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(959f, -365f), vec2<f32>(737f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-719f, -830f) * _wgslsmith_f_op_f32(sign(-1000f))))));
    var var_2 = _wgslsmith_sub_vec4_i32(countOneBits(~func_3(~1u)), arg_2);
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1411f))), var_1.x, -525f), vec3<bool>(false, arg_0.x, true), Struct_1(~u_input.b.x, ~_wgslsmith_div_i32(~var_0.x, arg_2.x | arg_2.x), var_1.x, _wgslsmith_add_i32(arg_2.x, _wgslsmith_dot_vec3_i32(arg_2.yxx, arg_2.ywy))), firstTrailingBit(var_0.x));
    var_2 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, abs(0i), _wgslsmith_add_i32(var_3.d >> (arg_1.x % 32u), _wgslsmith_sub_i32(-1i, -1i)), -2147483647i), ~max(countOneBits(vec4<i32>(arg_2.x, var_2.x, -10721i, var_3.d)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 91294i, 0i, -2147483647i), arg_2))));
    return var_3.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~select(select(vec3<i32>(arg_0.b, 1i, arg_0.b), vec3<i32>(arg_0.b, arg_0.d, arg_0.b), arg_2), ~vec3<i32>(-1i, 21459i, arg_0.b), arg_2.x), countOneBits(vec3<i32>(arg_0.d, -arg_0.d, abs(-2147483647i)))), countOneBits(vec3<i32>(max(1i, -1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 1i), vec2<i32>(arg_0.b, -2147483647i)), -2147483647i)));
    let var_1 = select(vec4<i32>(1i, abs(arg_0.d), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), var_0.xx), _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.d, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, 2147483647i, var_0.x), vec4<i32>(-20623i, arg_0.b, -19179i, var_0.x)))), -(min(vec4<i32>(2147483647i, 9452i, var_0.x, arg_0.d), vec4<i32>(var_0.x, var_0.x, arg_0.d, var_0.x)) >> ((vec4<u32>(arg_0.a, 4294967295u, u_input.a.x, arg_1.x) & u_input.b) % vec4<u32>(32u))), !select(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), select(vec4<bool>(false, arg_2.x, false, true), vec4<bool>(arg_2.x, true, arg_2.x, true), arg_2.x), select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(arg_2.x, true, arg_2.x, false)))) & vec4<i32>(-var_0.x, 1i, firstTrailingBit(-13254i), min(abs(~arg_0.d), _wgslsmith_sub_i32(-93443i, abs(23107i))));
    var var_2 = Struct_2(1619f, vec3<f32>(-804f, arg_0.c, -106f), 831f);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-509f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(314f, 771f) - -1000f), _wgslsmith_f_op_f32(555f * _wgslsmith_f_op_f32(select(-1656f, arg_0.c, arg_2.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.b))), var_2.b, true && !arg_2.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * _wgslsmith_f_op_f32(abs(arg_0.c))), var_2.c));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1853f), 2704f));
    return Struct_5(arg_0.c, func_2(!select(vec4<bool>(arg_2.x, arg_2.x, false, false), !vec4<bool>(false, false, false, arg_2.x), true), u_input.b, -_wgslsmith_mult_vec4_i32(var_1, vec4<i32>(1i, 2147483647i, arg_0.d, var_1.x)) | vec4<i32>(_wgslsmith_mult_i32(var_1.x, 8489i), abs(arg_0.b), countOneBits(var_1.x), var_0.x)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.c, -1009f)), _wgslsmith_f_op_f32(-209f - _wgslsmith_f_op_f32(var_4.x + var_4.x)), _wgslsmith_f_op_f32(1515f + var_3.x)), vec3<bool>(_wgslsmith_f_op_f32(round(var_4.x)) < 397f, all(vec3<bool>(arg_2.x, arg_2.x, true)), arg_0.a == 59357u), func_2(vec4<bool>(any(vec4<bool>(arg_2.x, true, false, false)), false, arg_2.x && false, false), vec4<u32>(~37416u, _wgslsmith_sub_u32(arg_1.x, arg_1.x), 21017u, 83122u), select(_wgslsmith_clamp_vec4_i32(var_1, vec4<i32>(arg_0.d, arg_0.b, var_1.x, 1i), vec4<i32>(var_0.x, -2147483647i, -1i, var_1.x)), var_1 ^ var_1, !arg_2.x)), var_0.x), u_input.d);
}

fn func_5(arg_0: Struct_5) -> vec4<i32> {
    let var_0 = -select(firstLeadingBit(~vec2<i32>(-6048i, arg_0.b.b)) << (((arg_0.d.xy | vec2<u32>(u_input.b.x, 29789u)) ^ arg_0.d.yz) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(min(-10024i, -2147483647i), ~arg_0.b.b), max(func_3(u_input.d.x).x, -7784i)), arg_0.a > arg_0.b.c);
    var var_1 = Struct_3(arg_0.c.a, arg_0.c.b, func_2(!(!select(vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, true, true), vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, false, arg_0.c.b.x), vec4<bool>(false, true, false, arg_0.c.b.x))), ~vec4<u32>(arg_0.d.x, u_input.b.x, u_input.a.x, u_input.d.x) | vec4<u32>(~0u, ~4294967295u, 4294967295u, 42832u), select(vec4<i32>(_wgslsmith_add_i32(arg_0.c.d, arg_0.c.d), max(-2147483647i, -74085i), -var_0.x, firstLeadingBit(-2147483647i)), ~func_3(0u), _wgslsmith_sub_u32(arg_0.b.a, 4294967295u) > (4294967295u >> (u_input.d.x % 32u)))), ~select(2147483647i, firstTrailingBit(~(-34825i)), !(!arg_0.c.b.x)));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 735f, -549f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, 2122f, arg_0.b.c)))), arg_0.c.a)), vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -215f) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a + -146f))), !any(vec4<bool>(arg_0.c.b.x, true, true, arg_0.c.b.x))), func_2(vec4<bool>(~arg_0.c.c.d == func_2(vec4<bool>(arg_0.c.b.x, var_1.b.x, true, arg_0.c.b.x), vec4<u32>(0u, arg_0.b.a, 60510u, u_input.d.x), vec4<i32>(-1i, var_0.x, var_1.c.b, -14459i)).b, true, true && (arg_0.c.a.x <= var_1.a.x), false), u_input.b, ~vec4<i32>(var_1.d, _wgslsmith_mod_i32(arg_0.b.d, arg_0.c.c.d), ~var_0.x, -2147483647i)), (_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(var_0.x, var_1.d)) ^ -72811i) << (var_1.c.a % 32u));
    var var_2 = func_4(Struct_1(0u, arg_0.b.b, _wgslsmith_f_op_f32(ceil(-2165f)), arg_0.c.c.b), firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 71638u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), arg_0.d.xx), _wgslsmith_sub_u32(0u, u_input.d.x))) ^ _wgslsmith_sub_vec3_u32(select(~arg_0.d, _wgslsmith_clamp_vec3_u32(u_input.b.zyw, vec3<u32>(1u, var_1.c.a, var_1.c.a), arg_0.d), vec3<bool>(false, var_1.b.x, var_1.b.x)), arg_0.d), !arg_0.c.b);
    var_2 = arg_0;
    return vec4<i32>(-1i) * -vec4<i32>(max(var_0.x, arg_0.c.d ^ var_0.x), var_1.d, -38657i ^ var_0.x, -31789i);
}

fn func_1() -> f32 {
    var var_0 = vec4<i32>(-2147483647i, -1i, 60779i, _wgslsmith_sub_i32(26569i, i32(-1i) * -firstTrailingBit(2147483647i)));
    var_0 = ~func_5(func_4(func_2(vec4<bool>(true, true, true, true), vec4<u32>(27798u, 37298u, u_input.c, 1u), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x)), _wgslsmith_clamp_vec3_u32(u_input.b.wzx, vec3<u32>(1u, 4294967295u, 4605u), u_input.d), vec3<bool>(true, true, true))) ^ func_5(Struct_5(-1983f, func_4(Struct_1(8151u, var_0.x, 1117f, var_0.x), u_input.b.zzw, vec3<bool>(true, true, true)).b, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, -1239f, -2380f)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), func_4(Struct_1(u_input.d.x, var_0.x, 533f, var_0.x), u_input.d, vec3<bool>(false, false, true)).b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 13788i), vec3<i32>(var_0.x, -2147483647i, 11999i))), vec3<u32>(func_2(vec4<bool>(true, false, false, true), u_input.b, vec4<i32>(0i, var_0.x, -35372i, 28910i)).a, 0u, _wgslsmith_clamp_u32(1u, u_input.b.x, 11553u))));
    var_0 = vec4<i32>(0i, var_0.x ^ abs(func_3(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)).x), select(_wgslsmith_div_i32(1i, ~(~var_0.x)), ~_wgslsmith_add_i32(~var_0.x, i32(-1i) * -35117i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1091f + -822f))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -1000f)))), var_0.x);
    var_0 = select(vec4<i32>(firstTrailingBit(28222i), var_0.x, abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 13123i), vec2<i32>(22189i, -2147483647i)), func_3(u_input.d.x).x)), -var_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x & ~1157i, var_0.x, var_0.x, var_0.x), -vec4<i32>(var_0.x, -var_0.x, -2147483647i, ~0i), ~vec4<i32>(var_0.x, var_0.x, _wgslsmith_sub_i32(var_0.x, var_0.x), _wgslsmith_div_i32(var_0.x, var_0.x))), false);
    var_0 = vec4<i32>(var_0.x, ~893i, _wgslsmith_add_i32(func_5(func_4(func_2(vec4<bool>(true, false, true, true), u_input.b, vec4<i32>(var_0.x, var_0.x, 0i, -8773i)), vec3<u32>(u_input.a.x, 1u, u_input.b.x), vec3<bool>(true, true, true))).x, reverseBits((var_0.x ^ var_0.x) | 1i)), var_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1333f * -269f)), 1f) + _wgslsmith_f_op_f32(round(func_2(vec4<bool>(all(vec3<bool>(false, false, true)), true, false, false), u_input.b, ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, 10699i, -20127i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))).c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(34728u, _wgslsmith_f_op_f32(ceil(-499f)) >= 1f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-1f)) - -287f);
    let var_2 = ~reverseBits(-1i);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 + -209f), var_1));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-331f, var_1, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(func_1()), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -814f)))), !vec3<bool>(select(true, true, !var_0.b), false | any(vec2<bool>(true, false)), var_0.b), func_4(Struct_1(1u, var_2, var_1, _wgslsmith_mult_i32(firstTrailingBit(-12687i), var_2)), ~u_input.b.wwx, select(vec3<bool>(!var_0.b, true, true), !vec3<bool>(var_0.b, true, true), func_4(Struct_1(var_0.a, var_2, -1540f, var_2), select(u_input.b.wxx, u_input.d, vec3<bool>(true, var_0.b, true)), select(vec3<bool>(false, var_0.b, false), vec3<bool>(true, var_0.b, false), vec3<bool>(false, true, true))).c.b)).c.c, 46988i);
    var var_5 = vec4<i32>(var_2, min(var_2, var_2), -1i, ~var_4.c.d ^ _wgslsmith_div_i32(-27763i | var_2, ~(i32(-1i) * -48040i)));
    let var_6 = u_input.c >> (~1u % 32u);
    var var_7 = -152f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_4.c.d, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(37178i, var_4.c.d, 15635i, var_2) ^ vec4<i32>(var_2, var_4.c.b, var_5.x, var_4.d)), select(vec4<i32>(59289i, 2416i, -40055i, -2147483647i), ~vec4<i32>(var_2, 26409i, 44403i, var_5.x), select(vec4<bool>(true, var_4.b.x, var_4.b.x, true), vec4<bool>(false, false, true, var_4.b.x), vec4<bool>(false, false, var_0.b, var_4.b.x)))), abs(~(vec4<i32>(0i, -51475i, var_4.d, 0i) >> (vec4<u32>(var_4.c.a, var_6, var_0.a, 4294967295u) % vec4<u32>(32u))))), vec2<i32>((0i | (4468i ^ var_4.d)) >> (var_0.a % 32u), abs(-var_4.d) << (firstLeadingBit(~4294967295u) % 32u)));
}

