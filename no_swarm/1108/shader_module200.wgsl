struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(41194u, 44220u, 21237u), vec4<u32>(52739u, 15336u, 39790u, 1u), vec4<bool>(true, false, true, true), false);

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: array<Struct_5, 19>;

var<private> global3: Struct_5 = Struct_5(4209u);

var<private> global4: array<i32, 17> = array<i32, 17>(0i, -1i, 23047i, -1057i, i32(-2147483648), 1i, -51950i, -27230i, 1i, 30071i, 1i, -1i, -18188i, -1344i, 2147483647i, 39269i, 0i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = !arg_0.c.x;
    let var_1 = Struct_5(global3.a);
    let var_2 = var_1;
    let var_3 = 358f;
    var var_4 = _wgslsmith_mult_vec2_i32(reverseBits(-vec2<i32>(-2147483647i, -arg_3)), ~((vec2<i32>(1i, 30873i) | vec2<i32>(11839i, global4[_wgslsmith_index_u32(48475u, 17u)])) >> (firstLeadingBit(vec2<u32>(var_2.a, 0u)) % vec2<u32>(32u))) ^ -(reverseBits(vec2<i32>(global4[_wgslsmith_index_u32(41138u, 17u)], global4[_wgslsmith_index_u32(global3.a, 17u)])) >> (arg_1.c.a.xz % vec2<u32>(32u))));
    return arg_1.c;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: i32, arg_3: Struct_5) -> vec4<f32> {
    let var_0 = u_input.a.x;
    global2 = array<Struct_5, 19>();
    global4 = array<i32, 17>();
    global3 = global2[_wgslsmith_index_u32(global0.a.x, 19u)];
    var var_1 = global0.c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 295f, -611f, 256f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, arg_1.x, arg_1.x, arg_1.x))), Struct_5(~(~global0.b.x)), abs(1i), global2[_wgslsmith_index_u32(~arg_0 >> (0u % 32u), 19u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(ceil(-1000f)), 1000f, arg_1.x)))));
    global2 = array<Struct_5, 19>();
    global1 = array<vec3<i32>, 23>();
    var var_1 = Struct_3(-(~global4[_wgslsmith_index_u32(global3.a, 17u)] ^ global4[_wgslsmith_index_u32(25369u, 17u)]), func_1(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 25621u, 0u), min(global0.a, global0.b.zyy)), reverseBits(global0.b), vec4<bool>(arg_1.x <= var_0.x, global0.d, all(global0.c.zzy), any(global0.c.xw)), all(global0.c.wxy)), Struct_4(~global4[_wgslsmith_index_u32(global3.a, 17u)], vec2<i32>(select(global4[_wgslsmith_index_u32(9945u, 17u)], -1i, global0.c.x), 20861i), func_1(Struct_1(vec3<u32>(63870u, 1u, global3.a), vec4<u32>(arg_2.x, arg_0, 1u, 58016u), vec4<bool>(true, false, true, global0.d), false), Struct_4(1i, vec2<i32>(-24686i, 6793i), Struct_1(vec3<u32>(4420u, global0.b.x, arg_0), global0.b, vec4<bool>(global0.d, true, true, false), false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(743f, var_0.x, 667f), var_0.wzz, vec3<bool>(false, false, true))), u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1.x)))), arg_1.x, 1000f), global4[_wgslsmith_index_u32(~(~7388u), 17u)] >> (global3.a % 32u)), Struct_2(Struct_1(max(vec3<u32>(11496u, 4294967295u, 63823u), ~vec3<u32>(global3.a, 40252u, 24907u)), firstLeadingBit(global0.b) ^ reverseBits(vec4<u32>(0u, 20139u, 0u, 4294967295u)), func_1(Struct_1(vec3<u32>(arg_0, global3.a, global0.b.x), global0.b, global0.c, global0.c.x), Struct_4(global4[_wgslsmith_index_u32(arg_0, 17u)], u_input.a, Struct_1(global0.b.zzy, global0.b, vec4<bool>(false, global0.c.x, global0.c.x, global0.d), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_0.x, -443f)), global4[_wgslsmith_index_u32(0u, 17u)]).c, !all(global0.c)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -760f) * _wgslsmith_f_op_f32(var_0.x * 843f))), global0.a, firstLeadingBit(abs(global3.a) | ~1u)), _wgslsmith_f_op_f32(1154f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)), 1u);
    var var_2 = !vec4<bool>(true, var_1.c.a.d, _wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(floor(1f)), any(select(func_1(Struct_1(global0.a, var_1.c.a.b, var_1.b.c, global0.d), Struct_4(global4[_wgslsmith_index_u32(arg_2.x, 17u)], vec2<i32>(u_input.a.x, 2147483647i), var_1.c.a), var_0.xyz, 35342i).c.wx, func_1(var_1.b, Struct_4(global4[_wgslsmith_index_u32(global3.a, 17u)], u_input.a, var_1.b), var_0.zxy, -22822i).c.ww, all(global0.c.wzz))));
    return var_1.c;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(countOneBits(0i), arg_0.a);
    let var_1 = Struct_3(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(0u, 17u)], arg_0.a), 0i), Struct_1(max(~(vec3<u32>(global3.a, arg_0.c.c.x, global0.b.x) << (global0.b.wyz % vec3<u32>(32u))), ~(~arg_0.c.a.b.wwz)), ~abs(~vec4<u32>(29089u, 18473u, global0.b.x, global0.b.x)), !arg_0.b.c, false), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1447f, _wgslsmith_f_op_f32(-arg_0.c.b), arg_0.c.a.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-377f * arg_0.d))) - arg_0.d)), ~select(global0.b.x, 88389u, !any(global0.c.yz)));
    global2 = array<Struct_5, 19>();
    global2 = array<Struct_5, 19>();
    var var_2 = arg_0.c.a.c.wyy;
    return Struct_1(~var_1.b.b.xxw, ~((vec4<u32>(57651u, 0u, global3.a, 4294967295u) ^ vec4<u32>(53634u, 24932u, 5923u, global0.b.x)) << (~vec4<u32>(26009u, 4294967295u, global0.a.x, global3.a) % vec4<u32>(32u))), !var_1.c.a.c, any(var_1.b.c.yww) | !any(select(global0.c.zw, var_2.xx, var_1.c.a.c.wy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1646f) * -700f);
    global1 = array<vec3<i32>, 23>();
    var var_1 = global1[_wgslsmith_index_u32(~49299u, 23u)];
    var var_2 = func_4(Struct_3(1i, func_1(Struct_1(global0.b.wyy, vec4<u32>(global3.a, global3.a, 29857u, global3.a), global0.c, all(vec4<bool>(global0.c.x, true, true, global0.c.x))), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 9723i, var_1.x, 12536i), vec4<i32>(var_1.x, global4[_wgslsmith_index_u32(global3.a, 17u)], var_1.x, var_1.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-53658i, -1i), var_1.zz), Struct_1(global0.a, vec4<u32>(0u, global3.a, global0.b.x, 156170u), global0.c, global0.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1215f, 959f, 476f)))), -27807i | -var_1.x), func_2(global3.a, vec2<f32>(427f, 1f), abs(~vec2<u32>(0u, global0.a.x))), 501f, 1u));
    global0 = Struct_1(max(global0.a, ~select(_wgslsmith_mod_vec3_u32(global0.b.xzy, global0.b.wyy), ~vec3<u32>(4294967295u, global3.a, 62477u), var_2.c.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(6274u, 44136u, var_2.a.x, 75705u), ~vec4<u32>(var_2.a.x, 4294967295u, global0.b.x, 1u)), select(vec4<u32>(var_2.b.x, global3.a, 4294967295u, 0u), var_2.b, global0.c) | global0.b), ~global0.b), !select(!(!vec4<bool>(global0.c.x, var_2.d, false, false)), var_2.c, func_1(Struct_1(vec3<u32>(global3.a, 4294967295u, global0.a.x), global0.b, var_2.c, global0.d), Struct_4(var_1.x, u_input.a, Struct_1(vec3<u32>(var_2.b.x, 1u, 29707u), vec4<u32>(global0.a.x, 4294967295u, 4294967295u, global0.a.x), vec4<bool>(false, global0.c.x, global0.d, global0.d), global0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1469f, -515f, 143f)), min(var_1.x, -25661i)).d), !func_2(~(~global0.b.x), vec2<f32>(_wgslsmith_f_op_f32(-1030f - 718f), _wgslsmith_f_op_f32(round(225f))), ~(vec2<u32>(0u, var_2.b.x) ^ var_2.b.wy)).a.d);
    let var_3 = Struct_4(~(-var_1.x), countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.zz, u_input.a), -vec2<i32>(var_1.x, -16015i)) ^ vec2<i32>(_wgslsmith_mult_i32(963i, -1i), var_1.x)), Struct_1(~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(10421u, 54531u, 65317u) ^ global0.b.wwx), var_2.b, global0.c, global0.d));
    let var_4 = func_2(func_1(func_2(~66653u | reverseBits(var_3.c.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 241f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, -1245f))), vec2<u32>(6848u, var_3.c.b.x)).a, var_3, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(818f, 1000f) - -191f), -1087f, -1285f), var_1.x >> (10907u % 32u)).b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1000f), vec2<f32>(-348f, 632f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-573f, 1743f), vec2<f32>(-1059f, 462f), var_2.d))) - vec2<f32>(_wgslsmith_f_op_f32(265f * 1554f), _wgslsmith_f_op_f32(-315f + -1909f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(var_3.c.a.x, vec2<f32>(-1000f, 947f), vec2<u32>(103615u, global0.a.x)).b, _wgslsmith_f_op_f32(ceil(1000f))))), reverseBits(vec2<u32>(~var_2.b.x, 83136u))).a.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(480f)), _wgslsmith_f_op_f32(322f * -306f)) + -1330f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.a.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global4[_wgslsmith_index_u32(var_3.c.a.x, 17u)], -27811i), global1[_wgslsmith_index_u32(16451u << (var_3.c.b.x % 32u), 23u)]), global1[_wgslsmith_index_u32(2720u, 23u)] << (~(~_wgslsmith_mod_vec3_u32(var_3.c.b.xxw, global0.a)) % vec3<u32>(32u)), reverseBits(~vec2<i32>(-var_1.x, 1i)));
}

