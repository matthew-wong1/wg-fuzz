struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = u_input.d.x != _wgslsmith_add_i32(u_input.c, _wgslsmith_mult_i32(arg_1, _wgslsmith_sub_i32(u_input.d.x, ~arg_1)));
    var var_1 = Struct_5(Struct_4(abs(~_wgslsmith_add_i32(-31256i, 29870i)), vec3<i32>(0i, arg_1, 1i), ~abs(min(u_input.d.x, -20488i))), ~(select(countOneBits(u_input.e.zy), _wgslsmith_clamp_vec2_u32(u_input.a.zw, vec2<u32>(arg_2, arg_2), u_input.a.zz), !vec2<bool>(false, var_0)) ^ ~(~vec2<u32>(u_input.a.x, 5929u))));
    let var_2 = var_1.a.b;
    var_1 = Struct_5(Struct_4(_wgslsmith_dot_vec4_i32(~u_input.d, firstTrailingBit(vec4<i32>(var_2.x, var_1.a.b.x, arg_1, arg_1) | vec4<i32>(var_2.x, 1i, var_1.a.a, -2147483647i))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -4123i, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(-7001i, var_2.x, var_2.x), var_1.a.b, vec3<i32>(0i, arg_1, -1i)), var_1.a.b), firstLeadingBit(-u_input.d.wxx)), 12144i), vec2<u32>(0u, 19608u));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1029f, -378f, -607f, -1135f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(242f, -982f, 119f, -1753f) + vec4<f32>(-1147f, 825f, -349f, -1000f)))), -8930i ^ arg_1, u_input.a.yxz), 1u, ~21446u);
    return var_2.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_4(~_wgslsmith_mult_i32(u_input.b.x, -2141i), vec3<i32>(u_input.b.x, u_input.d.x, max(func_3(u_input.a.x, -14755i, 30572u) << (7655u % 32u), firstTrailingBit(0i) | -2147483647i)), _wgslsmith_add_i32(-u_input.b.x, -1i >> (1u % 32u)));
    let var_1 = Struct_2(~44239u, u_input.a.zy);
    var var_2 = Struct_4(var_0.c, abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.a, 0i, 5388i), u_input.d.xzz)) << (vec3<u32>(~var_1.a, var_1.a, _wgslsmith_div_u32(44886u, ~0u)) % vec3<u32>(32u)), 43601i);
    let var_3 = ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 11094u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, var_1.a), u_input.e.wz), countOneBits(1u)), ~select(vec4<u32>(u_input.e.x, 21274u, var_1.b.x, u_input.a.x), vec4<u32>(u_input.e.x, u_input.e.x, var_1.b.x, u_input.e.x), arg_1)));
    let var_4 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(-var_4.x)))) + _wgslsmith_f_op_f32(select(-452f, arg_0.x, all(!vec3<bool>(false, arg_1.x, arg_1.x)))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_mod_i32((u_input.b.x >> (5947u % 32u)) ^ ~1i, u_input.d.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1270f, 100f, -1050f, 211f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1534f, _wgslsmith_f_op_f32(func_2(vec3<f32>(-1292f, 216f, 1223f), vec4<bool>(true, true, false, true))), 257f, -358f)))), _wgslsmith_clamp_i32(~u_input.b.x, u_input.c, i32(-1i) * -11562i), firstLeadingBit(~u_input.a.xyy));
    var_0 = u_input.d.x;
    let var_2 = (var_1.c.zx >> (min(var_1.c.zx, abs(select(var_1.c.yy, vec2<u32>(var_1.c.x, var_1.c.x), vec2<bool>(true, true)))) % vec2<u32>(32u))) >> ((u_input.a.yz & ~(~_wgslsmith_div_vec2_u32(u_input.e.xz, var_1.c.yy))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(u_input.a.x, ~u_input.e.x, min(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, u_input.e.x), u_input.e.x), u_input.a.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1032f * -704f) - _wgslsmith_f_op_f32(func_1())))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f))))), _wgslsmith_f_op_f32(f32(-1f) * -528f));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1024f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, 1477f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-183f, 1000f, _wgslsmith_div_f32(501f, 1082f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) - vec4<f32>(1196f, var_1.x, 1592f, var_1.x))), vec4<f32>(-118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2341f) + _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-var_1.x), var_1.x)));
}

