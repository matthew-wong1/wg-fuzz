struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    let var_0 = arg_0;
    var var_1 = arg_0.d;
    var_1 = var_0.d;
    var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.d)))) - var_1.d)));
    return arg_0.d.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(~1u), _wgslsmith_mod_u32(firstTrailingBit(1u), ~(~u_input.c.x)), 4294967295u, (func_3(Struct_2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 686f), vec3<i32>(1i, 34400i, 2147483647i), u_input.b.xz, Struct_1(vec4<u32>(4294967295u, 33673u, 1u, 0u), u_input.b.xx, u_input.d, arg_0.x), Struct_1(vec4<u32>(83996u, u_input.c.x, u_input.c.x, 42242u), u_input.b.yx, 37892i, -2002f)), vec3<i32>(1i, u_input.b.x, 5985i), 0i) >> (~arg_1.x % 32u)) ^ 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, ~0u, 8962u, arg_1.x) | vec4<u32>(arg_1.x, _wgslsmith_mult_u32(u_input.c.x, arg_1.x), u_input.c.x, reverseBits(arg_1.x)), ~(~(~vec4<u32>(arg_1.x, 0u, 21273u, u_input.c.x)))));
    let var_1 = Struct_3(u_input.c);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - 1f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 1000f))))) * _wgslsmith_f_op_f32(-365f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-794f, -1214f) * arg_0.x), 1258f)));
    var var_3 = !vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), true)), select(all(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), any(vec2<bool>(true, false))), true, false);
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(reverseBits(var_0.x), 8516u), ~firstLeadingBit(var_0.x), 90292u, abs(u_input.c.x)), vec2<i32>(abs(u_input.d), firstTrailingBit(u_input.d)), max(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.d, u_input.b.x), vec4<i32>(u_input.b.x, u_input.d, 52905i, u_input.a)), u_input.d, ~u_input.d), _wgslsmith_mult_i32(-1i, 0i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.b.x, -1i), -countOneBits(u_input.d))), arg_0.x);
    return Struct_1(_wgslsmith_mod_vec4_u32(var_4.a, ~(~(~var_0))), -(min(_wgslsmith_add_vec2_i32(vec2<i32>(var_4.c, 8847i), vec2<i32>(var_4.b.x, -1i)), var_4.b << (var_1.a.zy % vec2<u32>(32u))) >> (~vec2<u32>(38947u, 65824u) % vec2<u32>(32u))), reverseBits(var_4.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f - _wgslsmith_f_op_f32(round(-116f))) - _wgslsmith_div_f32(-1108f, _wgslsmith_f_op_f32(step(-474f, 120f)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(func_2(vec2<f32>(arg_2.a.x, 1094f), _wgslsmith_clamp_vec3_u32(arg_2.e.a.zzw, u_input.c, arg_3.a.xzx)).c, 2147483647i, arg_1), arg_2.b ^ ~vec3<i32>(arg_3.c, arg_1, arg_3.b.x)), arg_2.b, select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false), false), true));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(max(arg_2.a.yz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.d.d, arg_3.d)))))))), arg_3.a.wxw);
    var var_2 = arg_2.a.zww;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.xzw), _wgslsmith_f_op_vec3_f32(-arg_2.a.zyw)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2.a.zxy, _wgslsmith_f_op_vec3_f32(-arg_2.a.wyw))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.d, var_2.x, -985f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_2.a.zww, vec3<f32>(var_2.x, 604f, 969f)))))));
    var var_4 = select(!vec3<bool>(true, select(false, false, true) != false, select(false, true, true)), vec3<bool>(true, var_3.x == -220f, !all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), false))));
    return _wgslsmith_sub_vec4_i32(-min(reverseBits(abs(vec4<i32>(var_1.c, -1i, arg_2.c.x, arg_3.b.x))), ~(~vec4<i32>(arg_3.b.x, -1i, arg_3.c, -1i))), ~vec4<i32>(0i, arg_2.b.x, 2117i, -24991i));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    var var_0 = vec4<i32>(arg_1.x, ~(-_wgslsmith_dot_vec4_i32(reverseBits(arg_1), arg_1)), u_input.e.x, ~arg_0.b.x);
    var_0 = func_4(arg_0.e.a.xw, var_0.x, arg_0, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.d, arg_0.d.d) * arg_0.a.yy)), firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, arg_0.d.a.x) >> (arg_0.e.a.yyw % vec3<u32>(32u))))) | ~(-vec4<i32>(19612i, _wgslsmith_add_i32(var_0.x, arg_1.x), ~var_0.x, func_2(vec2<f32>(-1444f, 671f), vec3<u32>(u_input.c.x, arg_0.d.a.x, 9927u)).b.x));
    var var_1 = min(u_input.c.x, abs(~24464u));
    let var_2 = Struct_3(u_input.c);
    var var_3 = var_2.a.x;
    return ~firstLeadingBit(select(var_2.a.x, ~_wgslsmith_clamp_u32(80214u, 11437u, var_2.a.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c & vec3<u32>(~(~u_input.c.x) & reverseBits(_wgslsmith_add_u32(u_input.c.x, 1u)), ~(~func_1(Struct_2(vec4<f32>(-408f, 754f, -1000f, -721f), u_input.b, vec2<i32>(-1i, 22066i), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.b.zy, u_input.e.x, -1000f), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 22961u), u_input.b.zy, u_input.d, -1908f)), vec4<i32>(u_input.e.x, u_input.a, -2147483647i, 2147483647i), -2623i)), ~u_input.c.x);
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1205f, -667f) - vec2<f32>(-303f, -1254f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-696f, 1152f))), vec2<f32>(func_2(vec2<f32>(-2539f, 1000f), u_input.c).d, _wgslsmith_f_op_f32(f32(-1f) * -1095f))))), countOneBits(~vec3<u32>(u_input.c.x, 1u, u_input.c.x)) >> (countOneBits(u_input.c) % vec3<u32>(32u))).a.wzz;
    let var_2 = Struct_3(u_input.c);
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>((var_0.x | func_1(Struct_2(vec4<f32>(761f, 1000f, -222f, -433f), vec3<i32>(u_input.e.x, u_input.d, -3347i), u_input.b.xy, Struct_1(vec4<u32>(4294967295u, 7891u, 4221u, 1225u), u_input.e.xy, u_input.e.x, -357f), Struct_1(vec4<u32>(5704u, u_input.c.x, 2309u, var_2.a.x), vec2<i32>(-6239i, u_input.d), 12296i, -1000f)), vec4<i32>(u_input.d, u_input.a, u_input.b.x, u_input.a), u_input.a)) << (var_1.x % 32u), ~(~var_2.a.x), abs(~_wgslsmith_div_u32(var_1.x, 0u))), vec3<u32>(_wgslsmith_add_u32(var_2.a.x, max(49625u, firstLeadingBit(4243u))), 57290u, 5311u));
    var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.a, u_input.c), firstTrailingBit(vec3<u32>(60733u, var_1.x, var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(u_input.e.xy, select(countOneBits(u_input.e.yx), firstLeadingBit(u_input.e.yy), any(vec3<bool>(true, false, false))), vec2<bool>(false, any(vec4<bool>(false, false, false, true))))), 402f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -237f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(321f, 987f, true))), _wgslsmith_f_op_f32(trunc(-495f)))));
}

