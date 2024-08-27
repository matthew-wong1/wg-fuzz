struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-770f, 716f, 127f, 219f)), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true)))))));
    let var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(1456f, -919f)), 1107f, var_0.x);
    var_2 = _wgslsmith_f_op_vec3_f32(abs(var_0.xyx));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(var_0.wzy));
    return arg_1.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.b.yz;
    var var_1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, u_input.c.x, i32(-1i) * -u_input.c.x, _wgslsmith_sub_i32(-1i, 2147483647i)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.c.x, 44857i, u_input.c.x), vec4<i32>(56489i, 2147483647i, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(0i, u_input.c.x, -22025i, u_input.c.x)), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), ~vec4<i32>(func_3(u_input.b.yzx, vec3<i32>(31904i, -2147483647i, 0i)), abs(u_input.c.x), -18714i, u_input.c.x >> (0u % 32u))));
    var_0 = vec2<u32>(11062u, ~reverseBits(var_0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-596f - _wgslsmith_f_op_f32(-609f + -436f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) * _wgslsmith_f_op_f32(f32(-1f) * -807f))))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -681f);
    return Struct_1(u_input.b.wyw, any(vec3<bool>(!all(vec2<bool>(false, arg_0)), true, all(vec3<bool>(true, true, true)))), select(firstTrailingBit(select(u_input.b.yz, vec2<u32>(0u, 1u), arg_0)) | _wgslsmith_add_vec2_u32(reverseBits(u_input.b.yx), u_input.b.zy), vec2<u32>(u_input.b.x, 13620u), !vec2<bool>(1u >= var_0.x, arg_0)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.xy, _wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(1u, u_input.a), u_input.b.xz)) | u_input.b.zw, reverseBits(u_input.b.xx)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec2<u32> {
    var var_0 = u_input.c;
    var_0 = vec2<i32>(-1i | _wgslsmith_mult_i32(-u_input.c.x, 1i), abs(select(var_0.x & 1i, -37070i, arg_1.b)) | _wgslsmith_dot_vec3_i32(reverseBits(~arg_0), vec3<i32>(var_0.x, i32(-1i) * -1i, -arg_0.x)));
    var var_1 = Struct_3(vec2<i32>(abs(~var_0.x), countOneBits(-12611i << (0u % 32u))) >> (~u_input.b.yy % vec2<u32>(32u)), arg_1, arg_1, abs(1u), ~min(firstLeadingBit(1u), 2102u));
    var var_2 = Struct_3(vec2<i32>(~3307i, i32(-1i) * -18825i), var_1.c, Struct_1(select(~func_2(arg_1.b).a, var_1.c.a, var_1.b.b || (arg_1.d.x != u_input.b.x)), arg_1.b, ~vec2<u32>(var_1.c.c.x, 1u & var_1.b.d.x), var_1.c.d), ~(~_wgslsmith_add_u32(27651u, _wgslsmith_mod_u32(u_input.a, 1u))), 1u);
    let var_3 = 26492u;
    return ~_wgslsmith_clamp_vec2_u32(arg_1.a.yy, ~(~(~u_input.b.xx)), ~(~_wgslsmith_div_vec2_u32(arg_1.a.yy, vec2<u32>(35776u, 45118u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.c.a;
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32((arg_2.b.a >> (vec3<u32>(u_input.a, u_input.b.x, 4294967295u) % vec3<u32>(32u))) >> (arg_2.c.a % vec3<u32>(32u)), max(arg_2.b.a, u_input.b.zww) | u_input.b.xyx), u_input.b.zxx), true, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(func_4(~vec3<i32>(arg_2.a.x, u_input.c.x, u_input.c.x), func_2(true), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), 0u), _wgslsmith_mod_vec2_u32(func_4(vec3<i32>(arg_2.a.x, 30067i, arg_2.a.x), arg_2.b, -1000f, 0u), ~vec2<u32>(4294967295u, 0u))), firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(19521u, 1856u), arg_2.c.d))), vec2<u32>(78768u, ~arg_2.c.a.x));
    var_0 = ~arg_2.b.a | ~vec3<u32>(24523u, countOneBits(u_input.a), 2998u);
    var var_2 = 2147483647i >> (_wgslsmith_div_u32(~_wgslsmith_add_u32(var_1.d.x, select(arg_2.e, var_1.c.x, true)), select(_wgslsmith_dot_vec2_u32(u_input.b.wx, vec2<u32>(arg_2.b.a.x, 69383u)), _wgslsmith_add_u32(var_1.c.x, var_1.a.x), all(vec3<bool>(arg_2.c.b, true, arg_1))) ^ 6950u) % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1857f, 544f, arg_0.x, arg_0.x), vec4<f32>(928f, arg_0.x, -1268f, arg_0.x), arg_2.c.b))))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -859f) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 158f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1618f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(666f * 1000f)), arg_0.x) - vec4<f32>(_wgslsmith_f_op_f32(-1000f - 998f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1166f)), _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -453f))))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<f32>(-604f, 1843f), true, Struct_3(u_input.c, Struct_1(vec3<u32>(u_input.b.x, u_input.a, 16421u), true, u_input.b.wx, vec2<u32>(0u, u_input.a)), Struct_1(u_input.b.zzz, true, u_input.b.zz, u_input.b.wx), 4294967295u, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -115f), _wgslsmith_f_op_f32(step(371f, -2404f)), _wgslsmith_f_op_f32(func_1(vec2<f32>(-2175f, 283f), false, Struct_3(u_input.c, Struct_1(vec3<u32>(1u, u_input.a, 4294967295u), true, vec2<u32>(1u, 31075u), vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(u_input.b.xzz, true, vec2<u32>(u_input.b.x, 38283u), vec2<u32>(75052u, 0u)), u_input.b.x, u_input.b.x))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(-427f)), 225f, _wgslsmith_f_op_f32(211f + 1025f), _wgslsmith_f_op_f32(1000f + 3160f))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-959f * 1530f), -1992f, _wgslsmith_div_f32(601f, 298f), _wgslsmith_f_op_f32(floor(1696f))))))));
    var var_1 = Struct_3(firstTrailingBit(max(abs(u_input.c), firstTrailingBit(u_input.c << (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u))))), Struct_1(vec3<u32>(~_wgslsmith_sub_u32(u_input.b.x, 4187u), countOneBits(u_input.b.x), u_input.b.x), all(vec3<bool>(true, true, true)), _wgslsmith_add_vec2_u32(u_input.b.wz, ~func_2(false).a.yx), u_input.b.zw), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.zyz, vec3<u32>(5864u, 95208u, u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), ~u_input.b.wwz), false, u_input.b.xz, max(vec2<u32>(_wgslsmith_add_u32(0u, 58768u), firstLeadingBit(1u)), ~max(u_input.b.yx, vec2<u32>(15075u, u_input.b.x)))), 13960u, 24338u);
    var_1 = Struct_3(select(_wgslsmith_mult_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(u_input.c & u_input.c, vec2<i32>(u_input.c.x, u_input.c.x))), -vec2<i32>(i32(-1i) * -1i, 0i), var_1.c.b), func_2(true), Struct_1(~vec3<u32>(~var_1.c.a.x, _wgslsmith_clamp_u32(28208u, 11710u, 1u), ~6067u), (var_1.c.b || !var_1.b.b) && var_1.c.b, ~vec2<u32>(_wgslsmith_clamp_u32(var_1.b.a.x, 1u, 4294967295u), 13580u), vec2<u32>(~var_1.e, var_1.c.a.x)), var_1.c.d.x, max(_wgslsmith_add_u32(u_input.b.x, ~1u), func_2(var_1.c.b).a.x));
    var var_2 = Struct_1(u_input.b.wxx, !(!select(true, var_1.b.b, var_1.b.b)), vec2<u32>(_wgslsmith_mod_u32(~var_1.d, ~u_input.b.x), u_input.a), ~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(func_4(vec3<i32>(0i, -1i, u_input.c.x), var_1.c, -1561f, 1u), ~u_input.b.xy), ~vec2<u32>(56982u, var_1.b.d.x)));
    var var_3 = ~u_input.b.yyy;
    let var_4 = Struct_3(var_1.a, func_2(var_2.b), Struct_1(_wgslsmith_div_vec3_u32(var_2.a, countOneBits(~vec3<u32>(78726u, var_1.b.a.x, u_input.b.x))), !(_wgslsmith_clamp_i32(var_1.a.x, 2147483647i, var_1.a.x) < 0i), vec2<u32>(1u, var_2.c.x), var_2.a.zx), countOneBits(u_input.b.x), ~var_1.e);
    var var_5 = var_4;
    var var_6 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(-737f, _wgslsmith_f_op_f32(-242f - var_0.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, -1265f)), 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -708f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_0.x * 397f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-889f, var_5.a.x);
}

