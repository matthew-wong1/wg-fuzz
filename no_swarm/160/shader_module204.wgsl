struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(29579u, 24179u), vec2<u32>(1u, 1u), vec2<u32>(25536u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4025u), vec2<u32>(31183u, 17856u), vec2<u32>(4294967295u, 87935u), vec2<u32>(33847u, 14014u), vec2<u32>(4294967295u, 2980u), vec2<u32>(47700u, 4294967295u), vec2<u32>(66745u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 2023u), vec2<u32>(0u, 38770u));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(5784u, 15913u), Struct_2(4294967295u, 88879u), Struct_2(0u, 63525u), Struct_2(6740u, 67505u), Struct_2(14412u, 1u), Struct_2(39716u, 52244u), Struct_2(1u, 4294967295u), Struct_2(16860u, 4294967295u), Struct_2(253u, 0u), Struct_2(13569u, 4294967295u), Struct_2(4294967295u, 4294967295u), Struct_2(44604u, 83691u), Struct_2(35739u, 0u), Struct_2(18671u, 58985u), Struct_2(4294967295u, 4294967295u), Struct_2(4294967295u, 10587u), Struct_2(89728u, 0u), Struct_2(0u, 4294967295u), Struct_2(41841u, 1u), Struct_2(8046u, 65355u), Struct_2(1u, 10409u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec4<u32>) -> vec2<f32> {
    global1 = array<Struct_2, 21>();
    var var_0 = arg_1;
    global1 = array<Struct_2, 21>();
    let var_1 = ~countOneBits(reverseBits(countOneBits(var_0.c.xwx)) | ~vec3<i32>(u_input.a, var_0.b, -2147483647i));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1279f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-669f + -221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)));
    return vec2<f32>(var_2.x, var_2.x);
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1148f, -288f), _wgslsmith_f_op_vec2_f32(func_2(false, Struct_5(u_input.d, 1i, vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, arg_0.x), vec4<bool>(true, true, true, false)), vec4<u32>(u_input.c, u_input.d, 0u, 38812u))))) * vec2<f32>(1f, 1f))));
    global1 = array<Struct_2, 21>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1435f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(577f, var_0.x, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, -824f, var_0.x, 1973f))))));
    return Struct_4(true, 4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_4) -> Struct_5 {
    var var_0 = _wgslsmith_dot_vec3_u32(abs(firstLeadingBit(reverseBits(vec3<u32>(arg_3.b, u_input.c, 58u)))), firstLeadingBit(select(max(vec3<u32>(91215u, arg_3.b, 60369u) & vec3<u32>(27558u, arg_2, u_input.d), ~vec3<u32>(1u, 0u, 13953u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 41392u, u_input.d, arg_2), vec4<u32>(arg_2, 1u, 35713u, u_input.d)), 0u, 64607u), func_1(~u_input.b).a)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-370f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-982f))))), _wgslsmith_f_op_f32(f32(-1f) * -633f), true));
    global0 = array<vec2<u32>, 14>();
    var var_2 = arg_0;
    var var_3 = arg_3;
    return Struct_5(~(~4294967295u), -firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, -u_input.a)), vec4<i32>(firstLeadingBit(u_input.b.x), -select(u_input.b.x, u_input.b.x, var_3.a) | firstTrailingBit(2147483647i), -(_wgslsmith_dot_vec3_i32(u_input.b.zyx, vec3<i32>(u_input.a, u_input.a, u_input.b.x)) | -u_input.b.x), 31053i), select(!select(vec4<bool>(arg_1.x, arg_1.x, var_3.a, true), select(vec4<bool>(var_3.a, true, arg_3.a, false), vec4<bool>(true, arg_3.a, true, false), true), vec4<bool>(arg_3.a, true, true, false)), vec4<bool>(all(vec2<bool>(true, true)), var_1 > -1000f, arg_3.a, arg_1.x), select(!vec4<bool>(arg_3.a, var_3.a, arg_1.x, true), !vec4<bool>(arg_1.x, var_3.a, true, arg_3.a), vec4<bool>(false == arg_1.x, arg_1.x, var_3.a, arg_3.a != var_3.a))));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    let var_0 = arg_0.d.xyy;
    global1 = array<Struct_2, 21>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-803f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1204f), -542f))))), _wgslsmith_f_op_f32(f32(-1f) * -1117f)));
    let var_2 = arg_0.d.zw;
    let var_3 = -315f;
    return Struct_1(select(~vec2<u32>(65568u, ~arg_0.a), abs(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(min(u_input.d, u_input.d), 14u)], global0[_wgslsmith_index_u32(max(17072u, arg_0.a), 14u)])), any(var_0) & var_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = func_1(-vec4<i32>(~(~arg_1.b), 33939i, -arg_1.b, u_input.a));
    let var_1 = Struct_4(false, ~4262u);
    var var_2 = arg_3;
    var var_3 = 983f;
    let var_4 = arg_1.c.xxy;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(func_4(func_3(Struct_1(global0[_wgslsmith_index_u32(1u, 14u)]), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), 1u << (u_input.c % 32u), func_1(u_input.b))), Struct_5(_wgslsmith_mult_u32(4294967295u, 1u), u_input.b.x, u_input.b, func_3(Struct_1(global0[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(true, true, true), ~45455u, Struct_4(true, u_input.c)).d), Struct_5(~u_input.c, 22985i, reverseBits(func_3(Struct_1(vec2<u32>(0u, u_input.c)), vec3<bool>(false, false, false), 1u, Struct_4(true, 10433u)).c), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(any(vec2<bool>(true, true)), true, func_1(u_input.b).a), any(vec3<bool>(true, true, true)), false)), func_4(func_3(Struct_1(vec2<u32>(u_input.c, u_input.c)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), func_3(Struct_1(global0[_wgslsmith_index_u32(1u, 14u)]), vec3<bool>(true, false, false), u_input.d, Struct_4(true, 18561u)).d.wyx, false), u_input.d, Struct_4(true, ~u_input.c))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 11917u) & ~u_input.c, 139333u), reverseBits(u_input.c) & _wgslsmith_dot_vec4_u32(~vec4<u32>(2807u, u_input.d, 15393u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(34002u, u_input.c, 0u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.d, 1u)))), ~(firstLeadingBit(~vec2<u32>(u_input.c, u_input.d)) | global0[_wgslsmith_index_u32(1u, 14u)]), ~u_input.c);
    let var_1 = Struct_5(~func_4(func_3(Struct_1(var_0.a.a), vec3<bool>(false, false, true), var_0.c.x, func_1(u_input.b))).a.x, 0i, u_input.b, vec4<bool>(false, false, true, !(!all(vec2<bool>(false, false)))));
    let var_2 = 553f;
    var var_3 = vec4<f32>(378f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2))), 1000f);
    var_0 = Struct_3(Struct_1(var_0.d), var_0.a, func_5(Struct_1(min(~vec2<u32>(var_1.a, var_0.c.x), vec2<u32>(var_1.a, 19739u))), Struct_5(4294967295u, ~u_input.a, vec4<i32>(var_1.c.x, abs(u_input.b.x), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-66243i, var_1.c.x, var_1.c.x, var_1.b)), _wgslsmith_div_i32(1i, 1i)), var_1.d), Struct_5(~39006u, u_input.a, ~(~vec4<i32>(u_input.a, 6433i, u_input.b.x, 2147483647i)), var_1.d), var_1.d).a, vec2<u32>(~(_wgslsmith_mod_u32(51039u, var_1.a) | 4294967295u), func_1(u_input.b).b), ~u_input.d);
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + 281f)), _wgslsmith_f_op_f32(f32(-1f) * -1155f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-506f + var_3.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, var_2, var_2, 745f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_3.x, var_2, 1000f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(683f, _wgslsmith_f_op_f32(-509f * var_3.x))), var_2, _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(-1540f - var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -777f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(var_3.xww, _wgslsmith_f_op_vec3_f32(-var_3.xwy), vec3<bool>(false, var_1.d.x, var_1.d.x))), -1i, var_4, 34077u);
}

