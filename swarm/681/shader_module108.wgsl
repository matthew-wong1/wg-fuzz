struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = ~vec3<u32>(_wgslsmith_mod_u32(select(12942u, u_input.a.x, false), 1u) << (46798u % 32u), 5326u, u_input.a.x);
    let var_1 = false;
    let var_2 = vec3<i32>(-arg_1.x, _wgslsmith_add_i32(arg_1.x, min(-75150i, -26618i)), 1i);
    let var_3 = _wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.x, -5927i, ~max(var_2.x, arg_1.x), _wgslsmith_clamp_i32(-1i, 9382i, ~var_2.x)), ~(-abs(countOneBits(vec4<i32>(arg_1.x, var_2.x, -21369i, arg_1.x)))));
    let var_4 = -var_3;
    return select(arg_0.a, arg_0.a, any(!select(!vec3<bool>(var_1, false, false), select(vec3<bool>(arg_0.a.x, false, false), vec3<bool>(var_1, arg_0.a.x, arg_0.a.x), var_1), arg_0.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = false;
    var var_1 = _wgslsmith_sub_u32(11743u, _wgslsmith_sub_u32(2058u, firstLeadingBit(firstTrailingBit(4294967295u)))) <= _wgslsmith_div_u32(_wgslsmith_add_u32(~48077u >> (u_input.a.x % 32u), _wgslsmith_add_u32(21812u, 91324u)), abs(4811u));
    let var_2 = arg_0;
    var var_3 = Struct_2(select(vec2<bool>(true, any(vec4<bool>(var_0, arg_2.b.b, false, var_0))), vec2<bool>(!arg_2.b.b, !all(vec3<bool>(arg_0.b.b, true, false))), func_3(Struct_2(func_3(arg_0, vec3<i32>(2446i, 1i, 1i)), Struct_1(arg_0.b.a, false)), -(~vec3<i32>(80865i, 28501i, -2147483647i)))), Struct_1(arg_0.b.a, all(select(vec4<bool>(var_0, var_0, true, var_2.b.b), vec4<bool>(arg_0.b.b, true, true, false), false)) || true));
    let var_4 = select(vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b.a.x + 1001f), arg_1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-248f, 769f)), func_3(var_2, min(vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<i32>(19393i, 2515i, 0i)) >> (max(vec3<u32>(30144u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 49542u)) % vec3<u32>(32u))).x, all(!select(vec3<bool>(arg_2.b.b, true, false), vec3<bool>(false, var_3.b.b, var_3.b.b), true)), true), vec4<bool>(arg_2.a.x, var_3.b.b, any(!(!var_3.a)), arg_0.b.b), true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.a + vec3<f32>(-714f, _wgslsmith_f_op_f32(1102f + -895f), _wgslsmith_div_f32(804f, 376f)))) + var_3.b.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_div_vec3_f32(var_0, var_0);
    var var_2 = Struct_2(vec2<bool>(false, true), arg_0);
    var_2 = Struct_2(select(!(!vec2<bool>(var_2.b.b, false)), var_2.a, true), Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(var_2.a, var_2.b), vec2<f32>(_wgslsmith_f_op_f32(round(-551f)), _wgslsmith_f_op_f32(max(983f, 812f))), Struct_2(func_3(Struct_2(var_2.a, arg_0), vec3<i32>(-2147483647i, 2147483647i, 1i)), Struct_1(vec3<f32>(arg_0.a.x, var_2.b.a.x, -181f), arg_0.b)))), any(vec4<bool>(arg_0.b, true, false, var_2.b.b))));
    var_2 = Struct_2(var_2.a, arg_0);
    return _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, 0u, ~(~_wgslsmith_add_u32(arg_1.x, 0u)), 3810u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, u_input.a.x), arg_1));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = false;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a), true), min(vec4<u32>(9625u, 18037u, 85198u, u_input.a.x), ~vec4<u32>(23285u, 30829u, 57047u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 43486u, 1u, 115551u)), _wgslsmith_mod_vec4_u32(abs(countOneBits(vec4<u32>(arg_1, u_input.a.x, u_input.a.x, 1u))), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, u_input.a.x, 35238u, arg_1), ~vec4<u32>(1u, 62186u, 62291u, arg_1)))), arg_1);
    var var_2 = select(select(vec4<bool>(~4294967295u < arg_1, all(select(arg_0, arg_0, arg_2.b)), all(!vec3<bool>(arg_2.b, true, arg_2.b)), arg_2.b & true), vec4<bool>(true, select(any(vec3<bool>(arg_0.x, true, arg_2.b)), arg_0.x, func_3(Struct_2(arg_0, arg_2), vec3<i32>(arg_3, 1i, arg_3)).x), true | all(vec2<bool>(true, arg_0.x)), true), !any(vec2<bool>(arg_2.b, arg_0.x)) && false), !(!vec4<bool>(arg_0.x || true, arg_2.b, true, all(vec4<bool>(arg_2.b, true, true, arg_0.x)))), arg_0.x);
    let var_3 = arg_2.a;
    var_0 = select(arg_2.b, true, true);
    return Struct_1(vec3<f32>(753f, _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec2<bool>(true, arg_0.x), Struct_1(vec3<f32>(139f, -459f, -545f), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.zy - var_3.xy) - vec2<f32>(-442f, arg_2.a.x)), Struct_2(!var_2.zy, arg_2))).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_div_f32(-1365f, var_3.x))), 949f))), !all(!(!vec2<bool>(true, arg_2.b))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = vec3<bool>(false, false, arg_0.a.x || (-2211f >= _wgslsmith_f_op_vec3_f32(func_4(Struct_2(arg_0.a, arg_0.b), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.a.x, arg_1.x), arg_1.xy), arg_0)).x));
    var var_1 = Struct_2(!(!select(var_0.zx, vec2<bool>(arg_0.a.x, var_0.x), !arg_0.a)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yxz - arg_1.wwy) * arg_1.wyy), arg_0.a.x));
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x + var_1.b.a.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -808f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(f32(-1f) * -1149f)))));
    let var_4 = func_1(arg_0.a, 32482u, arg_0.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, ~1i, abs(-1i)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(21495i, -1i, 1i, 0i), vec4<i32>(1i, -42991i, -6299i, 0i)))), 1i, 1799i)).a.x;
    return func_3(Struct_2(!(!arg_0.a), arg_0.b), select(max(~reverseBits(vec3<i32>(1810i, 0i, 1i)), vec3<i32>(i32(-1i) * -77468i, 2147483647i >> (u_input.a.x % 32u), -25211i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, ~(-1i), 1i), vec3<i32>(1i, 1i, 1i)), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_2(select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_1(vec2<bool>(true, true), 211u, Struct_1(vec3<f32>(-227f, -769f, 1860f), false), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-17637i, -1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-448f, -208f, 106f, -1053f))) + vec4<f32>(-1000f, 2663f, 580f, -1153f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-599f, 429f, -512f), vec3<f32>(475f, -169f, 2023f))))), all(vec4<bool>(true, true, func_1(vec2<bool>(true, false), u_input.a.x, Struct_1(vec3<f32>(-387f, -799f, -134f), true), -1i).b, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, 729f, var_0.b.a.x, 659f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a.x, var_0.b.a.x, 1615f, 1668f), vec4<f32>(299f, var_0.b.a.x, var_0.b.a.x, -1967f), vec4<bool>(var_0.b.b, true, false, false))))))));
    let var_2 = 1u;
    let var_3 = ~select(vec4<i32>(-56582i, _wgslsmith_div_i32(-28820i, 24163i), _wgslsmith_div_i32(-999i, 110593i), abs(-1i)), select(vec4<i32>(41695i, 11606i, 2147483647i, -2147483647i), vec4<i32>(-1i, 2147483647i, 1i, 1i), vec4<bool>(true, false, var_0.b.b, var_0.b.b)) | (vec4<i32>(36733i, -41829i, -53417i, 28034i) << (vec4<u32>(u_input.a.x, var_2, 26633u, 0u) % vec4<u32>(32u))), vec4<bool>(true, var_0.b.b, false, true)) >> (~firstLeadingBit(~(vec4<u32>(var_2, u_input.a.x, 68759u, var_2) | vec4<u32>(var_2, 25533u, 0u, u_input.a.x))) % vec4<u32>(32u));
    var var_4 = false;
    let var_5 = ~vec2<i32>(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_3.x), var_3.zzx)), max(abs(0i), var_3.x), var_3.x), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + -389f), var_0.b.a.x, var_0.b.a.x, 340f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-756f, 1000f, _wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x), _wgslsmith_div_f32(var_1.x, var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, var_0.b.a.x, -188f, 159f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a.x, var_1.x, 1397f, 460f), vec4<f32>(var_1.x, var_1.x, 418f, -292f)))))));
}

