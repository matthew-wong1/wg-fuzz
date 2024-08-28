struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + 554f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), -228f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -510f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -561f), arg_0.x, arg_0.x, 420f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f * arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f + arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = vec4<bool>(false || all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), all(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, true), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), false, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1486f), _wgslsmith_f_op_f32(var_0.x + -195f), arg_0.x), vec3<f32>(var_0.x, _wgslsmith_div_f32(-3396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(199f)) * arg_0.x)), arg_0.x), any(var_1)));
    let var_3 = Struct_1(var_1.xx, -(-57882i << (0u % 32u)), var_2);
    let var_4 = var_3;
    return var_1;
}

fn func_2() -> bool {
    let var_0 = vec4<bool>(!(max(-u_input.b.x, max(u_input.b.x, u_input.b.x)) < 1i), any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), true && all(select(vec4<bool>(true, true, true, true), func_3(vec3<f32>(-1000f, 1280f, -1000f)), vec4<bool>(true, true, false, true))), any(vec2<bool>(true, true)));
    let var_1 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(194f, 1965f)), _wgslsmith_div_f32(-516f, 640f), _wgslsmith_div_f32(-151f, -533f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(168f, 450f, 1416f))))).zw, ~u_input.b.x, vec3<f32>(-157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 2150f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-370f)))), 1f));
    let var_2 = Struct_1(var_1.a, ~(-countOneBits(-u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2028f - -936f) * -258f))), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)))));
    let var_3 = var_1;
    let var_4 = Struct_1(var_1.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.b, var_3.b), abs(var_3.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.c, _wgslsmith_f_op_vec3_f32(-var_1.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1128f, var_3.c.x, var_1.c.x) * var_2.c)))));
    return func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_3.c.x, -713f)) + _wgslsmith_f_op_vec3_f32(var_3.c * var_2.c)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-869f, var_2.c.x, 687f), var_3.c, true)))))))).x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + arg_1.c.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f * _wgslsmith_f_op_f32(f32(-1f) * -760f))), 264f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) - 667f)) * arg_2);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1152f + arg_1.c.x))) * 1018f)) * _wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(ceil(arg_0.c.x)))));
    let var_1 = arg_0;
    var var_2 = arg_1;
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(~(~vec4<u32>(arg_3, u_input.c, 1u, 0u))), vec4<u32>(53788u, ~3217u, u_input.c, 22793u), ~countOneBits(~vec4<u32>(22154u, arg_3, u_input.a, arg_3))), select(_wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(arg_3, 1741u, 4294967295u, 17299u)), ~vec4<u32>(28677u, arg_3, 4294967295u, arg_3)), ~(~vec4<u32>(u_input.a, u_input.a, 18934u, arg_3) << (firstTrailingBit(vec4<u32>(58528u, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))), !(!arg_2.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_2.c);
    var_1 = min(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(u_input.c, arg_3, var_1.x, 16381u)), ~vec4<u32>(u_input.c, 1u, 1u, 4294967295u), arg_2.a.x) >> (vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(var_1.x, 36785u)), countOneBits(71681u), var_1.x, countOneBits(u_input.c)) % vec4<u32>(32u)), vec4<u32>(var_1.x, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(u_input.c, abs(var_1.x))), _wgslsmith_sub_u32(countOneBits(4294967295u), u_input.a) | 1u, u_input.a));
    var var_3 = Struct_1(select(var_0.a, vec2<bool>(true, false), vec2<bool>(false, arg_2.a.x)), u_input.b.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(235f, -879f, arg_1.x)) - vec3<f32>(777f, var_0.c.x, 1410f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, -156f, 238f)), var_0.c))))));
    return var_0;
}

