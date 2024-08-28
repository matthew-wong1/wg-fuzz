struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1000f, 397f, 960f, -248f, 379f, 537f, -610f, -155f, -211f, -1268f, -1068f, -2301f, -1000f, -1418f, -635f, 223f, 382f, -1755f, -393f, 132f, -1814f, 696f, 1181f, -1395f, -817f);

var<private> global1: bool = true;

var<private> global2: array<bool, 26> = array<bool, 26>(true, true, true, false, true, true, false, true, false, false, false, true, true, false, true, true, true, true, false, true, true, false, false, false, false, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(Struct_1(true)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~u_input.b, 1132i), 0i, u_input.b), ~(u_input.c.yyz | abs(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)))), Struct_1(any(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 26u)], false))));
    var var_1 = vec2<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(10016u, 0u), 26u)], var_0.c.a, true), select(!vec3<bool>(false, false, var_0.a.a.a), vec3<bool>(var_0.c.a, global2[_wgslsmith_index_u32(67028u, 26u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], true)), select(!vec3<bool>(global2[_wgslsmith_index_u32(9875u, 26u)], false, global2[_wgslsmith_index_u32(arg_0, 26u)]), select(vec3<bool>(false, var_0.a.a.a, true), vec3<bool>(false, var_0.c.a, true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(1u, 26u)])), vec3<bool>(false, false, true)))), !(!any(vec4<bool>(var_0.a.a.a, false, true, true)) || var_0.a.a.a));
    let var_2 = Struct_3(Struct_2(var_0.a.a), vec3<i32>(1i, abs(_wgslsmith_mult_i32(1i, var_0.b.x)), abs(_wgslsmith_div_i32(-4620i, -12468i))), Struct_1(all(vec3<bool>(false, arg_0 > arg_0, !var_1.x))));
    var var_3 = vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, 2147483647i), -var_0.b.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, _wgslsmith_sub_i32(var_2.b.x, u_input.b), var_2.b.x, _wgslsmith_div_i32(-1i, var_2.b.x)), vec4<i32>(-var_2.b.x, select(-38175i, 47403i, true), 2147483647i, var_0.b.x)), ~min(var_0.b.x, -22555i));
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~64828u, 25u)])))), 323f)));
    return vec3<bool>(all(vec3<bool>(1881f >= _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_0, 25u)], 1032f, var_0.c.a)), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, arg_0), 26u)], all(select(vec3<bool>(false, false, true), vec3<bool>(var_2.a.a.a, false, global2[_wgslsmith_index_u32(arg_0, 26u)]), false)))), var_4.x != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(0u), 25u)]), (all(vec3<bool>(false, var_1.x, var_0.a.a.a)) | (true | any(vec3<bool>(true, false, var_0.c.a)))) | (reverseBits(var_3.x ^ var_3.x) >= 0i));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = -22380i;
    let var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(true));
    global1 = all(!func_3(737u));
    var var_3 = firstTrailingBit((reverseBits(u_input.c.x) >> (52613u % 32u)) >> (50217u % 32u)) != min(u_input.c.x, -_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, 17203i), -14988i));
    return abs(select(~firstLeadingBit(~10487u), 35867u >> (~select(0u, 26492u, var_2.a.a) % 32u), all(select(vec3<bool>(var_2.a.a, global2[_wgslsmith_index_u32(33029u, 26u)], true), vec3<bool>(var_2.a.a, var_2.a.a, true), true))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    global2 = array<bool, 26>();
    global1 = !(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(67458u, 25u)], -170f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2308f, global0[_wgslsmith_index_u32(116788u, 25u)])))) != max(countOneBits(~1u), ~firstLeadingBit(1u)));
    let var_0 = Struct_1(!all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 26u)], arg_0.a, true, arg_0.a)) || true);
    global0 = array<f32, 25>();
    global2 = array<bool, 26>();
    return !vec2<bool>(var_0.a, global2[_wgslsmith_index_u32(~select(52025u, 0u, true) << (1u % 32u), 26u)]);
}

fn func_4(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = firstLeadingBit(-u_input.c.yz);
    global0 = array<f32, 25>();
    let var_1 = Struct_1(!all(arg_0) || global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(108364u, 25u)], global0[_wgslsmith_index_u32(49293u, 25u)]) * vec2<f32>(-579f, global0[_wgslsmith_index_u32(70908u, 25u)]))), ~(~1u)), 26u)]);
    var var_2 = !vec4<bool>(var_1.a, global0[_wgslsmith_index_u32(~0u, 25u)] < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 25u)]), all(func_3(_wgslsmith_clamp_u32(35417u, 0u, 1u)).yx), (u_input.c.x < var_0.x) | (var_1.a || true));
    var var_3 = var_1;
    return Struct_3(Struct_2(var_1), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.a, 0i, u_input.a, -83929i)), u_input.b), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0), _wgslsmith_div_vec2_i32(var_0, vec2<i32>(u_input.a, 19283i))) << ((83424u << (firstTrailingBit(44214u) % 32u)) % 32u), -min(u_input.c.x ^ u_input.c.x, ~0i)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(func_1(Struct_1(global2[_wgslsmith_index_u32(0u, 26u)]), u_input.c.x ^ -36685i), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)])), !global2[_wgslsmith_index_u32(abs(4294967295u), 26u)]));
    let var_1 = var_0;
    var var_2 = var_1.b.x & -2147483647i;
    var var_3 = Struct_3(func_4(func_3(~abs(27914u)).xz).a, var_1.b ^ abs(~min(var_1.b, u_input.c.zwy)), func_4(vec2<bool>(false, var_1.c.a)).c);
    var var_4 = ~35427u;
    var var_5 = func_4(vec2<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(32693u, _wgslsmith_clamp_u32(4294967295u, 51365u, 0u)), 26u)], var_0.c.a)).a;
    let var_6 = vec4<i32>(abs(-16593i), 2147483647i, var_1.b.x, u_input.b);
    var var_7 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, 20079u, 0u), vec4<u32>(26385u, 102900u, 49476u, 25813u), vec4<bool>(false, var_5.a.a, false, false)) >> (~vec4<u32>(0u, 40261u, 44718u, 17304u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 37249u), vec3<u32>(1u, 0u, 104658u)), _wgslsmith_mult_u32(4294967295u, 0u), 1u, 4294967295u))), _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(func_2(vec2<f32>(1037f, -432f)), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18253u, 0u, 27552u), vec4<u32>(4294967295u, 4294967295u, 6142u, 4294967295u)))), ~(0u << (max(_wgslsmith_dot_vec2_u32(vec2<u32>(58560u, 4294967295u), vec2<u32>(4294967295u, 85229u)), _wgslsmith_clamp_u32(1u, 49599u, 8768u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-29542i, abs(~40586i)), _wgslsmith_dot_vec2_u32(select(abs(~vec2<u32>(4294967295u, 8011u)), reverseBits(vec2<u32>(1u, 28862u)), vec2<bool>(true, true)), reverseBits(vec2<u32>(0u, 0u))), vec3<f32>(global0[_wgslsmith_index_u32(min(~_wgslsmith_sub_u32(0u, 0u), select(0u, countOneBits(60396u), var_1.a.a.a)), 25u)], global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(select(13775u, 21343u, global2[_wgslsmith_index_u32(4294967295u, 26u)]), ~18839u), 25u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(0u, 1u, global2[_wgslsmith_index_u32(1u, 26u)]), 25u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 25u)]), var_6.wz & var_0.b.zz);
}

