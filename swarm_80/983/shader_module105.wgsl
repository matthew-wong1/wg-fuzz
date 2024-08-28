struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = -(~min(u_input.a, max(vec3<i32>(arg_0.c.b, u_input.b, 9261i), ~u_input.a)));
    var_0 = -abs(-_wgslsmith_sub_vec3_i32(-vec3<i32>(-10532i, arg_0.c.b, 8618i), arg_0.a));
    let var_1 = arg_0;
    let var_2 = abs(arg_0.e.b.zy);
    var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(58566i, 15956i, u_input.a.x, var_0.x), vec4<i32>(arg_0.c.c.x, 11633i, var_0.x, 1677i))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.e.a, -1806i, -28922i) << (vec4<u32>(arg_0.e.b.x, var_1.e.b.x, 1u, var_1.e.b.x) % vec4<u32>(32u)), vec4<i32>(var_0.x, var_0.x, -2147483647i, u_input.a.x) << (vec4<u32>(u_input.c.x, 1u, 115122u, var_2.x) % vec4<u32>(32u))), 8356i), arg_0.a);
    return !var_1.c.a.x;
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    var var_0 = ((firstLeadingBit(-vec4<i32>(2147483647i, 28547i, arg_2.b, u_input.b)) ^ vec4<i32>(-2147483647i >> (arg_1.x % 32u), ~u_input.b, u_input.b & arg_2.c.x, arg_2.b)) & max(vec4<i32>(firstTrailingBit(1i), 1i, ~arg_2.c.x, reverseBits(arg_2.c.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.x, 6442i), vec2<i32>(785i, u_input.a.x)), ~(-35400i), -35912i, 2147483647i))) ^ vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 10156i, u_input.b, -1i), vec4<i32>(6243i, arg_2.b, -3699i, u_input.a.x))), ~countOneBits(u_input.a.x), 11473i, 50911i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), select(u_input.c.wz, vec2<u32>(arg_1.x, 0u), arg_2.a.xz)) % 32u));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x | -9031i, abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(70802i, u_input.a.x, -3792i), vec3<i32>(1i, 2147483647i, var_0.x))), firstLeadingBit(arg_2.c.x), -71123i | (min(var_0.x, var_0.x) & max(0i, var_0.x))), -((select(vec4<i32>(arg_2.b, arg_2.b, u_input.a.x, var_0.x), vec4<i32>(var_0.x, 54323i, -1i, arg_2.c.x), vec4<bool>(false, arg_2.a.x, arg_2.a.x, false)) >> ((vec4<u32>(u_input.c.x, 0u, u_input.d.x, 2386u) ^ vec4<u32>(15978u, 30784u, arg_1.x, 4294967295u)) % vec4<u32>(32u))) >> (max(arg_1, vec4<u32>(u_input.d.x, arg_0, arg_0, 31699u)) % vec4<u32>(32u))));
    var var_1 = true;
    var var_2 = Struct_4(var_0.ywx, select(true, true, arg_2.a.x) && arg_2.a.x, arg_2, firstTrailingBit(~arg_0), Struct_1(-1i, ~(~(~arg_1.zxw)), vec3<u32>(_wgslsmith_sub_u32(select(13147u, u_input.c.x, true), abs(0u)), 7209u, ~0u)));
    var var_3 = u_input.d;
    return 0i;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_4(vec3<i32>(~u_input.b, -(~abs(u_input.b)), -2147483647i & arg_0.x), true, Struct_3(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(Struct_4(arg_0, false, Struct_3(vec3<bool>(true, false, false), arg_0.x, arg_0), u_input.d.x, Struct_1(-24577i, u_input.c.www, u_input.c.yzy)), false, Struct_2(false, vec3<f32>(-1356f, -601f, 1873f)))), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), arg_0.x, vec3<i32>(_wgslsmith_sub_i32(-2147483647i, func_3(u_input.c.x, vec4<u32>(u_input.d.x, 4294967295u, 6144u, u_input.c.x), Struct_3(vec3<bool>(true, true, true), -2147483647i, u_input.a))), _wgslsmith_add_i32(-25736i, firstLeadingBit(arg_0.x)), arg_0.x)), 28522u, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.a, min(arg_0, u_input.a)), vec3<u32>(_wgslsmith_div_u32(min(4294967295u, u_input.c.x), u_input.c.x), u_input.d.x, u_input.c.x), u_input.c.ywx >> (vec3<u32>(u_input.c.x, u_input.c.x, 1u) % vec3<u32>(32u))));
    let var_1 = select(select(!select(select(vec4<bool>(true, false, var_0.b, true), vec4<bool>(var_0.c.a.x, true, var_0.c.a.x, var_0.c.a.x), vec4<bool>(false, var_0.b, var_0.c.a.x, true)), !vec4<bool>(false, var_0.c.a.x, true, var_0.c.a.x), select(vec4<bool>(var_0.c.a.x, var_0.c.a.x, false, var_0.b), vec4<bool>(true, true, true, var_0.b), true)), vec4<bool>(!any(var_0.c.a), all(vec4<bool>(var_0.c.a.x, var_0.b, false, var_0.c.a.x)) | func_2(Struct_4(u_input.a, var_0.c.a.x, var_0.c, 27587u, Struct_1(var_0.c.c.x, var_0.e.c, vec3<u32>(var_0.d, 28475u, 1u))), var_0.b, Struct_2(var_0.c.a.x, vec3<f32>(-459f, 771f, -964f))), any(select(vec4<bool>(false, false, var_0.b, false), vec4<bool>(true, false, var_0.b, var_0.c.a.x), true)), var_0.b), true && any(select(vec4<bool>(var_0.b, var_0.c.a.x, var_0.c.a.x, var_0.b), vec4<bool>(true, var_0.c.a.x, var_0.b, false), var_0.c.a.x))), select(vec4<bool>(true, _wgslsmith_add_u32(u_input.c.x, var_0.d) >= _wgslsmith_div_u32(var_0.d, u_input.c.x), var_0.c.a.x, var_0.b), vec4<bool>(var_0.c.b <= 0i, true, !any(vec2<bool>(false, false)), any(var_0.c.a)), true), !select(vec4<bool>(true, any(vec4<bool>(var_0.b, false, true, var_0.c.a.x)), var_0.b | var_0.c.a.x, !var_0.b), select(vec4<bool>(var_0.b, false, var_0.b, false), select(vec4<bool>(var_0.c.a.x, var_0.b, true, var_0.b), vec4<bool>(true, var_0.b, var_0.b, false), var_0.b), vec4<bool>(var_0.b, var_0.c.a.x, true, var_0.b)), !any(var_0.c.a.xx)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1432f)) + -1000f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(636f, _wgslsmith_f_op_f32(floor(-743f)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(~u_input.b, ~(-1i), -u_input.a.x)))) * _wgslsmith_div_f32(-1073f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1936f + _wgslsmith_f_op_f32(-871f - 446f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1392f * 271f))))));
    var var_1 = Struct_1(0i, u_input.c.zwz, firstLeadingBit(~vec3<u32>(u_input.d.x, ~u_input.d.x, ~1u)));
    var var_2 = vec2<u32>(~var_1.b.x, firstTrailingBit(15857u));
    let var_3 = var_1.a;
    var_2 = ~vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 33717u, 1u, var_2.x), vec4<u32>(var_1.b.x, u_input.c.x, 19500u, var_1.b.x), u_input.c), ~u_input.c), reverseBits(var_2.x ^ ~25143u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-336f, var_0, var_0)))), vec3<f32>(_wgslsmith_div_f32(-1676f, 685f), var_0, _wgslsmith_div_f32(-104f, var_0)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0)))))));
}

