struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(309f, 684f, -349f, 564f), vec4<f32>(-564f, -1451f, 157f, 693f), vec4<f32>(-803f, 1069f, -662f, 1204f), vec4<f32>(-680f, -249f, 174f, -571f), vec4<f32>(1853f, -1793f, 764f, -290f), vec4<f32>(1092f, -986f, -1531f, 294f), vec4<f32>(-834f, -501f, 1000f, 1000f), vec4<f32>(257f, -1571f, -1000f, -1000f), vec4<f32>(949f, -1778f, 869f, -1105f), vec4<f32>(-163f, 552f, 643f, -3069f), vec4<f32>(-633f, 117f, -1151f, 749f), vec4<f32>(-1000f, -682f, -1000f, 1000f), vec4<f32>(706f, 1335f, 1000f, -863f), vec4<f32>(-1988f, -438f, 1129f, 449f), vec4<f32>(482f, 147f, 1067f, 371f), vec4<f32>(-1085f, 1460f, 940f, -1639f), vec4<f32>(904f, 773f, -1000f, -1250f), vec4<f32>(121f, -171f, -291f, -930f), vec4<f32>(475f, -902f, -699f, 323f), vec4<f32>(-1000f, -974f, -182f, -905f), vec4<f32>(-1247f, 391f, 1515f, 771f), vec4<f32>(1027f, 673f, -664f, 527f), vec4<f32>(1000f, 373f, -1064f, 514f));

var<private> global1: Struct_5 = Struct_5(-1285f);

var<private> global2: array<u32, 11> = array<u32, 11>(1u, 25298u, 4294967295u, 25106u, 11461u, 51109u, 4294967295u, 0u, 24312u, 4294967295u, 19650u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<vec4<f32>, 23>();
    global2 = array<u32, 11>();
    var var_0 = true;
    var var_1 = reverseBits(~(vec3<i32>(firstLeadingBit(18923i), u_input.a, u_input.a) & ~vec3<i32>(-2147483647i, 2147483647i, 1297i)));
    let var_2 = !any(vec4<bool>(true, all(vec2<bool>(false, false)), !(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47437u, 11u)], 11u)], 11u)] > global2[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 1u) < (global2[_wgslsmith_index_u32(4294967295u, 11u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)] % 32u))));
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)] >> (~(~0u) % 32u);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_3(arg_1.x, vec4<bool>(reverseBits(~arg_2.x) > arg_2.x, !all(vec2<bool>(arg_0, arg_0)), !(global2[_wgslsmith_index_u32(~29739u, 11u)] <= 1u), false), Struct_2(Struct_1(vec4<i32>(38956i, u_input.a, u_input.a, u_input.a) & vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i), (vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 24086u, 29182u) >> (vec4<u32>(arg_2.x, arg_2.x, global2[_wgslsmith_index_u32(27800u, 11u)], 0u) % vec4<u32>(32u))) >> (~vec4<u32>(0u, global2[_wgslsmith_index_u32(1u, 11u)], arg_2.x, global2[_wgslsmith_index_u32(1u, 11u)]) % vec4<u32>(32u)), arg_2.zxx, ~(-vec3<i32>(u_input.a, 0i, u_input.a))), vec4<bool>(all(!vec2<bool>(arg_0, arg_0)), any(!vec4<bool>(false, true, arg_0, false)), arg_0, !arg_0)));
    var var_1 = false;
    global1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x));
    let var_2 = ~vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~arg_2.x >> (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10877u, 11u)], 11u)], 4294967295u, 4294967295u) % 32u), 11u)], var_0.c.a.c.x), 11u)], ~countOneBits(~global2[_wgslsmith_index_u32(48181u, 11u)]), var_0.c.a.c.x);
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~var_0.c.a.b), var_0.c.a.b) << (select(global2[_wgslsmith_index_u32(arg_2.x, 11u)], 56835u >> (0u % 32u), arg_0) % 32u), select(arg_2.x, ~(~select(39242u, var_0.c.a.b.x, false)), true), _wgslsmith_dot_vec4_u32(select(countOneBits(~vec4<u32>(0u, arg_2.x, 59115u, var_2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, var_2.x, var_0.c.a.b.x), ~vec4<u32>(arg_2.x, global2[_wgslsmith_index_u32(arg_2.x, 11u)], 9272u, 6140u)), false), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.x, arg_2.x, global2[_wgslsmith_index_u32(var_2.x, 11u)], 57383u)), var_0.c.a.b)));
    return ~(~_wgslsmith_sub_u32(~4294967295u, ~(var_3.x | 29581u)));
}

