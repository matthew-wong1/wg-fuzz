struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    global0 = array<bool, 2>();
    let var_0 = _wgslsmith_f_op_f32(trunc(-1072f));
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    return ~vec4<i32>(arg_1, 25404i, arg_3.a.x, -2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.b.yy;
    var var_1 = Struct_1(reverseBits(firstLeadingBit(func_3(Struct_2(490f, vec4<i32>(0i, 450i, u_input.a.x, -1i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], true, global0[_wgslsmith_index_u32(0u, 2u)])), -2147483647i, var_0.x, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], false, global0[_wgslsmith_index_u32(4294967295u, 2u)]))) >> (vec4<u32>(u_input.d, 107677u, u_input.e, 1u) % vec4<u32>(32u)))), select(vec4<bool>(true, false, select(true, all(vec3<bool>(global0[_wgslsmith_index_u32(55925u, 2u)], false, global0[_wgslsmith_index_u32(0u, 2u)])), true), any(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 2u)], false, global0[_wgslsmith_index_u32(61712u, 2u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(max(35341u, 4468u), 2u)], var_0.x > 1u, true, any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(36943u, 2u)], false))), vec4<bool>(u_input.a.x != -1i, true, select(true, true, global0[_wgslsmith_index_u32(17800u, 2u)]), global0[_wgslsmith_index_u32(~46484u, 2u)]), false), all(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false, global0[_wgslsmith_index_u32(var_0.x, 2u)]))));
    var var_2 = all(select(select(!var_1.b.zz, !var_1.b.yy, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], var_1.b.x)), var_1.b.yx, !var_1.b.xy)) | var_1.b.x;
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    return Struct_1(_wgslsmith_add_vec4_i32(-var_1.a, abs(reverseBits(-vec4<i32>(-1i, 16041i, var_1.a.x, -2147483647i)))), select(!(!(!var_1.b)), vec4<bool>(var_1.b.x, !any(var_1.b.zzw), global0[_wgslsmith_index_u32(abs(1u), 2u)], !global0[_wgslsmith_index_u32(~62520u, 2u)]), false));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(true, true, !(!select(false, func_2().b.x, true)));
    let var_1 = _wgslsmith_dot_vec2_u32(~u_input.b.zx, firstLeadingBit(vec2<u32>(u_input.d, u_input.b.x) << (~u_input.c.zx % vec2<u32>(32u)))) & 4294967295u;
    let var_2 = arg_1;
    var var_3 = vec3<i32>(u_input.a.x, arg_1.a.x, -(0i ^ arg_1.a.x));
    global0 = array<bool, 2>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f))), _wgslsmith_sub_vec4_i32(arg_1.a, ~var_2.a), select(arg_2.b, select(!arg_2.b, vec4<bool>(true, true, func_2().b.x, global0[_wgslsmith_index_u32(~4294967295u, 2u)]), arg_2.b), var_0.x));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = func_4(!arg_0.c.x, func_2(), func_2());
    global0 = array<bool, 2>();
    var var_2 = max(_wgslsmith_div_vec4_i32(abs(-vec4<i32>(-1i, var_1.b.x, var_0.b.x, -72435i)), vec4<i32>(-(var_0.b.x << (u_input.d % 32u)), max(var_1.b.x, 17462i), -(~(-2147483647i)), 2147483647i)), arg_0.b);
    let var_3 = firstTrailingBit(firstLeadingBit(~(~vec4<u32>(1u, u_input.e, u_input.d, 1u) | u_input.b)));
    return Struct_2(_wgslsmith_f_op_f32(897f * _wgslsmith_div_f32(arg_0.a, func_4(false, func_2(), func_2()).a)), ~vec4<i32>(max(-38899i, arg_0.b.x), ~(-2147483647i), var_1.b.x, -1i), vec4<bool>(select(all(arg_0.c.zx), _wgslsmith_f_op_f32(arg_0.a - -1139f) == -682f, !(!var_1.c.x)), !any(var_1.c), countOneBits(24054i) >= reverseBits(u_input.a.x | var_0.b.x), all(func_2().b.xw)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-177f + _wgslsmith_f_op_f32(f32(-1f) * -1673f))));
    return func_4(global0[_wgslsmith_index_u32(~u_input.e, 2u)], func_2(), Struct_1(vec4<i32>(~u_input.a.x, ~(-2147483647i), u_input.a.x, abs(u_input.a.x)), select(arg_3.c, arg_0.c, !arg_0.c))).b.x != firstLeadingBit(-7193i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(664f, -370f)))));
    let var_1 = select(!(!vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(36209u, 2u)])), true, !global0[_wgslsmith_index_u32(31314u, 2u)])), vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.e, 2u)], true, !(true && global0[_wgslsmith_index_u32(u_input.e, 2u)])), true, global0[_wgslsmith_index_u32(47721u, 2u)]), !vec3<bool>(func_5(Struct_2(-1655f, vec4<i32>(u_input.a.x, u_input.a.x, -20212i, -69015i), vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 2u)], false)), vec3<f32>(var_0, -1000f, -778f), !vec3<bool>(global0[_wgslsmith_index_u32(59255u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], true), func_1(Struct_2(846f, vec4<i32>(u_input.a.x, 23967i, u_input.a.x, -2147483647i), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)])))), global0[_wgslsmith_index_u32(~88109u, 2u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x))), 2u)]));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-546f, var_0, var_0, var_0)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, var_0, var_0)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), func_4(true, Struct_1(vec4<i32>(u_input.a.x, 25678i, u_input.a.x, u_input.a.x), vec4<bool>(var_1.x, var_1.x, true, true)), Struct_1(vec4<i32>(u_input.a.x, -8341i, u_input.a.x, -1689i), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], var_1.x, global0[_wgslsmith_index_u32(1u, 2u)]))).a), _wgslsmith_div_f32(272f, 701f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1723f, 1f, _wgslsmith_f_op_f32(round(var_0)), var_0) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1429f, var_0, var_0, var_0) - vec4<f32>(1500f, 411f, -388f, var_0)) + vec4<f32>(var_0, -430f, -471f, -784f))))));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), var_0), _wgslsmith_f_op_f32(-var_0), 242f, var_2.x);
    var var_4 = select(vec2<bool>(-1i >= u_input.a.x, true), var_1.zz, !select(func_4(var_3.x != -1118f, Struct_1(vec4<i32>(0i, u_input.a.x, 2147483647i, 2147483647i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 2u)], true, true, true)), func_2()).c.yy, vec2<bool>(true, true), var_1.x));
    let var_5 = Struct_1(max(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-50954i, -11416i, 35188i, -1i), vec4<i32>(0i, u_input.a.x, 1i, 7686i), vec4<i32>(1i, u_input.a.x, -29026i, u_input.a.x)), vec4<i32>(15535i << (u_input.e % 32u), func_1(Struct_2(var_0, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(8039u, 2u)], true))).b.x, 488i ^ u_input.a.x, 1i)), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(1i, u_input.a.x))), vec4<bool>(global0[_wgslsmith_index_u32(9869u, 2u)] & false, true && !(!var_4.x), global0[_wgslsmith_index_u32((440u | u_input.d) ^ ~_wgslsmith_clamp_u32(u_input.b.x, u_input.e, u_input.c.x), 2u)], func_1(Struct_2(_wgslsmith_f_op_f32(max(214f, var_3.x)), func_4(var_4.x, Struct_1(vec4<i32>(-1i, -4482i, u_input.a.x, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], var_4.x, false, true)), Struct_1(vec4<i32>(44374i, -2147483647i, 0i, u_input.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(57473u, 2u)], true, global0[_wgslsmith_index_u32(68527u, 2u)]))).b, func_4(var_1.x, Struct_1(vec4<i32>(-23606i, u_input.a.x, -26987i, u_input.a.x), vec4<bool>(false, var_4.x, true, var_1.x)), Struct_1(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.e, 2u)], false))).c)).c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.a.yzz, vec4<f32>(_wgslsmith_f_op_f32(-func_1(Struct_2(-366f, vec4<i32>(1i, u_input.a.x, 6213i, -104870i), var_5.b)).a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(-1036f, var_0)), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(688f * -1000f), var_3.x, true))), _wgslsmith_f_op_f32(max(var_2.x, -113f))), var_5.a.wxx);
}

