struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<f32, 31> = array<f32, 31>(-205f, 877f, 1000f, -1979f, 3145f, 801f, 1336f, 303f, -961f, 213f, -1168f, 2459f, -1193f, 291f, 344f, 550f, 547f, -213f, -3068f, -1684f, 951f, -1598f, 1000f, -445f, -884f, -1245f, 1533f, 683f, -978f, 229f, 1000f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    var var_0 = ~(~(~min(~vec3<u32>(1u, 35155u, 55010u), vec3<u32>(1u, 1u, 1u))));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 31u)];
    let var_2 = Struct_1(~vec4<u32>(var_0.x, ~var_0.x, ~var_0.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, var_0.x), var_0.x)), var_0.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(861f, arg_0.x, true)), 1388f))), 623f, 604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * 1736f))))));
    var var_3 = vec3<f32>(317f, 835f, global1[_wgslsmith_index_u32(var_2.b, 31u)]);
    var var_4 = abs(reverseBits(_wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-1i, u_input.a.x, arg_1)), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, arg_1, u_input.a.x)))) >> (reverseBits(_wgslsmith_mult_vec3_u32(max(var_2.a.xxx, var_2.a.xzz), vec3<u32>(49024u, 1u, 4294967295u))) % vec3<u32>(32u)));
    return 1u;
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 12>();
    global1 = array<f32, 31>();
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(firstTrailingBit(33794u), 16491u, _wgslsmith_clamp_u32(1u, 49103u, 33493u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 21156u), vec4<u32>(28383u, 13096u, 28064u, 0u))), select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(39047u, 34495u), vec2<u32>(0u, 4294967295u)), 4294967295u, ~4294967295u, 4294967295u), vec4<u32>(1u, func_3(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(69706u, 31u)], global1[_wgslsmith_index_u32(60754u, 31u)], global1[_wgslsmith_index_u32(52366u, 31u)]), 0i), 4309u >> (1u % 32u), 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 12u)])), func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(233f * 138f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(59250u, 31u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(17057u, 31u)] * global1[_wgslsmith_index_u32(9031u, 31u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(66542u, 31u)]))))), ~firstLeadingBit(-17060i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-965f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(13749u, 31u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)] + global1[_wgslsmith_index_u32(4294967295u, 31u)])), vec4<f32>(-276f, _wgslsmith_f_op_f32(trunc(-2868f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)] + global1[_wgslsmith_index_u32(16291u, 31u)]), _wgslsmith_f_op_f32(768f * global1[_wgslsmith_index_u32(2685u, 31u)])))), vec4<f32>(1324f, -311f, 1112f, -644f))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.x);
    let var_2 = _wgslsmith_dot_vec2_u32(abs(var_0.a.zx), var_0.a.xw) >> (~var_0.a.x % 32u);
    return Struct_2(reverseBits(1i));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0, arg_0), _wgslsmith_add_u32(0u, 25626u), firstTrailingBit(arg_0), arg_0 & 1u), reverseBits(vec4<u32>(39924u, arg_0, arg_0, 1u))), 31u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1052f - global1[_wgslsmith_index_u32(3418u, 31u)])));
    let var_1 = firstLeadingBit(vec2<u32>(arg_0 ^ 0u, arg_0));
    let var_2 = vec4<u32>(var_1.x, ~abs(_wgslsmith_div_u32(abs(arg_0), var_1.x | arg_0)), ~(_wgslsmith_clamp_u32(var_1.x | arg_0, 0u, 37339u) >> ((var_1.x | max(var_1.x, 822u)) % 32u)), arg_0);
    let var_3 = _wgslsmith_sub_vec2_i32(u_input.a.xz, min(abs(u_input.a.zx), ~vec2<i32>(_wgslsmith_mult_i32(56602i, arg_1), -2428i)));
    var var_4 = Struct_1(var_2, ~arg_0 << (~_wgslsmith_mod_u32(countOneBits(arg_0), _wgslsmith_div_u32(4294967295u, 17870u)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1849f), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~10248u, 31u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.x, 31u)] * global1[_wgslsmith_index_u32(20224u, 31u)]), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_2.x << (4294967295u % 32u), 31u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 31u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_1.x, 31u)], 463f)) + global1[_wgslsmith_index_u32(~12821u, 31u)]))));
    return firstLeadingBit(~_wgslsmith_add_i32(func_2().a, arg_2.a) | ~1i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    var var_0 = (vec3<i32>(u_input.a.x | -u_input.a.x, u_input.a.x, 50155i) >> (~firstLeadingBit(reverseBits(vec3<u32>(arg_0.x, arg_0.x, arg_0.x))) % vec3<u32>(32u))) & abs(vec3<i32>(28625i, _wgslsmith_add_i32(34857i, abs(u_input.a.x)), u_input.a.x));
    var var_1 = u_input.a;
    var_0 = ~u_input.a;
    var var_2 = vec2<i32>(func_4(92790u, ~_wgslsmith_mod_i32(-1i, var_1.x), func_2(), select(vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(true, arg_2), true), -775f == global1[_wgslsmith_index_u32(arg_0.x & 0u, 31u)])), -1i);
    var var_3 = select(select(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 12u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], arg_2, arg_2), arg_2), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], true, global0[_wgslsmith_index_u32(4294967295u, 12u)]), !vec3<bool>(arg_2, arg_2, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 31u)] <= arg_1.x, false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 8232u, 43639u, 4294967295u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, 50985u)), 12u)]), vec3<bool>(all(vec4<bool>(arg_2, false, arg_2, true)), any(vec4<bool>(false, arg_2, false, false)), all(vec2<bool>(false, arg_2))), select(vec3<bool>(arg_2, false, false), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_2, global0[_wgslsmith_index_u32(arg_0.x, 12u)]), arg_2)), vec3<bool>(true, any(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], false, global0[_wgslsmith_index_u32(arg_0.x, 12u)], arg_2)), !(arg_1.x >= global1[_wgslsmith_index_u32(arg_0.x, 31u)]))), !(!vec3<bool>(global0[_wgslsmith_index_u32(abs(0u), 12u)], true, true)), !(global1[_wgslsmith_index_u32(~arg_0.x, 31u)] != _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44162u, arg_0.x, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x)), 31u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 31u)], !arg_2))));
    return global1[_wgslsmith_index_u32(arg_0.x, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    global1 = array<f32, 31>();
    let var_1 = u_input.a.x;
    var var_2 = ~select(~vec2<u32>(1u, 1u), firstLeadingBit(~vec2<u32>(27501u, 6437u)), select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(56390u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(39928u, 12u)], false)), global0[_wgslsmith_index_u32(4294967295u, 12u)] & global0[_wgslsmith_index_u32(1u, 12u)])) & countOneBits(max(~vec2<u32>(1u, 1u), vec2<u32>(1u, 2922u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 40968u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(15590u, 1u))));
    var var_3 = 0u;
    let var_4 = var_2.x << (var_2.x % 32u);
    var var_5 = reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~var_4, ~20710u), ~firstTrailingBit(vec2<u32>(4294967295u, var_2.x))), vec2<u32>(var_4, _wgslsmith_add_u32(4294967295u, countOneBits(var_4))), firstTrailingBit(vec2<u32>(1u, 1u))));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(var_5.x, 4294967295u), vec3<f32>(global1[_wgslsmith_index_u32(var_2.x, 31u)], -531f, 941f), global0[_wgslsmith_index_u32(61709u, 12u)])), _wgslsmith_f_op_f32(floor(-1255f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(771f)), _wgslsmith_f_op_f32(f32(-1f) * -1124f))), _wgslsmith_f_op_f32(func_1(~vec2<u32>(var_4, 49198u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 431f, global1[_wgslsmith_index_u32(71120u, 31u)]))), all(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(156f)), _wgslsmith_f_op_f32(f32(-1f) * -2491f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_4, 31u)])) - vec3<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_4, 31u)], global1[_wgslsmith_index_u32(93164u, 31u)])), -212f, _wgslsmith_f_op_f32(1345f - 868f)))), firstLeadingBit(var_6), -3905i, vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.x, 0u), ~var_4), ~var_5.x, ~abs(var_4)), -1i);
}

