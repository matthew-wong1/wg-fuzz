struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 59153u, 48963u), vec3<u32>(31769u, 13345u, 28205u), vec3<u32>(1u, 1u, 64082u), vec3<u32>(33109u, 4294967295u, 0u), vec3<u32>(20163u, 1u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 73324u, 0u), vec3<u32>(17045u, 26795u, 58928u), vec3<u32>(54487u, 83638u, 0u), vec3<u32>(71206u, 25381u, 4294967295u), vec3<u32>(60826u, 15362u, 15034u), vec3<u32>(0u, 54295u, 20822u), vec3<u32>(4294967295u, 12993u, 36161u), vec3<u32>(24454u, 0u, 0u), vec3<u32>(53451u, 38103u, 80347u), vec3<u32>(1295u, 49334u, 55132u), vec3<u32>(1u, 3556u, 0u), vec3<u32>(33598u, 27115u, 60057u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(42711u, 4067u, 1u), vec3<u32>(57410u, 31817u, 1u), vec3<u32>(8173u, 100104u, 0u), vec3<u32>(1u, 4316u, 8311u));

var<private> global1: array<bool, 12>;

var<private> global2: array<u32, 30>;

var<private> global3: array<vec4<i32>, 4>;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    let var_0 = vec2<i32>(-2147483647i, 2147483647i);
    var var_1 = !arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, -1954f)))) * vec2<f32>(170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-798f + 793f) * _wgslsmith_div_f32(-983f, 1000f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(237f, -1267f), vec2<f32>(424f, 1000f))), vec2<f32>(251f, 779f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1212f, -272f), vec2<f32>(-1285f, 428f), false))))));
    var var_3 = ~min(4294967295u, _wgslsmith_dot_vec2_u32(global4.yy, select(global4.zy, ~global4.zz, select(arg_1, vec2<bool>(true, global1[_wgslsmith_index_u32(global4.x, 12u)]), true))));
    let var_4 = -2147483647i;
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, global4.x, u_input.d), vec4<u32>(u_input.d, 1u, u_input.d, 21067u)), abs(global2[_wgslsmith_index_u32(u_input.d, 30u)]))), ~(~min(1u, 4294967295u))), select(17369u, _wgslsmith_add_u32(80110u, u_input.d) & abs(4294967295u), true) & countOneBits(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)] & 4294967295u, 30u)]));
}

fn func_2() -> Struct_1 {
    let var_0 = 1519f;
    var var_1 = Struct_1(u_input.d, 21753i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, 510f, -861f, var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -2364f, 1000f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, var_0, -844f, var_0))))))));
    let var_2 = Struct_1(global2[_wgslsmith_index_u32(reverseBits(~78503u) >> (abs(~select(0u, global2[_wgslsmith_index_u32(1u, 30u)], true)) % 32u), 30u)], 30479i, vec4<f32>(var_1.c.x, -163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f * _wgslsmith_f_op_f32(1461f + var_0)) * _wgslsmith_f_op_f32(exp2(var_1.c.x))), _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)));
    let var_3 = Struct_1(4294967295u | func_3(vec2<i32>(2147483647i, -2147483647i), vec2<bool>(true, true), global1[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(48775u, 30u)] << (var_1.a % 32u)), 12u)]), u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1790f, 291f, -429f, 723f), _wgslsmith_f_op_vec4_f32(exp2(var_2.c)))))));
    global4 = global0[_wgslsmith_index_u32(var_2.a, 26u)];
    return var_2;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = !(!vec4<bool>(arg_0.x <= 190f, _wgslsmith_f_op_f32(select(-2203f, -175f, false)) < _wgslsmith_f_op_f32(f32(-1f) * -517f), true, (true == global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 30u)], 12u)]) == global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 12u)]));
    var var_1 = func_2();
    var var_2 = Struct_1(global4.x, ~(i32(-1i) * -6178i), _wgslsmith_f_op_vec4_f32(-var_1.c));
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, abs(func_3(~vec2<i32>(var_2.b, 1i), var_0.yx, true)), var_2.a, ~(_wgslsmith_mult_u32(6217u, var_1.a) | ~39848u)), ~vec4<u32>(4294967295u, ~(~var_2.a), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 22521u, 1u), ~0u), 4294967295u)), 26u)];
    var_1 = Struct_1(abs(firstLeadingBit(_wgslsmith_clamp_u32(global4.x, global2[_wgslsmith_index_u32(var_1.a, 30u)], 37459u))) | firstTrailingBit(53463u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~var_2.b >> (~var_2.a % 32u), 1i), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c, -17116i), _wgslsmith_mod_i32(-1i, u_input.c)), var_2.b, abs(~var_1.b))), _wgslsmith_f_op_vec4_f32(-var_1.c));
    return func_2();
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = ~abs(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a, arg_2.a, arg_1.a, arg_1.a), vec4<u32>(1588u, 4294967295u, 39370u, 1u)), u_input.d, global1[_wgslsmith_index_u32(u_input.d, 12u)]));
    var var_1 = vec3<bool>(!all(vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.d, 12u)])), global1[_wgslsmith_index_u32(reverseBits(u_input.d), 12u)])), global1[_wgslsmith_index_u32(49617u, 12u)], global1[_wgslsmith_index_u32(48145u, 12u)]);
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(32429u, ~1u), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a, u_input.d), global4.yz)), global4.yx), max(~39890i, ~_wgslsmith_clamp_i32(arg_1.b, max(-2147483647i, u_input.b.x), -12695i << (global2[_wgslsmith_index_u32(u_input.d, 30u)] % 32u))), _wgslsmith_f_op_vec4_f32(arg_2.c - _wgslsmith_f_op_vec4_f32(exp2(arg_2.c))));
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.c.zyy, _wgslsmith_f_op_vec3_f32(arg_1.c.xzz - func_1(vec3<f32>(1786f, 426f, -1959f)).c.zyz), var_1.x))));
    let var_4 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(207f)) * arg_1.c.x), var_2.c.x, arg_1.c.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_2().c.yzw, _wgslsmith_f_op_vec3_f32(-arg_2.c.xxw)))));
    return StorageBuffer(-886f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 30>();
    global4 = global0[_wgslsmith_index_u32(~1u, 26u)];
    global3 = array<vec4<i32>, 4>();
    var var_0 = Struct_1(4294967295u, 22844i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, 1661f, -752f, 895f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-922f, 223f, -1000f, -1779f), vec4<f32>(-368f, -270f, 305f, -1256f), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(31727u, 12u)]))), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = global4.x;
    global0 = array<vec3<u32>, 26>();
    var_1 = select(4294967295u, 4294967295u, any(vec2<bool>(!(true && global1[_wgslsmith_index_u32(53747u, 12u)]), !global1[_wgslsmith_index_u32(~var_0.a, 12u)])));
    global3 = array<vec4<i32>, 4>();
    let x = u_input.a;
    s_output = func_4(abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-13473i, var_0.b, var_0.b) | vec3<i32>(u_input.a, 2147483647i, var_0.b), vec3<i32>(1i, u_input.e, -39313i)), ~var_0.b)), func_1(var_0.c.yyy), func_2());
}

