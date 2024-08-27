struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = 4294967295u;
    var_0 = 13510u;
    var var_1 = vec3<bool>(true, true, !(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)))));
    var var_2 = !select(!var_1.yx, var_1.zz, var_1.x);
    var_0 = u_input.a;
    return -402f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-831f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1416f + _wgslsmith_f_op_f32(func_3(23064i, -1i, vec3<f32>(-1252f, 740f, 107f)))) + 491f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2122f, -1403f))), 582f, true)));
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(min(reverseBits(vec3<u32>(u_input.a, 4294967295u, 3594u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 20742u)), ~vec3<u32>(u_input.a, 31389u, u_input.a), true)), ~abs(firstTrailingBit(vec3<u32>(137651u, u_input.a, u_input.a))), ~vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 2426u, _wgslsmith_div_u32(4715u, u_input.a))), _wgslsmith_add_vec3_u32(vec3<u32>(32483u, u_input.a, firstTrailingBit(max(1u, 1u))), ~(~min(vec3<u32>(u_input.a, 48209u, 11063u), vec3<u32>(12450u, 4294967295u, u_input.a)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f + 115f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(2016f, 1040f)), _wgslsmith_f_op_f32(f32(-1f) * -539f))))) * _wgslsmith_f_op_f32(max(623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1106f * 1200f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f + 421f))))));
    var var_2 = vec2<bool>(true, !any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, 2144f, -1649f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(288f, 2354f, -564f)))) * vec3<f32>(_wgslsmith_f_op_f32(select(523f, -1644f, var_2.x)), _wgslsmith_f_op_f32(ceil(-525f)), _wgslsmith_f_op_f32(-1000f * 1280f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(445f, 375f, -368f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-748f, 1145f, 1333f)))));
    return min(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a & 45702u), min(var_1.yz, var_1.yx)));
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    var var_1 = _wgslsmith_add_u32(~(~_wgslsmith_mod_u32(~1u, 1u)), 31169u);
    let var_2 = vec3<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, ~(~u_input.a)), _wgslsmith_div_u32(1u, 37520u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u, u_input.a), ~_wgslsmith_add_u32(~1u, ~u_input.a)));
    var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(func_2(), 1u), 52505u);
    var_1 = ~(~1u << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(22625u, u_input.a), reverseBits(u_input.a), ~firstLeadingBit(30956u)) % 32u));
    return Struct_1(select(select(select(vec2<bool>(var_0, true), !vec2<bool>(var_0, false), true), vec2<bool>(true, any(vec2<bool>(true, var_0))), all(vec2<bool>(true, var_0))), select(select(!vec2<bool>(true, var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), var_0), vec2<bool>(true, var_0)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), vec2<bool>(true, true)), var_0), vec2<bool>(true, true)), _wgslsmith_sub_i32(-2147483647i, select(_wgslsmith_mod_i32(abs(0i), _wgslsmith_clamp_i32(-79204i, 0i, -57149i)), 0i, any(vec4<bool>(var_0, true, var_0, false)) & var_0)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, 1i), 1i << (u_input.a % 32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 28883i), vec2<i32>(2147483647i, -42517i))), select(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, var_2.x, var_2.x)), min(vec4<u32>(var_2.x, u_input.a, var_2.x, 74592u) & vec4<u32>(var_2.x, var_2.x, var_2.x, 69376u), vec4<u32>(u_input.a, 0u, 1u, 8765u) & vec4<u32>(u_input.a, 4462u, 0u, 31867u))), select(vec4<u32>(44827u, var_2.x, u_input.a, 1u) | ~vec4<u32>(u_input.a, 1u, 0u, var_2.x), max(vec4<u32>(16682u, var_2.x, var_2.x, 15536u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 74433u, var_2.x), vec4<u32>(61280u, 18892u, 0u, var_2.x))), !(!vec4<bool>(var_0, true, var_0, true))), select(vec4<bool>(true, !var_0, select(false, true, var_0), true), select(!vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(true, true, false, var_0), select(vec4<bool>(true, false, true, true), vec4<bool>(var_0, var_0, false, false), var_0)), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(func_1().a, 1i, vec2<i32>(-73732i, max(arg_3.c.x, arg_0.d.x & arg_3.b) | -select(arg_3.b, 1i, true)), ~vec4<u32>(max(~22313u, u_input.a >> (4294967295u % 32u)), arg_3.d.x, max(firstLeadingBit(23864u), 1u), 1u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1129f);
    var var_2 = arg_0;
    var_2 = Struct_2(arg_0.a, arg_0.b, arg_0.c, arg_0.b);
    var_2 = arg_0;
    return Struct_3(var_0);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, -506f, 782f, -337f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-472f, -140f, 215f, 1168f)))))), arg_3, func_1().a.x, arg_2.zyw);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1067f), 931f, 774f, _wgslsmith_f_op_f32(f32(-1f) * -1872f))), ~_wgslsmith_mod_vec3_i32(var_0.b, firstLeadingBit(vec3<i32>(-48697i, var_0.b.x, -1i)) ^ firstTrailingBit(vec3<i32>(var_0.b.x, var_0.d.x, 1i))), !(!(any(vec4<bool>(var_0.c, arg_0.a.a.x, true, true)) || var_0.c)), vec3<i32>(2147483647i, -72231i, -countOneBits(~arg_3.x)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, -601f, var_0.a.x, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1135f, 189f, var_0.a.x, 617f), _wgslsmith_f_op_vec4_f32(round(var_0.a))))), var_0.a, 149f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))))), max(select(vec3<i32>(arg_1.b | 26850i, arg_1.b, abs(-45434i)), var_0.d, select(vec3<bool>(true, arg_0.a.a.x, true), vec3<bool>(arg_1.a.x, var_0.c, false), true)), ~firstLeadingBit(select(arg_3, vec3<i32>(-2147483647i, -2147483647i, 2147483647i), false))), func_4(Struct_2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + 1000f), var_0.a.x, var_0.a.x), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(arg_3, var_0.b), ~arg_0.a.b), arg_0.a.a.x, min(vec3<i32>(arg_3.x, 2147483647i, arg_2.x), arg_3 & vec3<i32>(var_0.d.x, -2147483647i, -61379i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, all(vec3<bool>(false, arg_1.a.x, var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) - _wgslsmith_f_op_f32(985f - var_0.a.x))), func_4(Struct_2(vec4<f32>(var_0.a.x, -446f, 1814f, -743f), vec3<i32>(1i, arg_0.a.b, 0i), arg_1.a.x | true, var_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, vec4<bool>(arg_1.a.x, true, true, true))) * _wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1985f))), Struct_1(vec2<bool>(var_0.c, false), firstTrailingBit(0i), select(vec2<i32>(-42876i, 22628i), arg_0.a.c, arg_1.a), vec4<u32>(1535u, 12559u, 21002u, 9179u))).a).a.a.x, vec3<i32>(i32(-1i) * -(~(-1i)), ~((var_0.b.x >> (u_input.a % 32u)) >> (_wgslsmith_sub_u32(arg_0.a.d.x, 0u) % 32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(-arg_3.x, arg_3.x), func_1().c.x)));
    var_0 = Struct_2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1043f * var_0.a.x), _wgslsmith_f_op_f32(trunc(-1577f))))), var_0.a.x, -315f), arg_2.wyy, false, _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -4825i, _wgslsmith_dot_vec3_i32(select(arg_2.xzy, vec3<i32>(arg_3.x, arg_0.a.b, 2147483647i), vec3<bool>(true, arg_0.a.a.x, var_0.c)), arg_3 << (vec3<u32>(arg_1.d.x, u_input.a, arg_0.a.d.x) % vec3<u32>(32u))), ~min(-12891i, -1i)), arg_3, var_0.d));
    var var_1 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 161f, var_0.a.x, var_0.a.x) - var_0.a) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -1291f, var_0.a.x, -582f), var_0.a, true))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(752f, var_0.a.x, var_0.a.x, -1007f) * vec4<f32>(1106f, var_0.a.x, -143f, 423f))))), vec3<i32>(1i, arg_2.x, -_wgslsmith_sub_i32(var_0.b.x, 90697i)), any(!select(vec3<bool>(var_0.c, arg_1.a.x, arg_0.a.a.x), vec3<bool>(true, true, arg_1.a.x), true)), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(arg_1.b, -1i, arg_2.x, arg_3.x)), arg_2), 2147483647i, _wgslsmith_mult_i32(-44782i, 7395i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1182f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)), 161f))), 148f, arg_0.a);
    return arg_1.a;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = func_1();
    var var_1 = Struct_1(vec2<bool>(var_0.a.x, true & !(arg_0.a.x & var_0.a.x)), arg_0.c.x << (abs(min(55148u, 38921u)) % 32u), func_1().c, min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.x, abs(arg_0.d.x), arg_1, ~0u), arg_0.d, (var_0.d << (vec4<u32>(30251u, var_0.d.x, 1u, 29099u) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(34977u, 46508u, arg_1, 62887u)) % vec4<u32>(32u))), ~select(vec4<u32>(5359u, 4294967295u, var_0.d.x, arg_2.x), min(vec4<u32>(arg_1, arg_0.d.x, u_input.a, 46345u), var_0.d), select(vec4<bool>(true, arg_0.a.x, true, false), vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<bool>(arg_0.a.x, var_0.a.x, var_0.a.x, true)))));
    var var_2 = -arg_0.b;
    var_1 = func_1();
    let var_3 = Struct_1(var_1.a, var_1.c.x, -(~var_0.c), ~((_wgslsmith_div_vec4_u32(var_0.d, vec4<u32>(79699u, 1u, 0u, arg_2.x)) << (vec4<u32>(1u, u_input.a, var_0.d.x, arg_1) % vec4<u32>(32u))) & ~vec4<u32>(arg_1, arg_1, 30538u, 0u)));
    return func_4(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(240f)), _wgslsmith_f_op_f32(-113f + 1000f), _wgslsmith_f_op_f32(195f * -296f), -1567f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, -1437f, 2836f, -120f))))), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.c.x, 2147483647i, 29139i), vec3<i32>(4842i, -2147483647i, 2147483647i)), func_5(func_4(Struct_2(vec4<f32>(1311f, 1397f, -153f, 906f), vec3<i32>(4954i, var_3.c.x, -2147483647i), false, vec3<i32>(-1i, -1i, var_0.c.x)), vec4<f32>(-214f, -336f, -783f, 419f), -647f, func_1()), func_4(Struct_2(vec4<f32>(-1114f, 224f, 662f, -473f), vec3<i32>(2147483647i, var_1.c.x, var_1.b), arg_0.a.x, vec3<i32>(var_3.c.x, 1i, var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(295f, 1751f, 394f, -467f)), 1f, var_0).a, vec4<i32>(i32(-1i) * -25543i, var_3.b << (arg_2.x % 32u), 1i, firstTrailingBit(-2147483647i)), vec3<i32>(10299i, 30555i, var_1.c.x)).x, vec3<i32>(1i, 35475i, _wgslsmith_clamp_i32(1i, -2147483647i, -var_1.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2324f, 1036f, -1150f, -413f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1245f, -1903f, -329f, -306f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1088f, -405f, 169f, 715f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), Struct_1(!(!var_3.a), var_1.c.x, abs(select(var_3.c, ~vec2<i32>(-28096i, var_0.c.x), true)), var_3.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(func_5(func_4(Struct_2(vec4<f32>(1532f, -928f, 639f, -718f), vec3<i32>(-2147483647i, 1i, 2147483647i), true, vec3<i32>(2147483647i, -2147483647i, 13078i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, 1000f, -548f, 1534f) * vec4<f32>(511f, -611f, -1174f, -1735f)), _wgslsmith_f_op_f32(-184f + 307f), func_1()), func_4(Struct_2(vec4<f32>(1298f, 842f, -539f, 1077f), vec3<i32>(-24641i, -8426i, -1i), false, vec3<i32>(29985i, -1i, 1i)), vec4<f32>(129f, -415f, -779f, 603f), _wgslsmith_f_op_f32(floor(890f)), Struct_1(vec2<bool>(true, true), -2147483647i, vec2<i32>(-34546i, 0i), vec4<u32>(u_input.a, 1u, 0u, 1u))).a, firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, 39078i, 55852i)), vec3<i32>(~2147483647i, -1i, ~(-32767i))), firstTrailingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(-63845i, -2147483647i), select(vec2<i32>(-28813i, 0i), vec2<i32>(0i, 7344i), false))), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-48500i, -2147483647i, -1i, 1i), vec4<i32>(0i, -2147483647i, -9111i, -21624i)), 1i), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 35459u, 4294967295u), vec4<u32>(u_input.a, 32152u, 43045u, 113300u)), min(vec4<u32>(49676u, u_input.a, u_input.a, 0u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))))), 53340u, _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(u_input.a, u_input.a))), vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), func_4(Struct_2(vec4<f32>(1f, 1f, 1f, 1f), vec3<i32>(-2147483647i, 2147483647i, 0i), true, vec3<i32>(1i, 1i, 1i)), vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(614f - 1000f), 1013f, _wgslsmith_f_op_f32(f32(-1f) * -986f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(871f - -282f) * _wgslsmith_div_f32(1000f, 1162f)), Struct_1(func_4(Struct_2(vec4<f32>(-764f, -365f, -2321f, -1502f), vec3<i32>(0i, -61125i, -1i), false, vec3<i32>(-1i, -44627i, -2147483647i)), vec4<f32>(1613f, 291f, 2188f, -2232f), -1000f, Struct_1(vec2<bool>(false, true), -9099i, vec2<i32>(-2147483647i, 0i), vec4<u32>(u_input.a, u_input.a, 15564u, u_input.a))).a.a, 0i, _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(25715i, 37912i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1493u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 29274u, 10540u, 1u)))).a.d.xx));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2434f) + -1717f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(106f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-171f)), 891f)));
    var var_2 = ~_wgslsmith_mult_u32(u_input.a, func_6(func_1(), _wgslsmith_sub_u32(u_input.a >> (u_input.a % 32u), 50765u), var_0.a.d.xz).a.d.x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, _wgslsmith_f_op_f32(-var_1.x), -238f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1007f, 1575f, var_1.x, -690f))), var_1)), reverseBits(vec3<i32>(func_1().c.x, -6760i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b, var_0.a.b, var_0.a.c.x, -27441i), select(vec4<i32>(var_0.a.c.x, -2147483647i, 29225i, -35947i), vec4<i32>(1i, var_0.a.b, 2147483647i, var_0.a.c.x), true)))), false, _wgslsmith_div_vec3_i32(select(~vec3<i32>(var_0.a.b, var_0.a.b, -26892i), vec3<i32>(~(-119449i), -29818i, _wgslsmith_dot_vec2_i32(vec2<i32>(8760i, 0i), vec2<i32>(23393i, var_0.a.c.x))), vec3<bool>(!var_0.a.a.x, var_0.a.a.x, false)), abs(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -84647i, 43914i), vec3<i32>(var_0.a.c.x, -28853i, 0i))))));
    var_0 = Struct_3(func_6(Struct_1(select(!vec2<bool>(false, var_0.a.a.x), var_0.a.a, func_5(Struct_3(var_0.a), var_0.a, vec4<i32>(-29602i, -1i, var_3.b.x, var_3.d.x), vec3<i32>(var_3.d.x, 4112i, var_0.a.c.x))), -1044i, vec2<i32>(~(-9440i), -43688i), ~vec4<u32>(56524u, var_0.a.d.x, u_input.a, var_0.a.d.x)), ~23825u, vec2<u32>(u_input.a, ~(~4294967295u))).a);
    var var_4 = ~var_0.a.d.zw;
    var var_5 = select(~(~countOneBits(vec2<i32>(var_0.a.b, var_3.b.x))), _wgslsmith_mod_vec2_i32(-select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.c.x, var_0.a.c.x), vec2<i32>(-1i, var_0.a.c.x), vec2<i32>(var_3.b.x, -2147483647i)), var_0.a.c >> (var_0.a.d.wx % vec2<u32>(32u)), true), func_1().c), !(!vec2<bool>(func_4(Struct_2(vec4<f32>(var_1.x, var_3.a.x, var_3.a.x, -263f), var_3.d, false, var_3.d), vec4<f32>(var_1.x, 299f, var_1.x, -1127f), var_1.x, Struct_1(vec2<bool>(var_3.c, false), 32010i, vec2<i32>(66547i, -2147483647i), var_0.a.d)).a.a.x, true)));
    let var_6 = !var_0.a.a;
    let var_7 = func_1().d.zz;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(var_4.x, ~(var_4.x ^ 0u))), _wgslsmith_f_op_vec4_f32(max(var_1, var_3.a)));
}

