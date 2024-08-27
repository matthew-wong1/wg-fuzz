struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(9958u, _wgslsmith_sub_u32(u_input.b, ~u_input.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(828f, -480f, 272f), vec3<f32>(414f, 1179f, -1305f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(111f, 325f, 133f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1203f, 422f, -291f) - vec3<f32>(-1000f, -967f, 883f)))), ~3921u, vec3<u32>(~(~4294967295u), ~(~58735u), ~u_input.b << (44209u % 32u))));
    var_0 = Struct_2(Struct_1(~(~32397u), var_0.a.b, ~(~_wgslsmith_mult_u32(4294967295u, var_0.a.a)), var_0.a.d));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(~0u, _wgslsmith_mod_u32(u_input.e, u_input.b)) >> (1u % 32u), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1022f, var_0.a.b.x)), -1003f), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, var_0.a.a), var_0.a.d.x), ~_wgslsmith_mult_vec3_u32(~var_0.a.d, abs(vec3<u32>(var_0.a.c, u_input.a.x, var_0.a.d.x)))));
    return select(all(!select(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, false, false), false), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), arg_0.x), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, true, false, false), false))), true, false);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = ~_wgslsmith_add_u32(~56236u, _wgslsmith_mult_u32(~(~u_input.b), arg_2.d.x));
    let var_1 = arg_2.c > 7280u;
    var var_2 = var_1;
    let var_3 = countOneBits(u_input.e);
    let var_4 = abs(u_input.a.wy);
    return vec3<bool>(true, true, !all(vec2<bool>(true, true)));
}

fn func_1() -> vec3<u32> {
    var var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false), vec3<bool>((u_input.c > u_input.d) && false, u_input.d > countOneBits(u_input.c), func_2(vec3<bool>(false, true, true), vec2<i32>(-67078i, u_input.c)) || true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), !func_3(false, vec3<i32>(u_input.d, -2147483647i, 2147483647i), Struct_1(0u, vec3<f32>(-723f, -526f, -427f), u_input.a.x, vec3<u32>(u_input.b, u_input.a.x, u_input.e))), true), !(u_input.e < ~u_input.e)));
    var_0 = vec3<bool>(select(var_0.x, true, all(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), !var_0.x, func_2(!vec3<bool>(any(var_0.zx), var_0.x, false), _wgslsmith_mult_vec2_i32(-select(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.d, 41067i), var_0.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(6334i, u_input.c), vec2<i32>(2147483647i, 9866i)))));
    var_0 = func_3(var_0.x, _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d, u_input.c, u_input.d), vec3<i32>(u_input.d, 36902i, -10786i)), vec3<i32>(36174i, -2147483647i, _wgslsmith_mult_i32(u_input.c, u_input.c))), Struct_1(min(abs(firstTrailingBit(6232u)), select(_wgslsmith_div_u32(u_input.b, 1u), 4294967295u, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -2099f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1149f))), _wgslsmith_f_op_f32(f32(-1f) * -613f)), u_input.a.x, min(select(vec3<u32>(0u, 78687u, u_input.a.x) << (u_input.a.yww % vec3<u32>(32u)), abs(u_input.a.wzx), var_0.x), vec3<u32>(u_input.a.x | 18239u, u_input.a.x, u_input.e))));
    var_0 = vec3<bool>(!(var_0.x | var_0.x), !var_0.x, ~(~(u_input.b ^ 4294967295u)) >= _wgslsmith_mult_u32(min(select(0u, u_input.a.x, var_0.x), ~62870u), ~abs(u_input.e)));
    let var_1 = Struct_4(countOneBits(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.d, -12726i, u_input.d)), vec3<i32>(firstTrailingBit(u_input.c), u_input.c, -u_input.c))), -209f);
    return ~u_input.a.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~(~func_1()), ~vec3<u32>(4565u | u_input.b, ~34896u, 75369u)), vec3<f32>(163f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-354f, -1731f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f) + 294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(round(-801f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1376f)), _wgslsmith_f_op_f32(f32(-1f) * -758f)))), reverseBits(u_input.a.x), ~u_input.a.wyw);
    let var_1 = vec2<bool>(true, false | ((_wgslsmith_f_op_f32(-var_0.b.x) > _wgslsmith_f_op_f32(ceil(346f))) & (_wgslsmith_sub_u32(1u, var_0.d.x) == u_input.e)));
    var var_2 = Struct_4(max(-vec3<i32>(21177i, ~0i, 62711i), -vec3<i32>(~u_input.c, u_input.d, ~(-2147483647i))), _wgslsmith_f_op_f32(-var_0.b.x));
    var_2 = Struct_4(countOneBits(_wgslsmith_add_vec3_i32(select(min(var_2.a, var_2.a), vec3<i32>(1i, var_2.a.x, u_input.d), vec3<bool>(true, var_1.x, false)), -var_2.a)), -241f);
    var_0 = Struct_1(u_input.b >> (u_input.b % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-562f))) - 447f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f + _wgslsmith_f_op_f32(max(-565f, -1026f))) - var_0.b.x), _wgslsmith_f_op_f32(369f + 302f)), _wgslsmith_sub_u32(var_0.a, ~reverseBits(_wgslsmith_mult_u32(u_input.e, u_input.a.x))), u_input.a.zxz << (var_0.d % vec3<u32>(32u)));
    var_0 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_2.b, _wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2.b, -1691f), var_0.b.x, _wgslsmith_f_op_f32(-var_2.b)))), 1u, vec3<u32>(1u, abs(22994u), var_0.a << ((4294967295u | var_0.d.x) % 32u)));
    var var_3 = i32(-1i) * -_wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(6806i, -5380i, var_2.a.x, u_input.d), vec4<i32>(-7436i, var_2.a.x, u_input.d, u_input.d))), -firstTrailingBit(vec4<i32>(2147483647i, var_2.a.x, 2579i, var_2.a.x)));
    var_2 = Struct_4(_wgslsmith_sub_vec3_i32(~vec3<i32>(-20114i, firstLeadingBit(u_input.c), max(u_input.d, -2147483647i)), select(var_2.a, -var_2.a, !any(vec3<bool>(var_1.x, true, var_1.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + -967f), _wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x)))), var_0.b.x)));
    var var_4 = (_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.wxx, vec3<u32>(4292u, 67650u, 0u)), vec3<u32>(~var_0.d.x, 1u, 4294967295u)) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(50595u, u_input.b, 4294967295u), u_input.a.yzy, vec3<u32>(func_1().x, var_0.a, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.e, 27589u, 0u, u_input.a.x))))) << ((_wgslsmith_clamp_vec3_u32(~(~var_0.d), ~countOneBits(vec3<u32>(var_0.c, u_input.b, 4294967295u)), vec3<u32>(~5350u, var_0.c, _wgslsmith_mult_u32(1u, u_input.a.x))) << (~countOneBits(select(vec3<u32>(var_0.c, var_0.a, u_input.e), var_0.d, vec3<bool>(var_1.x, false, false))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, var_2.b, -2586f, var_0.b.x))), vec4<f32>(var_2.b, -330f, var_0.b.x, var_0.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, var_0.b.x, var_0.b.x, -1371f), vec4<f32>(var_0.b.x, -360f, var_2.b, -1197f)))))), u_input.a, max(select(vec4<i32>(2147483647i, 8549i, -30954i, u_input.c), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-3134i, 1i), var_2.a.xy), max(u_input.d, 1i), -u_input.d, 1i), var_1.x), vec4<i32>(-30446i, -(~0i), -10684i, -15281i)), var_0.b.x);
}

