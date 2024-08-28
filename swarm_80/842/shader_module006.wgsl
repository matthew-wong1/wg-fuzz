struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(42104i, 1u), Struct_1(-1i, 13416u), Struct_1(i32(-2147483648), 10022u), Struct_1(2147483647i, 32162u), Struct_1(17393i, 1u), Struct_1(-54009i, 4294967295u), Struct_1(-3528i, 36480u), Struct_1(1i, 4294967295u), Struct_1(23576i, 58202u), Struct_1(29742i, 1u), Struct_1(16340i, 23071u), Struct_1(-35547i, 4294967295u), Struct_1(-18651i, 36568u), Struct_1(-1i, 60880u), Struct_1(-32359i, 0u), Struct_1(-41109i, 46662u), Struct_1(-1i, 30360u), Struct_1(-59646i, 52420u), Struct_1(-61008i, 1u), Struct_1(40254i, 1u), Struct_1(16516i, 64193u), Struct_1(-29814i, 42765u), Struct_1(6086i, 19680u));

var<private> global1: array<f32, 31> = array<f32, 31>(-1125f, 727f, -332f, -908f, 1979f, 1690f, -185f, -967f, 292f, -184f, 1193f, 1500f, 100f, 637f, -177f, 723f, 1134f, 868f, 1547f, 648f, 1000f, 289f, -111f, -2102f, 1000f, 507f, -204f, -492f, 705f, -113f, 365f);

var<private> global2: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global3: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = !any(arg_2);
    var var_1 = Struct_2(!arg_2, ~u_input.b.yzy);
    global1 = array<f32, 31>();
    global2 = array<vec2<bool>, 13>();
    var var_2 = var_1.a.x != true;
    return ~vec2<u32>(var_1.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.b.x, var_1.b.x, 4294967295u), u_input.b.xwx), vec3<u32>(0u, 1u, u_input.c.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec2<u32>(arg_3.b.x, 4294967295u);
    global3 = array<vec3<bool>, 16>();
    var var_1 = any(select(!vec2<bool>(false, arg_3.a.x), select(!select(arg_3.a.xx, vec2<bool>(true, arg_3.a.x), arg_3.a.x), select(select(global2[_wgslsmith_index_u32(arg_3.b.x, 13u)], vec2<bool>(true, arg_3.a.x), arg_3.a.x), vec2<bool>(true, true), !arg_3.a.x), true & any(vec4<bool>(arg_3.a.x, false, false, arg_3.a.x))), vec2<bool>(true, true)));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_0.x, u_input.b.x, arg_3.b.x), u_input.b), vec4<u32>(u_input.b.x, 16775u, 4294967295u, arg_3.b.x)), arg_0), 31u)];
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(func_1(vec2<bool>(any(arg_3.a.xw), false != arg_3.a.x), any(!vec3<bool>(true, arg_3.a.x, false)), arg_3.a), arg_0.wy), u_input.b.x, arg_0.x);
    return global0[_wgslsmith_index_u32(~1u, 23u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = arg_1.b;
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_mult_u32(54128u, min(u_input.a, select(30892u, 1u, select(arg_1.a.x, true, false)) & ~(~4294967295u)));
    var_1 = ~arg_2.a;
    var_1 = ~_wgslsmith_dot_vec3_i32(-vec3<i32>(44547i, ~arg_2.a, ~arg_2.a), vec3<i32>(max(arg_2.a, arg_2.a), -1i, -2147483647i) & (-vec3<i32>(arg_2.a, arg_2.a, arg_2.a) ^ vec3<i32>(u_input.d.x, 1i, -18487i)));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<bool> {
    var var_0 = func_2(vec4<u32>(arg_0.b.x, 20588u, 1u, 0u) << (vec4<u32>(select(0u, u_input.c.x, arg_0.a.x) << (firstTrailingBit(0u) % 32u), ~arg_0.b.x, select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 11535u, 1u), u_input.c.xzx), min(u_input.a, u_input.a), !arg_1.a.x), ~reverseBits(6151u)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-492f - arg_2))), _wgslsmith_f_op_f32(2095f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(280f + 1172f))))), 2147483647i, arg_1);
    global0 = array<Struct_1, 23>();
    global1 = array<f32, 31>();
    var var_1 = arg_0;
    global1 = array<f32, 31>();
    return !var_1.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u;
    let var_1 = all(vec2<bool>((all(global3[_wgslsmith_index_u32(var_0, 16u)]) != select(false, false, true)) && true, !(firstLeadingBit(var_0) >= 1u)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0 ^ _wgslsmith_dot_vec2_u32(func_1(global2[_wgslsmith_index_u32(101594u, 13u)], false, vec4<bool>(true, true, var_1, false)), ~u_input.b.xx), 31u)])), -945f);
    let var_3 = Struct_1(-2147483647i, var_0);
    global0 = array<Struct_1, 23>();
    var var_4 = select(func_4(func_3(vec4<bool>(var_0 < 4658u, true, !var_1, var_2.x > global1[_wgslsmith_index_u32(var_0, 31u)]), Struct_2(vec4<bool>(var_1, var_1, true, true), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(28455u, 0u, 4294967295u))), func_2(countOneBits(u_input.c), var_2, -u_input.d.x, Struct_2(vec4<bool>(var_1, var_1, var_1, var_1), u_input.c.wwy)), var_1), func_3(select(vec4<bool>(true, true, true, var_1), vec4<bool>(true, false, var_1, var_1), !vec4<bool>(var_1, var_1, false, var_1)), Struct_2(!vec4<bool>(var_1, true, var_1, false), u_input.c.wyy | u_input.c.xwz), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.b, u_input.c.x ^ 1u), 23u)], all(vec4<bool>(false, true, true, true))), 698f), func_3(select(vec4<bool>(true, true | var_1, var_2.x > -1407f, var_1 || var_1), vec4<bool>(!var_1, true, var_1, var_1), !vec4<bool>(var_1, var_1, true, var_1)), Struct_2(select(select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, true, var_1, false)), !vec4<bool>(var_1, var_1, var_1, var_1), all(vec4<bool>(true, var_1, var_1, false))), ~u_input.c.zyx | u_input.c.ywx), global0[_wgslsmith_index_u32(25423u, 23u)], _wgslsmith_f_op_f32(-1896f * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_3.b, 31u)]))) < var_2.x).a.xw, global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(select(var_0, 1u, var_1), func_1(vec2<bool>(var_1, true), true, vec4<bool>(var_1, var_1, false, var_1)).x, false), u_input.a << (_wgslsmith_mod_u32(var_0, 78852u) % 32u)), 13u)]);
    let x = u_input.a;
    s_output = StorageBuffer(94656u, firstTrailingBit(-_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.a, var_3.a, 2147483647i), vec3<i32>(-61150i, 0i, -1i)), ~vec3<i32>(19994i, -2147483647i, var_3.a), vec3<i32>(var_3.a, -65287i, u_input.d.x) & vec3<i32>(-2147483647i, -11818i, -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(22035u, 31u)], -265f, 1364f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 438f)))), vec3<f32>(global1[_wgslsmith_index_u32(66984u, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -1337f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 31u)], -2011f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]), vec3<f32>(-1199f, global1[_wgslsmith_index_u32(1u, 31u)], var_2.x), global3[_wgslsmith_index_u32(3242u, 16u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global1[_wgslsmith_index_u32(4294967295u, 31u)], -736f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_2.x, -1000f)))))));
}

