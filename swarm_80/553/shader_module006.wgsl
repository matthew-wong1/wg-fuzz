struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 20> = array<f32, 20>(-885f, -989f, 303f, -2485f, 420f, 822f, -757f, 2541f, 426f, 649f, -343f, -2552f, -1612f, 1562f, -104f, -215f, 106f, -372f, 925f, -2984f);

var<private> global2: array<f32, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_add_u32(u_input.a.x, ~(12420u >> (u_input.a.x % 32u))) | (~u_input.a.x << ((u_input.a.x ^ firstLeadingBit(1u)) % 32u)), Struct_2(false, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_f32(560f + global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), false), u_input.a.x, arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(30379u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]) - vec2<f32>(-481f, global2[_wgslsmith_index_u32(u_input.a.x, 28u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(62316u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)]) + vec2<f32>(-728f, 1294f)))), true || any(vec2<bool>(arg_0, arg_0)))));
    var var_1 = vec2<bool>(var_0.b.a, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(var_0.b.c, 28u)], 554f)))));
    global2 = array<f32, 28>();
    var var_3 = 2163f;
    return var_0.b.b.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(22833u, 28u)], -1188f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-107f, -431f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)]))) * _wgslsmith_f_op_vec2_f32(-arg_0.yz)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-406f, arg_0.x) + arg_0.yy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, u_input.c.x, u_input.b)) - arg_0.yx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1491f) * -930f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(397f - _wgslsmith_f_op_f32(1063f * global1[_wgslsmith_index_u32(0u, 20u)])))));
    let var_1 = select(!vec4<bool>(false, min(u_input.a.x, 0u) <= u_input.a.x, false, false), select(vec4<bool>(var_0.b, ~u_input.a.x >= 1u, any(vec3<bool>(var_0.b, var_0.b, true)) & (var_0.b & false), true), vec4<bool>(!any(vec4<bool>(true, var_0.b, var_0.b, true)), var_0.b, (var_0.b | var_0.b) & true, false | var_0.b), false), !vec4<bool>(all(!vec3<bool>(false, var_0.b, var_0.b)), !(1u <= u_input.a.x), any(!vec3<bool>(var_0.b, var_0.b, true)), all(!vec3<bool>(true, var_0.b, true))));
    let var_2 = 2176f;
    return Struct_2(true, Struct_1(var_0.a, var_0.b), ~(~_wgslsmith_add_u32(reverseBits(u_input.a.x), u_input.a.x)), var_1.x, var_0);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_1 * 649f), _wgslsmith_f_op_f32(-864f * arg_1)))))));
    let var_1 = u_input.a.xx;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(1432f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_1), 28u)]))), 231f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.e.a.x, arg_0.b.e.a.x, arg_1, 438f) + vec4<f32>(arg_3.b.a.x, 435f, 106f, 1892f)) + vec4<f32>(1006f, arg_3.e.a.x, arg_3.b.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 20u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, arg_0.b.b.a.x, var_0.x, global1[_wgslsmith_index_u32(1u, 20u)]))))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(select(arg_3.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_3.b.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-801f, var_2.x) + arg_0.b.e.a)), select(!arg_2.x, true, all(!vec2<bool>(arg_2.x, false))))), vec3<bool>(arg_2.x, false, select(select(arg_0.b.b.b, arg_2.x & arg_2.x, arg_0.b.e.b), true, !(true == arg_2.x))), arg_3.e);
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-343f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_0.b.c), 28u)])))), select(vec3<bool>(true, !all(var_3.b), select(select(var_3.b.x, arg_3.e.b, true), true, select(arg_0.b.d, true, arg_0.b.d))), vec3<bool>(false, arg_2.x, arg_0.b.d), arg_3.a), arg_0.b.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.b.b.a, vec2<f32>(1000f, arg_0.b.b.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x, 20u)] + arg_3.e.a.x), _wgslsmith_f_op_f32(195f * 490f))))), 136f >= _wgslsmith_f_op_f32(735f * _wgslsmith_f_op_f32(max(-477f, _wgslsmith_f_op_f32(413f + arg_3.b.a.x)))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = u_input.c.zy;
    global2 = array<f32, 28>();
    global2 = array<f32, 28>();
    let var_1 = arg_0.b.a;
    let var_2 = Struct_3(abs(11686u ^ max(14265u, _wgslsmith_mult_u32(0u, u_input.a.x))), arg_0);
    return var_2.b;
}

