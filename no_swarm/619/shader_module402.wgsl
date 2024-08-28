struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 39518u, 1u);

var<private> global1: f32 = 956f;

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(0u, vec3<f32>(132f, 606f, -1489f), -46246i, -634f, vec3<i32>(-3229i, 7485i, i32(-2147483648)))), Struct_3(Struct_1(82603u, vec3<f32>(-1234f, -419f, -1158f), 2147483647i, -602f, vec3<i32>(i32(-2147483648), 22256i, 2147483647i))), Struct_3(Struct_1(0u, vec3<f32>(897f, -2208f, 1545f), -12060i, -588f, vec3<i32>(7312i, 0i, 16398i))), Struct_3(Struct_1(20604u, vec3<f32>(-576f, -1017f, -1148f), -20286i, -706f, vec3<i32>(i32(-2147483648), -34961i, 55667i))), Struct_3(Struct_1(23970u, vec3<f32>(544f, -1452f, -723f), -2078i, -1672f, vec3<i32>(0i, -13456i, 7747i))), Struct_3(Struct_1(1u, vec3<f32>(648f, 775f, 972f), 11720i, 1630f, vec3<i32>(i32(-2147483648), -66958i, 0i))));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-1i, -36764i, Struct_1(0u, vec3<f32>(-253f, 221f, 224f), 2147483647i, -819f, vec3<i32>(-1i, 18074i, -1i))), Struct_2(i32(-2147483648), 1i, Struct_1(99628u, vec3<f32>(266f, 790f, 993f), 2147483647i, -356f, vec3<i32>(0i, 28986i, i32(-2147483648)))), Struct_2(-35849i, 6784i, Struct_1(0u, vec3<f32>(-840f, 1221f, -635f), 31167i, -1050f, vec3<i32>(34762i, -28429i, -39094i))), Struct_2(2147483647i, -9253i, Struct_1(9079u, vec3<f32>(301f, 1742f, 236f), 51762i, 758f, vec3<i32>(4249i, i32(-2147483648), 20000i))), Struct_2(-14410i, 52667i, Struct_1(15561u, vec3<f32>(-1328f, -1000f, -1877f), 1i, -459f, vec3<i32>(0i, -1i, i32(-2147483648)))), Struct_2(-7022i, -1i, Struct_1(39714u, vec3<f32>(-1940f, -495f, 308f), 1i, -1825f, vec3<i32>(1i, -28285i, -2504i))));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = ~global0.x;
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(~var_0), 6u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~var_0 | global0.x), ~_wgslsmith_add_u32(51047u, 0u >> (u_input.a % 32u))) & firstLeadingBit(~global0.x & 29084u), 6u)];
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~var_1.a.a), ~_wgslsmith_add_u32(_wgslsmith_div_u32(var_0, var_0), 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(38959u, ~72410u | (1u & global0.x), ~(var_0 >> (7460u % 32u))), _wgslsmith_mod_vec3_u32(firstLeadingBit(global0.zww), reverseBits(global0.ywz)) << (vec3<u32>(84270u, 30627u, ~var_2.a.a) % vec3<u32>(32u)))), 6u)];
    global3 = array<Struct_2, 6>();
    return Struct_1(35163u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.d, var_2.a.b.x, -466f), arg_1.zyy)))))), -1i, 769f, _wgslsmith_sub_vec3_i32(vec3<i32>(41485i, 22403i, firstTrailingBit(abs(var_2.a.c))), var_2.a.e));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_3(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.d)), _wgslsmith_f_op_f32(trunc(arg_2.x)), arg_0.a.b.x, arg_0.a.b.x), vec4<f32>(_wgslsmith_div_f32(arg_2.x, -652f), -1148f, -514f, _wgslsmith_f_op_f32(round(773f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d, arg_2.x, arg_0.a.b.x, arg_0.a.d) * vec4<f32>(arg_2.x, 310f, arg_2.x, 802f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1586f, -242f, 1614f, 559f))))));
    var var_1 = (firstTrailingBit(-(~22476i)) | arg_0.a.c) >> (4294967295u % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, arg_2.x, var_0.a.b.x, -291f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1158f, arg_0.a.b.x, -923f, arg_2.x) - vec4<f32>(arg_0.a.b.x, arg_2.x, 690f, var_0.a.d)), !arg_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_2.x, var_0.a.b.x, 540f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1076f, arg_0.a.d, arg_2.x) * vec4<f32>(arg_0.a.d, 256f, 1000f, 420f)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b.x, 1297f, 267f, var_0.a.b.x), vec4<f32>(arg_2.x, var_0.a.d, arg_2.x, var_0.a.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-3627f, 395f, arg_0.a.d, -1501f), vec4<f32>(-622f, arg_0.a.b.x, -1296f, 2308f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b.x, var_0.a.b.x, -747f, -183f) - vec4<f32>(836f, -532f, -1013f, -452f))), true)))));
    global2 = array<Struct_3, 6>();
    global3 = array<Struct_2, 6>();
    return func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2), var_2)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1424f, 1845f, arg_0.a.b.x, 324f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) + vec4<f32>(arg_2.x, 1515f, arg_2.x, 945f)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_3(func_3(Struct_3(Struct_1(arg_2.x, vec3<f32>(730f, 1097f, 428f), _wgslsmith_div_i32(arg_1.a.e.x, 9485i), arg_1.a.d, vec3<i32>(arg_1.a.c, arg_1.a.c, u_input.d.x))), !any(vec4<bool>(true, true, true, true)), vec3<f32>(arg_1.a.d, arg_1.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.d - arg_1.a.d), arg_1.a.d))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2355f))));
    global1 = -1293f;
    global3 = array<Struct_2, 6>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(6764u, u_input.a), func_3(Struct_3(var_0.a), !(true && all(vec3<bool>(true, false, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)), var_0.a.b.x, _wgslsmith_f_op_f32(var_0.a.d - _wgslsmith_f_op_f32(ceil(1108f))))).a), 6u)];
    return global3[_wgslsmith_index_u32(~(~global0.x), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global1 = -328f;
    let var_1 = ~(~global0.yw) >> (global0.xx % vec2<u32>(32u));
    var var_2 = select(0i, ~var_0, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))));
    let var_3 = vec2<u32>(0u, global0.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-157f, -142f, -1561f), vec3<f32>(1189f, -1625f, 345f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -386f, 602f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -686f, -962f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-811f, -185f, -1301f) + vec3<f32>(777f, 798f, 381f)) * vec3<f32>(-902f, 1282f, 886f)))));
    var var_5 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(min(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, global0.x, 0u, 10367u), vec4<u32>(0u, global0.x, 1u, u_input.a), true), abs(vec4<u32>(4294967295u, global0.x, u_input.a, 109164u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 31940u, 42666u), vec4<u32>(u_input.a, 4294967295u, 51540u, var_1.x)), firstLeadingBit(var_1.x), var_3.x >> (63817u % 32u), 1u)), ~vec4<u32>(1u, abs(global0.x), select(var_3.x, u_input.a, true), 1u)), ~(~(countOneBits(vec4<u32>(60493u, 3330u, var_1.x, var_3.x)) | ~vec4<u32>(u_input.a, 13907u, var_1.x, var_3.x))));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-254f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(221f, 960f) + -502f)))));
    let var_7 = func_2(global0.x, Struct_3(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_4.x, var_4.x, var_4.x) - vec4<f32>(2358f, 1710f, 1274f, var_4.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1642f, var_4.x, var_4.x, 529f))), vec4<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_div_f32(-2266f, var_4.x), -365f, var_4.x))), vec2<u32>(~9506u, 4294967295u), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.xww, var_4.x, 24893i, min(select(_wgslsmith_add_vec3_i32(-var_7.c.e, vec3<i32>(u_input.c.x, var_7.a, var_0)), ~(vec3<i32>(-49962i, u_input.d.x, var_7.c.c) ^ vec3<i32>(29392i, 5999i, var_7.b)), vec3<bool>(true, true, true)), func_3(Struct_3(var_7.c), any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_7.c.b, var_7.c.b)) * var_7.c.b)).e));
}

