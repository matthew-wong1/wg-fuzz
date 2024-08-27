struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<vec4<bool>, 23>;

var<private> global3: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global3 = true;
    global1 = array<Struct_2, 3>();
    let var_0 = arg_3.b.zy;
    var var_1 = arg_2.b;
    var var_2 = vec3<bool>(false, !(_wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(-1i, arg_3.b.x)) != _wgslsmith_clamp_i32(u_input.a, var_0.x | -6900i, arg_2.a.b.x)), true);
    return any(select(select(select(vec2<bool>(var_2.x, true), !var_2.xy, arg_1), vec2<bool>(true, any(vec3<bool>(var_1.x, var_1.x, false))), var_2.x), vec2<bool>((4294967295u < u_input.b) & arg_1.x, arg_1.x), var_2.yy));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    global0 = countOneBits(1i);
    let var_0 = Struct_4(_wgslsmith_clamp_i32(-(firstLeadingBit(u_input.a) | -u_input.a), ~0i, abs(abs(42089i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1757f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x - -872f)))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 1359f) + _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1936f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_2.x))))))), arg_1, reverseBits(55496u));
    let var_1 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(var_0.c.a), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b, arg_1.a.x | ~48872u, 20236u, ~u_input.b ^ arg_1.a.x), vec4<u32>(57482u, u_input.b, _wgslsmith_mult_u32(u_input.b, 22205u), ~(u_input.b | u_input.b))), ~(~var_0.c.a));
    global0 = _wgslsmith_add_i32(-_wgslsmith_add_i32(u_input.a, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(arg_1.b.wwz, vec3<i32>(-2147483647i, u_input.a, arg_1.b.x), arg_1.b.yww), _wgslsmith_sub_vec3_i32(arg_1.b.xyy, min(vec3<i32>(1i, 7460i, arg_1.b.x), vec3<i32>(u_input.a, var_0.c.b.x, var_0.a)))));
    var var_2 = Struct_3(Struct_1(~abs(reverseBits(var_1)), arg_1.b), !(!select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), arg_0), vec2<bool>(arg_0, arg_0), true)), ~(~(~(var_0.c.a.zx | var_1.wy))));
    return 498f;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    var var_0 = min(_wgslsmith_clamp_u32(arg_2.x, 0u, ~(~(~arg_2.x))), ~(~_wgslsmith_div_u32(53237u, 1u)));
    global3 = _wgslsmith_f_op_f32(-942f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, Struct_1(vec4<u32>(0u, 1u, 23738u, arg_2.x), vec4<i32>(arg_1, arg_1, -2147483647i, u_input.a)), vec2<f32>(-343f, 2149f))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2506f + _wgslsmith_f_op_f32(round(229f))), _wgslsmith_div_f32(_wgslsmith_div_f32(1573f, _wgslsmith_f_op_f32(func_3(arg_0, Struct_1(vec4<u32>(u_input.b, 59809u, 41385u, 0u), vec4<i32>(-16749i, 13546i, arg_1, arg_1)), vec2<f32>(-301f, 685f)))), 1136f));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-305f, 984f), vec2<f32>(-761f, -1149f))))))), select(vec2<bool>(any(vec3<bool>(arg_0, false, arg_0)), arg_0), select(!vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), true), select(select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, false)), 4294967295u != u_input.b)))), vec2<f32>(-374f, 340f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 422f)))) + var_1) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)));
    var_0 = u_input.b;
    return ~(~(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 23>();
    global3 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(vec4<f32>(-2652f, 1033f, 1714f, 103f), vec2<bool>(true, true), Struct_3(Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, 85823i)), vec2<bool>(true, false), vec2<u32>(u_input.b, 39640u)), Struct_1(vec4<u32>(1u, u_input.b, 34650u, 34170u), vec4<i32>(u_input.a, 0i, 12595i, u_input.a)))));
    let var_0 = ~vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(i32(-1i) * -19382i, ~(-28439i))), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.a), _wgslsmith_sub_i32(1i, -21878i), ~u_input.a), _wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, u_input.a, u_input.a), abs(vec3<i32>(-1i, -19851i, u_input.a)), -vec3<i32>(u_input.a, -38238i, -51622i))));
    var var_1 = vec4<i32>(~(-29229i), 1615i, select(select(countOneBits(abs(u_input.a)), _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, var_0.x), firstTrailingBit(var_0.x)), true), func_2(true, -u_input.a, vec3<u32>(4294967295u, ~4294967295u, u_input.b >> (u_input.b % 32u))), all(global2[_wgslsmith_index_u32(u_input.b, 23u)])), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(f32(-1f) * -828f))))));
    global2 = array<vec4<bool>, 23>();
    let var_3 = global1[_wgslsmith_index_u32(0u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

