struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, true, true, false, true, false, false, false, false, false, true, true, true, true, false, false);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1u, vec2<i32>(i32(-2147483648), 20114i), vec3<f32>(-226f, 1000f, 218f), -26366i), Struct_1(47772u, vec2<i32>(i32(-2147483648), -3685i), vec3<f32>(1000f, -896f, -319f), -1i), Struct_1(0u, vec2<i32>(-28495i, 2147483647i), vec3<f32>(-868f, -1737f, -434f), -20870i), Struct_1(78712u, vec2<i32>(1i, 2147483647i), vec3<f32>(1000f, 287f, -1897f), i32(-2147483648)), Struct_1(40140u, vec2<i32>(1i, 12733i), vec3<f32>(1137f, -230f, -2309f), -15252i), Struct_1(0u, vec2<i32>(i32(-2147483648), 1i), vec3<f32>(-1000f, 668f, 186f), -1i), Struct_1(4294967295u, vec2<i32>(-1i, -1i), vec3<f32>(797f, 1000f, 1131f), 20261i), Struct_1(55084u, vec2<i32>(1i, 64649i), vec3<f32>(-199f, 197f, 1267f), 1i), Struct_1(1u, vec2<i32>(2147483647i, -51667i), vec3<f32>(-1215f, 1000f, -2457f), i32(-2147483648)), Struct_1(3784u, vec2<i32>(64376i, -1i), vec3<f32>(-2467f, -782f, -244f), -15902i), Struct_1(4294967295u, vec2<i32>(0i, -1i), vec3<f32>(1780f, 581f, -1505f), -1i), Struct_1(1u, vec2<i32>(2147483647i, 2147483647i), vec3<f32>(-1000f, 1106f, -405f), -9570i), Struct_1(1u, vec2<i32>(1i, -1i), vec3<f32>(1000f, -548f, -933f), -5216i), Struct_1(45403u, vec2<i32>(1i, 23531i), vec3<f32>(-459f, 625f, 1000f), -1i), Struct_1(1u, vec2<i32>(12181i, 1i), vec3<f32>(-786f, -1321f, -853f), i32(-2147483648)), Struct_1(25060u, vec2<i32>(2147483647i, -879i), vec3<f32>(-315f, -459f, -648f), -1i), Struct_1(128868u, vec2<i32>(1i, 2051i), vec3<f32>(252f, -1751f, -1224f), -13319i), Struct_1(6608u, vec2<i32>(1i, i32(-2147483648)), vec3<f32>(-447f, 296f, -324f), 42065i), Struct_1(1u, vec2<i32>(-12545i, -1094i), vec3<f32>(-1585f, -787f, 159f), 0i), Struct_1(15679u, vec2<i32>(11052i, -1i), vec3<f32>(-465f, 492f, -577f), 10109i), Struct_1(1852u, vec2<i32>(64707i, i32(-2147483648)), vec3<f32>(454f, 279f, -3150f), 0i), Struct_1(0u, vec2<i32>(-1i, 0i), vec3<f32>(1000f, 1000f, 643f), -47464i), Struct_1(15718u, vec2<i32>(13807i, -1i), vec3<f32>(-434f, 378f, -1758f), -1i), Struct_1(0u, vec2<i32>(-59764i, 24262i), vec3<f32>(-251f, 1667f, 665f), -21606i), Struct_1(4294967295u, vec2<i32>(i32(-2147483648), -1i), vec3<f32>(-633f, -411f, 534f), -38674i), Struct_1(4294967295u, vec2<i32>(0i, -11002i), vec3<f32>(-378f, 1000f, -258f), i32(-2147483648)), Struct_1(0u, vec2<i32>(-20984i, -35946i), vec3<f32>(-1700f, 531f, -119f), 19386i), Struct_1(13099u, vec2<i32>(1i, -4171i), vec3<f32>(1000f, -195f, -405f), -1i), Struct_1(44712u, vec2<i32>(i32(-2147483648), -3869i), vec3<f32>(-592f, 928f, 185f), 1i));

