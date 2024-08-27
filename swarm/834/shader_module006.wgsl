struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(1u, 1u, 0u, 69869u), vec4<u32>(4294967295u, 94139u, 1u, 0u), vec4<u32>(69050u, 36785u, 18702u, 0u), vec4<u32>(5307u, 1u, 51810u, 0u), vec4<u32>(22809u, 1u, 4294967295u, 1u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(43230u, 0u, 14217u, 0u), vec4<u32>(4294967295u, 4294967295u, 9452u, 0u), vec4<u32>(1u, 1u, 38568u, 4294967295u), vec4<u32>(1u, 89589u, 34527u, 35955u), vec4<u32>(4294967295u, 76893u, 1u, 44848u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 74101u, 1u, 1u), vec4<u32>(1u, 0u, 0u, 37662u), vec4<u32>(4294967295u, 12052u, 11466u, 4294967295u), vec4<u32>(0u, 979u, 55053u, 17790u), vec4<u32>(51265u, 4294967295u, 0u, 10315u), vec4<u32>(20154u, 26982u, 0u, 0u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(0u, 43760u, 0u, 1750u), vec4<u32>(11398u, 0u, 4294967295u, 58105u), vec4<u32>(4259u, 866u, 1u, 0u), vec4<u32>(0u, 26723u, 25616u, 17118u), vec4<u32>(1u, 72128u, 1u, 4294967295u), vec4<u32>(24253u, 0u, 4294967295u, 92047u), vec4<u32>(67322u, 36885u, 35517u, 0u), vec4<u32>(78975u, 22501u, 1u, 0u));

var<private> global1: array<Struct_2, 27>;

var<private> global2: bool = true;

var<private> global3: array<i32, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec2<bool> {
    return vec2<bool>(true, all(vec2<bool>(false != select(true, arg_0.x, arg_1.x), !arg_0.x)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(58161u, i32(-1i) * -(~_wgslsmith_mod_i32(-2147483647i, global3[_wgslsmith_index_u32(arg_0.a, 6u)])), Struct_1(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(round(arg_1.x)))), select(select(arg_0.d, select(select(arg_3.d, vec4<bool>(arg_2.x, arg_3.d.x, false, true), arg_3.d), !arg_0.d, arg_3.d), true), !vec4<bool>(true, true, arg_0.d.x, all(vec3<bool>(true, false, arg_2.x))), select(vec4<bool>(any(vec4<bool>(arg_0.d.x, true, arg_0.d.x, false)), !arg_3.d.x, arg_0.d.x, all(vec3<bool>(true, arg_0.d.x, true))), arg_0.d, arg_3.d)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(min(~vec3<i32>(27523i, 21877i, -21064i), ~vec3<i32>(global3[_wgslsmith_index_u32(arg_0.a, 6u)], arg_0.e.x, arg_3.b)), vec3<i32>(-33317i << (arg_3.a % 32u), ~arg_3.e.x, 70511i)), -select(~vec3<i32>(arg_3.b, 2147483647i, 2147483647i), -vec3<i32>(0i, -8263i, 16089i), arg_3.d.yyx)));
    let var_1 = Struct_2(u_input.a.x, 46669i, var_0.c, arg_0.d, firstLeadingBit(abs(~arg_3.e)) & var_0.e);
    var var_2 = var_0.e.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-777f, _wgslsmith_div_f32(var_0.c.a, 1085f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(max(var_0.c.a, arg_0.c.a))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-793f, 705f, 520f, 1409f) + vec4<f32>(-622f, 1208f, var_1.c.a, arg_3.c.a)) - vec4<f32>(-388f, var_0.c.a, -1087f, arg_3.c.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1199f, arg_3.c.a, var_0.c.a, 716f)))))));
    global1 = array<Struct_2, 27>();
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    global0 = array<vec4<u32>, 27>();
    let var_0 = _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_1, arg_1), vec3<u32>(20795u, _wgslsmith_sub_u32(25608u, ~(~arg_0.a)), abs(~select(u_input.a.x, 60003u, true))));
    return Struct_2(u_input.a.x, -arg_0.e.x, Struct_1(_wgslsmith_f_op_f32(-684f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.a, arg_0.c.a) + 1303f))), arg_0.d, -arg_0.e);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    global1 = array<Struct_2, 27>();
    let var_0 = false;
    var var_1 = func_4(func_3(global1[_wgslsmith_index_u32(~((u_input.a.x >> (53428u % 32u)) ^ firstLeadingBit(u_input.a.x)), 27u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a, 1000f, arg_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2.a, arg_2.a)), var_0 || var_0)))), !select(func_2(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, var_0, false)), select(vec2<bool>(false, false), vec2<bool>(true, var_0), true), false), Struct_2(~(~u_input.b), 14067i, Struct_1(_wgslsmith_f_op_f32(min(-199f, -745f))), !(!vec4<bool>(var_0, true, var_0, false)), vec3<i32>(-1i) * -vec3<i32>(global3[_wgslsmith_index_u32(0u, 6u)], 28478i, arg_0.x))), vec3<u32>(~46770u, 20948u, u_input.a.x));
    var_1 = Struct_2(func_4(Struct_2(_wgslsmith_div_u32(~4294967295u, func_4(global1[_wgslsmith_index_u32(var_1.a, 27u)], vec3<u32>(21692u, 1u, 0u)).a), -(arg_1 & arg_1), func_4(global1[_wgslsmith_index_u32(93493u, 27u)], ~vec3<u32>(41524u, u_input.c, 0u)).c, vec4<bool>(true, var_0, !var_1.d.x, true), vec3<i32>(-1i & arg_1, -80922i ^ var_1.b, var_1.e.x & 1i)), ~(~vec3<u32>(var_1.a, 37656u, 0u) | ~vec3<u32>(var_1.a, 22599u, var_1.a))).a, _wgslsmith_mult_i32(arg_1, -2147483647i | var_1.e.x), var_1.c, select(func_3(global1[_wgslsmith_index_u32(18210u, 27u)], vec3<f32>(var_1.c.a, _wgslsmith_f_op_f32(var_1.c.a + var_1.c.a), _wgslsmith_f_op_f32(-var_1.c.a)), vec2<bool>(true, var_1.d.x & var_1.d.x), Struct_2(4814u, global3[_wgslsmith_index_u32(1u, 6u)] & -1i, arg_2, func_3(global1[_wgslsmith_index_u32(u_input.b, 27u)], vec3<f32>(var_1.c.a, arg_2.a, arg_2.a), var_1.d.yy, global1[_wgslsmith_index_u32(u_input.c, 27u)]).d, vec3<i32>(-1i, var_1.b, global3[_wgslsmith_index_u32(4294967295u, 6u)]))).d, select(!(!var_1.d), var_1.d, !(!var_1.d.x)), var_1.d.x), -abs(~firstLeadingBit(vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(var_1.a, 6u)], arg_0.x))));
    var var_2 = -(i32(-1i) * -global3[_wgslsmith_index_u32(reverseBits(1u), 6u)]) | 7495i;
    return Struct_2(~(~_wgslsmith_add_u32(var_1.a, countOneBits(1u))), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a.x & var_1.a, 6u)], var_1.b), var_1.c, var_1.d, vec3<i32>(_wgslsmith_mult_i32(countOneBits(global3[_wgslsmith_index_u32(var_1.a, 6u)]), global3[_wgslsmith_index_u32(~70800u, 6u)]), func_4(global1[_wgslsmith_index_u32(u_input.c >> (u_input.b % 32u), 27u)], ~vec3<u32>(1u, 0u, 0u)).e.x, global3[_wgslsmith_index_u32(countOneBits(~0u), 6u)]) ^ _wgslsmith_add_vec3_i32(func_4(Struct_2(4294967295u, global3[_wgslsmith_index_u32(var_1.a, 6u)], Struct_1(1000f), var_1.d, vec3<i32>(arg_0.x, var_1.b, 0i)), ~vec3<u32>(0u, var_1.a, var_1.a)).e, var_1.e));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_4(Struct_2(1u | ~func_4(global1[_wgslsmith_index_u32(arg_0.a, 27u)], vec3<u32>(9115u, 1u, 1u)).a, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 6u)], abs(-2147483647i)), arg_0.c, vec4<bool>(arg_0.d.x || false, true, true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(19773i, global3[_wgslsmith_index_u32(arg_0.a, 6u)]), arg_0.b), -(arg_0.e >> (vec3<u32>(12064u, 108902u, u_input.b) % vec3<u32>(32u))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(32127u), u_input.c, arg_0.a), min(~(~vec3<u32>(u_input.a.x, 7679u, arg_0.a)), ~(~vec3<u32>(1u, 37881u, u_input.c))), ~vec3<u32>(~4294967295u, ~0u, arg_0.a)));
    var_0 = Struct_2(~(~2156u), var_0.e.x, var_0.c, func_3(func_4(arg_0, ~(vec3<u32>(var_0.a, 45127u, 1u) << (vec3<u32>(var_0.a, arg_0.a, arg_0.a) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(round(-1104f)), func_4(global1[_wgslsmith_index_u32(4639u, 27u)], vec3<u32>(u_input.c, 4294967295u, 0u)).c.a) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, 539f, 1590f))))), var_0.d.wx, func_4(global1[_wgslsmith_index_u32(var_0.a, 27u)], abs(vec3<u32>(var_0.a, 1u, var_0.a)))).d, ~_wgslsmith_div_vec3_i32(select(-vec3<i32>(arg_0.b, 24793i, 2147483647i), -var_0.e, vec3<bool>(false, true, true)), _wgslsmith_add_vec3_i32(max(vec3<i32>(2147483647i, 97817i, 60240i), vec3<i32>(var_0.e.x, 3073i, 3708i)), vec3<i32>(var_0.b, arg_0.e.x, var_0.b))));
    global3 = array<i32, 6>();
    global3 = array<i32, 6>();
    let var_1 = !arg_0.d.xzy;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1594f;
    let var_1 = -global3[_wgslsmith_index_u32(u_input.a.x, 6u)];
    let var_2 = func_5(func_1(vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 45776u << (u_input.b % 32u)), 6u)], var_1), _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(-26454i, -1i)) << (u_input.c % 32u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -539f))));
    let var_3 = countOneBits(2147483647i);
    let var_4 = global1[_wgslsmith_index_u32(62596u, 27u)];
    global1 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~9071i, _wgslsmith_clamp_i32(2147483647i, global3[_wgslsmith_index_u32(var_4.a, 6u)], 1i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1016f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f + var_2.a) - _wgslsmith_f_op_f32(var_4.c.a - 395f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.c.a)))))), _wgslsmith_dot_vec3_i32(var_4.e, var_4.e), vec4<u32>(3783u, ~(u_input.c << (var_4.a % 32u)), reverseBits(max(0u, ~var_4.a)), 30635u));
}

