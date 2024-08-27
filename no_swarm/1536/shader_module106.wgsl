struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> f32 {
    global0 = Struct_2(select(global0.a, !(!global0.a), any(select(global0.a, global0.a, true))));
    let var_0 = Struct_5(Struct_2(global0.a), _wgslsmith_f_op_f32(f32(-1f) * -2044f));
    global1 = Struct_3(u_input.d, global1.b);
    var var_1 = u_input.c.xx;
    var_1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(11818u, _wgslsmith_sub_u32(u_input.c.x, 1u)) | min(55490u, firstTrailingBit(var_1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(16104u, global1.b.c), vec2<u32>(14567u, u_input.e.x)) & 1u), select(u_input.a.x, ~59344u, false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_div_f32(global1.b.d, var_0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b))) - 590f));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_5(Struct_2(select(!global0.a, select(select(vec4<bool>(true, true, false, global0.a.x), global0.a, global0.a.x), !vec4<bool>(true, global0.a.x, false, false), all(vec3<bool>(false, false, true))), select(global0.a.x, false, global0.a.x) || !global0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.b.d))))), _wgslsmith_f_op_f32(trunc(-423f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(global1.b.d - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1085f, global1.b.d))), var_0.a.a.x || false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -117f))))), var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.d + 977f), 1000f), _wgslsmith_f_op_f32(1820f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + 1297f))) - var_0.b)));
    var_0 = Struct_5(var_0.a, 1778f);
    let var_2 = Struct_4(Struct_3(_wgslsmith_mult_vec4_i32(global1.a, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -2147483647i, global1.a.x, 19851i), vec4<i32>(10598i, -2147483647i, 0i, 0i)), -u_input.d)), Struct_1(global1.b.a, -(~vec2<i32>(-2147483647i, -2147483647i)), u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec3<i32>(2147483647i, -20774i, -1i), vec3<bool>(false, var_0.a.a.x, true))))))), global0.a, any(select(select(var_0.a.a, !vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), !global0.a.x), global0.a, false)), var_0.a);
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(17714u, firstTrailingBit(~firstLeadingBit(arg_0.x))), countOneBits(u_input.e.x) >> (~84393u % 32u), 13607u, 21228u);
    return var_2.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    global0 = arg_1.d;
    var var_0 = vec2<u32>(4294967295u, reverseBits(global1.b.a << (~26079u % 32u)));
    let var_1 = ~(~vec2<u32>(_wgslsmith_mult_u32(countOneBits(global1.b.a), arg_2.b.a), var_0.x));
    global1 = func_2(vec4<u32>(arg_2.b.a, var_0.x | u_input.c.x, 0u, u_input.a.x), countOneBits(arg_1.a.a.x << (~16444u % 32u)));
    var_0 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(40619u | u_input.e.x, select(global1.b.c, arg_1.a.b.c, true)), firstLeadingBit(select(var_1, var_1, arg_1.c)))) ^ var_1;
    return Struct_4(func_2((abs(vec4<u32>(global1.b.a, 38138u, var_0.x, arg_2.b.c)) | vec4<u32>(arg_2.b.c, var_0.x, var_0.x, arg_2.b.c)) | (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.a, var_0.x, arg_2.b.a, arg_2.b.c), vec4<u32>(arg_2.b.a, 4294967295u, 40666u, global1.b.c)) | ~vec4<u32>(30728u, u_input.c.x, 65500u, 4294967295u)), ~(~_wgslsmith_add_i32(arg_1.a.a.x, global1.a.x))), vec4<bool>(true, !(global1.b.d < _wgslsmith_f_op_f32(step(-843f, arg_2.b.d))), !any(select(vec2<bool>(arg_1.c, true), vec2<bool>(arg_0.x, false), arg_0.x)), !arg_0.x), any(vec3<bool>(true, true, true)), Struct_2(select(global0.a, select(vec4<bool>(true, true, true, true), !arg_1.b, !arg_1.b.x), true)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: u32) -> vec3<bool> {
    var var_0 = Struct_4(arg_0.a, arg_0.d.a, !((global1.b.a == firstTrailingBit(1u)) == arg_0.b.x), func_1(global0.a.zww, func_1(func_1(select(vec3<bool>(arg_0.c, false, global0.a.x), arg_0.d.a.ywz, global0.a.zwx), Struct_4(arg_0.a, arg_0.b, true, Struct_2(vec4<bool>(false, true, false, false))), Struct_3(u_input.d, global1.b)).d.a.xww, func_1(!global0.a.yzx, func_1(arg_0.b.wzz, Struct_4(arg_0.a, global0.a, false, Struct_2(vec4<bool>(false, false, global0.a.x, false))), Struct_3(vec4<i32>(u_input.d.x, -54843i, u_input.d.x, 0i), arg_0.a.b)), func_1(global0.a.zxx, arg_0, Struct_3(vec4<i32>(u_input.d.x, -1i, -2147483647i, global1.b.b.x), Struct_1(1u, vec2<i32>(u_input.b, arg_0.a.b.b.x), 27888u, -1370f))).a), arg_0.a), func_2(vec4<u32>(60719u, func_2(vec4<u32>(6499u, u_input.c.x, 71955u, arg_3), global1.a.x).b.a, 13745u, _wgslsmith_add_u32(arg_0.a.b.a, arg_0.a.b.a)), func_1(vec3<bool>(false, arg_0.c, true), func_1(vec3<bool>(true, true, arg_0.c), arg_0, Struct_3(vec4<i32>(global1.a.x, u_input.b, arg_0.a.a.x, u_input.b), Struct_1(arg_0.a.b.c, global1.b.b, global1.b.a, arg_1))), func_1(vec3<bool>(global0.a.x, false, true), arg_0, arg_0.a).a).a.b.b.x)).d);
    var var_1 = Struct_5(func_1(var_0.d.a.zwz, func_1(!(!vec3<bool>(var_0.d.a.x, false, false)), Struct_4(func_1(global0.a.xwz, arg_0, var_0.a).a, global0.a, global0.a.x, func_1(vec3<bool>(false, var_0.b.x, false), arg_0, arg_0.a).d), func_2(vec4<u32>(4294967295u, global1.b.c, arg_3, 1448u), _wgslsmith_div_i32(1i, global1.b.b.x))), func_1(!(!global0.a.zwy), func_1(vec3<bool>(arg_0.c, false, global0.a.x), func_1(arg_0.d.a.xyw, arg_0, var_0.a), Struct_3(vec4<i32>(-1i, -22827i, 1i, 84144i), var_0.a.b)), Struct_3(_wgslsmith_add_vec4_i32(var_0.a.a, vec4<i32>(-35595i, -1i, arg_0.a.a.x, arg_0.a.a.x)), func_2(vec4<u32>(arg_0.a.b.c, global1.b.c, global1.b.a, 4294967295u), 1i).b)).a).d, _wgslsmith_f_op_f32(-func_2(~vec4<u32>(23343u, 52641u, 16142u, arg_0.a.b.a), 21152i).b.d));
    let var_2 = Struct_3(-vec4<i32>(var_0.a.b.b.x, 18636i, select(_wgslsmith_add_i32(global1.a.x, -25981i), arg_0.a.b.b.x & arg_0.a.b.b.x, any(var_1.a.a)), arg_0.a.a.x), Struct_1(1u, global1.b.b, global1.b.a, _wgslsmith_div_f32(609f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.b, arg_2)), arg_2))));
    var var_3 = var_2;
    let var_4 = vec2<bool>(arg_0.d.a.x, arg_0.b.x);
    return select(vec3<bool>(global0.a.x, var_1.a.a.x, !var_1.a.a.x), vec3<bool>(var_0.c, var_4.x, !(true & global0.a.x) & all(!arg_0.b)), func_1(select(func_1(!global0.a.wzz, Struct_4(arg_0.a, vec4<bool>(true, var_4.x, global0.a.x, true), true, Struct_2(vec4<bool>(var_4.x, var_0.c, arg_0.b.x, false))), Struct_3(global1.a, Struct_1(var_3.b.c, var_2.a.zw, var_0.a.b.a, global1.b.d))).b.xyx, !select(var_0.d.a.xxy, var_0.d.a.zyx, vec3<bool>(var_1.a.a.x, global0.a.x, false)), select(select(arg_0.d.a.zxw, global0.a.ywz, global0.a.x), vec3<bool>(true, arg_0.c, var_0.b.x), var_0.d.a.x)), func_1(var_1.a.a.yyw, func_1(vec3<bool>(true, true, arg_0.d.a.x), func_1(var_0.b.xxw, Struct_4(Struct_3(vec4<i32>(var_0.a.b.b.x, u_input.b, -2147483647i, var_3.b.b.x), Struct_1(var_3.b.a, u_input.d.zz, 1u, var_3.b.d)), vec4<bool>(false, false, arg_0.b.x, global0.a.x), var_0.c, Struct_2(vec4<bool>(var_1.a.a.x, false, global0.a.x, var_4.x))), var_2), var_0.a), func_2(vec4<u32>(u_input.c.x, 0u, 100777u, 29549u), var_0.a.b.b.x)), arg_0.a).d.a.yyy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 13>();
    var var_0 = Struct_1(~global1.b.c, reverseBits(~u_input.d.yw), ~select(~global1.b.c, _wgslsmith_dot_vec3_u32(min(u_input.a, u_input.c), vec3<u32>(12237u, 58081u, 1u)), global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.b.d))))))));
    var var_1 = select(select(global0.a.zzy, func_4(func_1(!global0.a.zzw, Struct_4(Struct_3(vec4<i32>(u_input.b, var_0.b.x, u_input.b, u_input.d.x), global1.b), global0.a, global0.a.x, Struct_2(vec4<bool>(global0.a.x, global0.a.x, false, true))), Struct_3(global1.a, global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(619f, global1.b.d)), 1101f), -168f, global1.b.a), vec3<bool>(true, true, true)), vec3<bool>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(-func_1(vec3<bool>(true, global0.a.x, true), Struct_4(Struct_3(vec4<i32>(var_0.b.x, -2147483647i, -11043i, -20903i), Struct_1(u_input.a.x, global1.b.b, 0u, -787f)), global0.a, true, Struct_2(vec4<bool>(false, global0.a.x, false, global0.a.x))), Struct_3(vec4<i32>(-14786i, -50641i, 1i, var_0.b.x), global1.b)).a.b.d) > 713f), true);
    var var_2 = func_1(func_1(!vec3<bool>(true, all(vec3<bool>(false, true, true)), true), Struct_4(func_1(!vec3<bool>(false, false, global0.a.x), func_1(global0.a.wyy, Struct_4(Struct_3(vec4<i32>(36207i, var_0.b.x, -55437i, 66817i), global1.b), vec4<bool>(var_1.x, false, true, false), global0.a.x, Struct_2(vec4<bool>(var_1.x, true, true, global0.a.x))), Struct_3(vec4<i32>(5395i, -20347i, 1485i, -7884i), global1.b)), Struct_3(global1.a, global1.b)).a, vec4<bool>(true, true, !global0.a.x, true), !(false | var_1.x), Struct_2(vec4<bool>(var_1.x, global0.a.x, false, global0.a.x))), Struct_3(~vec4<i32>(1i, var_0.b.x, u_input.b, 2147483647i), Struct_1(60284u, ~vec2<i32>(global1.b.b.x, global1.b.b.x), ~0u, _wgslsmith_f_op_f32(abs(global1.b.d))))).d.a.zwx, func_1(vec3<bool>(global0.a.x && global0.a.x, true, select(any(global0.a), var_1.x, !var_1.x)), Struct_4(func_1(func_1(global0.a.yzy, Struct_4(Struct_3(u_input.d, global1.b), vec4<bool>(global0.a.x, var_1.x, false, var_1.x), global0.a.x, Struct_2(vec4<bool>(true, var_1.x, var_1.x, var_1.x))), Struct_3(vec4<i32>(52819i, global1.b.b.x, var_0.b.x, u_input.d.x), global1.b)).b.yyx, func_1(global0.a.xxx, Struct_4(Struct_3(vec4<i32>(global1.a.x, 0i, global1.b.b.x, -14619i), global1.b), vec4<bool>(false, false, false, true), true, Struct_2(vec4<bool>(var_1.x, global0.a.x, global0.a.x, var_1.x))), Struct_3(u_input.d, Struct_1(4294967295u, u_input.d.xx, 0u, 610f))), func_2(vec4<u32>(global1.b.c, 31823u, var_0.a, 25063u), global1.b.b.x)).a, func_1(vec3<bool>(true, true, true), func_1(vec3<bool>(global0.a.x, true, var_1.x), Struct_4(Struct_3(vec4<i32>(var_0.b.x, u_input.d.x, global1.b.b.x, u_input.d.x), Struct_1(0u, vec2<i32>(u_input.d.x, 1i), 4294967295u, -289f)), vec4<bool>(var_1.x, true, true, false), var_1.x, Struct_2(global0.a)), Struct_3(u_input.d, Struct_1(u_input.a.x, u_input.d.xw, 84674u, -502f))), Struct_3(u_input.d, Struct_1(0u, var_0.b, var_0.c, global1.b.d))).d.a, false, func_1(func_1(global0.a.zxy, Struct_4(Struct_3(vec4<i32>(9298i, u_input.d.x, -1i, 9497i), Struct_1(var_0.a, vec2<i32>(23837i, var_0.b.x), global1.b.c, 915f)), global0.a, var_1.x, Struct_2(vec4<bool>(var_1.x, false, true, true))), Struct_3(u_input.d, Struct_1(30992u, vec2<i32>(12252i, -26167i), 0u, global1.b.d))).d.a.wyw, Struct_4(Struct_3(vec4<i32>(29461i, global1.b.b.x, var_0.b.x, var_0.b.x), global1.b), global0.a, global0.a.x, Struct_2(global0.a)), func_1(global0.a.xwz, Struct_4(Struct_3(global1.a, Struct_1(u_input.c.x, var_0.b, 0u, global1.b.d)), vec4<bool>(false, false, var_1.x, false), true, Struct_2(global0.a)), Struct_3(global1.a, Struct_1(global1.b.a, vec2<i32>(-38891i, u_input.d.x), 41015u, 1019f))).a).d), func_2(vec4<u32>(4294967295u, 44889u, var_0.c, u_input.e.x), _wgslsmith_mod_i32(-14248i, _wgslsmith_dot_vec3_i32(u_input.d.yww, vec3<i32>(-18709i, -7384i, 0i))))), func_1(select(select(!vec3<bool>(false, false, global0.a.x), vec3<bool>(false, var_1.x, false), vec3<bool>(global0.a.x, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, global0.a.x, !global0.a.x)), func_1(select(select(global0.a.xww, vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(false, false, global0.a.x), var_1.x | false), Struct_4(Struct_3(vec4<i32>(2147483647i, 22495i, u_input.b, 0i), global1.b), vec4<bool>(true, false, var_1.x, var_1.x), !var_1.x, Struct_2(global0.a)), func_2(vec4<u32>(97941u, u_input.e.x, var_0.a, 30805u) | vec4<u32>(12054u, 25914u, 0u, u_input.e.x), _wgslsmith_sub_i32(u_input.d.x, global1.b.b.x))), Struct_3(max(~vec4<i32>(1i, 10984i, global1.a.x, u_input.b), vec4<i32>(var_0.b.x, var_0.b.x, u_input.d.x, u_input.d.x) << (vec4<u32>(var_0.c, 17239u, global1.b.a, u_input.e.x) % vec4<u32>(32u))), func_1(vec3<bool>(global0.a.x, true, global0.a.x), Struct_4(Struct_3(global1.a, global1.b), vec4<bool>(true, var_1.x, true, global0.a.x), global0.a.x, Struct_2(global0.a)), Struct_3(vec4<i32>(2147483647i, var_0.b.x, 2147483647i, global1.a.x), Struct_1(var_0.c, vec2<i32>(global1.a.x, -25346i), u_input.c.x, -1036f))).a.b)).a).d;
    global2 = array<vec2<bool>, 13>();
    global1 = func_2(vec4<u32>(1895u, ~u_input.e.x & (69234u & global1.b.a), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, var_0.c, u_input.c.x, var_0.c) >> (vec4<u32>(global1.b.a, global1.b.a, 119281u, global1.b.c) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, var_0.a, var_0.a, u_input.a.x)), _wgslsmith_div_i32(u_input.b, -2147483647i) ^ firstTrailingBit(2147483647i)).b.a, ~_wgslsmith_div_u32(10065u, 12136u)), -38790i);
    var var_3 = var_2.a.xyz;
    var_1 = var_2.a.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x, 1f, reverseBits(vec3<u32>(~(~global1.b.a), min(abs(1u), ~0u), global1.b.a)), ~_wgslsmith_div_u32(~(var_0.a & var_0.c), ~u_input.e.x));
}

