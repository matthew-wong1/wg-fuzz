struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<i32>(-1804i, 1i, -27362i, -25831i), vec2<u32>(74323u, 5446u)), Struct_1(vec4<i32>(2147483647i, -49455i, i32(-2147483648), 1400i), vec2<u32>(1u, 44340u)), Struct_1(vec4<i32>(6381i, 2147483647i, 2147483647i, -22769i), vec2<u32>(1u, 1u)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 0i, 60268i), vec2<u32>(4294967295u, 28710u)), Struct_1(vec4<i32>(-1i, 7197i, 0i, -1i), vec2<u32>(4096u, 1u)), Struct_1(vec4<i32>(0i, -42599i, 13692i, 26017i), vec2<u32>(17383u, 28885u)), Struct_1(vec4<i32>(-15198i, 749i, 2147483647i, -1i), vec2<u32>(1u, 21619u)), Struct_1(vec4<i32>(-21407i, -505i, 0i, 1i), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(17604i, -62495i, 2147483647i, 2147483647i), vec2<u32>(4294967295u, 27694u)), Struct_1(vec4<i32>(1i, 2147483647i, -1i, -1678i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<i32>(697i, 2147483647i, 14950i, 2147483647i), vec2<u32>(22659u, 4294967295u)), Struct_1(vec4<i32>(-30845i, 2147483647i, -6845i, 11985i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<i32>(-6497i, -1i, -1i, -32690i), vec2<u32>(60135u, 4294967295u)), Struct_1(vec4<i32>(14256i, i32(-2147483648), 9085i, 1673i), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<i32>(12i, 2147483647i, -36453i, -39119i), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<i32>(-9088i, 62159i, 0i, 0i), vec2<u32>(0u, 36857u)), Struct_1(vec4<i32>(-1i, -1i, 36149i, 47004i), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<i32>(2147483647i, 1i, 8533i, -14532i), vec2<u32>(47258u, 0u)), Struct_1(vec4<i32>(1i, 0i, -71801i, -1i), vec2<u32>(1u, 16052u)), Struct_1(vec4<i32>(13204i, 28539i, -11272i, 1i), vec2<u32>(1u, 25963u)), Struct_1(vec4<i32>(-4136i, -44427i, 1i, -38427i), vec2<u32>(1u, 70621u)), Struct_1(vec4<i32>(0i, -71393i, 0i, 0i), vec2<u32>(29837u, 33480u)), Struct_1(vec4<i32>(i32(-2147483648), 17785i, -1i, i32(-2147483648)), vec2<u32>(45206u, 18371u)), Struct_1(vec4<i32>(-22470i, 17486i, 8729i, 85151i), vec2<u32>(111454u, 64729u)), Struct_1(vec4<i32>(-491i, 2147483647i, 28532i, 2147483647i), vec2<u32>(46946u, 1u)), Struct_1(vec4<i32>(0i, 8345i, 0i, 16057i), vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(89470i, -1i, i32(-2147483648), i32(-2147483648)), vec2<u32>(1u, 51017u)), Struct_1(vec4<i32>(1i, 80963i, 22310i, -93823i), vec2<u32>(4294967295u, 56309u)), Struct_1(vec4<i32>(0i, 27705i, 60188i, i32(-2147483648)), vec2<u32>(65957u, 5315u)), Struct_1(vec4<i32>(0i, 0i, -56350i, i32(-2147483648)), vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(0i, -22586i, i32(-2147483648), 2147483647i), vec2<u32>(0u, 9811u)));

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: array<bool, 15> = array<bool, 15>(false, true, true, true, true, false, false, false, false, false, false, false, false, true, false);

var<private> global3: array<vec3<u32>, 15>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.a.x, select(u_input.a.x & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a), ~(~52113u), 1i < u_input.e.x)), u_input.a.x, ~1u, countOneBits(_wgslsmith_mult_u32(firstLeadingBit(4294967295u) & countOneBits(u_input.a.x), _wgslsmith_mult_u32(44342u, ~u_input.a.x))));
    var_0 = vec4<u32>(var_0.x, min(u_input.a.x, 0u), ~min(min(_wgslsmith_div_u32(var_0.x, u_input.a.x), u_input.a.x), _wgslsmith_mult_u32(15451u, var_0.x >> (1u % 32u))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), var_0.x >> (~(~39408u) % 32u)));
    global3 = array<vec3<u32>, 15>();
    var var_1 = !select(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], true), global2[_wgslsmith_index_u32(u_input.a.x, 15u)])), vec2<bool>(any(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(var_0.x, 15u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 15u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true, global2[_wgslsmith_index_u32(59032u, 15u)]))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_0.zw, vec2<u32>(u_input.a.x, 40627u)), abs(0u), u_input.a.x), 15u)]), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, abs(u_input.a.x)), 15u)]);
    global1 = array<vec4<f32>, 17>();
    return ~84682u;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = !global2[_wgslsmith_index_u32(arg_1.b.x >> (arg_1.b.x % 32u), 15u)];
    var var_1 = false;
    let var_2 = !vec4<bool>(-1014f <= _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x))), true || all(!vec4<bool>(var_0, var_0, false, true)), any(!vec4<bool>(var_0, global2[_wgslsmith_index_u32(arg_1.b.x, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(26931u, 15u)])), true);
    let var_3 = arg_1;
    global2 = array<bool, 15>();
    return ~76712u;
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x, func_4(global1[_wgslsmith_index_u32(48124u, 17u)], Struct_1(_wgslsmith_div_vec4_i32(-u_input.e, ~vec4<i32>(u_input.b.x, u_input.d, -1i, u_input.e.x)), vec2<u32>(func_3(), u_input.a.x)))), 31u)];
    global0 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~max(var_0.b.x, 2467u) & 34185u, 1u), 17u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-836f + -177f), -291f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1197f + 962f), 600f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-610f, -311f))))))));
    global2 = array<bool, 15>();
    let var_2 = _wgslsmith_clamp_vec2_i32(abs(var_0.a.yx), ~(~(~_wgslsmith_add_vec2_i32(u_input.c.zz, var_0.a.zx))), vec2<i32>(max(46090i, var_0.a.x), -49250i));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) - vec3<f32>(-1655f, arg_2.x, 1181f)) * vec3<f32>(1361f, -219f, 1106f)))));
    var var_2 = vec2<bool>(!func_2(), true & (_wgslsmith_f_op_f32(sign(arg_2.x)) == _wgslsmith_f_op_f32(f32(-1f) * -1459f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx));
    let var_4 = Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(26469i, 14409i, 25838i, 11025i) & min(arg_1.a, u_input.b), vec4<i32>(-1i, 52303i, 2147483647i, 0i) & vec4<i32>(2147483647i, arg_1.a.x, -4007i, 1i)), max(_wgslsmith_sub_vec2_u32(vec2<u32>(~arg_1.b.x, ~18451u), countOneBits(_wgslsmith_add_vec2_u32(arg_0.b, arg_3.b))), vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_3.b.x, arg_0.b.x, 4294967295u), vec3<u32>(7599u, arg_1.b.x, arg_0.b.x)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), 15u)]), ~4294967295u)));
    return -(-_wgslsmith_add_i32(arg_0.a.x, u_input.d) ^ 65893i) << (firstTrailingBit(~arg_1.b.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 15>();
    var var_0 = ~(~vec4<i32>(func_1(Struct_1(vec4<i32>(u_input.d, u_input.d, -1i, u_input.e.x), vec2<u32>(54628u, 1u)), global0[_wgslsmith_index_u32(50112u, 31u)], vec2<f32>(593f, -1000f), Struct_1(vec4<i32>(u_input.c.x, u_input.d, u_input.d, -7141i), u_input.a)) << (~u_input.a.x % 32u), 2147483647i, _wgslsmith_sub_i32(u_input.c.x, ~51733i), ~u_input.e.x));
    global3 = array<vec3<u32>, 15>();
    var var_1 = vec3<bool>(true, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-302f, 462f))) == 1416f), all(!vec4<bool>(select(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], true, true), true, global2[_wgslsmith_index_u32(77577u & u_input.a.x, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)])));
    global2 = array<bool, 15>();
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, func_1(Struct_1(u_input.e, vec2<u32>(4294967295u, u_input.a.x)), global0[_wgslsmith_index_u32(1u, 31u)], vec2<f32>(897f, 1762f), Struct_1(u_input.e, vec2<u32>(u_input.a.x, u_input.a.x))), u_input.d << (u_input.a.x % 32u), u_input.e.x & u_input.b.x), abs(vec4<i32>(u_input.e.x, -2147483647i, u_input.d, u_input.b.x)) ^ u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(2869u, u_input.a.x, 13151u, 12108u), vec4<u32>(71209u, 0u, u_input.a.x, 4294967295u)) % 32u)), vec2<u32>(6072u, 14495u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(46336u, u_input.a.x)), vec2<u32>(~u_input.a.x, u_input.a.x ^ 4294967295u), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 493f) - _wgslsmith_f_op_f32(max(319f, 165f))), _wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1122f, 172f) + _wgslsmith_f_op_f32(trunc(-401f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1293f, -1215f, 647f) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1125f, 562f) + vec3<f32>(899f, 1000f, 701f))), u_input.a.x == (21670u ^ u_input.a.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1128f, -2121f, -1021f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(346f, 262f, 546f) - vec3<f32>(-2534f, -1000f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1286f, -829f, 1921f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(225f)), -441f))), 2688f));
}

