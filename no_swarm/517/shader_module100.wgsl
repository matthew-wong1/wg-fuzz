struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<f32> {
    var var_0 = select(!(!vec4<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, true)), false)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), any(vec3<bool>(true, true, -626f > _wgslsmith_f_op_f32(trunc(-931f)))));
    var_0 = select(vec4<bool>(true, var_0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(33925u, 0u), abs(vec2<u32>(496u, 4294967295u))) < 0u, _wgslsmith_f_op_f32(-859f + _wgslsmith_f_op_f32(floor(-1000f))) <= -1204f), !vec4<bool>(true, true, false & !var_0.x, true), !(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true), !var_0.x)));
    var_0 = !(!vec4<bool>(all(!vec4<bool>(var_0.x, true, true, false)), any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x));
    var_0 = vec4<bool>(var_0.x, !(!select(var_0.x, false, !var_0.x)), false, true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-701f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-575f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1031f)), _wgslsmith_f_op_f32(ceil(-811f))) * _wgslsmith_f_op_f32(trunc(-425f))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 544f), vec2<f32>(-1000f, -948f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, -1893f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, -570f), vec2<f32>(1503f, -1872f))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(481f, var_1)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c, arg_2.b.b))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-555f, arg_2.b.c), vec2<f32>(-133f, -2311f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.b.b, 1058f)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -934f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, -171f), vec2<f32>(1125f, arg_0.c)) - _wgslsmith_div_vec2_f32(vec2<f32>(-846f, var_0.x), vec2<f32>(arg_2.b.c, 608f))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(arg_1.a, false))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(217f, arg_2.b.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(arg_1.c, 867f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_2.b.b))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(634f, arg_0.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1211f, arg_1.c) - vec2<f32>(var_0.x, 1000f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b.b, 978f)))))) * _wgslsmith_f_op_vec2_f32(func_3()))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b) - _wgslsmith_f_op_f32(f32(-1f) * -598f)))));
    let var_2 = select(select(!(!vec3<bool>(true, true, arg_2.b.a)), !(!vec3<bool>(true, true, arg_0.a)), !(!select(vec3<bool>(arg_0.a, arg_1.a, false), vec3<bool>(false, arg_2.b.a, arg_0.a), arg_0.a))), select(vec3<bool>(0u < ~arg_0.d, arg_2.b.a | all(vec3<bool>(true, arg_0.a, arg_1.a)), all(!vec2<bool>(arg_1.a, arg_0.a))), vec3<bool>(true, true, true), !(!select(false, arg_0.a, false))), !(1i >= _wgslsmith_clamp_i32(1i, -47611i, 2147483647i)));
    return arg_2.a.zx;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-642f * arg_3.b.b) + -330f)))), arg_3.b.b, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, 4294967295u), ~(~64426u)), min(_wgslsmith_mod_vec2_u32(arg_3.a.yx, arg_2) << (vec2<u32>(6384u, arg_0.x) % vec2<u32>(32u)), arg_2)));
    let var_1 = Struct_2(vec3<u32>(0u, arg_2.x, min(_wgslsmith_mod_u32(_wgslsmith_div_u32(52034u, 2149u), arg_3.c | 4294967295u), 0u)), Struct_1(false, arg_3.b.c, var_0.b, _wgslsmith_sub_u32(abs(4294967295u), arg_3.c) << (max(arg_3.b.d, var_0.d) % 32u)), ~(~abs(~1u)));
    var var_2 = !vec3<bool>(arg_3.b.a, all(vec4<bool>(any(vec4<bool>(false, var_0.a, false, var_1.b.a)), all(vec3<bool>(arg_1.x, true, true)), all(vec3<bool>(false, false, true)), select(false, var_1.b.a, arg_3.b.a))), true);
    let var_3 = -u_input.a;
    var_0 = arg_3.b;
    return Struct_1((var_3.x >= -7399i) != arg_1.x, -1000f, 1000f, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.c, 46852u), ~(~var_1.c) & 0u));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = func_4(vec3<u32>(min(~(~8775u), ~min(1u, 1u)), ~_wgslsmith_div_u32(abs(13652u), ~1u), 88140u), select(select(vec2<bool>(false, any(vec2<bool>(false, false))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), false), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), false), false), abs(~(~func_2(Struct_1(false, 436f, 125f, 43890u), Struct_1(true, -278f, -275f, 4294967295u), Struct_2(vec3<u32>(8697u, 101493u, 65306u), Struct_1(true, -1856f, -1391f, 21679u), 4294967295u), arg_0))), Struct_2(~(~vec3<u32>(1u, 1u, 19312u)), Struct_1(any(vec3<bool>(false, true, false)) || true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-286f - 441f) - _wgslsmith_div_f32(-156f, 829f)), _wgslsmith_f_op_f32(-1f), 1u), abs(0u)));
    var var_1 = _wgslsmith_dot_vec2_u32((~firstTrailingBit(vec2<u32>(var_0.d, 2600u)) ^ min(func_2(Struct_1(var_0.a, var_0.c, 1000f, 0u), Struct_1(var_0.a, -209f, -518f, 1u), Struct_2(vec3<u32>(1u, 68867u, var_0.d), Struct_1(true, var_0.b, -492f, 0u), 8724u), 2864i), vec2<u32>(4294967295u, var_0.d))) >> (vec2<u32>(_wgslsmith_mult_u32(abs(0u), _wgslsmith_sub_u32(var_0.d, 1u)), ~var_0.d) % vec2<u32>(32u)), vec2<u32>(~(83633u & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.d, var_0.d), vec3<u32>(var_0.d, 0u, 34717u))), var_0.d));
    var_1 = 76532u;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f), 1000f), var_0.c)));
    let var_3 = Struct_2(vec3<u32>(var_0.d, var_0.d, 1u), func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 36636u, 0u) << (countOneBits(vec3<u32>(1u, 38626u, 63949u)) % vec3<u32>(32u)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d, 1u, 66112u), vec3<u32>(29574u, var_0.d, var_0.d), vec3<u32>(var_0.d, var_0.d, var_0.d)))), vec2<bool>(true, var_2 > _wgslsmith_f_op_f32(step(var_2, var_0.b))), firstTrailingBit(vec2<u32>(1u, var_0.d)), Struct_2(vec3<u32>(~80712u, func_4(vec3<u32>(var_0.d, var_0.d, 17367u), vec2<bool>(true, true), vec2<u32>(var_0.d, var_0.d), Struct_2(vec3<u32>(var_0.d, 53266u, 15056u), var_0, var_0.d)).d, var_0.d), var_0, (var_0.d & 9765u) ^ var_0.d)), 1u);
    return _wgslsmith_f_op_f32(ceil(var_3.b.b));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = 18712u;
    var_0 = 0u;
    var_0 = arg_1.d;
    var_0 = ~arg_1.d;
    var_0 = arg_1.d;
    return ~(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.d, countOneBits(arg_1.d)), arg_1.d) >> (arg_1.d % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(func_5(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(5021i)), _wgslsmith_f_op_f32(674f - 122f), _wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(f32(-1f) * -879f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-483f, 908f, 137f, -995f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1883f, 1289f, 495f, -916f))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))))), func_4(select(vec3<u32>(19063u, 42829u, 11506u), ~vec3<u32>(1u, 23303u, 4294967295u), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), countOneBits(vec2<u32>(1u, 1u)), Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 79856u), vec3<u32>(24657u, 31395u, 16201u)), Struct_1(true, -2006f, -558f, 28464u), _wgslsmith_div_u32(1u, 28059u))), -1000f), _wgslsmith_clamp_u32(func_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1413f, 252f, -113f, 789f), vec4<f32>(-209f, -1484f, -808f, 752f), false)), vec4<f32>(667f, 1513f, 450f, -136f))), Struct_1(false, _wgslsmith_f_op_f32(-1364f - -277f), _wgslsmith_f_op_vec2_f32(func_3()).x, func_2(Struct_1(true, -1967f, -762f, 27528u), Struct_1(true, 233f, -629f, 0u), Struct_2(vec3<u32>(80801u, 4294967295u, 4294967295u), Struct_1(false, -944f, 1758f, 24234u), 127676u), u_input.a.x).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f + -324f))), _wgslsmith_div_u32(~_wgslsmith_div_u32(0u, 23144u), func_4(vec3<u32>(30288u, 0u, 0u), vec2<bool>(false, true), vec2<u32>(28230u, 29930u), Struct_2(vec3<u32>(0u, 4294967295u, 82076u), Struct_1(true, 1433f, 216f, 1u), 13413u)).d << (select(10070u, 41881u, true) % 32u)), ~(~(~4294967295u))));
    let var_1 = Struct_2(~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, 10397u, var_0), vec3<u32>(8936u, 72762u, var_0)), 12496u, 1u), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1786f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, 728f, true))))), 994f, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_0), _wgslsmith_div_vec3_u32(vec3<u32>(25660u, var_0, var_0), vec3<u32>(var_0, var_0, 27308u))))), var_0);
    let var_2 = vec4<u32>(121028u, 0u, 1u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d, ~var_0, ~4294967295u, ~var_1.c), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_0, var_1.a.x, var_0)), vec4<u32>(12126u, 1u, var_0, var_0)))));
    let var_3 = vec2<u32>(~_wgslsmith_dot_vec2_u32((vec2<u32>(var_0, 1u) & var_1.a.yz) >> (vec2<u32>(62980u, var_2.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(var_2.xw, var_1.a.xy & var_2.zx)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_1.b.d, var_0), var_2.x, var_2.x), min(~vec3<u32>(1u, var_1.a.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, var_0, var_2.x), var_2.ywx))));
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.c, var_1.b.c), vec2<f32>(279f, var_1.b.b), false))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b, -525f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b, 2085f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1008f)))), var_1.b.a)), vec2<f32>(-1264f, _wgslsmith_f_op_f32(f32(-1f) * -1361f))));
    let var_5 = !select(select(!select(vec3<bool>(false, false, var_1.b.a), vec3<bool>(var_1.b.a, var_1.b.a, var_1.b.a), var_1.b.a), select(select(vec3<bool>(var_1.b.a, var_1.b.a, true), vec3<bool>(var_1.b.a, true, true), vec3<bool>(true, true, var_1.b.a)), !vec3<bool>(var_1.b.a, var_1.b.a, var_1.b.a), !vec3<bool>(var_1.b.a, true, false)), true), select(vec3<bool>(true, true, !var_1.b.a), select(!vec3<bool>(var_1.b.a, true, false), select(vec3<bool>(true, false, true), vec3<bool>(var_1.b.a, var_1.b.a, var_1.b.a), vec3<bool>(var_1.b.a, var_1.b.a, var_1.b.a)), vec3<bool>(true, var_1.b.a, var_1.b.a)), ~var_3.x > _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_1.b.d), vec2<u32>(4294967295u, var_1.a.x))), vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-785i, -23980i, 1i, u_input.a.x), vec4<i32>(1i, u_input.b, u_input.b, u_input.b)) == -u_input.b, !var_1.b.a | var_1.b.a));
    let var_6 = func_4(~_wgslsmith_clamp_vec3_u32(var_1.a, vec3<u32>(~1u, var_2.x, countOneBits(var_1.c)), vec3<u32>(0u ^ var_2.x, ~var_1.a.x, var_0)), var_5.zz, firstLeadingBit(vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(2078u, var_0), func_2(var_1.b, var_1.b, var_1, u_input.a.x).x))), Struct_2(~vec3<u32>(23298u, var_1.c, 1u) & var_1.a, func_4(countOneBits(var_2.ywy) & select(var_2.yzx, vec3<u32>(1u, 0u, var_0), var_5), vec2<bool>(true, true), var_2.wy, Struct_2(var_1.a, Struct_1(var_1.b.a, -1159f, var_1.b.c, var_0), ~1u)), 4294967295u));
    let var_7 = vec4<f32>(_wgslsmith_f_op_f32(exp2(func_4(select(var_2.wzz, vec3<u32>(42663u, 0u, 0u), var_5) | _wgslsmith_clamp_vec3_u32(vec3<u32>(23510u, var_6.d, var_6.d), vec3<u32>(var_3.x, var_1.c, var_1.b.d), vec3<u32>(18734u, 0u, 0u)), vec2<bool>(true, true), var_3, var_1).c)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-103f)), -365f))), -1000f, var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b));
}

