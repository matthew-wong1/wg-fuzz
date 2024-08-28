struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: bool = true;

var<private> global2: array<u32, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_u32(1580u, _wgslsmith_mult_u32(min(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 109681u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(872u, 21u)], 21u)], 21u)]));
    global0 = vec2<bool>(!(!arg_0 != true) | true, true);
    global1 = global0.x;
    var var_1 = u_input.c.x;
    global0 = vec2<bool>(arg_1.x, !global0.x);
    return vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18894u, 21u)], 21u)], u_input.c.x), 21u)], var_0), u_input.c.xy), ~1u, 0u << (_wgslsmith_mult_u32(min(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], u_input.c.x & global2[_wgslsmith_index_u32(47399u, 21u)]), ~1u) % 32u), 1u);
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = Struct_1(countOneBits(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -19227i) << ((func_3(arg_0, vec4<bool>(true, global0.x, arg_0, arg_0), vec2<f32>(159f, 1431f)) >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(672f * -285f) - -315f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)), _wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(375f - 640f))))), 4826u);
    var_0 = Struct_1(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1837f * -1861f) - _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-var_0.b.x), any(vec2<bool>(global0.x, false)))))), ~_wgslsmith_sub_u32(15369u, 1u));
    var var_1 = Struct_1(-(select(var_0.a, vec4<i32>(-1i, u_input.b.x, -21447i, var_0.a.x), true) | select(var_0.a, vec4<i32>(0i, var_0.a.x, u_input.b.x, var_0.a.x), global0.x)), _wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_add_u32(75846u, 1u));
    let var_2 = var_1.a;
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -158f, -1000f)) * _wgslsmith_f_op_vec3_f32(-var_1.b)))) - var_0.b), ~(~(~(98184u >> (var_0.c % 32u)))));
    return var_0.a.zyw;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(arg_1.a.x | -11903i), -_wgslsmith_add_i32(0i, arg_0.a.x)), i32(-1i) * -1i, _wgslsmith_div_i32(arg_0.a.x, -_wgslsmith_div_i32(0i, arg_1.a.x))), func_2(global0.x));
    var var_1 = Struct_1(vec4<i32>(0i, _wgslsmith_mult_i32(-33374i, _wgslsmith_div_i32(arg_0.a.x, i32(-1i) * -1i)), countOneBits(arg_0.a.x), -49765i), arg_0.b, 54027u);
    var var_2 = Struct_1(-(~arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(step(arg_0.b.x, -1774f)), _wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(arg_0.b.x, var_1.b.x, arg_0.b.x)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 172f, 1000f) + vec3<f32>(var_1.b.x, arg_0.b.x, var_1.b.x))))), ~u_input.c.x);
    var_1 = Struct_1(_wgslsmith_mult_vec4_i32(max(~min(vec4<i32>(var_2.a.x, 0i, var_2.a.x, var_1.a.x), vec4<i32>(var_0, var_0, -2147483647i, -2147483647i)), select(firstLeadingBit(var_1.a), _wgslsmith_mod_vec4_i32(arg_1.a, var_1.a), !vec4<bool>(global0.x, global0.x, true, global0.x))), vec4<i32>(var_1.a.x, ~0i, arg_1.a.x, min(-2147483647i, u_input.b.x)) << (vec4<u32>(arg_0.c, func_3(global0.x, vec4<bool>(true, true, global0.x, global0.x), vec2<f32>(-254f, -520f)).x, countOneBits(1u), 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1801f), 969f) * _wgslsmith_f_op_vec3_f32(exp2(arg_0.b))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), 444f, arg_0.b.x), !select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, false), true))), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 1u, 1u)), _wgslsmith_add_vec3_u32(u_input.a.yxz, u_input.c.zzx)), var_1.c, _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(arg_1.c), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 21u)], 21u)]), firstTrailingBit(abs(25993u)))));
    var_2 = arg_1;
    return _wgslsmith_f_op_vec2_f32(min(var_2.b.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(547f + 445f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(640f, var_2.b.x))))) + arg_1.b.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(832f)), _wgslsmith_f_op_f32(295f + 770f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1357f, -1000f) * vec2<f32>(-711f, 1624f)) + _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 30412i), vec3<f32>(-441f, 379f, 160f), u_input.a.x), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec3<f32>(841f, -186f, 692f), 12566u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1929f, -1009f))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i), vec4<bool>(true, false, global0.x, true)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), min(~u_input.b.x, -u_input.b.x), ~(-5415i << (global2[_wgslsmith_index_u32(4294967295u, 21u)] % 32u))), (~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i) & vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x)) >> (reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(26018u, 21u)], u_input.c.x, 1u), u_input.c)) % vec4<u32>(32u)), -reverseBits(vec4<i32>(1i, u_input.b.x, 29533i, -2218i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_1, var_1), vec3<f32>(var_1, 803f, -3001f)), vec3<f32>(var_1, var_1, -979f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, var_1, var_1) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -1929f, var_1)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -170f, var_1))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1027f, var_1, -701f), vec3<f32>(var_0.x, var_0.x, var_1)))))), countOneBits(min(~0u, ~abs(8094u))));
    global0 = select(!vec2<bool>(!any(vec2<bool>(global0.x, global0.x)), global0.x), select(!select(!vec2<bool>(true, global0.x), !vec2<bool>(false, global0.x), global2[_wgslsmith_index_u32(u_input.a.x, 21u)] >= var_2.c), !select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), var_2.a.x == var_2.a.x), !select(vec2<bool>(global0.x, false), select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), false))), any(vec2<bool>(true, true)));
    var var_3 = 1u;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_div_f32(var_1, -1000f)), var_2.b.x);
    var_3 = ~4294967295u ^ _wgslsmith_add_u32(12073u, ~max(var_2.c, 1u));
    global0 = select(!vec2<bool>(any(vec3<bool>(true, true, global0.x)), global0.x), !vec2<bool>(all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), global0.x)), !(!global0.x)), !(min(firstTrailingBit(41676i), ~var_2.a.x) > min(var_2.a.x, _wgslsmith_mod_i32(u_input.b.x, 12971i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-153f, _wgslsmith_f_op_f32(floor(var_1)), 1434f, 1002f), vec4<f32>(-139f, var_2.b.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, global0.x)), _wgslsmith_f_op_f32(-883f - 1045f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1264f, var_0.x, 2181f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1614f, var_2.b.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 802f, 413f, -1015f)))), !vec4<bool>(927f == var_2.b.x, true, any(vec2<bool>(false, true)), all(vec4<bool>(global0.x, false, global0.x, true))))), vec3<u32>(~u_input.a.x, abs(~(~11744u)), func_3(select(global0.x, global0.x, true == global0.x), !vec4<bool>(global0.x, false, global0.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, var_0.x) * var_2.b.yz))).x));
}

