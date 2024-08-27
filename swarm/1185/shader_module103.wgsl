struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(48819u, ~1u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1507f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1424f)))), !(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(var_1.a, -831f, u_input.b.x < _wgslsmith_add_i32(u_input.b.x, 2147483647i))), select(vec4<bool>(!var_1.b.x, var_1.b.x, any(var_1.b.wxw), !var_1.b.x), var_1.b, vec4<bool>(any(var_1.b.xwy), true, var_1.b.x, select(var_1.b.x, var_1.b.x, true)))));
    let var_3 = var_2.a;
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.a)) * var_1.a), select(var_1.b, select(vec4<bool>(false, var_2.a.b.x, var_3.b.x, false), vec4<bool>(var_3.b.x, false, false, false), var_1.b), all(var_3.b))));
    return var_2.a.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(abs(arg_1.x));
    let var_2 = func_3() & (!arg_2.a.b.x & (true | !any(vec4<bool>(false, var_0.a.b.x, true, var_0.a.b.x))));
    var var_3 = ~abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_3, arg_3), _wgslsmith_sub_i32(u_input.a, -42876i))) << (23198u % 32u);
    let var_4 = var_0.a;
    return var_0.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(select(~firstLeadingBit(vec3<u32>(4294967295u, 47070u, 4294967295u)), ~vec3<u32>(reverseBits(0u), 1u, countOneBits(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-146f * arg_3.a.a) - arg_1.a) == _wgslsmith_f_op_f32(trunc(arg_2.a))), ~vec3<u32>(1u, 1u, 1u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1409f, 1065f)) - _wgslsmith_f_op_f32(max(-1205f, arg_2.a))) - _wgslsmith_div_f32(arg_1.a, -799f)), select(func_2(arg_3.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(560f, -1211f) * vec2<f32>(arg_3.a.a, -2417f)), Struct_2(arg_2), -2147483647i).b, func_2(arg_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1269f, 1785f)), arg_3, firstLeadingBit(u_input.c)).b, 298f <= arg_2.a)));
    var_1 = arg_3;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.a, -399f, 603f, 2187f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, -944f, -978f, -987f) * vec4<f32>(-1227f, arg_1.a, arg_2.a, arg_1.a))))));
    return func_2(vec4<bool>(select(arg_1.b.x, true, any(vec4<bool>(arg_2.b.x, arg_1.b.x, var_2, arg_2.b.x))), false, true, arg_3.a.b.x), _wgslsmith_f_op_vec2_f32(-var_3.xx), arg_3, arg_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = -_wgslsmith_mult_vec4_i32(min(vec4<i32>(-arg_1, ~(-1i), i32(-1i) * -1i, -2147483647i), ~(vec4<i32>(u_input.a, -2147483647i, 1i, 0i) | vec4<i32>(arg_1, 0i, arg_1, 2147483647i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-12833i, arg_1, arg_1, u_input.c)), -vec4<i32>(-2772i, arg_1, -71770i, u_input.c)), countOneBits(~vec4<i32>(-12533i, arg_1, arg_1, -2147483647i))));
    var var_1 = func_4(vec2<i32>(_wgslsmith_clamp_i32(-(i32(-1i) * -25241i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, arg_1, var_0.x) << (vec4<u32>(70026u, 0u, 4294967295u, 3939u) % vec4<u32>(32u)), vec4<i32>(-18274i, u_input.b.x, var_0.x, arg_1) << (vec4<u32>(1u, 10837u, 0u, 0u) % vec4<u32>(32u))), 42829i), -2147483647i), Struct_1(arg_0.a, arg_0.b), Struct_1(arg_0.a, select(arg_0.b, vec4<bool>(func_3(), arg_0.b.x, arg_0.b.x, arg_0.b.x), !(arg_0.b.x || arg_0.b.x))), Struct_2(func_4(u_input.b.xz, arg_0, Struct_1(_wgslsmith_f_op_f32(-arg_0.a), arg_0.b), Struct_2(arg_0))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), select(!func_4(var_0.ww, Struct_1(-1825f, vec4<bool>(true, var_1.b.x, true, var_1.b.x)), Struct_1(-708f, var_1.b), Struct_2(arg_0)).b, func_2(vec4<bool>(true, 808f == var_1.a, !var_1.b.x, var_1.b.x), vec2<f32>(arg_0.a, arg_0.a), Struct_2(arg_0), 0i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(27816u, 0u), vec2<u32>(1u, 0u)) % 32u)).b, true));
    let var_3 = var_2.b.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a, var_2.a, var_1.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -656f, -544f) + vec3<f32>(arg_0.a, var_2.a, var_2.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, var_1.a, arg_0.a) * vec3<f32>(1000f, -1556f, 1893f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1225f, 772f, 1000f), vec3<f32>(-817f, var_2.a, 1073f)))))))));
    return 1u;
}