var<private> global2: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-6949i, i32(-2147483648), 12448i, 1i), vec4<i32>(-1i, 2147483647i, 70852i, -19778i), vec4<i32>(i32(-2147483648), 1i, -1i, -7898i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~u_input.e, vec2<i32>(u_input.d, abs(i32(-1i) * -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -913f, 576f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(125f, 669f, 1000f) + vec3<f32>(749f, 1707f, -1833f)), global0[_wgslsmith_index_u32(select(9365u, u_input.c, true), 16u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, 510f, -1604f)))), firstTrailingBit(~(u_input.b >> (0u % 32u))));
    global0 = array<bool, 16>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 16u)];
    let var_2 = all(!select(select(vec2<bool>(true, true), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 16u)]), !global0[_wgslsmith_index_u32(4294u, 16u)]), vec2<bool>(true, true), false));
    global1 = array<Struct_1, 29>();
    return ~(~u_input.c) >> (countOneBits(_wgslsmith_div_u32(~3228u, u_input.a)) % 32u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 29u)];
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)) * _wgslsmith_f_op_f32(round(arg_0.c.x)))), -1000f)));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(-165f - 427f) < var_0.c.x, global0[_wgslsmith_index_u32(func_3(), 16u)]);
    let var_4 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(46614u, var_1.a, u_input.a, max(~var_0.a, ~arg_0.a)), vec4<u32>(~arg_0.a, _wgslsmith_clamp_u32(~(~111980u), abs(var_0.a), 4294967295u), ~max(u_input.e, firstTrailingBit(var_0.a)), var_1.a), vec4<u32>(abs(_wgslsmith_mod_u32(90724u, 1u)), firstLeadingBit(countOneBits(1823u >> (var_0.a % 32u))), _wgslsmith_mult_u32(~(u_input.c | arg_0.a), u_input.a), 18071u));
    return Struct_1(~reverseBits(u_input.c), -(~(~vec2<i32>(var_0.b.x, -2147483647i) | var_1.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(-var_0.c.x), -119f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2620f, var_1.c.x, var_1.c.x), _wgslsmith_f_op_vec3_f32(-arg_0.c))) + var_1.c)), abs(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.d, u_input.d, 0i), vec3<i32>(5070i, 1i, -59777i)), firstTrailingBit(vec3<i32>(var_1.b.x, var_0.b.x, 47055i)))));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<i32>, 3>();
    var var_0 = func_2(Struct_1(~firstTrailingBit(1u), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.b, 22272i), u_input.d), -(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(0u, 3923u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1112f)), _wgslsmith_div_f32(1107f, 1906f), -1000f) - vec3<f32>(1f, 1f, 1f)), u_input.d));
    let var_1 = -(select(-(vec4<i32>(0i, u_input.d, 10806i, var_0.d) >> (vec4<u32>(4294967295u, var_0.a, u_input.c, 57391u) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(max(85672u, ~1u), 3u)], false) >> (abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.a, 115106u, var_0.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.a, 4294967295u, var_0.a), vec4<u32>(21564u, var_0.a, 1u, 49511u), vec4<u32>(var_0.a, 0u, u_input.a, u_input.a)))) % vec4<u32>(32u)));
    let var_2 = func_2(func_2(global1[_wgslsmith_index_u32(~countOneBits(var_0.a), 29u)]));
    var var_3 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    var var_0 = func_1();
    let var_1 = -min(~global2[_wgslsmith_index_u32(abs(0u), 3u)] & vec4<i32>(~u_input.b, -2147483647i, ~(-1i), -var_0.d), vec4<i32>(~34121i >> (u_input.c % 32u), -min(-38054i, 8249i), 22606i, _wgslsmith_clamp_i32(12231i, -2147483647i, func_1().d)));
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_sub_vec2_i32(var_1.zy, vec2<i32>(var_1.x, -2147483647i))), var_1.xy)) << (countOneBits(select(abs(select(vec2<u32>(29771u, var_0.a), vec2<u32>(110185u, 73483u), global0[_wgslsmith_index_u32(1u, 16u)])), vec2<u32>(u_input.a, 7024u), !any(vec4<bool>(false, global0[_wgslsmith_index_u32(3017u, 16u)], global0[_wgslsmith_index_u32(24140u, 16u)], false)))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(608f + _wgslsmith_f_op_f32(sign(var_0.c.x))) * var_0.c.x) >= var_0.c.x;
    var var_4 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -307f), -619f)) * var_0.c.x), func_1().c.x, var_0.c.x);
    var_2 = vec2<i32>(u_input.d, 58365i);
    var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~(~vec4<u32>(4294967295u, 4294967295u, var_0.a, 18586u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 1u, u_input.c, 1u), vec4<u32>(var_0.a, u_input.e, var_0.a, var_0.a)), abs(vec4<u32>(u_input.e, 93227u, u_input.a, var_0.a)), true && global0[_wgslsmith_index_u32(var_0.a, 16u)]), true)));
}

