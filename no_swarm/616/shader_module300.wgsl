struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_3(1268f, _wgslsmith_mod_vec3_u32(u_input.c.xwy, u_input.c.wyw), ~(-(~0i) >> (~u_input.c.x % 32u)), Struct_2(vec4<i32>(min(-14484i, _wgslsmith_sub_i32(39526i, 0i)), ~u_input.d, ~(u_input.d ^ 23386i), ~(~u_input.d)), 979f));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-129f))), _wgslsmith_mod_vec3_u32(u_input.c.zwx, vec3<u32>(~firstLeadingBit(10452u), ~4294967295u, var_0.b.x)), _wgslsmith_mult_i32(countOneBits(u_input.d | 2147483647i), ~var_0.d.a.x) << (~u_input.c.x % 32u), Struct_2(var_0.d.a, _wgslsmith_f_op_f32(-var_0.d.b)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(676f - -904f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1893f) - -1606f))), var_0.d.b)), select(~select(~vec3<u32>(u_input.b, var_0.b.x, 4011u), ~u_input.c.wxy, arg_0.x && arg_0.x), ~var_0.b ^ var_0.b, !select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, true, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false), false))), u_input.d, Struct_2(var_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1729f * 707f) + -1731f))));
    var var_1 = !(!select(!select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true)), vec4<bool>(arg_0.x, false, arg_0.x, any(vec3<bool>(false, true, true))), select(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(arg_0.x, false, true, false), arg_0.x), false)));
    var var_2 = !all(vec4<bool>(any(select(arg_0, arg_0, vec2<bool>(true, arg_0.x))), var_1.x && true, var_0.d.b < -299f, !any(vec4<bool>(var_1.x, arg_0.x, arg_0.x, false))));
    return !(!var_1.wx);
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = arg_0.zz;
    var_0 = arg_0.yy ^ arg_0.zz;
    let var_1 = vec3<bool>(any(vec2<bool>(true, true)), select(!select(false, true, true), select(false, false, all(func_3(vec2<bool>(true, true)))), all(vec4<bool>(any(vec2<bool>(true, false)), true, all(vec4<bool>(false, true, false, false)), true))), !func_3(vec2<bool>(true, false)).x & true);
    var_0 = select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 1i, -2147483647i, u_input.d), vec4<i32>(var_0.x, arg_0.x, 53781i, var_0.x)), -2147483647i), arg_0.xz, ~(~u_input.a) < u_input.c.x) & vec2<i32>(_wgslsmith_mult_i32(~var_0.x | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -40348i), vec2<i32>(var_0.x, -1i)), var_0.x), 5195i);
    var var_2 = vec2<u32>(~u_input.b, _wgslsmith_add_u32(~93034u & (68134u ^ u_input.c.x), ~(~0u))) & ~vec2<u32>(u_input.a, _wgslsmith_clamp_u32(0u >> (u_input.c.x % 32u), ~128897u, firstLeadingBit(u_input.b)));
    return !var_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    var var_0 = true;
    var_0 = all(!func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-18156i, 20107i, 2147483647i), select(vec3<i32>(-1i, arg_2.a.x, -2147483647i), arg_2.a.zyx, vec3<bool>(true, true, false)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a.x, 11482i, 2147483647i), vec3<i32>(arg_2.a.x, -1i, -1i)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(468f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(-1025f - 747f)), _wgslsmith_f_op_f32(1662f + arg_2.b)))));
    var var_2 = !all(!vec3<bool>(true, true, any(vec3<bool>(true, true, true))));
    let var_3 = (vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 0i, -9480i), firstLeadingBit(arg_2.a)), u_input.d) ^ (~(~vec2<i32>(-8960i, u_input.d)) | _wgslsmith_clamp_vec2_i32(arg_2.a.wx, -arg_2.a.zy, reverseBits(vec2<i32>(2147483647i, u_input.d))))) & vec2<i32>(arg_2.a.x, u_input.d);
    return _wgslsmith_sub_u32(12575u, max(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, ~0u), u_input.c.x), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(min(min(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.d))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.d, 26014i, -1i))), vec4<i32>(countOneBits(u_input.d) << (countOneBits(25565u) % 32u), 0i, _wgslsmith_div_i32(i32(-1i) * -34234i, u_input.d), u_input.d)), -2144f);
    var var_1 = select(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))), vec2<bool>(true || all(vec4<bool>(true, true, true, true)), true), !(71105u < ~func_1(vec2<f32>(var_0.b, 274f), u_input.c.wzx, Struct_2(var_0.a, 230f), vec4<f32>(-309f, -435f, 751f, -616f))));
    let var_2 = Struct_4(Struct_1(591f), Struct_2(vec4<i32>(11577i, _wgslsmith_dot_vec2_i32(abs(var_0.a.zw), var_0.a.zz), u_input.d, abs(u_input.d)), _wgslsmith_f_op_f32(-1299f + 1670f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1215f + var_0.b))) - var_0.b))) * _wgslsmith_f_op_f32(f32(-1f) * -264f));
    var_3 = -1394f;
    let var_4 = vec3<bool>(true, var_1.x, !(!func_3(func_3(vec2<bool>(var_1.x, var_1.x))).x));
    let x = u_input.a;
    s_output = StorageBuffer(-277f, select(_wgslsmith_clamp_u32(32196u & ~u_input.c.x, (4294967295u << (u_input.a % 32u)) | (20799u & u_input.c.x), 34751u), u_input.b, true || var_1.x));
}