fn func_1(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_3(0u ^ arg_0.x, func_5(Struct_2(select(false, false, false) && true, func_4(Struct_3(84565u, Struct_2(false, Struct_1(vec2<f32>(-1182f, -689f), true), arg_0.x, false, Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(24476u, 28u)]), false))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 28u)] * 1333f), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), func_2(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], 723f, -1000f))), arg_0.x, true, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1006f, -1963f)), all(vec2<bool>(true, false))))));
    let var_1 = vec3<f32>(-1000f, _wgslsmith_div_f32(func_5(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(59249u, 28u)], global1[_wgslsmith_index_u32(29056u, 20u)], var_0.b.e.a.x)))).b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(2033u, 28u)], global2[_wgslsmith_index_u32(69440u, 28u)], var_0.b.e.b)) - -715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(43957u, 28u)] + global2[_wgslsmith_index_u32(0u, 28u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 20u)] * 333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.e.a.x - global1[_wgslsmith_index_u32(~arg_0.x, 20u)]) + global1[_wgslsmith_index_u32(22164u, 20u)]))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-340f)));
    var var_3 = ~(~u_input.a.yzz) >> (vec3<u32>(~max(4294967295u, arg_0.x), 40206u, countOneBits(u_input.a.x >> (select(u_input.a.x, arg_0.x, var_0.b.e.b) % 32u))) % vec3<u32>(32u));
    var_3 = ~vec3<u32>(37168u, u_input.a.x, ~_wgslsmith_div_u32(~var_0.b.c, ~var_3.x));
    return !select(!(!(!vec3<bool>(var_0.b.b.b, var_0.b.e.b, true))), select(vec3<bool>(var_0.b.e.b, true, true), vec3<bool>(false, var_0.b.d == true, !var_0.b.e.b), vec3<bool>(any(vec2<bool>(var_0.b.e.b, var_0.b.a)), true, true)), func_4(Struct_3(_wgslsmith_dot_vec3_u32(u_input.a.wzz, u_input.a.yxy), func_2(var_1)), _wgslsmith_f_op_vec2_f32(func_3(true, _wgslsmith_mod_i32(u_input.c.x, -1i), u_input.c.x & u_input.c.x)).x, !select(vec2<bool>(false, var_0.b.a), vec2<bool>(var_0.b.b.b, true), vec2<bool>(var_0.b.a, var_0.b.e.b)), func_2(_wgslsmith_f_op_vec3_f32(max(var_1, vec3<f32>(global1[_wgslsmith_index_u32(1u, 20u)], var_0.b.b.a.x, global1[_wgslsmith_index_u32(0u, 20u)]))))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(select(!func_1(vec2<u32>(u_input.a.x, u_input.a.x)), vec3<bool>(true, true, true), true)), any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, true)) && (u_input.b > abs(u_input.c.x)), true);
    let var_1 = Struct_3(~u_input.a.x, func_5(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(85031u, 20u)], -598f, 326f))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(468f - -1084f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(var_1.b).b.a.x) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 28u)]), var_1.b.e.a.x), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(max(4294967295u, 32488u), 28u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b.c, 20u)])))))));
    var var_3 = var_0.zyx;
    var_3 = select(vec3<bool>(var_3.x, false, true), var_0.xzx, var_1.b.a);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1180f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-985f - global2[_wgslsmith_index_u32(0u, 28u)]), var_1.b.b.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_f_op_f32(var_1.b.e.a.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-508f, _wgslsmith_f_op_f32(-var_1.b.b.a.x), !var_0.x)), -350f))), var_2, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(1211f, 744f), func_5(var_1.b).e.a.x))));
    global2 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mod_u32(firstTrailingBit(abs(4294967295u)), u_input.a.x), _wgslsmith_mod_i32(5085i, u_input.b));
}

