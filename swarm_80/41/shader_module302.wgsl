struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(94303u), Struct_1(46152u), Struct_1(40414u), Struct_1(13005u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(18861u), Struct_1(0u), Struct_1(49014u), Struct_1(14385u), Struct_1(1u));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(71018u);

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4578u, arg_0.a, u_input.c.x), vec3<u32>(global3.a, global3.a, 0u)))), vec3<u32>(min(global2.a, 84187u), global2.a, ~_wgslsmith_mod_u32(~u_input.c.x, ~arg_0.a)));
    let var_1 = vec2<i32>(24318i, -4243i);
    var var_2 = _wgslsmith_sub_i32(u_input.b, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(25002i, var_1.x), vec2<i32>(-20941i, global4.x))), vec2<i32>(reverseBits(41098i), ~global4.x)), 34383i));
    global0 = array<Struct_1, 18>();
    var var_3 = u_input.c.x;
    return arg_0;
}

fn func_3() -> bool {
    let var_0 = !vec4<bool>(select(true, true, true) && any(vec2<bool>(true, false)), false, true, true);
    global4 = select(reverseBits(u_input.a), vec4<i32>(27556i, ~min(u_input.b, -1i), select(firstTrailingBit(u_input.b), global4.x, false), abs(-global4.x)) ^ vec4<i32>(global4.x, u_input.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global4.x, 1i), vec3<i32>(global4.x, -1i, -28705i)), _wgslsmith_clamp_i32(global4.x, u_input.b, 2147483647i)), 0i), all(!select(select(var_0.zw, vec2<bool>(var_0.x, var_0.x), var_0.xz), !var_0.xy, vec2<bool>(false, false))));
    let var_1 = vec4<bool>(false, var_0.x, false, any(vec2<bool>(!var_0.x, !var_0.x)));
    var var_2 = func_2(Struct_1(firstLeadingBit(4294967295u)), ~global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))).a;
    let var_3 = Struct_1(u_input.c.x);
    return var_0.x && var_1.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_u32(global2.a, ~global2.a);
    var var_1 = func_2(Struct_1(u_input.c.x), global3.a, _wgslsmith_f_op_f32(-1303f + 547f));
    var_1 = global1[_wgslsmith_index_u32(global2.a, 13u)];
    var var_2 = Struct_1(arg_2.x);
    return select(vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, false), true)), func_3(), !(arg_1 < arg_1), true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), func_3()), select(vec4<bool>(true, arg_1 <= 337f, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), true, false)), any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(all(vec2<bool>(true, true)), any(func_1(vec4<i32>(u_input.a.x, -5480i, global4.x, -1i), -1222f, vec3<u32>(41183u, u_input.c.x, 16024u), global0[_wgslsmith_index_u32(global2.a, 18u)]))), select(select(vec2<bool>(false, true), func_1(vec4<i32>(u_input.a.x, u_input.b, global4.x, 2586i), 932f, vec3<u32>(0u, u_input.c.x, global2.a), global0[_wgslsmith_index_u32(0u, 18u)]).yz, u_input.a.x > -34282i), vec2<bool>(false, false), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2174f * -511f) - _wgslsmith_f_op_f32(ceil(-1085f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) * _wgslsmith_f_op_f32(f32(-1f) * -1400f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-447f - 1057f) + 644f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-502f)), _wgslsmith_f_op_f32(round(-674f)))))));
    let var_2 = _wgslsmith_f_op_f32(ceil(-430f));
    var var_3 = true;
    global1 = array<Struct_1, 13>();
    var_1 = -1332f;
    let var_4 = ~max(~abs(-vec4<i32>(u_input.a.x, 14778i, u_input.a.x, -13038i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, -33127i, -2147483647i), u_input.a), global4.x, -u_input.b, min(u_input.b, 64182i)) ^ vec4<i32>(global4.x, ~u_input.b, -14838i, global4.x));
    let var_5 = Struct_1(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(var_5.a), 45227u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.a, global3.a, 31542u, 4294967295u), vec4<u32>(29351u, 4294967295u, global2.a, global2.a)), _wgslsmith_clamp_u32(4294967295u, global2.a, global3.a)) ^ _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 1u), vec2<u32>(global2.a, global3.a), vec2<bool>(true, false)), firstTrailingBit(u_input.c)), reverseBits(var_5.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -997f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1435f, var_2)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1604f, var_2))), true)))), max(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_5.a | global2.a, u_input.c.x), _wgslsmith_add_u32(~global2.a, 0u)), abs(var_5.a)), ~0i);
}

