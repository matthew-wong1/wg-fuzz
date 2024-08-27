struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: Struct_4 = Struct_4(false, vec4<i32>(13003i, -8319i, 2147483647i, 2147483647i), vec4<i32>(1i, 2147483647i, -37657i, -55288i));

var<private> global2: array<vec4<f32>, 17>;

var<private> global3: array<vec4<i32>, 2>;

var<private> global4: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(Struct_4(true, vec4<i32>(-42058i, -1i, -1i, -1i), vec4<i32>(0i, 25924i, -18245i, 34198i))), Struct_5(Struct_4(true, vec4<i32>(-21334i, -1i, 2147483647i, -8860i), vec4<i32>(-1i, -73803i, i32(-2147483648), i32(-2147483648)))), Struct_5(Struct_4(true, vec4<i32>(-17482i, 0i, 8556i, -1368i), vec4<i32>(-1i, -9570i, 1i, 44410i))), Struct_5(Struct_4(true, vec4<i32>(31618i, 3083i, -13151i, 2147483647i), vec4<i32>(10801i, 1813i, -5459i, i32(-2147483648)))), Struct_5(Struct_4(true, vec4<i32>(-8707i, 1i, 2147483647i, -35532i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 10914i))), Struct_5(Struct_4(false, vec4<i32>(2147483647i, 65090i, 4058i, -35113i), vec4<i32>(-1i, i32(-2147483648), -4232i, 2147483647i))), Struct_5(Struct_4(true, vec4<i32>(21588i, i32(-2147483648), -65161i, -20908i), vec4<i32>(20133i, 39655i, -39042i, 0i))), Struct_5(Struct_4(false, vec4<i32>(1i, i32(-2147483648), -3130i, -22107i), vec4<i32>(-1i, -1i, 2147483647i, 15593i))), Struct_5(Struct_4(true, vec4<i32>(-9747i, 1i, -5082i, i32(-2147483648)), vec4<i32>(1i, -5275i, 17227i, 14238i))), Struct_5(Struct_4(true, vec4<i32>(1i, 1i, 1i, 50250i), vec4<i32>(2147483647i, 2147483647i, -1i, -25675i))), Struct_5(Struct_4(true, vec4<i32>(3156i, 2147483647i, 1i, -1i), vec4<i32>(10670i, -1i, -11727i, 1i))), Struct_5(Struct_4(true, vec4<i32>(2147483647i, -18968i, 1i, i32(-2147483648)), vec4<i32>(-16653i, 1643i, 1i, 11128i))), Struct_5(Struct_4(false, vec4<i32>(i32(-2147483648), 24000i, -1i, 0i), vec4<i32>(-36609i, -20604i, -1i, -22080i))), Struct_5(Struct_4(false, vec4<i32>(-10892i, -25429i, -12113i, -73157i), vec4<i32>(83842i, -1i, 50144i, 0i))), Struct_5(Struct_4(false, vec4<i32>(2147483647i, 44459i, 1i, 13949i), vec4<i32>(-36728i, 11816i, 18441i, 17400i))), Struct_5(Struct_4(false, vec4<i32>(2147483647i, i32(-2147483648), 22441i, -1558i), vec4<i32>(2147483647i, 6357i, 13762i, 35183i))), Struct_5(Struct_4(true, vec4<i32>(41124i, 9779i, -20727i, 1333i), vec4<i32>(-18194i, 0i, -14424i, 4234i))), Struct_5(Struct_4(false, vec4<i32>(-107365i, 7146i, 27955i, 1623i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 0i))), Struct_5(Struct_4(true, vec4<i32>(2147483647i, -26965i, 0i, -67146i), vec4<i32>(1i, 31357i, 0i, -28366i))), Struct_5(Struct_4(true, vec4<i32>(1i, -8862i, -1i, -1i), vec4<i32>(i32(-2147483648), 27132i, -9270i, -1i))), Struct_5(Struct_4(true, vec4<i32>(33616i, i32(-2147483648), -5881i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -29932i))), Struct_5(Struct_4(false, vec4<i32>(64601i, -15365i, -42182i, -1i), vec4<i32>(1i, -14309i, -19012i, 0i))), Struct_5(Struct_4(false, vec4<i32>(31355i, -1i, 32536i, 41824i), vec4<i32>(-34490i, -40777i, 2997i, 4807i))), Struct_5(Struct_4(true, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i), vec4<i32>(21933i, 2147483647i, 2147483647i, 44912i))), Struct_5(Struct_4(false, vec4<i32>(2873i, -6003i, 2147483647i, 0i), vec4<i32>(56509i, 1038i, 2147483647i, i32(-2147483648)))), Struct_5(Struct_4(false, vec4<i32>(24459i, -24595i, -27522i, 0i), vec4<i32>(i32(-2147483648), -5093i, 0i, 2147483647i))), Struct_5(Struct_4(true, vec4<i32>(2147483647i, i32(-2147483648), 55762i, 22870i), vec4<i32>(0i, 2147483647i, 1i, 95143i))), Struct_5(Struct_4(true, vec4<i32>(-11826i, i32(-2147483648), 2147483647i, -20439i), vec4<i32>(i32(-2147483648), -1i, -1i, 18628i))), Struct_5(Struct_4(true, vec4<i32>(2147483647i, 32629i, i32(-2147483648), 0i), vec4<i32>(46197i, 9822i, -1i, -13661i))), Struct_5(Struct_4(true, vec4<i32>(3616i, -30798i, 2147483647i, 2147483647i), vec4<i32>(15281i, 42338i, -1i, -5941i))), Struct_5(Struct_4(true, vec4<i32>(2985i, 1i, 1i, 6406i), vec4<i32>(i32(-2147483648), -5472i, 7546i, 2147483647i))));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec4<bool> {
    var var_0 = false;
    let var_1 = global4[_wgslsmith_index_u32(arg_1, 31u)];
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1, 0u), 31u)];
    var var_3 = Struct_3(_wgslsmith_div_f32(128f, -433f));
    let var_4 = u_input.a.x;
    return select(!select(vec4<bool>(any(arg_0), var_1.a.a, var_2.a.a, global1.a | false), select(!vec4<bool>(arg_0.x, global1.a, var_1.a.a, var_1.a.a), !vec4<bool>(false, var_2.a.a, false, false), select(vec4<bool>(true, true, global1.a, global1.a), vec4<bool>(false, arg_0.x, true, true), var_2.a.a)), !select(vec4<bool>(var_2.a.a, false, var_1.a.a, true), vec4<bool>(var_1.a.a, global1.a, arg_0.x, var_1.a.a), vec4<bool>(global1.a, false, false, arg_0.x))), !select(select(!vec4<bool>(global1.a, true, false, global1.a), select(vec4<bool>(var_2.a.a, arg_0.x, false, true), vec4<bool>(arg_0.x, false, var_1.a.a, arg_0.x), true), 13563i != var_2.a.c.x), select(select(vec4<bool>(false, var_2.a.a, var_2.a.a, true), vec4<bool>(global1.a, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, false, var_1.a.a, var_1.a.a)), !vec4<bool>(global1.a, false, false, false), !vec4<bool>(true, true, var_1.a.a, var_1.a.a)), !vec4<bool>(global1.a, arg_0.x, global1.a, false)), false);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    return ~u_input.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> bool {
    let var_0 = Struct_2(vec2<u32>(u_input.a.x, func_4(global4[_wgslsmith_index_u32(0u, 31u)], func_3(select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, global1.a, true), vec3<bool>(true, global1.a, global1.a)), 4294967295u), abs(vec3<i32>(global1.c.x, global1.c.x, global1.b.x)), Struct_3(_wgslsmith_f_op_f32(ceil(arg_1))))));
    let var_1 = var_0.a.x;
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a, ~vec2<u32>(89169u, _wgslsmith_add_u32(var_1, var_0.a.x))), u_input.a.zx);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~32780u, var_0.a.x | _wgslsmith_sub_u32(var_0.a.x, var_2.x)), 17u)])));
    var var_4 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~var_2.x & min(4294967295u, 4294967295u), var_1, var_1, select(~212u, var_0.a.x, global1.a & true)), ~vec4<u32>(3816u, max(var_1, 63193u), var_1, var_0.a.x));
    return false;
}

