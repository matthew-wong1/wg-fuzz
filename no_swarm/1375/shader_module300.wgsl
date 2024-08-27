struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: Struct_1;

var<private> global1: vec2<f32>;

var<private> global2: array<u32, 19> = array<u32, 19>(23863u, 84121u, 0u, 45871u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 46766u, 7658u, 14712u, 31603u, 4294967295u, 95334u, 75728u, 35836u, 0u, 114284u, 31004u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> bool {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + -163f), _wgslsmith_f_op_f32(-global1.x)))), -1170f);
    var var_0 = Struct_1(u_input.a, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 19u)], 19u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(global0.c, 95790u << (1u % 32u)), ~_wgslsmith_sub_u32(global0.c, abs(global2[_wgslsmith_index_u32(global0.c, 19u)]))), 19u)]);
    let var_1 = Struct_1(0i, _wgslsmith_clamp_u32(1u, global2[_wgslsmith_index_u32(countOneBits(93889u), 19u)], 22917u), _wgslsmith_mod_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 41161u), vec2<u32>(4294967295u, global0.b)), var_0.b) << (global0.c % 32u), global2[_wgslsmith_index_u32(1u, 19u)]));
    let var_2 = vec4<i32>(-_wgslsmith_clamp_i32(~min(-1613i, global0.a), _wgslsmith_mult_i32(u_input.a << (var_1.b % 32u), 2147483647i), 0i), -12592i, 1i, abs(var_1.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x - -1298f), _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(select(345f, global1.x, true)), _wgslsmith_f_op_f32(global1.x - 110f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -558f, global1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -135f, global1.x, 850f), vec4<f32>(global1.x, global1.x, global1.x, -406f), vec4<bool>(arg_0, true, arg_0, false))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -251f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -457f, -1000f, global1.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 601f, global1.x, global1.x)))), arg_0))));
    return any(vec2<bool>(true, false));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = !(-2147483647i == u_input.a);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))));
    var var_1 = u_input.b;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1436f)), vec2<f32>(606f, _wgslsmith_f_op_f32(select(-1000f, global1.x, any(vec2<bool>(false, false))))))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - 1000f), -1588f)), !func_3(false)))));
    global2 = array<u32, 19>();
    return _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = true;
    global2 = array<u32, 19>();
    var var_1 = Struct_1(u_input.a, 1u, 140035u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32(u_input.b.x, -10537i))) - _wgslsmith_f_op_f32(f32(-1f) * -663f)));
    global0 = Struct_1(~2147483647i, var_1.b, max(39588u, _wgslsmith_clamp_u32(24985u & global0.b, 41877u >> (global2[_wgslsmith_index_u32(var_1.b, 19u)] % 32u), _wgslsmith_add_u32(69564u, var_1.c))) & _wgslsmith_mod_u32(1u ^ ~global0.c, countOneBits(~0u)));
    return firstLeadingBit(u_input.a);
}

fn func_4(arg_0: vec4<i32>) -> vec2<f32> {
    var var_0 = vec3<bool>(true, true, true);
    global1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, -244f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(max(global1.x, global1.x))), _wgslsmith_f_op_f32(sign(-198f))))));
    let var_1 = !var_0.x;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1138f, 1000f))))) - vec2<f32>(_wgslsmith_f_op_f32(-734f * 895f), _wgslsmith_f_op_f32(floor(-496f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) - vec2<f32>(global1.x, global1.x)) * vec2<f32>(_wgslsmith_f_op_f32(func_2(-27398i)), _wgslsmith_f_op_f32(min(global1.x, 1000f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1764f, global1.x))), 1331f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f * -2406f)), 161f)));
    var var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1628f)), 989f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, -162f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(-647f, 720f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-516f, _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_vec2_f32(func_4(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(5442i, -13973i, 13269i), u_input.b), func_1(true), u_input.a >> (global0.b % 32u), i32(-1i) * -22683i))))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4(firstTrailingBit(vec4<i32>(-43318i, u_input.a, u_input.b.x, u_input.a)) ^ (vec4<i32>(u_input.b.x, -10939i, -28886i, global0.a) | vec4<i32>(-2147483647i, u_input.a, u_input.b.x, global0.a)))).x, 2150f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.x)))), select(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1351f, 287f)) * 1094f) * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(trunc(-1319f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -321f))))));
    var var_2 = vec4<bool>(any(!vec3<bool>(select(true, false, true), true, true)), func_3(true && (_wgslsmith_f_op_f32(min(-2121f, 887f)) < _wgslsmith_f_op_f32(step(global1.x, -254f)))), select(false | (-909f < _wgslsmith_f_op_f32(round(1364f))), select(true, true, all(vec2<bool>(true, false)) && func_3(true)), select(true, !any(vec2<bool>(false, false)), !(u_input.a >= u_input.b.x))), !(!(global1.x == -1914f)) && !any(vec3<bool>(true, true, true)));
    var var_3 = u_input.b.yy;
    let var_4 = select(vec4<bool>(true, select(var_0.x <= -1691f, true, true) || var_2.x, var_2.x, all(vec2<bool>(var_2.x, var_2.x & var_2.x))), select(!(!vec4<bool>(true, var_2.x, false, var_2.x)), select(select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), !vec4<bool>(var_2.x, false, false, var_2.x)), select(vec4<bool>(true, false, false, false), !vec4<bool>(true, false, var_2.x, var_2.x), !vec4<bool>(true, var_2.x, true, var_2.x)), ~u_input.b.x > _wgslsmith_sub_i32(0i, 17796i)), true), select(vec4<bool>(false, false, var_2.x, _wgslsmith_div_f32(var_1.x, -1137f) < _wgslsmith_f_op_f32(min(388f, var_1.x))), !select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), func_3(false)), false));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(min(-_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, global0.a, u_input.a, var_3.x), vec4<i32>(var_3.x, 10532i, global0.a, 1i)), vec4<i32>(-1i) * -vec4<i32>(-6251i, -9087i, global0.a, 0i)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-700f, -857f), var_1.ww))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -540f)))), any(!select(var_4.xyx, var_4.wzy, var_4.xxx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(step(var_5.x, var_0.x)), _wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2328f, var_1.x, -115f, global1.x) - var_1), var_4.x)), vec4<f32>(_wgslsmith_f_op_f32(func_2(u_input.a)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(373f + 872f)), _wgslsmith_f_op_f32(f32(-1f) * -1903f))));
}

