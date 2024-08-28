struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<Struct_2, 19>();
    global1 = !vec4<bool>(global1.x, (_wgslsmith_f_op_f32(-arg_0) < -1264f) & (arg_0 <= arg_0), global1.x, global1.x);
    let var_0 = arg_2;
    let var_1 = Struct_3(~(vec4<u32>(1u, arg_2.a.x, 1u, var_0.a.x) >> (var_0.a % vec4<u32>(32u))), _wgslsmith_div_u32(var_0.a.x, ~(_wgslsmith_clamp_u32(4294967295u, var_0.a.x, 0u) ^ arg_2.a.x)), _wgslsmith_sub_vec2_u32(arg_2.a.xx, countOneBits(~var_0.a.yw)), vec2<u32>(reverseBits(var_0.a.x), arg_2.a.x));
    let var_2 = Struct_1(_wgslsmith_mult_vec4_u32(reverseBits(~_wgslsmith_sub_vec4_u32(var_0.a, var_0.a)), vec4<u32>(~select(arg_1, 8144u, false), _wgslsmith_clamp_u32(~32119u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, 33419u, 0u), var_0.a), arg_1), 42067u, ~1u)));
    return vec3<u32>(reverseBits(_wgslsmith_sub_u32(~firstTrailingBit(48007u), 4294967295u)), var_0.a.x | _wgslsmith_mult_u32(var_2.a.x, ~87515u ^ arg_2.a.x), 1u);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_1 {
    global1 = !(!vec4<bool>(global1.x | false, global1.x, all(vec4<bool>(arg_2.x, false, false, global1.x)), arg_2.x));
    var var_0 = any(!(!vec3<bool>(true, arg_2.x, true)));
    var var_1 = vec3<u32>(0u, 32210u, ~4294967295u) & ((func_3(_wgslsmith_f_op_f32(abs(-339f)), _wgslsmith_dot_vec2_u32(vec2<u32>(4241u, 0u), vec2<u32>(863u, 9441u)), Struct_1(vec4<u32>(4616u, 125050u, 0u, 1u))) | vec3<u32>(1u, 1u, 1u)) << (vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u)));
    global1 = vec4<bool>(any(global1.ww), all(vec3<bool>(arg_2.x, global1.x, any(vec3<bool>(arg_2.x, global1.x, global1.x)))), (u_input.a.x & select(arg_1.x, firstTrailingBit(0i), arg_2.x)) >= _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_0, arg_1.x), u_input.a)), arg_1.x), !(!global1.x));
    var var_2 = !(!select(vec3<bool>(arg_2.x, true, false), select(vec3<bool>(arg_2.x, false, global1.x), global1.zxz, true), vec3<bool>(true, any(vec2<bool>(global1.x, false)), true)));
    return Struct_1(vec4<u32>(var_1.x, var_1.x, 0u, ~(~32231u & max(var_1.x, var_1.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    var var_0 = !all(!(!vec3<bool>(false, global1.x, true)));
    let var_1 = select(select(select(!global1.xy, select(vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, false), global1.wx), global1.x), select(global1.yx, !select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), true), global1.x | all(global1.zyz)), global1.x && global1.x), vec2<bool>(!all(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x), any(vec4<bool>(!any(vec4<bool>(false, true, false, false)), 1u != _wgslsmith_mult_u32(2010u, arg_1.a.x), global1.x, !global1.x & false)));
    var var_2 = vec3<i32>(-arg_0.x, max(-_wgslsmith_div_i32(arg_0.x, -1i), _wgslsmith_clamp_i32(-27719i, arg_0.x, -u_input.a.x)) ^ -u_input.a.x, ~min(arg_0.x, arg_0.x));
    global1 = !select(!vec4<bool>(all(vec4<bool>(global1.x, false, false, true)), all(var_1), var_1.x, true), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(global1.x, var_1.x, false, true), vec4<bool>(var_1.x, global1.x, global1.x, var_1.x), var_1.x), all(vec3<bool>(global1.x, false, global1.x))), all(global1.yy));
    let var_3 = vec4<i32>(~var_2.x, _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(-9513i, var_2.x, arg_0.x)), i32(-1i) * -firstLeadingBit(0i), _wgslsmith_clamp_i32(reverseBits(-u_input.a.x), i32(-1i) * -u_input.a.x, ~23503i)) >> (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(~4294967295u, 11734u, 32911u, 0u), ~arg_1.a), select(arg_2.a, countOneBits(arg_1.a), global1.x && global1.x) & vec4<u32>(_wgslsmith_clamp_u32(arg_2.d.x, arg_2.d.x, 62774u), ~34874u, ~arg_2.b, 13808u), arg_2.a) % vec4<u32>(32u));
    return arg_1.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> vec3<u32> {
    let var_0 = Struct_2(global1.x);
    global1 = vec4<bool>(1i == abs(reverseBits(u_input.a.x)), var_0.a, false, firstLeadingBit(3094u) > arg_2);
    var var_1 = var_0;
    var var_2 = !vec4<bool>(var_0.a, !any(select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(var_1.a, var_0.a, var_1.a, var_1.a), vec4<bool>(global1.x, false, global1.x, true))), true, !global1.x);
    var var_3 = -1238f;
    return ~select(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_1, arg_2, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(12892u, 4294967295u, arg_1), vec3<u32>(arg_1, 53925u, 5697u))), ~(~func_3(630f, 62282u, Struct_1(vec4<u32>(arg_1, arg_2, arg_2, arg_1)))), select(vec3<bool>(var_0.a, !global1.x, var_0.a), vec3<bool>(var_1.a, true, var_0.a | false), var_2.xxy));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global2 = -406f;
    global0 = array<Struct_2, 19>();
    var var_0 = countOneBits(-22955i);
    return Struct_2(global1.x);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = false;
    return func_6(Struct_3(countOneBits(select(vec4<u32>(4294967295u, 1u, 3100u, 60278u), vec4<u32>(54145u, 4294967295u, 0u, 1u), global1.x)) ^ vec4<u32>(~1u, 1u, ~0u, ~1u), ~(~(~63466u)), reverseBits(~vec2<u32>(0u, 0u)), abs(abs(vec2<u32>(1u, 5897u))) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u))), func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1214f, 273f)) * _wgslsmith_f_op_f32(arg_0 - arg_0)), arg_0), 24012u, func_4(countOneBits(u_input.a), func_2(u_input.a.x, u_input.a.yy ^ u_input.a.zx, vec3<bool>(var_0, var_0, var_0)), Struct_3(~vec4<u32>(25678u, 9211u, 0u, 1u), 1u, func_3(arg_0, 0u, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u))).zz, _wgslsmith_div_vec2_u32(vec2<u32>(0u, 54978u), vec2<u32>(5900u, 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global0[_wgslsmith_index_u32(~1u, 19u)]);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    global1 = select(vec4<bool>(!(!arg_1.a), select(true, func_1(1297f).a, true), arg_0.a, true), !(!(!vec4<bool>(global1.x, arg_0.a, false, arg_1.a))), vec4<bool>(global1.x, global1.x, all(select(vec3<bool>(global1.x, true, true), vec3<bool>(true, arg_0.a, true), select(false, true, false))), true));
    var var_0 = func_2(_wgslsmith_mod_i32(u_input.a.x, countOneBits(u_input.a.x)), vec2<i32>(_wgslsmith_clamp_i32(~0i, ~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i)), 1i) << (_wgslsmith_div_vec2_u32(firstTrailingBit(reverseBits(vec2<u32>(0u, 5487u))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(97617u, 47271u))) % vec2<u32>(32u)), global1.zxy);
    let var_1 = func_2(u_input.a.x, _wgslsmith_div_vec2_i32(vec2<i32>(abs(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), reverseBits(_wgslsmith_sub_i32(-2147483647i, u_input.a.x))), abs(select(u_input.a.yz, -vec2<i32>(5348i, -2147483647i), any(vec2<bool>(false, true))))), select(select(select(global1.zwz, vec3<bool>(true, true, arg_1.a), global1.zyy), vec3<bool>(u_input.a.x == 2147483647i, false, arg_1.a), !(!global1.xww)), !select(!vec3<bool>(arg_0.a, arg_0.a, false), select(global1.yzx, global1.wwz, false), select(global1.xyx, global1.yyx, vec3<bool>(global1.x, arg_0.a, false))), global1.wwy));
    var var_2 = arg_2.x;
    var_0 = func_2(~reverseBits(~min(-31375i, u_input.a.x)), vec2<i32>(1i, 43603i), global1.www);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2062f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(588f - _wgslsmith_f_op_f32(round(-626f))), -1068f, _wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(abs(361f))) + vec4<f32>(_wgslsmith_f_op_f32(func_7(func_1(-2366f), global0[_wgslsmith_index_u32(44166u, 19u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1164f, 1169f), vec2<f32>(1000f, 1000f))))), -652f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-322f, 578f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(302f, 843f)) * -1722f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(1402f * -148f), _wgslsmith_div_f32(2417f, 1118f), 1305f))));
    var var_1 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(23884i, 2147483647i)), -vec2<i32>(-15308i, u_input.a.x)), vec2<i32>(select(u_input.a.x, max(u_input.a.x, -45814i), func_6(Struct_3(vec4<u32>(1u, 22450u, 7515u, 20593u), 0u, vec2<u32>(1u, 13542u), vec2<u32>(28885u, 46682u)), vec3<u32>(32215u, 1u, 0u), -550f, global0[_wgslsmith_index_u32(81331u, 19u)]).a), 35621i), abs(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(-1133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(global0[_wgslsmith_index_u32(select(1u, 58171u, var_2.a), 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.wy)) * 642f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1462f));
    let var_4 = min(~(-abs(vec4<i32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x))) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(13769u, 15852u, 18619u, 22532u)), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u)), countOneBits(reverseBits(vec4<i32>(1i, abs(u_input.a.x), 37i, -23841i))));
    let var_5 = global1.zxx;
    var var_6 = vec2<bool>(false, global1.x);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(_wgslsmith_dot_vec4_i32(-var_4, var_4), var_1.x, -var_4.x, ~abs(2147483647i)), var_4), vec3<u32>(38500u, 1u, ~_wgslsmith_div_u32(11573u, 1u)), ~1u, ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(global0[_wgslsmith_index_u32(42512u, 19u)], Struct_2(var_7), vec2<f32>(1381f, var_3.x))) - _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), ~(~0u), Struct_1(max(vec4<u32>(14228u, 4294967295u, 18846u, 31544u), vec4<u32>(0u, 12113u, 1u, 0u)))).yz, 8978u);
}