fn func_1(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = vec3<bool>(arg_0.a.a, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1290f, 1035f) + vec2<f32>(-625f, -332f)) * vec2<f32>(-1000f, -747f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-875f, -1465f), vec2<f32>(1841f, 1811f)) * vec2<f32>(-1496f, -1702f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1179f)), 1003f))), arg_0.a.a);
    var var_1 = global1.a;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1452f), _wgslsmith_f_op_f32(trunc(-1946f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, -1000f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1032f, -1146f), vec2<f32>(617f, 518f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, 1952f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(610f, -569f))) - vec2<f32>(1f, 1f))))));
    var var_3 = u_input.a.x;
    var var_4 = vec2<f32>(-936f, 144f);
    return _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.c.x, -abs(2666i), countOneBits(_wgslsmith_mult_i32(arg_1.x, 30274i))), ~(-(~global1.c.yyx))) ^ abs(select(global1.b.wxx, -(~vec3<i32>(-43062i, -23563i, -1i)), select(!vec3<bool>(false, arg_0.a.a, global1.a), !vec3<bool>(var_0.x, true, arg_0.a.a), vec3<bool>(true, true, arg_0.a.a))));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>) -> f32 {
    let var_0 = func_4(global4[_wgslsmith_index_u32(countOneBits(~(~firstLeadingBit(0u))), 31u)], !vec4<bool>(!arg_0.a.a & arg_0.a.a, false, func_3(vec3<bool>(true, true, global1.a), ~u_input.a.x).x, !(u_input.a.x != 1u)), countOneBits(((vec3<i32>(-5003i, global1.b.x, 27746i) & vec3<i32>(arg_0.a.c.x, arg_1.x, global1.c.x)) << (~u_input.a % vec3<u32>(32u))) & -arg_1), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + -1363f))) + -409f)));
    let var_1 = arg_0.a.c >> (vec4<u32>(var_0, ~1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u));
    var var_2 = ~vec4<i32>(-1i, global1.b.x, var_1.x, ~func_1(arg_0, -arg_1.xx, vec3<u32>(u_input.a.x, 1u, u_input.a.x)).x);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-844f))), -1138f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1268f * 366f), -950f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-843f, _wgslsmith_f_op_f32(459f + 924f), _wgslsmith_f_op_f32(-1602f - -673f)))))));
    var var_4 = reverseBits(vec2<u32>(~var_0, ~1u | var_0));
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(abs(u_input.a.x), 1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 872f), vec2<f32>(1539f, -517f)))));
    global3 = array<vec4<i32>, 2>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_5(Struct_4(global1.a, global0[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(9412u, 2u)])), ~func_1(global4[_wgslsmith_index_u32(21875u, 31u)], vec2<i32>(global1.b.x, 0i), vec3<u32>(4294967295u, 40626u, var_0.a.x)))) + 406f));
    var var_3 = select(!(!vec4<bool>(!global1.a, global1.a | global1.a, true, !global1.a)), vec4<bool>((_wgslsmith_f_op_f32(abs(-548f)) != var_2.a) || global1.a, !global1.a, false && any(vec2<bool>(false, global1.a)), true), select(vec4<bool>(func_2(vec2<f32>(var_1.x, -793f), _wgslsmith_f_op_f32(-var_2.a)), global1.a, 1894f > _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), _wgslsmith_f_op_f32(-var_2.a) >= 801f), !func_3(vec3<bool>(global1.a, global1.a, global1.a), u_input.a.x), global1.a));
    let var_4 = global4[_wgslsmith_index_u32(u_input.a.x ^ var_0.a.x, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(31425u, ~min(max(0u, u_input.a.x), _wgslsmith_div_u32(4294967295u, var_0.a.x)), var_0.a.x), countOneBits(vec3<u32>(select(~var_0.a.x, 5918u, false), max(~0u, u_input.a.x), 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_2.a))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_2.a), vec2<f32>(-732f, -740f))))))), 1u);
}

