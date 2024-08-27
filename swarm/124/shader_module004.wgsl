struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_3,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -97388i;

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec3<bool>(false, false, true), vec3<i32>(-32869i, i32(-2147483648), -33796i)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(-13431i, -17296i, 25113i)), Struct_3(vec3<bool>(true, false, true), vec3<i32>(-30809i, 1i, 2147483647i)), Struct_3(vec3<bool>(true, false, false), vec3<i32>(2147483647i, 9109i, 42647i)), Struct_3(vec3<bool>(true, false, true), vec3<i32>(1i, -25749i, 31030i)), Struct_3(vec3<bool>(false, false, true), vec3<i32>(-14391i, -21755i, -1i)), Struct_3(vec3<bool>(true, true, false), vec3<i32>(2147483647i, 2147483647i, -1i)), Struct_3(vec3<bool>(true, false, true), vec3<i32>(-1i, 77103i, -5518i)), Struct_3(vec3<bool>(true, false, true), vec3<i32>(1i, -12977i, 2147483647i)));

var<private> global2: u32 = 3599u;

var<private> global3: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(0i, 22029i), vec2<i32>(-1i, 1i), vec2<i32>(-3989i, -616i), vec2<i32>(0i, -44146i), vec2<i32>(62744i, -39032i), vec2<i32>(6496i, 55804i), vec2<i32>(1i, 1i), vec2<i32>(33633i, -31754i), vec2<i32>(11325i, 2147483647i), vec2<i32>(1323i, -1i), vec2<i32>(14705i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-39727i, -27470i), vec2<i32>(0i, 73091i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -7646i), vec2<i32>(0i, 552i), vec2<i32>(-24833i, 1i), vec2<i32>(-16247i, 0i), vec2<i32>(1i, 1i), vec2<i32>(-1i, -36165i), vec2<i32>(2147483647i, 1936i), vec2<i32>(19934i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(26386i, -1i), vec2<i32>(4609i, 10969i), vec2<i32>(1i, 2147483647i), vec2<i32>(2178i, -31731i), vec2<i32>(-10867i, 1i), vec2<i32>(18241i, -26138i), vec2<i32>(i32(-2147483648), 0i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>) -> f32 {
    let var_0 = 395f;
    global1 = array<Struct_3, 9>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0), 82038u, arg_2, firstLeadingBit(23841u), firstTrailingBit(~38633u));
    var var_2 = Struct_4(Struct_3(vec3<bool>(true, true, true), ~firstTrailingBit(u_input.a.yyx & arg_1.b)), _wgslsmith_mod_vec3_i32(~(-u_input.a.wxw), arg_1.b) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 53605u, var_1.e), var_1.c) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_div_u32(var_1.b, 4294967295u)), 9u)], true, global1[_wgslsmith_index_u32(1u, 9u)]);
    global2 = _wgslsmith_mult_u32(max(reverseBits(0u), ~_wgslsmith_div_u32(min(59256u, 4294967295u), 38395u)), _wgslsmith_div_u32(1u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(10591u, var_1.c.x), 1u)));
    return _wgslsmith_f_op_f32(exp2(var_0));
}

