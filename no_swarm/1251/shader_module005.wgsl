struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, true, true, true, false, false, false, false, false, true, false, false, true);

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = !(!arg_0.b);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a.c.x);
    let var_2 = !vec2<bool>(any(vec4<bool>(!global0[_wgslsmith_index_u32(arg_0.e.a.x, 14u)], arg_0.b, !global0[_wgslsmith_index_u32(arg_0.e.a.x, 14u)], true)), 87276u <= ~arg_0.c.a.x);
    var_0 = any(select(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.e.a.x, 14u)], arg_0.b, arg_0.b), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.c.a.x, 14u)]), arg_0.b), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0.e.a.x, 14u)], false, var_2.x), true), select(!vec3<bool>(var_2.x, arg_0.b, true), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 14u)], arg_0.b, arg_0.b), true), true), !vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 14u)], true, true), any(select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c.a.x, 14u)], false, var_2.x), !vec3<bool>(true, global0[_wgslsmith_index_u32(52040u, 14u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 14u)], true, false), vec3<bool>(true, var_2.x, true), false)))));
    global0 = array<bool, 14>();
    return ~arg_0.e.d;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    let var_0 = 1u;
    global1 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_f_op_f32(arg_3.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-913f))));
    let var_2 = Struct_5(~(~(-select(u_input.a.xy, u_input.a.xx, vec2<bool>(true, arg_0)))), -select(u_input.a, min(reverseBits(u_input.a), ~u_input.a), false), vec4<i32>(_wgslsmith_add_i32(-1i, u_input.a.x), 1i, 1i, firstTrailingBit(u_input.a.x)), ~arg_3.a.yxy, _wgslsmith_dot_vec3_u32(arg_3.a.yyw, ~arg_3.a.zwy));
    var var_3 = vec4<i32>(~(~(~1i)), arg_2.a & -(~_wgslsmith_mult_i32(arg_2.a, 2147483647i)), -48061i, -_wgslsmith_dot_vec3_i32(u_input.a, (var_2.c.xxz | u_input.a) & var_2.c.wzw));
    return firstLeadingBit(_wgslsmith_sub_u32(var_0, select(~var_2.e & ~var_2.e, var_2.e, all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_3.d, 14u)], arg_0, arg_0)))));
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = ~(-1i);
    let var_1 = vec4<u32>(76317u, 72781u, _wgslsmith_sub_u32(reverseBits(4659u), firstLeadingBit(func_2(Struct_2(Struct_1(vec4<u32>(40779u, 69132u, 60016u, 1u), -1000f, vec3<f32>(262f, -463f, -1659f), 13638u), global0[_wgslsmith_index_u32(12035u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], 446f, Struct_1(vec4<u32>(3781u, 4294967295u, 0u, 49594u), 149f, vec3<f32>(875f, -958f, 1000f), 4294967295u))) & abs(26412u))), func_3(true, all(select(vec4<bool>(global0[_wgslsmith_index_u32(26302u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], false, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(95769u, 14u)]), global0[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(44712u, 14u)]))), Struct_3(-u_input.a.x), global1[_wgslsmith_index_u32(1u, 5u)]));
    let var_2 = Struct_2(Struct_1(var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f + -795f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-990f, _wgslsmith_f_op_f32(-1000f + 347f), _wgslsmith_f_op_f32(min(967f, 1963f))))), 10311u), abs(_wgslsmith_div_i32(~var_0, 23907i)) <= (-1i << ((0u | func_3(true, global0[_wgslsmith_index_u32(29750u, 14u)], Struct_3(-1i), global1[_wgslsmith_index_u32(13695u, 5u)])) % 32u)), Struct_1(~var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f + 747f) - _wgslsmith_f_op_f32(1211f + -494f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(224f, -1678f)))), vec3<f32>(_wgslsmith_f_op_f32(-608f - 1000f), _wgslsmith_f_op_f32(step(409f, -1000f)), 1000f), _wgslsmith_div_u32(firstLeadingBit(50226u), _wgslsmith_add_u32(52702u, ~var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-631f, -240f))) * 1499f)), global1[_wgslsmith_index_u32(var_1.x, 5u)]);
    return _wgslsmith_mult_u32(~(~(~(~57932u))), min(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.a.x, var_1.x), firstLeadingBit(var_1.xx))), ~var_2.e.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(vec4<u32>(_wgslsmith_sub_u32(7463u, 1u), func_1(1i, -52380i), select(59759u, 1u, true), 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(10203u, 4294967295u, 15432u), vec3<u32>(78608u, 1u, 30287u)), vec3<u32>(1u, 1u, 1u)), 23757u, 0u, ~1u));
    let var_1 = Struct_1(var_0, -137f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1404f, -390f, 795f))))))), ~_wgslsmith_mod_u32(~(var_0.x ^ var_0.x), 1u));
    let var_2 = -148f;
    let var_3 = Struct_4(global1[_wgslsmith_index_u32(var_0.x, 5u)], Struct_3(-2147483647i), vec3<u32>(var_1.a.x, _wgslsmith_add_u32(var_1.a.x, _wgslsmith_mod_u32(func_1(-35611i, u_input.a.x), var_0.x)), 0u));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1603f - 1000f), var_1.c.x)))), ~(~(vec4<u32>(1u, 1u, 1u, 1u) >> (_wgslsmith_mod_vec4_u32(var_0, vec4<u32>(var_0.x, var_0.x, 4294967295u, 38393u)) % vec4<u32>(32u)))), reverseBits(vec2<u32>(_wgslsmith_div_u32(var_3.c.x, ~var_0.x), ~countOneBits(41662u))), abs(select(vec4<i32>(~2147483647i, 0i, min(17939i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_4.b.a, var_3.b.a), vec4<i32>(u_input.b, -2147483647i, 1i, var_3.b.a))), max(-vec4<i32>(var_3.b.a, var_3.b.a, var_4.b.a, var_4.b.a), ~vec4<i32>(-40813i, 2147483647i, -68730i, 45658i)), global0[_wgslsmith_index_u32(~firstTrailingBit(var_4.a.a.x), 14u)])), _wgslsmith_div_i32(2147483647i, -23489i));
}

