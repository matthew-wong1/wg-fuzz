struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-839f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(447f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-787f)))), any(!vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(2637f, 876f, -800f) * vec3<f32>(-353f, 461f, 1087f)))) - vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -3392f), -1136f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(1294f, -1676f)), _wgslsmith_f_op_f32(ceil(-419f)), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(774f, -2180f, -1457f), vec3<f32>(-2300f, 230f, 106f))) * vec3<f32>(-1538f, 670f, 1051f)), false)))), min(countOneBits(abs(u_input.a.yzz)), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(5596u, 1u, 11319u) ^ u_input.a.xwy), ~(~u_input.a.zxx), u_input.a.xxy)), ~(~_wgslsmith_mod_vec3_u32(max(u_input.a.zzx, vec3<u32>(3802u, 35489u, 78484u)), abs(vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    let var_1 = Struct_1(var_0.c.zy, false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, -1479f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1220f)) - _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-805f)), -1285f))), ~u_input.a.yzx, vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zxx, vec3<u32>(0u, u_input.a.x, 12942u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_0.d.x, u_input.a.x), vec3<u32>(var_0.d.x, 31851u, 23442u))), _wgslsmith_sub_u32(4294967295u, 4294967295u)) >> (u_input.a.xzy % vec3<u32>(32u)));
    let var_2 = vec2<i32>(-60048i, ~firstLeadingBit(firstTrailingBit(u_input.c.x)));
    var var_3 = var_0;
    var var_4 = vec3<i32>(u_input.c.x, -(~(-29753i)) | countOneBits(u_input.e), _wgslsmith_sub_i32(var_2.x, -48146i));
    return !(-var_4.x < _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, 16140i, var_4.x) & vec3<i32>(var_2.x, 16072i, -1i), u_input.c.yxx), _wgslsmith_mult_vec3_i32(-vec3<i32>(-64060i, -40688i, 1i), vec3<i32>(u_input.e, var_4.x, -27734i))));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = u_input.a.zwy;
    var var_1 = ~u_input.a.wx;
    var var_2 = select(select(vec3<bool>(any(vec3<bool>(arg_0, arg_0, true)), arg_0, false), vec3<bool>(select(arg_0, true, true) & true, arg_0, func_3(abs(u_input.c.x))), vec3<bool>(arg_0, select(arg_0, false, arg_0), select(arg_0, true, !arg_0))), vec3<bool>(true, func_3(2147483647i), arg_0 | arg_0), !(!(!vec3<bool>(arg_0, true, false))));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 702f) + 1675f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(830f, _wgslsmith_f_op_f32(f32(-1f) * -729f))) - -284f)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-403f, 105f)), 658f, _wgslsmith_div_f32(-146f, -881f)))), vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(max(reverseBits(u_input.a.wxz), _wgslsmith_clamp_vec3_u32(vec3<u32>(47551u, var_0.x, 0u), u_input.a.xwy, u_input.a.xww)), _wgslsmith_div_vec3_u32(u_input.a.ywx, vec3<u32>(u_input.a.x, 56492u, 4294967295u))), var_0.x), ~(~u_input.a.yxx));
    var_1 = u_input.a.yz;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(max(410f, -551f)), var_3.a.x)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = 1724u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.zx);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1185f, arg_0.x)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1255f - arg_0.x), _wgslsmith_f_op_f32(-303f + 1605f))))), false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3042f, -167f, -195f)))))), vec3<u32>(countOneBits(_wgslsmith_div_u32(0u, var_0) ^ ~var_0), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.yy, ~min(u_input.a.xw, u_input.a.xx))), ~vec3<u32>(82958u, u_input.a.x >> (max(0u, u_input.b) % 32u), ~_wgslsmith_div_u32(var_0, 1u)));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(arg_0));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(116f, arg_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, arg_0.x))), _wgslsmith_f_op_vec2_f32(var_1 - _wgslsmith_f_op_vec2_f32(var_2.a + arg_0.xy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(var_1)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, var_4.x))))), true && (all(!vec3<bool>(var_2.b, false, var_2.b)) && var_2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-677f)), _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(min(508f, _wgslsmith_f_op_f32(select(arg_0.x, var_2.a.x, false)))), _wgslsmith_div_f32(895f, _wgslsmith_f_op_f32(-var_2.c.x)))), u_input.a.xyy, var_2.d);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = reverseBits(vec3<i32>(-abs(5731i), ~_wgslsmith_add_i32(~u_input.e, ~arg_3.x), -arg_3.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-func_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a.x)), 1260f, _wgslsmith_f_op_f32(-arg_1.x), -687f)).a), true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, 1185f)), 1019f, 1000f) + arg_2.c))), u_input.a.zzx, arg_2.e);
    let var_3 = arg_3.x;
    var_1 = u_input.c.zzz;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1360f + -745f), _wgslsmith_f_op_f32(485f * 658f), _wgslsmith_f_op_f32(trunc(-2035f)), _wgslsmith_f_op_f32(f32(-1f) * -238f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, -2358f, 1095f, 430f))))), func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1011f, -1075f, -1468f, -1332f)) - vec4<f32>(964f, -319f, 1000f, 1413f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(318f, -1562f, -737f, 1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(434f, -116f, -184f, 906f), vec4<f32>(1639f, 309f, -1055f, -232f)))))), reverseBits(_wgslsmith_clamp_vec4_i32(countOneBits(u_input.c), _wgslsmith_clamp_vec4_i32(abs(u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(-55082i, u_input.c.x, u_input.d.x, 1i), vec4<i32>(46685i, 0i, 1i, u_input.c.x)), firstLeadingBit(vec4<i32>(u_input.e, u_input.c.x, u_input.d.x, u_input.c.x))), vec4<i32>(-40351i, 1i, 31698i, ~(-39036i)))));
    let var_1 = var_0;
    let var_2 = func_4(all(select(select(select(vec2<bool>(var_1.b, false), vec2<bool>(true, false), var_1.b), vec2<bool>(true, true), var_1.b), vec2<bool>(func_4(true, vec4<f32>(var_0.c.x, var_0.c.x, var_0.a.x, var_1.a.x), Struct_1(vec2<f32>(var_0.c.x, var_1.a.x), var_0.b, vec3<f32>(-142f, var_1.c.x, var_1.a.x), u_input.a.yyy, var_1.d), u_input.c).b, false), true)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(true)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), var_0.a.x, -575f))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.c.x, var_1.a.x, var_1.a.x)))), u_input.c);
    let var_3 = vec4<bool>(!(func_3(_wgslsmith_mult_i32(u_input.e, 16130i)) && all(select(vec4<bool>(true, var_0.b, false, var_0.b), vec4<bool>(var_1.b, false, false, true), true))), any(select(vec2<bool>(!var_1.b, !var_2.b), select(vec2<bool>(true, true), vec2<bool>(var_1.b, true), false), !(var_1.b || var_2.b))), true, true);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x));
    let var_5 = u_input.c.x;
    var var_6 = ~u_input.e;
    var_6 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1669f - 743f) * -840f), ~(-(~var_5)) & select(var_5 >> (reverseBits(var_1.e.x) % 32u), var_5, func_3(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, var_5, -2147483647i, u_input.c.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.x, u_input.a.x, 5639u), ~u_input.a.yyx)), select(select(var_2.d.yy, u_input.a.zw, !var_0.b), ~vec2<u32>(var_0.d.x, 0u), select(var_3.yw, select(vec2<bool>(var_0.b, var_3.x), vec2<bool>(var_1.b, false), var_3.yz), var_0.b))));
}

