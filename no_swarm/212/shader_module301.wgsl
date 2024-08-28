struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-29659i, 2147483647i, -42603i), vec3<i32>(1i, 2147483647i, -11863i), vec3<i32>(-26011i, i32(-2147483648), -3655i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-1i, -46648i, -6576i), vec3<i32>(-15943i, 9584i, -1i), vec3<i32>(-22081i, 1i, 2147483647i), vec3<i32>(1i, 30119i, -24389i), vec3<i32>(14096i, i32(-2147483648), -13842i), vec3<i32>(65377i, 2147483647i, -1i), vec3<i32>(-55651i, -46528i, -1i), vec3<i32>(109063i, -19323i, 6517i), vec3<i32>(15965i, i32(-2147483648), -23364i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(38786i, 6513i, 15260i), vec3<i32>(-16883i, i32(-2147483648), -13101i), vec3<i32>(2147483647i, -88959i, -40426i), vec3<i32>(38942i, 38916i, 28483i), vec3<i32>(2147483647i, -9331i, -72042i), vec3<i32>(2147483647i, 1i, 0i));

var<private> global1: bool;

var<private> global2: vec3<u32> = vec3<u32>(81469u, 10314u, 0u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 284f, 634f, 409f) + vec4<f32>(arg_0, -217f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -991f, 2176f, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, arg_0)))), vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(false, true, true, true))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 1195f, 122f), vec4<f32>(-220f, 371f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(600f, 940f, arg_0, arg_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(-234f, -1000f, arg_0, 193f), vec4<f32>(895f, arg_0, -1641f, arg_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, -1686f, 101f)))));
    global0 = array<vec3<i32>, 20>();
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 585f)))), _wgslsmith_f_op_f32(max(-1517f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1641f, -222f)))), _wgslsmith_f_op_f32(-925f - 975f), arg_0) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, -1122f, arg_0, arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-759f, 373f, arg_0, arg_0) - vec4<f32>(arg_0, -882f, 1040f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -2612f, -866f, arg_0))))));
    let var_1 = countOneBits(countOneBits(-(u_input.c.x << (u_input.b.x % 32u))) | ~1i);
    let var_2 = var_0.x;
    return -var_1;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1252f)));
    global1 = all(vec2<bool>(false, true));
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    var var_1 = max(~global2.x, u_input.b.x);
    return Struct_2(Struct_1(arg_0.zw), Struct_1(~firstTrailingBit(min(arg_0.yx, arg_0.yz))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2785f + _wgslsmith_f_op_f32(select(1198f, -134f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1234f - -1334f))), -1331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f * _wgslsmith_f_op_f32(f32(-1f) * -221f)))), Struct_1(min(vec2<i32>(1i >> (u_input.b.x % 32u), 1i), abs(vec2<i32>(arg_0.x, var_0)))), Struct_1(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.c.x, 21524i)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec4<bool>(!(2278u < _wgslsmith_mult_u32(u_input.b.x, 15235u)) & true, false | all(vec2<bool>(false, any(vec4<bool>(true, false, true, false)))), any(vec3<bool>(_wgslsmith_dot_vec3_u32(u_input.b.xxy, vec3<u32>(u_input.b.x, u_input.b.x, 0u)) != ~23629u, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true)), false)), false == (_wgslsmith_div_i32(arg_0.a.a.x, ~(-2542i)) < arg_0.e.a.x));
    var_0 = !select(!(!(!vec4<bool>(var_0.x, false, false, false))), vec4<bool>(false, any(!vec4<bool>(var_0.x, false, true, var_0.x)), true, false), !vec4<bool>(true, var_0.x, true, all(vec2<bool>(true, true))));
    var var_1 = arg_0;
    global0 = array<vec3<i32>, 20>();
    var_1 = Struct_2(func_2(abs(vec4<i32>(_wgslsmith_add_i32(-1i, -2147483647i), u_input.a.x, arg_0.e.a.x, -var_1.b.a.x))).d, Struct_1(vec2<i32>(u_input.c.x, u_input.a.x ^ arg_0.e.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(vec4<i32>(var_1.e.a.x, arg_0.e.a.x, u_input.a.x, var_1.d.a.x)).c.x, _wgslsmith_f_op_f32(var_1.c.x * 567f), _wgslsmith_f_op_f32(abs(-843f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(arg_0.c, vec3<f32>(var_1.c.x, 1148f, var_1.c.x), var_0.x)))))), arg_0.e, Struct_1(max(firstLeadingBit(select(vec2<i32>(u_input.c.x, 11678i), arg_0.a.a, var_0.yw)), arg_0.d.a)));
    return Struct_1(~select(u_input.c.zz, func_2(vec4<i32>(-101491i, 2147483647i, 17512i, var_1.e.a.x)).e.a, all(vec2<bool>(false, var_0.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_vec3_i32(-(~global0[_wgslsmith_index_u32(18340u, 20u)]), ~u_input.c);
    let var_1 = Struct_2(arg_2, Struct_1(var_0.zz ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(-57361i, u_input.c.x), vec2<i32>(56581i, -2367i))), vec3<f32>(2261f, -655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1958f))))), func_4(func_2(vec4<i32>(var_0.x, var_0.x, u_input.a.x, var_0.x) ^ ~vec4<i32>(-72419i, 1i, arg_2.a.x, u_input.c.x))), Struct_1(_wgslsmith_sub_vec2_i32(firstTrailingBit(var_0.yy), firstTrailingBit(var_0.xx) | _wgslsmith_mod_vec2_i32(vec2<i32>(-40037i, var_0.x), var_0.yy))));
    var var_2 = func_2(vec4<i32>(abs(u_input.c.x), abs(func_4(func_2(vec4<i32>(-47717i, u_input.a.x, -1i, -1i))).a.x), -7639i, _wgslsmith_add_i32(_wgslsmith_add_i32(abs(-53656i), u_input.a.x >> (u_input.b.x % 32u)), 0i)));
    var var_3 = (firstLeadingBit(vec2<i32>(func_3(var_2.c.x), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global2.x, 20u)], vec3<i32>(arg_2.a.x, 2147483647i, -20382i)))) & _wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.a.x, -35041i), var_1.b.a)) << (vec2<u32>(arg_0.x, ~(~u_input.b.x | ~48191u)) % vec2<u32>(32u));
    global1 = !(all(!select(vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_1, arg_1, true, true), arg_1)) || arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(178f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - var_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f - _wgslsmith_f_op_f32(f32(-1f) * -956f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-773f)))), -681f), -198f);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1175f) + vec2<f32>(1624f, var_0.x))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(func_1(vec4<u32>(83134u, 61258u, global2.x, 16300u), false, Struct_1(u_input.c.xy))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -124f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1550f, var_0.x)))), select(vec2<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(true, false, true, false))), vec2<bool>(all(vec2<bool>(true, true)), true), false))));
    global0 = array<vec3<i32>, 20>();
    let var_1 = func_2(vec4<i32>(u_input.c.x, u_input.c.x, 101789i, u_input.c.x));
    var var_2 = Struct_1(var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-2378f - var_0.x), var_1.c.x, _wgslsmith_f_op_f32(max(1000f, -722f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_1.c.x, var_0.x), var_1.c, false)) + vec3<f32>(-1000f, var_1.c.x, -456f)))) + var_1.c), -428f, select(-vec2<i32>(_wgslsmith_sub_i32(var_1.a.a.x, u_input.a.x), u_input.a.x << (u_input.b.x % 32u)), vec2<i32>(firstLeadingBit(1i), 26039i), select(vec2<bool>(select(true, true, false), global2.x == global2.x), vec2<bool>(false, any(vec3<bool>(false, true, true))), vec2<bool>(true, true))));
}

