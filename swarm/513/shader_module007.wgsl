struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(true, Struct_1(vec3<i32>(7407i, 11660i, -2831i), 4294967295u, 23680u, -1i)), Struct_2(false, Struct_1(vec3<i32>(0i, -1i, 1i), 0u, 0u, -16449i)), Struct_2(true, Struct_1(vec3<i32>(41304i, 1i, -7332i), 0u, 44047u, -2958i)), Struct_2(true, Struct_1(vec3<i32>(-26120i, -26512i, -1i), 0u, 44166u, 1i)), Struct_2(false, Struct_1(vec3<i32>(2147483647i, -17801i, 0i), 0u, 13101u, 1i)), Struct_2(true, Struct_1(vec3<i32>(-32902i, 18300i, -10390i), 4294967295u, 22217u, -1i)), Struct_2(true, Struct_1(vec3<i32>(-5976i, i32(-2147483648), -81306i), 27034u, 0u, 14512i)), Struct_2(false, Struct_1(vec3<i32>(0i, -1i, 0i), 0u, 41678u, 2490i)), Struct_2(true, Struct_1(vec3<i32>(2147483647i, -49320i, 53669i), 1u, 1u, -30267i)), Struct_2(true, Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), 49841u, 0u, -24248i)), Struct_2(false, Struct_1(vec3<i32>(2147483647i, 44420i, 2147483647i), 86482u, 4294967295u, 2147483647i)), Struct_2(false, Struct_1(vec3<i32>(0i, -1i, -42492i), 1u, 0u, -60101i)), Struct_2(false, Struct_1(vec3<i32>(-49823i, 0i, i32(-2147483648)), 1u, 0u, 1554i)), Struct_2(false, Struct_1(vec3<i32>(3418i, i32(-2147483648), 16179i), 38709u, 35275u, 13i)), Struct_2(false, Struct_1(vec3<i32>(-1i, -1i, -4258i), 4294967295u, 4294967295u, 0i)), Struct_2(true, Struct_1(vec3<i32>(i32(-2147483648), -14485i, 49264i), 1u, 4294967295u, -21246i)), Struct_2(true, Struct_1(vec3<i32>(1i, -7639i, -26006i), 39948u, 0u, 0i)), Struct_2(true, Struct_1(vec3<i32>(-1i, -21067i, -8370i), 1u, 53682u, 0i)), Struct_2(false, Struct_1(vec3<i32>(-29014i, 0i, 323i), 58919u, 0u, 34542i)), Struct_2(false, Struct_1(vec3<i32>(-6013i, 41122i, -36915i), 16594u, 0u, i32(-2147483648))));

var<private> global1: f32;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec3<i32>(1i, 6340i, i32(-2147483648)), 1u, 54107u, 1i), Struct_3(Struct_2(false, Struct_1(vec3<i32>(-21640i, 2147483647i, 1i), 17439u, 0u, 49341i)), Struct_1(vec3<i32>(-55483i, 2147483647i, 28018i), 4294967295u, 4294967295u, 97561i)), vec3<i32>(21679i, -29174i, 6221i), Struct_1(vec3<i32>(-23874i, -1i, -1i), 0u, 10870u, i32(-2147483648)), vec3<u32>(1u, 34649u, 3839u));

