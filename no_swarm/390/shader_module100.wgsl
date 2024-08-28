struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 7> = array<u32, 7>(17747u, 69170u, 0u, 25412u, 4294967295u, 4294967295u, 1u);

var<private> global2: u32 = 1u;

var<private> global3: vec3<f32>;

var<private> global4: vec3<i32> = vec3<i32>(7901i, -1i, 2147483647i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = arg_1;
    var var_1 = ~vec3<u32>(global1[_wgslsmith_index_u32(~1u, 7u)], firstTrailingBit(~0u), min(~1u, ~global1[_wgslsmith_index_u32(min(42516u, global1[_wgslsmith_index_u32(4294967295u, 7u)]), 7u)]));
    let var_2 = -1i;
    var var_3 = Struct_1(1u, min(_wgslsmith_dot_vec2_u32(var_1.zz, ~(vec2<u32>(global1[_wgslsmith_index_u32(84632u, 7u)], 16621u) << (vec2<u32>(18274u, 1u) % vec2<u32>(32u)))), _wgslsmith_mod_u32(0u, 99317u)));
    var var_4 = Struct_1(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 7u)], ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.a ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(81025u, 7u)], 7u)], 64334u), vec3<u32>(~var_1.x, _wgslsmith_mult_u32(70439u, 0u), max(0u, 1u))));
    return countOneBits(reverseBits(var_1.xy));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_u32(arg_2.b, _wgslsmith_dot_vec2_u32(~func_3(global3.x, vec3<f32>(396f, global3.x, global3.x)), vec2<u32>(4294967295u, ~0u)) >> (arg_2.a % 32u));
    return firstLeadingBit(_wgslsmith_mult_vec4_i32((firstTrailingBit(vec4<i32>(arg_0.x, global4.x, global4.x, -2147483647i)) ^ vec4<i32>(0i, -1i, u_input.a, u_input.a)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(36570u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], 26756u), vec4<u32>(arg_1.b, arg_1.a, arg_1.a, 1u)) ^ ~vec4<u32>(1u, arg_2.a, arg_1.a, 0u)) % vec4<u32>(32u)), abs((vec4<i32>(global4.x, 0i, global4.x, global4.x) ^ vec4<i32>(2147483647i, u_input.a, global4.x, arg_0.x)) ^ (vec4<i32>(1i, -7054i, global4.x, u_input.a) >> (vec4<u32>(arg_1.b, 48400u, arg_1.a, 96486u) % vec4<u32>(32u))))));
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    global2 = 15462u;
    let var_0 = Struct_1(firstLeadingBit(reverseBits(1u)), global1[_wgslsmith_index_u32(abs(min(countOneBits(global1[_wgslsmith_index_u32(0u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 7u)], 7u)] % 32u), 7u)]), countOneBits(_wgslsmith_div_u32(1800u, global1[_wgslsmith_index_u32(78496u, 7u)])))), 7u)]);
    global3 = _wgslsmith_div_vec3_f32(vec3<f32>(-1069f, global3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-727f - global3.x), _wgslsmith_f_op_f32(min(global3.x, global3.x)), any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(sign(-854f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1345f, global3.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, 2575f, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1162f, global3.x, 1000f) - vec3<f32>(-338f, -996f, -2263f))))))));
    let var_1 = _wgslsmith_div_vec4_i32((select(vec4<i32>(global4.x, u_input.a, global4.x, -2147483647i), vec4<i32>(-75170i, 25886i, -1i, 933i), true) | (vec4<i32>(global4.x, 2492i, global4.x, u_input.a) ^ vec4<i32>(global4.x, -2147483647i, -17955i, u_input.a))) | func_2(min(vec2<i32>(global4.x, -1i), vec2<i32>(global4.x, -5039i)), var_0, Struct_1(global1[_wgslsmith_index_u32(15679u, 7u)], arg_0.x)), ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(-20283i, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, global4.x, global4.x), vec4<i32>(2147483647i, 23860i, -1i, -1360i)))) | vec4<i32>(countOneBits(~global4.x) >> (firstLeadingBit(max(arg_0.x, 1u)) % 32u), -global4.x | (~u_input.a << (var_0.a % 32u)), global4.x, -countOneBits(-global4.x));
    var var_2 = Struct_1(var_0.a, 0u);
    return vec4<bool>(false, !(!any(vec4<bool>(true, true, true, true))), !(!all(vec2<bool>(false, true))), (true & !(global3.x <= global3.x)) && !any(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u >= (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u, global1[_wgslsmith_index_u32(24197u, 7u)]), 7u)], 7u)]), 7u)], 7u)] | ~(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 7u)], 38352u) & 0u));
    let var_1 = Struct_1(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32((~global1[_wgslsmith_index_u32(1u, 7u)] | _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(1713u, 7u)])) >> (global1[_wgslsmith_index_u32(firstTrailingBit(~global1[_wgslsmith_index_u32(1u, 7u)]), 7u)] % 32u), 7u)], _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(71256u, 7u)], 0u), _wgslsmith_sub_u32(2797u, 0u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 7u)], 7u)], _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39860u, 7u)], 7u)], global1[_wgslsmith_index_u32(15985u, 7u)])), 7u)])), 11877u);
    let var_2 = select(vec4<bool>(!select(false, !var_0, 0u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b, 7u)], 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -348f)) >= _wgslsmith_f_op_f32(-global3.x), var_0, !(var_0 || select(var_0, var_0, true))), select(!select(vec4<bool>(var_0, true, false, var_0), !vec4<bool>(var_0, var_0, var_0, true), func_1(vec2<u32>(58721u, global1[_wgslsmith_index_u32(var_1.b, 7u)]))), !(!(!vec4<bool>(var_0, false, var_0, false))), vec4<bool>(false, var_0, true, true)), vec4<bool>(true, select(all(!vec3<bool>(var_0, var_0, var_0)), var_0 | true, (u_input.a <= global4.x) || true), var_0, select(!var_0, true, var_0)));
    let var_3 = vec3<u32>(var_1.b, ~(select(func_3(220f, vec3<f32>(-865f, 674f, global3.x)).x, 122755u, true) >> (1u % 32u)), ~var_1.b);
    global0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(31327u, ~var_1.a), 0u, ~var_1.b) | 92719u;
    global4 = ~_wgslsmith_mult_vec3_i32(~vec3<i32>(global4.x, 37684i, global4.x), select(_wgslsmith_sub_vec3_i32(vec3<i32>(global4.x, u_input.a, 24197i), vec3<i32>(49901i, 8615i, -2147483647i)), vec3<i32>(u_input.a, -2147483647i, global4.x) ^ vec3<i32>(-13673i, -2147483647i, global4.x), var_2.xzy)) >> ((~(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 1u, 1u)) << (reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(19598u, var_1.a, 45867u), vec3<u32>(var_1.b, var_3.x, var_1.b)), ~42107u, ~var_1.a)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_4 = _wgslsmith_sub_i32(1i, func_2(vec2<i32>(17582i, global4.x), var_1, var_1).x);
    var var_5 = ~max(~select(_wgslsmith_mod_vec2_u32(var_3.yx, var_3.xx), vec2<u32>(var_1.b, var_1.b), true), max(min(var_3.yz, var_3.xz | var_3.yy), abs(var_3.xy)));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yy, ~_wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(global4.x, global4.x, global4.x, -2147483647i)), vec4<i32>(u_input.a, min(-30031i, global4.x), _wgslsmith_mult_i32(-21200i, u_input.a), _wgslsmith_dot_vec2_i32(global4.zy, vec2<i32>(15872i, 37091i)))), select(7632i, ~abs(reverseBits(u_input.a)), true), global4.x, 0u);
}

