struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = any(vec4<bool>(false, false, false, true));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2031f, -393f)) + _wgslsmith_f_op_f32(890f + _wgslsmith_f_op_f32(-912f - 661f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-239f - -211f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1018f, 2538f, 547f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, -195f, -1353f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, -489f, 747f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, 354f, 1663f) + vec3<f32>(1202f, 187f, -1242f)))))));
    var_0 = true;
    var var_3 = u_input.d;
    return var_2.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(-(_wgslsmith_mod_i32(abs(1i), u_input.b.x) | -15385i), -440f, ~_wgslsmith_mod_u32(~u_input.c, u_input.d.x), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(627f)) * -120f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(abs(-1302f))), true, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 327f, 1000f)))))));
    var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(max(var_0.b, var_0.b)), ~firstTrailingBit(~select(u_input.a, 14726u, var_0.d.x)), vec3<bool>(!all(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x)) && (true | (1u <= var_0.c)), true, _wgslsmith_clamp_u32(u_input.d.x ^ var_0.c, _wgslsmith_div_u32(u_input.a, 0u), 0u) <= ~u_input.e), _wgslsmith_f_op_vec3_f32(var_0.e * vec3<f32>(_wgslsmith_f_op_f32(-512f * var_0.b), _wgslsmith_div_f32(2628f, var_0.b), var_0.e.x)));
    var var_1 = Struct_1(_wgslsmith_div_i32(u_input.b.x, 40342i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(max(var_0.e.x, -713f))), firstTrailingBit(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.d.x), u_input.d.xy) ^ 41858u)), var_0.d, var_0.e);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, 676f, -152f, 1396f), vec4<f32>(-211f, 219f, var_0.b, var_1.b)))))))));
    return var_3.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_1(-firstTrailingBit(reverseBits(~u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 35158u, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -810f, _wgslsmith_f_op_f32(f32(-1f) * -515f)));
    var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - 1222f) + _wgslsmith_div_f32(var_0.e.x, _wgslsmith_f_op_f32(-var_0.b))), ~reverseBits(u_input.e), select(vec3<bool>(!var_0.d.x, all(vec2<bool>(var_0.d.x, var_0.d.x)), !var_0.d.x), vec3<bool>(any(!var_0.d.yy), all(var_0.d.xz), false), select(select(select(vec3<bool>(false, var_0.d.x, true), var_0.d, vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), vec3<bool>(true, true, var_0.d.x), select(var_0.d, vec3<bool>(false, true, false), var_0.d)), !select(var_0.d, var_0.d, vec3<bool>(false, true, var_0.d.x)), !var_0.d)), _wgslsmith_f_op_vec3_f32(floor(var_0.e)));
    return -_wgslsmith_mod_vec3_i32(select(-(vec3<i32>(-2147483647i, -44673i, u_input.b.x) >> (vec3<u32>(78146u, 0u, u_input.c) % vec3<u32>(32u))), vec3<i32>(var_0.a, -var_0.a, 0i), !(u_input.b.x >= var_0.a)), vec3<i32>(-u_input.b.x, abs(_wgslsmith_sub_i32(-1i, u_input.b.x)), _wgslsmith_div_i32(-38140i, reverseBits(1i))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) * _wgslsmith_f_op_f32(f32(-1f) * -176f)), _wgslsmith_div_f32(486f, _wgslsmith_f_op_f32(f32(-1f) * -844f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-300f, -540f), _wgslsmith_f_op_f32(select(991f, -814f, false)), arg_3.x | false)) * _wgslsmith_f_op_f32(sign(1f))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(-2147483647i, 0i, _wgslsmith_add_i32(arg_2.x, 1i), min(15364i, 1i))), var_0.x, arg_1.x, select(vec3<bool>(arg_3.x, any(vec2<bool>(false, arg_3.x)), !arg_3.x), vec3<bool>(arg_3.x, false, true), all(vec3<bool>(arg_3.x, arg_3.x, arg_3.x)) && true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 899f, -2610f), vec3<f32>(1000f, var_0.x, var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(2319f)), _wgslsmith_f_op_f32(func_2())))));
    let var_2 = ~(~u_input.d.xx);
    let var_3 = !select(select(vec3<bool>(var_1.a.d.x, all(arg_3.zz), true), arg_3, any(select(vec4<bool>(var_1.a.d.x, false, true, true), vec4<bool>(false, var_1.a.d.x, false, arg_3.x), vec4<bool>(var_1.a.d.x, arg_3.x, arg_3.x, false)))), !(!vec3<bool>(false, arg_3.x, false)), arg_3);
    var var_4 = Struct_2(Struct_1(0i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.e.x), _wgslsmith_f_op_f32(-var_1.a.e.x))), ~u_input.a, vec3<bool>(true, true, !arg_3.x), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_div_f32(-207f, var_1.a.b), -1039f)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.b.x, abs(u_input.b.x), -u_input.b.x);
    let var_1 = func_4(~abs(func_1()), firstTrailingBit(u_input.d), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -(u_input.b.x ^ -1i)), countOneBits(vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, var_0.x, 0i), vec4<i32>(var_0.x, 2147483647i, -1462i, var_0.x)), -1i, var_0.x))), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, any(vec2<bool>(true, all(vec4<bool>(false, false, false, true))))));
    let var_2 = !(!func_4(countOneBits(min(var_0, var_0)), ~vec3<u32>(var_1.a.c, u_input.e, 53520u), -firstTrailingBit(vec4<i32>(var_0.x, var_1.a.a, u_input.b.x, 2147483647i)), func_4(abs(var_0), u_input.d, -vec4<i32>(var_0.x, var_0.x, -7887i, u_input.b.x), var_1.a.d).a.d).a.d.yy);
    var var_3 = _wgslsmith_f_op_vec2_f32(var_1.a.e.zz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.b, -1915f), _wgslsmith_f_op_vec2_f32(max(func_4(var_0, vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(2147483647i, var_1.a.a, u_input.b.x, -2147483647i), var_1.a.d).a.e.xz, var_1.a.e.xy)))) + _wgslsmith_f_op_vec2_f32(-func_4(reverseBits(vec3<i32>(var_0.x, var_0.x, -17434i)), _wgslsmith_add_vec3_u32(vec3<u32>(28131u, 4294967295u, u_input.a), u_input.d), vec4<i32>(var_0.x, -2147483647i, 0i, -1i), var_1.a.d).a.e.yz)));
    let var_4 = countOneBits(max(~(~max(u_input.d.yy, vec2<u32>(10581u, var_1.a.c))), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.c, u_input.d.x), vec2<u32>(u_input.c, u_input.c)) ^ select(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.c, 1u), u_input.d.zy), _wgslsmith_clamp_vec2_u32(u_input.d.zz, u_input.d.xx, vec2<u32>(33060u, var_1.a.c)), !vec2<bool>(false, var_1.a.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(69760u, min(var_4.x, ~u_input.c), ~var_1.a.c), vec4<i32>(-1i, u_input.b.x, _wgslsmith_clamp_i32(-firstLeadingBit(-1i), _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.x, 20704i), var_0.x), var_0.x), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.b.x, var_0.x, -6865i, -12347i)), -(vec4<i32>(2147483647i, var_1.a.a, u_input.b.x, u_input.b.x) << (vec4<u32>(var_4.x, u_input.e, u_input.e, 6586u) % vec4<u32>(32u))))));
}