var<private> global3: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1u, 1u, 27785u, 56987u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(7595u, 4294967295u, 36336u, 1u), vec4<u32>(4294967295u, 65417u, 27054u, 0u), vec4<u32>(23774u, 0u, 4294967295u, 52384u), vec4<u32>(14589u, 27361u, 95705u, 111622u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(20377u, 0u, 3533u, 0u), vec4<u32>(9273u, 1u, 33267u, 4294967295u), vec4<u32>(1561u, 4294967295u, 4294967295u, 0u), vec4<u32>(58623u, 36661u, 36064u, 1u), vec4<u32>(18929u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 20781u, 1u, 29609u), vec4<u32>(0u, 28615u, 0u, 1u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 96721u), vec4<u32>(4294967295u, 65200u, 14637u, 4294967295u), vec4<u32>(25089u, 10729u, 0u, 2623u), vec4<u32>(54751u, 4736u, 1u, 94071u), vec4<u32>(4032u, 0u, 1u, 1u), vec4<u32>(8742u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 76297u, 32967u, 10252u), vec4<u32>(15963u, 1u, 4294967295u, 19076u), vec4<u32>(40416u, 0u, 35393u, 1u), vec4<u32>(1u, 44982u, 0u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<i32> {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-251f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-318f)), -276f, true)))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -2194f)));
    let var_0 = Struct_2(global2.b.a.a, Struct_1(vec3<i32>(-_wgslsmith_mod_i32(arg_1.d, -2147483647i), arg_1.d, 1i), ~(_wgslsmith_mult_u32(1u, global2.b.b.c) ^ _wgslsmith_add_u32(arg_1.c, global2.b.a.b.b)), ~(~arg_0.x), global2.a.a.x));
    return vec4<i32>(-28340i, -110i, -40968i, global2.c.x);
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(34583i, _wgslsmith_dot_vec4_i32(func_3(global2.e.zx, global2.b.b), -vec4<i32>(u_input.b, global2.c.x, 2147483647i, -1i)), _wgslsmith_div_i32(i32(-1i) * -1i, -1345i & global2.b.a.b.a.x)), firstTrailingBit((global2.d.a << (vec3<u32>(0u, 29319u, 80207u) % vec3<u32>(32u))) ^ -vec3<i32>(global2.c.x, -1i, u_input.a))), global2.d.b, abs(abs(reverseBits(_wgslsmith_mult_u32(47067u, 69834u)))), global2.b.b.d);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<bool>) -> vec2<bool> {
    global3 = array<vec4<u32>, 25>();
    let var_0 = Struct_4(func_2(), Struct_3(Struct_2(all(vec2<bool>(arg_3.x, global2.b.a.a)), global2.d), func_2()), vec3<i32>(-(i32(-1i) * -global2.a.a.x), 1i, select(-(~16047i), u_input.a, false)), Struct_1(vec3<i32>(2147483647i, -25641i, ~u_input.b), ~_wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(arg_0.x, 25u)], vec4<u32>(arg_0.x, global2.e.x, arg_1.b, 1u)), 108529u, _wgslsmith_div_i32(arg_2, firstLeadingBit(arg_1.a.x))), _wgslsmith_div_vec3_u32(global2.e, countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(global2.b.a.b.c, global2.d.b, arg_1.c), global2.e))));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.b.d, -func_2().d, 2147483647i), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, -1i, global2.b.b.d)), global2.c, global2.a.a | arg_1.a)), _wgslsmith_clamp_u32(func_2().c, 36779u, 36601u), ~arg_1.c, countOneBits(_wgslsmith_mod_i32(-1i, 32620i)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-430f))));
    global3 = array<vec4<u32>, 25>();
    return arg_3.wx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.a;
    var var_1 = (1289u >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u << (global2.a.c % 32u), ~4294967295u), ~4294967295u) % 32u)) & (var_0.b.b >> (global2.d.b % 32u));
    let var_2 = select(select(!(!func_1(global2.e.yz, Struct_1(var_0.b.a, 13673u, 4294967295u, 2147483647i), -1i, vec4<bool>(false, true, global2.b.a.a, true))), !vec2<bool>(global2.b.a.a, var_0.a || var_0.a), global2.b.a.a || true), vec2<bool>(true, global2.b.a.a), vec2<bool>(false, (9549i >> (global2.b.a.b.b % 32u)) > -3757i));
    let var_3 = _wgslsmith_div_i32(global2.b.b.a.x, -1i << (~4294967295u % 32u));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f - _wgslsmith_f_op_f32(f32(-1f) * -179f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1340f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1108f)))), any(!vec3<bool>(true, global2.b.a.a & false, true))));
    var var_4 = vec3<f32>(-452f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-285f, -742f)) + -354f)))), 662f);
    let var_5 = Struct_2(!var_2.x, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(min(i32(-1i) * -24333i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_5.b.a.x), -global2.d.a.xy)) ^ max(0i, -36789i), firstTrailingBit(~(~_wgslsmith_div_u32(1u, 1u))), _wgslsmith_mult_i32(var_5.b.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, global2.d.d, var_0.b.d, 75871i), vec4<i32>(var_3, global2.b.a.b.a.x, global2.a.a.x, -2147483647i) | vec4<i32>(var_3, 71384i, -1i, 9996i)), -vec4<i32>(var_3, 0i, 11928i, 5120i))), func_3(~(~global2.e.yy), var_0.b) << (~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.d.c, max(global2.a.c, var_5.b.c)), 25u)] % vec4<u32>(32u)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f), var_4.x), var_4.x, _wgslsmith_f_op_f32(-var_4.x)));
}

