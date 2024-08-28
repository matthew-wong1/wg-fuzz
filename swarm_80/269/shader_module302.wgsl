struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) + -134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-629f, _wgslsmith_f_op_f32(select(-1099f, -711f, false))))))));
    let var_1 = true;
    var_0 = -344f;
    let var_2 = Struct_1(all(select(select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, false, false, var_1), false), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, var_1, true, var_1)), false)) || true, any(select(vec2<bool>(true, !var_1), vec2<bool>(true, !var_1), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), var_1), vec2<bool>(var_1, false), select(vec2<bool>(true, var_1), vec2<bool>(true, var_1), var_1)))), max(~(~(-u_input.b.xz)), u_input.b.xy), vec2<u32>(u_input.a & min(40687u, 1u), 35712u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1682f), 624f));
    var var_3 = Struct_1(any(!select(vec3<bool>(var_1, false, true), select(vec3<bool>(false, var_2.a, false), vec3<bool>(var_1, false, true), vec3<bool>(true, false, var_1)), vec3<bool>(var_2.b, var_2.a, var_2.a))), !(!var_2.a), u_input.b.zx | vec2<i32>(_wgslsmith_div_i32(u_input.b.x, -2147483647i) ^ ~1i, 1i << (_wgslsmith_add_u32(var_2.d.x, var_2.d.x) % 32u)), reverseBits(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 9938u), var_2.d))), var_2.e);
    return ~(~_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.a, var_2.d.x)), firstLeadingBit(~var_3.d.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = ~(~func_3()) & (_wgslsmith_sub_u32((34456u >> (u_input.a % 32u)) & ~u_input.a, ~(~arg_2)) | arg_2);
    var var_1 = arg_1.d.x;
    let var_2 = arg_1;
    return Struct_1(!any(!(!vec4<bool>(false, arg_0.x, true, false))), var_2.a, _wgslsmith_div_vec2_i32((vec2<i32>(0i, u_input.b.x) << (vec2<u32>(arg_2, 0u) % vec2<u32>(32u))) | vec2<i32>(10862i, arg_1.c.x), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-6009i, -1i, arg_1.c.x), u_input.b))) >> (firstLeadingBit(~(var_2.d ^ var_2.d)) % vec2<u32>(32u)), ~(~var_2.d >> (reverseBits(arg_1.d) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.e))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~vec4<i32>(-3621i, -_wgslsmith_div_i32(arg_1, arg_2.c.x), ~0i, _wgslsmith_mod_i32(~0i, -2147483647i)));
    var var_1 = !select(vec4<bool>(!arg_2.a, func_2(!vec3<bool>(arg_2.a, arg_0, true), func_2(vec3<bool>(false, arg_2.b, true), arg_2, 23095u), max(34981u, u_input.a)).b, arg_0, -975f == arg_2.e.x), !vec4<bool>(arg_2.e.x >= arg_2.e.x, true, arg_2.a, 656f < arg_2.e.x), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2.a, false, arg_2.b, false), vec4<bool>(false, arg_0, false, arg_2.a))));
    var_1 = vec4<bool>(all(vec3<bool>((13445i == arg_1) | (arg_2.c.x != 0i), select(arg_0, arg_0, true), all(select(vec2<bool>(true, false), var_1.xw, arg_2.b)))), arg_0 & !(_wgslsmith_f_op_f32(-arg_2.e.x) >= _wgslsmith_f_op_f32(arg_2.e.x + 2837f)), select(any(vec3<bool>(true, !arg_2.a, true)), !arg_0, _wgslsmith_dot_vec3_i32(-var_0.wxy, vec3<i32>(arg_1, -1i, arg_2.c.x)) != ~_wgslsmith_div_i32(-31123i, -29318i)), all(select(select(select(var_1.ww, var_1.wy, arg_2.a), !var_1.xx, true), vec2<bool>(arg_0, arg_0), !select(var_1.wy, vec2<bool>(false, arg_0), var_1.zw))));
    var var_2 = arg_2.b;
    var_2 = true;
    return Struct_1(!arg_2.b, !all(select(!var_1.wx, !vec2<bool>(arg_0, arg_0), vec2<bool>(true, true))), -(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(59661i, 2147483647i)), max(vec2<i32>(arg_1, var_0.x), vec2<i32>(arg_1, 7895i))) ^ (~u_input.b.xy >> (select(arg_2.d, arg_2.d, var_1.ww) % vec2<u32>(32u)))), reverseBits(reverseBits(firstLeadingBit(~arg_2.d))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x - 2386f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1016f, arg_2.e.x) + _wgslsmith_div_vec2_f32(arg_2.e, arg_2.e))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_2.yx;
    let var_1 = arg_0.c.x;
    var var_2 = arg_0;
    var_2 = arg_0;
    var var_3 = Struct_1(all(select(!vec2<bool>(true, arg_2.x), vec2<bool>(true, true), true)), ~var_2.d.x >= ~(u_input.a | var_2.d.x), vec2<i32>(~(arg_0.c.x ^ (arg_0.c.x >> (59882u % 32u))), -25487i), func_2(select(!select(vec3<bool>(false, var_2.b, true), arg_2.yxy, vec3<bool>(arg_2.x, var_0.x, var_2.b)), arg_2.wyw, reverseBits(arg_0.d.x) < ~52597u), Struct_1(true, arg_0.b, ~vec2<i32>(38602i, 7285i), arg_0.d, vec2<f32>(-468f, func_4(arg_2.x, u_input.b.x, arg_0).e.x)), abs(func_4(false & arg_2.x, -10072i, Struct_1(false, false, var_2.c, vec2<u32>(0u, u_input.a), vec2<f32>(arg_0.e.x, 783f))).d.x)).d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.x + 553f), arg_0.e.x))));
    return vec3<bool>(func_4(false, var_2.c.x, Struct_1(select(any(arg_2.wzz), var_0.x, true), !var_3.b, vec2<i32>(u_input.b.x, 2147483647i), ~(~var_2.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(1280f, 867f) + _wgslsmith_f_op_vec2_f32(min(arg_0.e, var_2.e))))).a, all(!arg_2), arg_0.b);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(min(max(26837i, -2147483647i), ~(i32(-1i) * -1i)), 2147483647i, true);
    var_0 = -3357i;
    var_0 = -u_input.b.x | arg_2.c.x;
    var_0 = 30990i;
    var_0 = _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, ~vec3<i32>(arg_3.c.x, u_input.b.x, -1238i), vec3<i32>(0i, -60729i, -1i)), (vec3<i32>(73867i, -10632i, -2147483647i) | vec3<i32>(36467i, arg_2.c.x, u_input.b.x)) ^ u_input.b), arg_2.c.x);
    return arg_3;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = func_2(select(select(vec3<bool>(true, all(vec2<bool>(arg_0.a, arg_0.b)), true), !vec3<bool>(arg_0.b, true, arg_0.a), select(vec3<bool>(arg_0.a, false, false), vec3<bool>(true, arg_0.a, false), select(vec3<bool>(arg_0.a, arg_0.b, true), vec3<bool>(arg_0.b, false, arg_0.a), true))), !(!vec3<bool>(true, true, arg_0.a)), true), Struct_1(!(!arg_0.b), all(vec2<bool>(true, true)), -arg_0.c, ~(~vec2<u32>(69518u, 0u)), arg_1), _wgslsmith_mult_u32(18802u, func_4(any(vec2<bool>(arg_0.a, false)), 1i, func_4(false, 2147483647i, arg_0)).d.x) & ~firstTrailingBit(4294967295u));
    let var_2 = -294f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-528f, 360f))))) >= _wgslsmith_f_op_f32(abs(arg_1.x));
    let var_3 = arg_0;
    return var_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = abs(-46742i);
    var var_1 = false;
    var var_2 = arg_3.x;
    var var_3 = vec2<bool>(arg_3.x, any(select(vec3<bool>(true, -501f < arg_0.x, select(false, arg_3.x, arg_3.x)), !vec3<bool>(false, true, arg_3.x), arg_3.x)));
    var_2 = arg_3.x;
    return func_7(func_6(func_5(func_4(true, select(arg_2, 22314i, true), func_2(vec3<bool>(arg_3.x, var_3.x, arg_3.x), Struct_1(var_3.x, true, vec2<i32>(arg_2, arg_2), vec2<u32>(0u, u_input.a), vec2<f32>(arg_1, 477f)), 79947u)), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_1)), arg_0.x, -1052f), vec4<bool>(var_3.x, true, arg_3.x, 108f >= arg_0.x)), min((vec4<u32>(0u, 0u, u_input.a, 51409u) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) >> ((vec4<u32>(22432u, u_input.a, 26871u, 51823u) | vec4<u32>(u_input.a, u_input.a, 4294967295u, 23126u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), select(vec4<u32>(u_input.a, u_input.a, u_input.a, 80455u), vec4<u32>(u_input.a, u_input.a, 0u, 0u), false), _wgslsmith_div_vec4_u32(vec4<u32>(9767u, 0u, 1u, 25934u), vec4<u32>(u_input.a, 90628u, u_input.a, u_input.a)))), Struct_1(true, !(var_3.x || arg_3.x), countOneBits(vec2<i32>(arg_2, u_input.b.x)), ~(vec2<u32>(u_input.a, 0u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), arg_0.yx), func_2(!func_5(Struct_1(true, arg_3.x, u_input.b.xy, vec2<u32>(u_input.a, u_input.a), arg_0.yx), vec4<f32>(-859f, arg_0.x, arg_0.x, 300f), vec4<bool>(true, arg_3.x, false, arg_3.x)), func_4(var_3.x, arg_2, func_4(var_3.x, 0i, Struct_1(true, false, vec2<i32>(arg_2, 74456i), vec2<u32>(0u, u_input.a), vec2<f32>(878f, -1959f)))), u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-467f - _wgslsmith_f_op_f32(select(arg_1, 948f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x))) * arg_0.zz));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.e.x);
    var_0 = 848f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1285f * arg_1.e.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -492f))) + _wgslsmith_f_op_f32(832f * _wgslsmith_f_op_f32(round(-664f))))));
    var var_1 = true;
    let var_2 = _wgslsmith_mult_i32(2147483647i, -func_7(arg_1, _wgslsmith_f_op_vec2_f32(-arg_1.e)).c.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, 367f, -1164f, arg_1.e.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.e.x, -562f, arg_0.e.x, 1115f))), vec4<f32>(arg_0.e.x, -473f, 1916f, arg_0.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(1u, _wgslsmith_sub_u32(~u_input.a, 1u) >> (abs(u_input.a & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24512u, 4294967295u, u_input.a), vec4<u32>(4013u, u_input.a, u_input.a, u_input.a))) % 32u));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_8(func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-259f, 410f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2712f))), u_input.b.x, !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(false, func_3() == 1u, u_input.b.zz, ~(~vec2<u32>(var_0, var_0)), vec2<f32>(func_1(vec3<f32>(-712f, -1001f, 2990f), 1000f, -1i, vec2<bool>(false, true)).e.x, -1165f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(813f, 688f, -311f) + vec3<f32>(-613f, 1759f, -842f)), 1807f, ~5711i, select(vec2<bool>(true, false), vec2<bool>(false, false), true)).e.x, _wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(ceil(573f))), _wgslsmith_f_op_f32(-1214f + 487f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1186f, -1941f) + _wgslsmith_f_op_f32(f32(-1f) * -429f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(110f + -137f), _wgslsmith_f_op_f32(617f + 3115f), _wgslsmith_f_op_f32(580f + -1503f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(898f, 1515f, 928f, -595f))), vec4<f32>(-299f, -1906f, -309f, 276f)))), vec4<bool>(_wgslsmith_sub_u32(4294967295u, u_input.a) < 1u, true, true, true))));
    var var_2 = func_4(false, (_wgslsmith_div_i32(i32(-1i) * -2147483647i, -u_input.b.x) >> (29813u % 32u)) >> ((u_input.a & 4294967295u) % 32u), func_4(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_5(Struct_1(true, true, u_input.b.zx, vec2<u32>(var_0, 0u), var_1.ww), var_1, vec4<bool>(true, false, false, false)).yy, vec2<bool>(true, true))), 1i, Struct_1(!select(true, true, true), true, _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-12745i, -30527i)), firstLeadingBit(abs(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_f32(func_4(false, 1i, Struct_1(true, false, vec2<i32>(2147483647i, 11606i), vec2<u32>(u_input.a, u_input.a), var_1.yw)).e, var_1.xy))));
    var_2 = Struct_1(any(select(!vec3<bool>(true, var_2.b, var_2.a), vec3<bool>(var_2.a, var_2.a, true), func_5(Struct_1(var_2.b, true, u_input.b.yz, var_2.d, vec2<f32>(var_2.e.x, var_2.e.x)), var_1, vec4<bool>(false, var_2.b, false, var_2.a)))) | var_2.b, !all(!select(vec4<bool>(false, var_2.a, true, false), vec4<bool>(true, var_2.b, var_2.b, true), vec4<bool>(false, true, var_2.a, true))), vec2<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.b.x, u_input.b.x)), ~func_2(vec3<bool>(true, false, var_2.b), Struct_1(false, var_2.a, vec2<i32>(u_input.b.x, -1i), vec2<u32>(38940u, 4294967295u), var_2.e), u_input.a).c), _wgslsmith_clamp_i32(7989i, 1i, 2147483647i)), var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yz + var_1.yz) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_2.e.x))))));
    var var_3 = func_2(select(select(select(vec3<bool>(true, var_2.b, true), vec3<bool>(var_2.b, var_2.a, false), vec3<bool>(false, var_2.b, var_2.b)), select(vec3<bool>(var_2.b, var_2.b, false), vec3<bool>(true, true, var_2.a), vec3<bool>(false, var_2.a, false)), !vec3<bool>(var_2.a, var_2.b, true)), !(!vec3<bool>(false, var_2.b, true)), !func_5(func_4(true, var_2.c.x, Struct_1(var_2.b, false, vec2<i32>(15151i, -1590i), vec2<u32>(u_input.a, 0u), var_1.ww)), _wgslsmith_f_op_vec4_f32(select(var_1, var_1, vec4<bool>(var_2.b, var_2.a, false, false))), select(vec4<bool>(false, true, false, true), vec4<bool>(var_2.b, true, var_2.b, true), vec4<bool>(var_2.b, false, true, var_2.a)))), Struct_1(var_2.a, var_2.a, max(vec2<i32>(~u_input.b.x, func_7(Struct_1(var_2.a, var_2.b, var_2.c, var_2.d, var_2.e), vec2<f32>(129f, 1000f)).c.x), vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, var_2.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, 53149i, -2147483647i), vec4<i32>(var_2.c.x, u_input.b.x, -2147483647i, u_input.b.x)))), vec2<u32>(_wgslsmith_sub_u32(func_1(vec3<f32>(var_1.x, 623f, 1000f), 1210f, 5869i, vec2<bool>(var_2.a, false)).d.x, var_2.d.x), ~(~u_input.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1812f + var_1.x), _wgslsmith_f_op_f32(-var_1.x))))), 4294967295u).e.x;
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1774f - var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(778f, var_1.x, var_1.x) * vec3<f32>(342f, -1382f, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.yzw + var_1.wxy)), vec3<bool>(var_2.b || false, var_0 == 24504u, true)))), -1026f, select(~0i, _wgslsmith_sub_i32(firstLeadingBit(6102i), var_2.c.x), var_2.a) | -_wgslsmith_mod_i32(abs(var_2.c.x), firstTrailingBit(1i)), select(!(!func_5(Struct_1(var_2.a, false, u_input.b.yz, vec2<u32>(9225u, 15142u), var_1.ww), var_1, vec4<bool>(var_2.b, var_2.a, var_2.a, true)).xy), select(vec2<bool>(select(var_2.b, var_2.b, false), !var_2.b), vec2<bool>(true, !var_2.b), !select(vec2<bool>(true, var_2.a), vec2<bool>(false, var_2.a), vec2<bool>(var_2.b, true))), !(_wgslsmith_f_op_f32(floor(591f)) != _wgslsmith_f_op_f32(ceil(417f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-21601i, var_2.c.x, 0i, -1i), ~vec4<i32>(-44081i, -22046i, 42696i, 1i), vec4<i32>(u_input.b.x, -48i, var_2.c.x, -1i) | vec4<i32>(-51711i, -10807i, -1i, u_input.b.x)) & firstTrailingBit(min(vec4<i32>(-1i, u_input.b.x, u_input.b.x, var_2.c.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_2.c.x) & vec4<i32>(var_2.c.x, 8106i, var_2.c.x, 2147483647i))));
}