fn func_1(arg_0: vec4<f32>) -> vec2<i32> {
    var var_0 = func_5(-300f, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + 310f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1572f, arg_0.x), arg_0.x)))), func_4(Struct_1(vec2<bool>(func_2(), any(vec3<bool>(true, true, false))), u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.x, 875f)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 870f)), Struct_1(vec2<bool>(true, true), -2155i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -1317f, arg_0.x), arg_0.ywy, false)) * _wgslsmith_f_op_vec3_f32(min(arg_0.zzz, vec3<f32>(-1000f, -1736f, 1260f))))), -707f), ~(~_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.a), vec4<u32>(39461u, u_input.c, u_input.a, u_input.a)))));
    let var_1 = func_4(func_4(func_5(725f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), func_5(arg_0.x, var_0.c, func_5(var_0.c.x, var_0.c, Struct_1(var_0.a, u_input.b.x, var_0.c), u_input.c), firstLeadingBit(28736u)), _wgslsmith_mult_u32(u_input.a, u_input.c)), Struct_1(func_3(_wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(795f, var_0.c.x, var_0.c.x))).xw, u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, var_0.c.x, 2011f)) + var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, 1855f)) + -1192f)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - var_0.c.x))), _wgslsmith_f_op_vec3_f32(-arg_0.xxw), Struct_1(!func_4(Struct_1(vec2<bool>(var_0.a.x, true), -2147483647i, arg_0.yzz), Struct_1(var_0.a, 2147483647i, vec3<f32>(var_0.c.x, -1970f, 1004f)), 448f).a, -u_input.b.x, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(583f + -937f), arg_0.x)), _wgslsmith_add_u32(~(0u << (1u % 32u)), ~u_input.a)), -361f).c.x;
    var_0 = Struct_1(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, 1474f) + arg_0.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(278f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.wzz))), Struct_1(vec2<bool>(true, true), _wgslsmith_add_i32(var_0.b, var_0.b), vec3<f32>(var_1, _wgslsmith_f_op_f32(arg_0.x - var_0.c.x), -1013f)), firstLeadingBit(u_input.c)).a, -18889i, arg_0.zzy);
    let var_2 = !(!var_0.a.x);
    var var_3 = -142f;
    return -_wgslsmith_add_vec2_i32(u_input.b.zy, vec2<i32>(-_wgslsmith_div_i32(0i, u_input.b.x), var_0.b));
}

fn func_6(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = ~reverseBits(vec2<i32>(-1i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x) | min(5835i, arg_0.x)));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.x, arg_0.x) | 565i, -41893i) | reverseBits(-2147483647i);
    let var_2 = Struct_1(select(vec2<bool>(true || any(vec4<bool>(false, false, true, true)), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), -abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.x, 21472i), vec3<i32>(var_0.x, u_input.b.x, var_0.x)), u_input.b.x & u_input.b.x)), _wgslsmith_f_op_vec3_f32(-func_4(func_5(1000f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(802f, 1860f, 484f)), func_5(-107f, vec3<f32>(427f, -861f, 1099f), Struct_1(vec2<bool>(false, true), 21412i, vec3<f32>(-956f, -108f, 1174f)), u_input.a), ~1u), func_4(func_5(511f, vec3<f32>(359f, -178f, 502f), Struct_1(vec2<bool>(false, true), -1i, vec3<f32>(-214f, -119f, 1000f)), 1u), func_4(Struct_1(vec2<bool>(false, false), -1i, vec3<f32>(-1000f, -1000f, -562f)), Struct_1(vec2<bool>(true, false), arg_0.x, vec3<f32>(-1313f, -487f, -744f)), 1636f), -198f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-506f)), _wgslsmith_f_op_f32(sign(-1910f)), true))).c));
    var_0 = vec2<i32>(~4794i, -2147483647i);
    let var_3 = true;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.a, u_input.a), 0u) & u_input.a);
    let var_1 = func_6(select(func_1(vec4<f32>(-383f, _wgslsmith_f_op_f32(sign(-1462f)), _wgslsmith_f_op_f32(f32(-1f) * -1846f), -743f)), u_input.b.yz, 1i == (2147483647i >> (u_input.a % 32u))));
    let var_2 = Struct_1(!(!vec2<bool>(u_input.c == var_0, false && var_1.a.x)), max(u_input.b.x, 1i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, -230f, var_1.c.x), vec3<f32>(412f, 346f, -569f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, var_1.c.x, var_1.c.x))), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(floor(-591f)), var_1.c.x)))));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 3509u) << (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u)), select(vec2<u32>(var_0, var_0), vec2<u32>(74499u, u_input.c), var_2.a)) ^ ~(~vec2<u32>(var_0, 17118u)), abs(vec2<u32>(abs(13998u), 1u))), 28393u, 13807u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, countOneBits(62189u), u_input.c, 1u), ~firstTrailingBit(vec4<u32>(24224u, 1u, 1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-22282i);
}

