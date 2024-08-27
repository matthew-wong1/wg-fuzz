struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: vec4<f32> = vec4<f32>(-302f, -1136f, 1631f, -653f);

var<private> global3: array<bool, 6> = array<bool, 6>(false, false, true, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<u32> {
    var var_0 = -866f;
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~(~u_input.a), _wgslsmith_clamp_i32(28800i, arg_1, -14205i)), -(~vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x) & vec2<i32>(-29357i, u_input.a), vec2<i32>(1i, 1i)) | ~vec2<i32>(-2147483647i, arg_1)) | ~(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(arg_1, u_input.a)), vec2<i32>(-2147483647i, 2438i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global0.x, -1i))) >> ((select(u_input.c.wz, u_input.c.xz, vec2<bool>(true, true)) ^ u_input.c.yy) % vec2<u32>(32u)));
    global3 = array<bool, 6>();
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -1115f, -490f, arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-326f, 1000f, global2.x, -507f) - vec4<f32>(global2.x, global2.x, 187f, 1356f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -656f, global2.x, 797f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-505f, _wgslsmith_f_op_f32(min(1191f, -428f)), -973f, _wgslsmith_f_op_f32(select(1166f, global2.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1427f, global2.x, -2322f, 638f))), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(75597u, 6u)], true, true))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -471f), -246f, _wgslsmith_f_op_f32(ceil(-551f)), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -1000f, arg_0, global2.x), vec4<f32>(-1757f, -187f, arg_0, global2.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1359f, global2.x, arg_0), vec4<f32>(306f, arg_0, global2.x, arg_0)))))))));
    let var_1 = global1[_wgslsmith_index_u32(69269u, 12u)];
    return _wgslsmith_mod_vec3_u32(~(~min(u_input.c.zyz, u_input.c.xwy ^ vec3<u32>(1u, u_input.c.x, 0u))), _wgslsmith_sub_vec3_u32(u_input.c.xxx, vec3<u32>(15209u, u_input.b, 12424u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: i32) -> vec4<bool> {
    let var_0 = 157f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-594f)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(global2.x)) >= global2.x;
    let var_2 = u_input.a;
    global2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 713f, global2.x, 364f), vec4<f32>(global2.x, 749f, -213f, -1000f)))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1897f)), 2154f)))));
    global0 = vec2<i32>(global0.x, -47767i);
    return select(!vec4<bool>(true, all(vec2<bool>(false, var_0)), all(vec3<bool>(true, true, true)), true), vec4<bool>(!global3[_wgslsmith_index_u32(~(~arg_0.x), 6u)], true, any(vec4<bool>(true, !global3[_wgslsmith_index_u32(arg_0.x, 6u)], 493f > global2.x, !global3[_wgslsmith_index_u32(u_input.c.x, 6u)])), all(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], var_1, var_0))), var_1);
}

