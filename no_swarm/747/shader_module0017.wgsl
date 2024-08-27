struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    let var_0 = vec4<i32>(i32(-1i) * -8815i, abs(-19983i), arg_0, u_input.a);
    var var_1 = max(reverseBits(~min(abs(vec2<u32>(0u, u_input.c)), vec2<u32>(u_input.c, 79211u))), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), ~vec2<u32>(7814u, u_input.b) | vec2<u32>(8209u, u_input.c))));
    var_1 = ~vec2<u32>(4294967295u, select(min(abs(u_input.c), 54406u), reverseBits(_wgslsmith_add_u32(0u, 1u)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var_1 = ~countOneBits(vec2<u32>(1u, 1u));
    let var_2 = var_0;
    return abs(u_input.e);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-279f, -569f)), 532f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1092f))), true, false, 940i >= func_3(u_input.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, -101f, -956f)))), vec4<bool>(false, true, select(true, all(vec4<bool>(false, true, false, true)) && all(vec2<bool>(false, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), -1i <= (~1i >> (arg_1.x % 32u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_0.xx & arg_0.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 0i), arg_0.zx, u_input.d.zz)), _wgslsmith_div_i32(25577i, ~1i)) <= 30982i);
    let var_1 = Struct_1(var_0.yy, 1000f, select(!var_0.zz, var_0.xz, var_0.yz));
    var var_2 = arg_0.yy;
    var_2 = _wgslsmith_clamp_vec2_i32(-(countOneBits(u_input.d.xx >> (arg_1 % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.e, arg_0.x)), select(u_input.d.xz, arg_0.yx, vec2<bool>(var_1.a.x, var_0.x)))), -vec2<i32>(-7630i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), arg_0.xy), u_input.e), ~(~vec2<i32>(select(-2147483647i, u_input.e, true), arg_0.x)));
    let var_3 = var_1;
    return select(!vec4<bool>(any(vec4<bool>(var_1.a.x, var_1.c.x, var_0.x, var_3.a.x)), select(var_1.a.x, var_3.a.x, false) == any(var_3.a), true, !any(var_0.wwy)), select(!vec4<bool>(var_0.x, select(true, var_1.a.x, false), true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(!var_0.x, all(var_1.a), select(var_0.x, true, true), true), vec4<bool>(true, true, true, var_0.x), select(!vec4<bool>(false, false, var_0.x, false), !vec4<bool>(var_0.x, false, var_0.x, true), true))), any(select(vec3<bool>(true, true, true), var_0.xxy, var_0.x)));
}

fn func_1() -> vec4<bool> {
    var var_0 = !select(vec4<bool>(true, false, any(vec3<bool>(false, true, false)), true), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true)), true);
    var_0 = vec4<bool>(var_0.x, all(var_0.xyx), var_0.x, var_0.x);
    var_0 = select(select(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-36263i, -2147483647i, u_input.a), _wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(-22036i, 18636i, 1i), vec3<i32>(u_input.e, u_input.d.x, u_input.e)), u_input.d), vec2<u32>(1u, 36794u)), !(!(!vec4<bool>(var_0.x, var_0.x, false, false))), !func_2(vec3<i32>(u_input.a, 1i, u_input.e), vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(934u, u_input.b) % vec2<u32>(32u)))), !func_2(-countOneBits(u_input.d), countOneBits(vec2<u32>(0u, 101306u))), true);
    let var_1 = vec4<bool>(true, countOneBits(1i ^ u_input.d.x) >= ~u_input.e, !var_0.x, any(vec3<bool>(false, var_0.x, any(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, true, true), var_0.x)))));
    var_0 = select(var_1, var_1, var_1);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select((-_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -32714i, 2147483647i, u_input.e), vec4<i32>(u_input.d.x, -13943i, u_input.d.x, 0i), vec4<i32>(u_input.a, 39179i, u_input.d.x, u_input.d.x)) ^ vec4<i32>(~u_input.d.x, ~0i, u_input.d.x & u_input.d.x, u_input.e)) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(14809u, u_input.b, u_input.c, 4294967295u), countOneBits(vec4<u32>(u_input.c, 4294967295u, 0u, 1u))), vec4<u32>(firstTrailingBit(u_input.b), 123432u, firstLeadingBit(u_input.c), 4294967295u ^ u_input.b), select(vec4<bool>(true, true, true, true), func_1(), vec4<bool>(true, false, true, true))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, -45814i, u_input.d.x) >> (vec4<u32>(38441u, 31221u, u_input.b, 34285u) % vec4<u32>(32u)), -vec4<i32>(4401i, u_input.e, 0i, u_input.e))), select(vec4<i32>(-u_input.e, -u_input.d.x, 1i, u_input.a), _wgslsmith_div_vec4_i32(max(vec4<i32>(-2147483647i, -29492i, 10469i, u_input.a), vec4<i32>(-14558i, 1i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 2147483647i, u_input.e, 1i), vec4<i32>(12286i, u_input.e, 1i, u_input.e), vec4<i32>(u_input.e, u_input.d.x, 17390i, u_input.a))), vec4<bool>(true, true, func_1().x, false))), !vec4<bool>(true, func_2(-vec3<i32>(u_input.e, 0i, 41064i), firstTrailingBit(vec2<u32>(123230u, 65536u))).x, true, true != (4294967295u == u_input.c)));
    var_0 = vec4<i32>(_wgslsmith_mult_i32(func_3(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), var_0.wz), _wgslsmith_dot_vec3_i32(var_0.zxz, vec3<i32>(-42220i, -19692i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-795f, -611f, 450f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1247f, 387f, -441f)))), ~max(abs(41183i), 33658i)), var_0.x, var_0.x, 2147483647i);
    var var_1 = Struct_1(!(!func_1().wx), -1971f, select(vec2<bool>(true, false), func_1().wx, true));
    let var_2 = var_0.x;
    let var_3 = !select(select(!(!vec4<bool>(var_1.c.x, var_1.a.x, var_1.a.x, var_1.c.x)), vec4<bool>(true, var_1.c.x, !var_1.c.x, true), var_1.a.x | true), !(!vec4<bool>(var_1.c.x, false, var_1.c.x, false)), !select(vec4<bool>(true, var_1.a.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, true, true, var_1.c.x), !vec4<bool>(var_1.a.x, var_1.a.x, var_1.c.x, var_1.a.x)));
    var_1 = Struct_1(func_2(vec3<i32>(-var_0.x, u_input.d.x, -2147483647i), firstLeadingBit(~vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)))).zw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(round(-1102f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1384f))) * _wgslsmith_f_op_f32(-var_1.b))), func_2(-(~(-var_0.xzy)), countOneBits(~(~vec2<u32>(30263u, u_input.b)))).zx);
    var var_4 = var_3;
    let var_5 = ~(u_input.d >> (reverseBits(countOneBits(~vec3<u32>(u_input.b, u_input.b, 10998u))) % vec3<u32>(32u)));
    let var_6 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(~var_6, _wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), var_6)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, var_1.b), vec2<f32>(var_1.b, var_1.b))))) * vec2<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -638f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b, -1021f)))));
}