fn func_2(arg_0: f32) -> Struct_5 {
    var var_0 = Struct_4(Struct_3(select(vec3<bool>(true, true, arg_0 >= 898f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 0i <= u_input.d), _wgslsmith_f_op_f32(func_3(u_input.b, Struct_3(vec3<bool>(false, true, false), u_input.a.xzx), vec3<u32>(u_input.c, u_input.c, u_input.c))) != _wgslsmith_f_op_f32(exp2(arg_0))), -countOneBits(vec3<i32>(29252i, -2147483647i, 34090i)) & _wgslsmith_mult_vec3_i32(u_input.a.xxz, u_input.a.wxy)), u_input.a.wwx, global1[_wgslsmith_index_u32(15931u, 9u)], all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, false), false)) != any(vec2<bool>(true, true)), Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), u_input.a.xxz));
    var var_1 = Struct_4(var_0.a, vec3<i32>(-1i, 1i, -1i), Struct_3(var_0.e.a, var_0.e.b), ~u_input.c > 33439u, Struct_3(select(vec3<bool>(var_0.d, arg_0 >= arg_0, !var_0.c.a.x), var_0.c.a, vec3<bool>(false, any(vec3<bool>(var_0.e.a.x, false, false)), var_0.d)), ~(firstLeadingBit(var_0.b) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 37325u), vec3<u32>(u_input.c, u_input.c, 4294967295u)) % vec3<u32>(32u)))));
    var_1 = Struct_4(global1[_wgslsmith_index_u32(1u, 9u)], firstTrailingBit(_wgslsmith_mod_vec3_i32(var_0.c.b, countOneBits(-vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)))), Struct_3(var_0.a.a, _wgslsmith_sub_vec3_i32(abs(var_0.b), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_0.b.x, u_input.b), vec3<i32>(58772i, -2147483647i, -587i)))), var_1.c.a.x, Struct_3(vec3<bool>(var_0.a.a.x, var_1.c.a.x, (4294967295u < u_input.c) && all(var_0.a.a.zz)), vec3<i32>(8886i, -1i, var_1.b.x)));
    let var_2 = ~(firstTrailingBit(~min(-38767i, 0i)) << (abs(40880u << (u_input.c % 32u)) % 32u));
    global1 = array<Struct_3, 9>();
    return Struct_5(all(select(select(select(vec4<bool>(var_0.d, false, var_0.c.a.x, var_0.e.a.x), vec4<bool>(true, true, var_0.a.a.x, var_1.a.a.x), vec4<bool>(var_1.c.a.x, true, true, var_1.e.a.x)), !vec4<bool>(var_1.d, var_0.e.a.x, false, false), !var_0.c.a.x), vec4<bool>(any(var_1.c.a.xz), var_1.d, var_0.c.a.x | var_0.a.a.x, !var_1.d), _wgslsmith_f_op_f32(arg_0 + -1000f) < -2074f)), !(!vec4<bool>(var_0.e.a.x, true, !var_1.e.a.x, var_0.c.a.x)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1630f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f))), vec3<bool>(!arg_1.x, true, !(!any(vec2<bool>(true, true)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))), 25622u, ~(~vec3<u32>(30779u, 0u, ~3049u)), ~u_input.c, u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)));
    global3 = array<vec2<i32>, 31>();
    var var_3 = var_0;
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(28913u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 23179u, u_input.c, 0u), ~_wgslsmith_div_vec4_u32(vec4<u32>(30772u, var_1.b, 66843u, 84575u), vec4<u32>(4294967295u, 0u, 1u, 0u))), vec4<u32>(firstTrailingBit(u_input.c), ~0u, var_1.d, 2510u))), 9u)];
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_3 {
    global0 = u_input.a.x;
    global1 = array<Struct_3, 9>();
    var var_0 = true;
    var var_1 = -11041i ^ (~arg_1.b.x >> (_wgslsmith_clamp_u32(~(~arg_2.x), ~arg_2.x, arg_2.x << (arg_2.x % 32u)) % 32u));
    var var_2 = select(4294967295u << (0u % 32u), ~_wgslsmith_sub_u32(u_input.c, 0u), any(select(!vec4<bool>(true, arg_1.a.x, false, false), !vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x), !(!vec4<bool>(arg_1.a.x, true, false, arg_1.a.x)))));
    return Struct_3(vec3<bool>(any(vec4<bool>(true, true, true, true)), !(_wgslsmith_f_op_f32(ceil(-1000f)) == -222f), true), arg_1.b);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    let var_0 = func_5(_wgslsmith_mult_i32(26990i, ~(-45341i) << (~arg_0.d % 32u)) << (~u_input.c % 32u), func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-609f, arg_0.a)) - -804f)), select(func_2(-430f).b.yx, vec2<bool>(true, any(vec3<bool>(true, true, true))), any(vec2<bool>(false, true)))), ~arg_0.c.zy);
    let var_1 = func_2(1155f);
    let var_2 = Struct_5(all(!var_1.b.xx), !select(vec4<bool>(true, true, true, true), var_1.b, var_1.b));
    let var_3 = var_2.b.x;
    var var_4 = Struct_1(-843f, vec3<bool>(!(!var_3), false, !select(var_3, var_3, var_0.a.x) || (true && select(var_2.b.x, false, var_3))));
    return _wgslsmith_f_op_f32(-var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(-2509f, u_input.c, vec3<u32>(u_input.c, 0u, 0u), 1u, 5444u), _wgslsmith_div_vec4_f32(vec4<f32>(403f, 303f, -675f, 340f), vec4<f32>(-1811f, 2140f, 2466f, 546f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-340f + 855f))))), _wgslsmith_f_op_f32(func_1(Struct_2(-1293f, u_input.c, firstLeadingBit(select(vec3<u32>(55688u, u_input.c, 8708u), vec3<u32>(1u, 34059u, 34358u), true)), abs(~0u), firstLeadingBit(4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(237f, -282f, true))), _wgslsmith_div_f32(-276f, 1088f), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(37357i, u_input.b), global1[_wgslsmith_index_u32(u_input.c, 9u)], ~vec3<u32>(15909u, 0u, 39699u)))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1402f * -153f))))));
    var var_1 = ~1i;
    var var_2 = vec4<bool>(true, true, !(!func_2(var_0.x).a) || !(!(u_input.c > 1u)), !all(vec2<bool>(true, true)));
    var var_3 = Struct_5(true, vec4<bool>(true, func_5(u_input.a.x, func_5(u_input.a.x, Struct_3(var_2.yxw, vec3<i32>(u_input.a.x, u_input.b, u_input.b)), vec2<u32>(1u, 109981u)), countOneBits(vec2<u32>(4110u, u_input.c))).a.x || (645f <= var_0.x), true, var_2.x));
    var_2 = !select(select(!vec4<bool>(true, var_3.a, var_2.x, false), var_3.b, var_3.b.x), !select(vec4<bool>(true, false, true, var_2.x), !vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, false), !var_3.b), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.wx * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f * var_0.x) * _wgslsmith_f_op_f32(step(var_0.x, -375f))), -523f)), var_0.wzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
}