fn func_2(arg_0: u32) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 264f)))), -853f, !select(func_4(func_3(348f, global0.x), vec2<i32>(u_input.a, 2147483647i), global0.x), !select(vec4<bool>(false, global3[_wgslsmith_index_u32(36960u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], false), vec4<bool>(global3[_wgslsmith_index_u32(arg_0, 6u)], false, global3[_wgslsmith_index_u32(u_input.b, 6u)], true), false), global3[_wgslsmith_index_u32(arg_0, 6u)]));
    global1 = array<Struct_1, 12>();
    var_0 = Struct_1(var_0.a, -618f, vec4<bool>(_wgslsmith_f_op_f32(exp2(var_0.a)) != _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(abs(-1191f))), true, true, any(var_0.c)));
    let var_1 = _wgslsmith_mult_i32(~(-global0.x), global0.x & global0.x);
    let var_2 = arg_0;
    return min(select((min(u_input.c.zy, u_input.c.ww) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(19751u, 56742u), u_input.c.ww)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(u_input.b, 0u)), u_input.c.x & 12847u) % vec2<u32>(32u)), vec2<u32>(arg_0, _wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c)), vec2<bool>(!global3[_wgslsmith_index_u32(4294967295u, 6u)], true)), ~vec2<u32>(firstTrailingBit(var_2 & 6060u), 8820u));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = ~max(vec3<i32>(-30161i, -2147483647i, abs(~arg_3)), select(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 12125i, arg_1.x), vec3<i32>(arg_3, global0.x, -35834i)) & min(vec3<i32>(arg_1.x, -2147483647i, u_input.a), vec3<i32>(2147483647i, arg_1.x, 1i)), ~(~vec3<i32>(global0.x, u_input.a, 2147483647i)), global3[_wgslsmith_index_u32(select(~u_input.b, 1u ^ arg_2.x, any(vec2<bool>(global3[_wgslsmith_index_u32(62523u, 6u)], true))), 6u)]));
    global3 = array<bool, 6>();
    global3 = array<bool, 6>();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, global2.x, global2.x, global2.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 532f, global2.x, -1422f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -516f, global2.x, global2.x) * vec4<f32>(global2.x, global2.x, -3102f, global2.x))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.yyy))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-686f, -249f))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    return global1[_wgslsmith_index_u32(arg_2.x & _wgslsmith_mult_u32(85731u, u_input.b), 12u)];
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * 129f) + global2.x);
    var var_1 = 57562u <= ~u_input.b;
    var var_2 = vec3<bool>(!((!global3[_wgslsmith_index_u32(u_input.c.x, 6u)] && true) || (!global3[_wgslsmith_index_u32(1u, 6u)] || all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], true, arg_0.x, arg_0.x)))), true, true);
    let var_3 = u_input.c.x;
    return !func_4(~(u_input.c.xwz << (abs(vec3<u32>(var_3, 95982u, var_3)) % vec3<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(~global0.x, 1i), ~select(vec2<i32>(global0.x, global0.x), vec2<i32>(1i, global0.x), true)), -(~1i));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    let var_0 = -2147483647i;
    global2 = arg_1;
    var var_1 = Struct_1(-1289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1097f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f))), select(func_6(select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<bool>(global3[_wgslsmith_index_u32(88783u, 6u)], false, global3[_wgslsmith_index_u32(4294967295u, 6u)])), func_5(abs(u_input.c.xzx), vec2<i32>(var_0, -12451i), func_2(u_input.b), ~(-53017i))), select(vec4<bool>(any(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)])), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 21928u, 0u), 6u)], any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(27698u, 6u)])), func_4(vec3<u32>(20500u, u_input.c.x, u_input.b), vec2<i32>(-1i, -2147483647i), -1i).x), select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global3[_wgslsmith_index_u32(1816u, 6u)], true, global3[_wgslsmith_index_u32(1u, 6u)]), func_5(vec3<u32>(u_input.c.x, 0u, 4294967295u), vec2<i32>(global0.x, -6356i), vec2<u32>(u_input.c.x, 22757u), u_input.a).c, true), firstTrailingBit(-2748i) == 12485i), func_5(min(max(vec3<u32>(1u, 1u, 0u), vec3<u32>(27840u, 0u, u_input.b)), ~u_input.c.yxx), vec2<i32>(7024i, -arg_0), u_input.c.zx, firstLeadingBit(0i)).c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-498f)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, 1528f))), 738f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f), 352f))))));
    global3 = array<bool, 6>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -325f))), global2.x, _wgslsmith_f_op_f32(-160f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(func_1(global0.x, vec4<f32>(-569f, global2.x, -172f, 195f)))))), _wgslsmith_f_op_f32(ceil(660f)));
    var var_0 = u_input.b >> (firstLeadingBit(u_input.c.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1000f, global2.x, _wgslsmith_f_op_f32(global2.x - 660f), _wgslsmith_f_op_f32(-370f * -1028f)), abs(~(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) & countOneBits(vec3<u32>(5051u, u_input.c.x, u_input.b)))), vec4<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(floor(global2.x)))), 287f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, func_5(vec3<u32>(u_input.c.x, 25100u, u_input.b), vec2<i32>(16058i, global0.x), u_input.c.yz, 14236i).a) - 1015f), -314f), vec3<u32>(func_3(global2.x, u_input.a).x, 0u, _wgslsmith_div_u32(27906u, ~_wgslsmith_add_u32(u_input.b, u_input.c.x))));
}