fn func_2() -> Struct_3 {
    var var_0 = func_4(false, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.a), vec4<u32>(24045u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28509u, 11u)], 11u)], 11u)], _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)]), func_3(global1.a)), 11u)], 11u)], _wgslsmith_dot_vec3_u32(vec3<u32>(8956u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)]) ^ vec3<u32>(global2[_wgslsmith_index_u32(8811u, 11u)], global2[_wgslsmith_index_u32(17284u, 11u)], 0u), abs(vec3<u32>(0u, 74332u, global2[_wgslsmith_index_u32(1u, 11u)])))), select(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 1u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(1u), 11u)], 11u)], 11u)], any(vec3<bool>(true, true, true)))));
    global2 = array<u32, 11>();
    global0 = array<vec4<f32>, 23>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(ceil(758f))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -1395f)))), vec4<bool>(all(select(vec3<bool>(var_1, false, true), vec3<bool>(false, var_1, var_1), var_1)) && any(select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, true), vec3<bool>(true, var_1, false))), var_1, all(vec3<bool>(!var_1, false, var_1)), var_1), Struct_2(Struct_1(-abs(vec4<i32>(-41517i, u_input.a, u_input.a, -2147483647i)), vec4<u32>(func_4(false, var_2.zz, vec4<u32>(28926u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 2959u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(60520u, 11u)]), 11u)], 11u)], ~global2[_wgslsmith_index_u32(4294967295u, 11u)], 22387u), abs(select(vec3<u32>(86612u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(0u, 11u)], 0u, 4294967295u), true)), vec3<i32>(~u_input.a, 1i, max(u_input.a, u_input.a))), !select(select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(true, true, false, var_1), vec4<bool>(true, true, var_1, var_1)), vec4<bool>(var_1, false, false, var_1), any(vec4<bool>(var_1, var_1, var_1, var_1)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: i32) -> vec2<u32> {
    var var_0 = func_2();
    let var_1 = Struct_4(var_0.a, Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1416f, arg_1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(arg_1.a, global1.a))), -var_0.c.a.a.x < (i32(-1i) * -2201i))), select(vec4<bool>(arg_0.x | arg_0.x, var_0.b.x != arg_0.x, true, !arg_0.x), select(select(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), var_0.c.b, vec4<bool>(arg_0.x, arg_0.x, false, true)), !var_0.b, var_0.b.x), var_0.c.b.x), func_2().c), func_2().c.a, var_0.c);
    let var_2 = min(vec4<u32>(global2[_wgslsmith_index_u32(1u, 11u)], min(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1816u, 11u)], 11u)], ~var_1.b.c.a.b.x), 11u)], _wgslsmith_mult_u32(~var_1.c.b.x, abs(global2[_wgslsmith_index_u32(47724u, 11u)]))), func_4(!any(var_0.b.zxw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(162f, -665f), vec2<f32>(var_1.b.a, global1.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 427f))), _wgslsmith_div_vec4_u32(var_1.d.a.b, func_2().c.a.b)), (24774u >> (_wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(var_0.c.a.c.x, 11u)], var_1.b.c.a.c.x) % 32u)) | var_1.b.c.a.b.x), vec4<u32>(~(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(80895u, 11u)], var_0.c.a.b.x) & (var_1.d.a.b.x ^ var_1.c.c.x)), func_2().c.a.c.x, ~var_1.d.a.b.x, ~var_1.b.c.a.c.x));
    let var_3 = ~(~116578u);
    var var_4 = Struct_1(vec4<i32>(-min(-5332i, u_input.a), _wgslsmith_clamp_i32(-91281i, -var_1.b.c.a.d.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.c.a.d.x, -1i), vec2<i32>(-21710i, var_0.c.a.a.x)), -8995i)), abs(_wgslsmith_sub_i32(var_0.c.a.d.x, var_0.c.a.d.x) & _wgslsmith_add_i32(32229i, var_1.c.a.x)), ~(~(~arg_2))), var_0.c.a.b, firstTrailingBit(var_0.c.a.c), var_1.d.a.d);
    return firstLeadingBit(~var_1.c.b.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 23>();
    var var_0 = firstLeadingBit(min(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 11u)], 11u)], ~0u)) << (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27150u, 11u)], 11u)], 11u)], 11u)] & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(8465u, 11u)]), 11u)], 11u)], 11u)], 11u)] >> (global2[_wgslsmith_index_u32(0u, 11u)] % 32u), global2[_wgslsmith_index_u32(firstLeadingBit(38456u), 11u)]) % 32u);
    let var_1 = _wgslsmith_div_vec2_u32(~(~(vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 11u)]) ^ vec2<u32>(1u, 3169u))), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76097u, 11u)], 11u)], 11u)], 11u)], 11u)], _wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27986u, 11u)], 11u)])) ^ ~firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(0u, 11u)], 1u))) ^ ~func_1(vec3<bool>(false, global1.a >= -1000f, true), Struct_5(1f), u_input.a);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(global1.a + func_2().a), Struct_3(global1.a, vec4<bool>(true, false, all(vec2<bool>(true, true)), true), Struct_2(Struct_1(vec4<i32>(-17413i, 1i, -20842i, u_input.a), ~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], var_1.x, 32285u), max(vec3<u32>(1u, 0u, 56904u), vec3<u32>(4294967295u, 4294967295u, var_1.x)), vec3<i32>(u_input.a, 2700i, u_input.a)), vec4<bool>(true, true, true, true))), func_2().c.a, Struct_2(func_2().c.a, vec4<bool>((u_input.a << (global2[_wgslsmith_index_u32(var_1.x, 11u)] % 32u)) == (u_input.a >> (67738u % 32u)), !(719f >= global1.a), true, select(true, true, true))));
    var var_3 = vec2<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.a), countOneBits(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1.a + 589f), ~_wgslsmith_add_u32(~0u, ~var_2.b.c.a.b.x) & 25899u);
}

