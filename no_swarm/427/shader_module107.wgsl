struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = -2147483647i;
    var var_1 = false;
    var var_2 = arg_0;
    var var_3 = Struct_1(var_2.a);
    var_2 = arg_0;
    return _wgslsmith_add_vec3_i32(min(vec3<i32>(1i, reverseBits(select(28710i, u_input.c, false)), -var_2.a.x), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 15051i, var_3.a.x), vec3<i32>(var_3.a.x, var_3.a.x, 20442i) << (vec3<u32>(u_input.b.x, 29476u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(var_3.a.x, 1i, var_3.a.x))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a.x, -66298i, -1i, u_input.c), vec4<i32>(u_input.c, -2147483647i, var_2.a.x, 74715i)), max(1i, 1i), -arg_0.a.x));
}

fn func_3() -> vec3<u32> {
    let var_0 = all(vec3<bool>(all(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), false)), u_input.c > 51724i, all(vec2<bool>(true, true))));
    var var_1 = select(select(vec4<bool>(!var_0, false, u_input.a.x <= ~u_input.a.x, all(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false)))), !vec4<bool>(any(vec2<bool>(var_0, var_0)), u_input.a.x < u_input.b.x, var_0, var_0), ~u_input.c >= firstTrailingBit(max(4756i, -1i))), select(vec4<bool>(var_0, all(select(vec4<bool>(var_0, false, false, false), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0))), true, any(vec2<bool>(true, true))), !(!select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_0, var_0, false, false), vec4<bool>(true, var_0, var_0, false))), var_0), true);
    var_1 = !select(vec4<bool>(!var_0, any(select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), (u_input.c ^ u_input.c) == u_input.c, true), select(select(!vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(false, true, true, var_1.x), !vec4<bool>(true, false, var_0, false)), vec4<bool>(all(vec3<bool>(true, true, false)), false, any(var_1.xzy), -22157i > u_input.c), select(select(vec4<bool>(true, true, var_0, false), vec4<bool>(var_1.x, true, true, true), vec4<bool>(true, var_0, true, var_0)), !vec4<bool>(true, var_0, true, var_0), select(vec4<bool>(var_0, false, true, var_1.x), vec4<bool>(true, true, var_1.x, true), var_0))), (~64208u & (u_input.a.x >> (u_input.b.x % 32u))) <= 1u);
    let var_2 = _wgslsmith_div_u32(~1u, u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(28350i, u_input.c) ^ ~vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, func_2(Struct_1(vec2<i32>(u_input.c, 2301i))).x), -vec2<i32>(15689i, u_input.c) | firstTrailingBit(vec2<i32>(1i, u_input.c))) & reverseBits(vec2<i32>(abs(1i), ~u_input.c)));
    return _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(4294967295u, u_input.b.x, var_2))) & u_input.a, select(~vec3<u32>(4294967295u, 737u, 4294967295u), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, var_2, u_input.a.x), ~u_input.b.yzz), var_1.yyw) ^ vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yy)), u_input.b.x, firstTrailingBit(firstLeadingBit(var_2))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = true != (func_2(arg_3).x > reverseBits(_wgslsmith_add_i32(arg_3.a.x & 2147483647i, arg_1.a.x)));
    let var_2 = arg_1;
    var_0 = Struct_1(var_0.a);
    let var_3 = _wgslsmith_f_op_f32(min(-1208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) + _wgslsmith_f_op_f32(abs(-342f)))));
    return countOneBits(_wgslsmith_mult_vec3_i32(func_2(var_2), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_2.a.x, -8107i), -vec3<i32>(7258i, 45305i, var_2.a.x)) ^ vec3<i32>(reverseBits(43258i), u_input.c, var_2.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_sub_vec3_i32(~abs(reverseBits(func_2(Struct_1(vec2<i32>(4053i, u_input.c))))), func_4(_wgslsmith_mod_u32(~48638u, _wgslsmith_dot_vec3_u32(func_3(), u_input.a)), Struct_1(min(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, u_input.c))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.xy), _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.a.x, 26156u))), Struct_1(select(~vec2<i32>(2138i, arg_0.a.x), vec2<i32>(u_input.c, 2147483647i), true))));
    let var_1 = -vec4<i32>(u_input.c, 2149i, ~firstLeadingBit(_wgslsmith_div_i32(var_0.x, arg_0.a.x)), 5919i);
    let var_2 = var_0;
    let var_3 = firstLeadingBit(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b.xy), ~vec2<u32>(u_input.a.x, u_input.a.x)) & ~(~u_input.a.zx));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(630f * 851f), _wgslsmith_f_op_f32(-857f + 427f))))) * 579f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(min(vec3<i32>(~(-17359i), ~u_input.c, u_input.c), min(vec3<i32>(-2147483647i, u_input.c, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 11716i, -30926i), vec3<i32>(1i, -9803i, u_input.c))) ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(-19839i, u_input.c, 0i), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(1i, u_input.c, u_input.c)) >> (reverseBits(vec3<u32>(4294967295u, 1u, u_input.b.x)) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(min(max(~vec3<i32>(-1i, u_input.c, 14439i), vec3<i32>(2147483647i, u_input.c, 50131i)), ~(~vec3<i32>(2147483647i, u_input.c, u_input.c))), -vec3<i32>(firstTrailingBit(u_input.c), max(-1i, 70720i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 36842i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)))));
    let var_1 = -vec4<i32>(select(9496i, var_0.x, -795f > _wgslsmith_f_op_f32(func_1(Struct_1(var_0.zx), true))), -var_0.x, 2147483647i, u_input.c ^ ~(i32(-1i) * -12553i));
    var var_2 = u_input.b.zz;
    var_2 = _wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.b.xx);
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-496f - 807f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-795f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-644f, -957f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f - _wgslsmith_f_op_f32(f32(-1f) * -108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-175f - -1000f)))), vec2<i32>(func_2(Struct_1(vec2<i32>(0i, var_1.x))).x, i32(-1i) * -1i), var_0.yx);
}

