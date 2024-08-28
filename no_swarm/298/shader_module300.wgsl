struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> bool {
    return global0[_wgslsmith_index_u32(reverseBits(~1u), 12u)];
}

fn func_3() -> u32 {
    global0 = array<bool, 12>();
    let var_0 = Struct_1(abs(46615u), vec2<f32>(1394f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 1000f), -1047f, true))))), !(!select(!vec3<bool>(global0[_wgslsmith_index_u32(40913u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], false), select(global0[_wgslsmith_index_u32(1u, 12u)], true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(164f)), _wgslsmith_div_f32(-520f, -1271f), _wgslsmith_f_op_f32(f32(-1f) * -196f)) - vec3<f32>(421f, 1131f, _wgslsmith_f_op_f32(f32(-1f) * -429f)))));
    var var_1 = var_0;
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    return countOneBits(1u) & ~(abs(_wgslsmith_clamp_u32(66417u, 39664u, 1u)) >> (~(~var_1.a) % 32u));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_1(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(abs(-526f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1000f) - _wgslsmith_f_op_f32(180f * 1249f)))), select(vec3<bool>(_wgslsmith_dot_vec2_u32(arg_0.xy, arg_0.zz) >= ~4294967295u, true, any(select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], false, global0[_wgslsmith_index_u32(1u, 12u)])))), !select(!vec3<bool>(global0[_wgslsmith_index_u32(94747u, 12u)], global0[_wgslsmith_index_u32(arg_0.x, 12u)], false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 12u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(arg_0.x, 12u)], global0[_wgslsmith_index_u32(22388u, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(7955u, 12u)], true, true)), any(vec2<bool>(false, false))), vec3<bool>(!func_2(Struct_2(72215i), Struct_2(-20972i), Struct_2(-53441i), u_input.b.x), false, true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-383f, 492f)) * _wgslsmith_f_op_f32(-1000f + 762f)), -1000f, -1237f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(sign(-1841f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_f_op_f32(ceil(-298f)))), 1027f)));
    global0 = array<bool, 12>();
    let var_1 = !(!func_2(Struct_2(i32(-1i) * -2147483647i), Struct_2(u_input.b.x), Struct_2(_wgslsmith_add_i32(-1i, u_input.b.x)), -32601i));
    global0 = array<bool, 12>();
    let var_2 = vec3<u32>(~var_0.a, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.a, max(arg_0.x, 1u)), func_3()), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~arg_0.yz, arg_0.zz), u_input.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 122183u, 4294967295u, arg_0.x), vec4<u32>(0u, 5680u, 4294967295u, 434u)), 1u), ~select(~vec4<u32>(71515u, 4294967295u, var_0.a, 0u), vec4<u32>(u_input.c, 56391u, u_input.a, var_0.a) << (vec4<u32>(3822u, 4294967295u, arg_0.x, arg_0.x) % vec4<u32>(32u)), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 12u)], var_1, global0[_wgslsmith_index_u32(7827u, 12u)]))));
    return _wgslsmith_dot_vec4_i32(~select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), -vec4<i32>(-1i, 2147483647i, u_input.b.x, u_input.b.x)), u_input.b, true), -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, u_input.b.x), ~u_input.b) | vec4<i32>(u_input.b.x, 2147483647i, ~u_input.b.x, u_input.b.x & min(4139i, -8334i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(func_1((_wgslsmith_sub_vec3_u32(vec3<u32>(46548u, 1u, 51500u), vec3<u32>(u_input.c, u_input.c, 0u)) | select(vec3<u32>(u_input.a, u_input.a, 7443u), vec3<u32>(18229u, u_input.c, u_input.a), vec3<bool>(global0[_wgslsmith_index_u32(65631u, 12u)], true, global0[_wgslsmith_index_u32(13905u, 12u)]))) | vec3<u32>(_wgslsmith_add_u32(30321u, u_input.c), firstLeadingBit(u_input.a), ~u_input.a)), u_input.b.x);
    var var_1 = select(select(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(54356u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)]), !select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, false)), !any(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], true))), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 12u)], all(vec4<bool>(global0[_wgslsmith_index_u32(15294u, 12u)], true, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)]))), any(vec4<bool>(!global0[_wgslsmith_index_u32(42999u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)] || true, true, func_2(Struct_2(1i), Struct_2(-2147483647i), Struct_2(25385i), -6339i)))), !select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], false, true)), select(vec3<bool>(true, false, true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], true)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)])), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], false, true)), all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(41551u, 12u)])), u_input.b.x < -26509i)), select(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(39332u, 12u)]), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(17217u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(60232u, 12u)])), vec3<bool>(true, true, true), true), select(!vec3<bool>(global0[_wgslsmith_index_u32(53147u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4060u, 12u)], false), vec3<bool>(global0[_wgslsmith_index_u32(24973u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], true), global0[_wgslsmith_index_u32(34546u, 12u)])), vec3<bool>(true, select(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]), global0[_wgslsmith_index_u32(u_input.c, 12u)])), select(select(vec3<bool>(global0[_wgslsmith_index_u32(85865u, 12u)], true, false), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)])), vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 12u)]), func_2(Struct_2(var_0), Struct_2(u_input.b.x), Struct_2(var_0), u_input.b.x)), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], false), !vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)], false), any(vec2<bool>(global0[_wgslsmith_index_u32(3559u, 12u)], false)))));
    var var_2 = _wgslsmith_f_op_f32(-1682f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(370f + -1766f), -1303f) * _wgslsmith_f_op_f32(f32(-1f) * -456f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-602f - _wgslsmith_f_op_f32(sign(430f))))));
    var var_3 = var_1.x;
    var var_4 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - 1060f), -2024f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1900f, -1115f), vec2<f32>(1496f, -2137f), var_1.x)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 429f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1638f, -266f))))), vec3<bool>(select(var_1.x, !any(var_1.xy), any(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 12u)], true))), all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], false, global0[_wgslsmith_index_u32(0u, 12u)]), var_1.x), select(vec3<bool>(true, true, var_1.x), vec3<bool>(global0[_wgslsmith_index_u32(43247u, 12u)], false, true), vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.a, 12u)], var_1.x)), vec3<bool>(false, var_1.x, false))), var_1.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) - -249f), _wgslsmith_f_op_f32(ceil(383f)), _wgslsmith_f_op_f32(select(-679f, -2203f, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-645f, 105f, -482f))))))));
    var var_5 = Struct_1(_wgslsmith_mod_u32(~u_input.c >> ((u_input.a & 1u) % 32u), u_input.a) >> (~0u % 32u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1135f, var_4.d.x) + var_4.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-503f, -1893f))), var_4.b)), var_4.d.xx, global0[_wgslsmith_index_u32(u_input.c, 12u)])))), select(select(vec3<bool>(true, false, true), !vec3<bool>(true, true, var_4.c.x), false), vec3<bool>(!all(vec4<bool>(true, var_4.c.x, false, true)), var_1.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 35030u), var_4.a & 4294967295u), 12u)]), !vec3<bool>(true, !var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-var_4.d));
    var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_div_u32(78016u, var_5.a) >> (var_5.a % 32u))), var_5.d.xy, select(-(~vec4<i32>(var_0, -2147483647i, var_0, -1i)) | -(~u_input.b), u_input.b, vec4<bool>(var_4.c.x & true, false && (var_1.x || global0[_wgslsmith_index_u32(var_5.a, 12u)]), var_4.c.x, true)), max(vec4<i32>(_wgslsmith_div_i32(u_input.b.x >> (33990u % 32u), -45831i), var_0, u_input.b.x, 2147483647i), abs(vec4<i32>(u_input.b.x, -23204i, var_0, -2147483647i))));
}