fn func_1(arg_0: f32) -> vec2<i32> {
    var var_0 = 1u;
    var var_1 = true;
    var_0 = (func_5(func_4(u_input.b.xy, func_2(vec4<bool>(true, false, true, true), vec2<f32>(724f, -1051f), Struct_2(Struct_1(arg_0, vec4<bool>(true, true, false, false))), u_input.c), Struct_1(-1991f, vec4<bool>(false, true, false, false)), Struct_2(Struct_1(arg_0, vec4<bool>(false, false, false, false)))), u_input.c) & ~4294967295u) | ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 15832u), ~vec2<u32>(15413u, 4294967295u), reverseBits(vec2<u32>(14989u, 0u))), ~max(vec2<u32>(20695u, 4294967295u), vec2<u32>(0u, 1u)));
    var var_2 = Struct_2(func_4(vec2<i32>(u_input.b.x, ~firstTrailingBit(17755i)), Struct_1(_wgslsmith_f_op_f32(1113f - 686f), vec4<bool>(true, true, true, true)), Struct_1(537f, vec4<bool>(true, true, true, true)), Struct_2(func_2(func_4(u_input.b.yx, Struct_1(arg_0, vec4<bool>(false, false, false, true)), Struct_1(504f, vec4<bool>(true, false, false, false)), Struct_2(Struct_1(666f, vec4<bool>(true, true, true, false)))).b, vec2<f32>(arg_0, arg_0), Struct_2(Struct_1(-208f, vec4<bool>(false, true, true, true))), u_input.c))));
    var_0 = firstLeadingBit(reverseBits(~reverseBits(~0u)));
    return u_input.b.xy ^ u_input.b.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(40712u, 45180u, 42734u), vec3<u32>(58637u, 23234u, 1u))), 27428u);
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.c), vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(-2147483647i, u_input.b.x, 8496i))), -vec3<i32>(-1i, -19232i & u_input.b.x, u_input.c)), u_input.c, select(_wgslsmith_dot_vec2_i32(u_input.b.xx, func_1(231f)), -(~(-10992i)) << (abs(var_0.x) % 32u), -u_input.a == u_input.b.x), -22643i);
    var_1 = vec4<i32>(max(2147483647i, ~39765i), u_input.c, -1i, _wgslsmith_mod_i32(8628i, ~u_input.a));
    let var_2 = func_4(firstLeadingBit(u_input.b.zx), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1241f, 1347f)))))), !select(func_2(vec4<bool>(true, false, true, false), vec2<f32>(653f, -156f), Struct_2(Struct_1(167f, vec4<bool>(false, true, true, false))), u_input.b.x).b, select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), true)), func_4(vec2<i32>(u_input.a, firstLeadingBit(var_1.x)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(333f + 378f))), vec4<bool>(true, true, true, true)), func_2(vec4<bool>(func_3(), true, var_0.x > 32053u, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(368f, 2161f))), Struct_2(Struct_1(-130f, vec4<bool>(true, true, true, true))), -49810i), Struct_2(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 45279i), u_input.b.zz), Struct_1(-1373f, vec4<bool>(false, true, true, false)), func_2(vec4<bool>(false, false, true, true), vec2<f32>(2272f, -1100f), Struct_2(Struct_1(692f, vec4<bool>(false, false, false, true))), u_input.b.x), Struct_2(Struct_1(-473f, vec4<bool>(true, true, true, false)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(503f, 158f, false)), _wgslsmith_f_op_f32(-744f - 281f))), vec4<bool>(true, true, true, true))));
    var_1 = select(abs(vec4<i32>(-2147483647i, 1237i, var_1.x, var_1.x) | vec4<i32>(var_1.x, var_1.x, -2147483647i, 15775i)), _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(16992i, -33872i, -2147483647i, 2147483647i), vec4<i32>(25010i, -2147483647i, -2147483647i, var_1.x))), vec4<i32>(u_input.b.x, var_1.x, 2147483647i, var_1.x) | vec4<i32>(-20072i, 8533i, var_1.x, var_1.x), ~vec4<i32>(u_input.b.x, 23621i, 9374i, u_input.b.x)), !any(!var_2.b.zz)) << (firstTrailingBit(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(13411u, 10601u, 57661u, var_0.x) | vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), abs(~vec4<u32>(1u, var_0.x, var_0.x, var_0.x)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.x, -var_1.xzw, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(559f, var_2.a, -193f, -1996f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a, var_2.a, 699f, var_2.a))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1797f, var_2.a, var_2.a), vec4<f32>(var_2.a, var_2.a, -676f, 138f))))))), _wgslsmith_dot_vec2_i32(-vec2<i32>(22508i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_1.x, u_input.a), u_input.b)), abs(~var_1.wx)));
}

