struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 31>;

var<private> global3: array<i32, 1> = array<i32, 1>(-1i);

var<private> global4: array<i32, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = arg_0.a.b.a.x;
    global3 = array<i32, 1>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1000f)))), global2[_wgslsmith_index_u32(abs(global0.x), 31u)]), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1926f, -666f))) - vec2<f32>(269f, arg_0.a.d))))), vec2<f32>(arg_0.a.e.x, _wgslsmith_f_op_f32(abs(arg_3.x))));
    let var_2 = Struct_3(Struct_2(arg_0.c.b.c, arg_0.d, arg_0.c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(895f + arg_3.x), var_1.x)), _wgslsmith_f_op_vec4_f32(arg_0.c.e - _wgslsmith_f_op_vec4_f32(arg_0.c.e * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -756f, global2[_wgslsmith_index_u32(arg_0.b.b.x, 31u)], var_1.x)))))), Struct_1(!(!select(arg_0.d.a, arg_0.b.a, true)), abs(~vec3<u32>(51743u, 4294967295u, arg_0.c.b.b.x)), false), Struct_2(arg_0.a.c.c, arg_0.d, Struct_1(select(arg_0.d.a, vec2<bool>(true, true), arg_0.d.a.x), global0.zxx, arg_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2047f - var_1.x)) - arg_0.c.e.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -2025f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(612f * 1000f) * _wgslsmith_div_f32(110f, 1000f)))), arg_0.c.c);
    var var_3 = -(arg_1 << (0u % 32u));
    return global0.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global1 = vec4<i32>(-2147483647i, min(-(~(-10557i)), u_input.a), 57065i, global4[_wgslsmith_index_u32(max(~func_3(Struct_3(Struct_2(true, Struct_1(arg_2, arg_1.b, true), Struct_1(arg_2, vec3<u32>(global0.x, 8697u, 40381u), true), -860f, vec4<f32>(747f, -201f, 1365f, -185f)), arg_1, Struct_2(arg_1.c, Struct_1(arg_1.a, vec3<u32>(52654u, arg_1.b.x, global0.x), arg_2.x), Struct_1(vec2<bool>(arg_1.c, false), arg_1.b, false), global2[_wgslsmith_index_u32(52244u, 31u)], vec4<f32>(global2[_wgslsmith_index_u32(arg_1.b.x, 31u)], -1648f, global2[_wgslsmith_index_u32(arg_1.b.x, 31u)], -1407f)), arg_1), ~global4[_wgslsmith_index_u32(global0.x, 30u)], countOneBits(global1.zw), vec3<f32>(-262f, 1644f, arg_0)), 25557u), 30u)]);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, -174f)), _wgslsmith_f_op_f32(406f + global2[_wgslsmith_index_u32(arg_1.b.x, 31u)]))) * -2182f)));
    global0 = ~min(~(vec4<u32>(arg_1.b.x, 1u, 0u, 0u) >> (~vec4<u32>(1u, 11789u, 1u, arg_1.b.x) % vec4<u32>(32u))), abs(vec4<u32>(global0.x, ~0u, _wgslsmith_div_u32(1u, 1u), _wgslsmith_dot_vec2_u32(arg_1.b.zz, global0.wy))));
    let var_1 = _wgslsmith_f_op_f32(max(795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0)))))))));
    let var_2 = global0.xxw;
    return Struct_1(vec2<bool>(true, max(global1.x, -2147483647i) < _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.wz, vec2<i32>(1i, u_input.a)), ~global1.yy)), vec3<u32>(func_3(Struct_3(Struct_2(false, arg_1, Struct_1(vec2<bool>(arg_1.c, arg_2.x), arg_1.b, arg_2.x), var_0, vec4<f32>(global2[_wgslsmith_index_u32(53082u, 31u)], 223f, var_1, -550f)), arg_1, Struct_2(arg_1.c, Struct_1(arg_1.a, vec3<u32>(global0.x, 4294967295u, 0u), arg_1.a.x), Struct_1(arg_2, global0.xxy, false), arg_0, vec4<f32>(1000f, arg_0, -453f, -990f)), Struct_1(vec2<bool>(true, arg_2.x), global0.wzw, true)), -8431i, global1.yz, vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), -917f, _wgslsmith_f_op_f32(f32(-1f) * -1541f))), 36498u, ~_wgslsmith_div_u32(9253u, global0.x)), arg_1.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> bool {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 85994u) & (1u << (global0.x % 32u)), 31u)]))), arg_0, arg_0.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-494f, -849f) - vec2<f32>(436f, global2[_wgslsmith_index_u32(38061u, 31u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(22400u, 31u)], global2[_wgslsmith_index_u32(50323u, 31u)])))))));
    var var_2 = Struct_2(false, func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global0.x, 31u)]))), _wgslsmith_f_op_f32(-var_1.x), false)), Struct_1(select(select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.c, arg_0.c), true), !vec2<bool>(arg_0.c, var_0.a.x), !arg_0.a), vec3<u32>(32692u, _wgslsmith_add_u32(23985u, 0u), 5217u), any(!vec4<bool>(arg_0.c, var_0.a.x, true, arg_0.a.x))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -134f), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1895f), func_2(938f, arg_0, vec2<bool>(var_0.c, arg_0.a.x)), func_2(1439f, arg_0, vec2<bool>(false, true)).a), !(!vec2<bool>(false, var_0.c))).a), arg_0, 1078f, vec4<f32>(-521f, -524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2162f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.b.x, 31u)] - -419f))) - _wgslsmith_f_op_f32(trunc(-680f)))));
    var var_3 = vec2<i32>(arg_2, -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-47672i, 2147483647i)), ~vec2<i32>(5008i, global1.x)));
    let var_4 = Struct_3(Struct_2(global3[_wgslsmith_index_u32(~arg_0.b.x, 1u)] == _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global1.xxx, global1.zzw), _wgslsmith_mult_vec3_i32(global1.xwy, vec3<i32>(1i, -2235i, global1.x))), var_2.c, var_2.c, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.b.x, var_2.c.b.x), 1u), 31u)], vec4<f32>(1639f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 31u)] * _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 31u)], -1351f))), -149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(511f, -1343f)) * var_1.x))), var_2.c, Struct_2(any(!(!vec4<bool>(true, arg_0.a.x, var_0.a.x, var_2.c.a.x))), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1292f), _wgslsmith_f_op_f32(f32(-1f) * -1544f))), var_2.b, vec2<bool>(arg_0.c, any(vec4<bool>(var_0.a.x, arg_0.c, arg_0.c, false)))), var_2.b, -828f, _wgslsmith_f_op_vec4_f32(max(var_2.e, vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), -1463f, _wgslsmith_f_op_f32(1877f - var_2.e.x), global2[_wgslsmith_index_u32(firstLeadingBit(global0.x), 31u)])))), Struct_1(arg_0.a, func_2(var_2.d, Struct_1(vec2<bool>(false, false), firstTrailingBit(vec3<u32>(var_0.b.x, 30106u, 4294967295u)), var_2.a), !var_0.a).b, true));
    return select(any(select(vec2<bool>(true, !var_2.a), vec2<bool>(true, true), var_0.a)), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 1>();
    var var_0 = Struct_2(false, Struct_1(vec2<bool>(true, true), abs(_wgslsmith_mod_vec3_u32(~global0.yyz, global0.yzy)), true), Struct_1(select(vec2<bool>(all(vec4<bool>(true, false, false, true)), func_1(Struct_1(vec2<bool>(true, false), vec3<u32>(global0.x, 26240u, 4294967295u), false), Struct_4(109952u, global0.zy, 5212i, global0.x), global1.x)), !func_2(global2[_wgslsmith_index_u32(global0.x, 31u)], Struct_1(vec2<bool>(false, false), global0.wyy, true), vec2<bool>(true, false)).a, !all(vec4<bool>(true, false, true, false))), vec3<u32>(~firstLeadingBit(global0.x), func_3(Struct_3(Struct_2(true, Struct_1(vec2<bool>(false, false), vec3<u32>(1343u, 4294967295u, 4294967295u), false), Struct_1(vec2<bool>(true, true), vec3<u32>(global0.x, 1u, 0u), false), global2[_wgslsmith_index_u32(global0.x, 31u)], vec4<f32>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(67236u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global0.x, 31u)])), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 38658u, 24180u), true), Struct_2(false, Struct_1(vec2<bool>(false, false), global0.zwy, true), Struct_1(vec2<bool>(false, false), global0.zxw, true), global2[_wgslsmith_index_u32(global0.x, 31u)], vec4<f32>(572f, -2315f, 402f, global2[_wgslsmith_index_u32(global0.x, 31u)])), Struct_1(vec2<bool>(true, true), vec3<u32>(global0.x, global0.x, 12743u), true)), ~u_input.a, _wgslsmith_sub_vec2_i32(global1.wz, global1.xw), _wgslsmith_f_op_vec3_f32(vec3<f32>(-488f, 1178f, 2405f) - vec3<f32>(-298f, global2[_wgslsmith_index_u32(4573u, 31u)], 1155f))), 0u), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1443f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(9881u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], -1199f, global2[_wgslsmith_index_u32(global0.x, 31u)]) - vec4<f32>(878f, 882f, global2[_wgslsmith_index_u32(global0.x, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)])), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(737u, 31u)], 265f, global2[_wgslsmith_index_u32(1u, 31u)]))))));
    global0 = abs(vec4<u32>(global0.x, var_0.c.b.x | var_0.b.b.x, 14975u, ~global0.x) >> (~min(vec4<u32>(global0.x, 110978u, global0.x, 22209u), vec4<u32>(global0.x, 82011u, 49320u, 32224u)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.b.b.x, global0.x, 84172u, 0u) | ~vec4<u32>(33150u, 4294967295u, global0.x, 35830u), ~(~vec4<u32>(var_0.c.b.x, global0.x, global0.x, var_0.b.b.x))), reverseBits(vec4<u32>(global0.x, var_0.b.b.x, global0.x, 0u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 60338u, 1u, 1u), vec4<u32>(var_0.c.b.x, var_0.c.b.x, global0.x, 1u))));
    var var_1 = !(!var_0.b.c);
    global4 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, global1.x), global1.xz)), global1.wy | _wgslsmith_sub_vec2_i32(global1.xw, vec2<i32>(global1.x, u_input.a))), _wgslsmith_clamp_i32(-(global1.x & -76134i), global3[_wgslsmith_index_u32(45425u ^ global0.x, 1u)], _wgslsmith_sub_i32(-global3[_wgslsmith_index_u32(35337u, 1u)], -1i)), global3[_wgslsmith_index_u32(4294967295u, 1u)]), select(_wgslsmith_sub_u32(global0.x, abs(~global0.x)), ~func_2(var_0.d, Struct_1(var_0.c.a, vec3<u32>(20431u, global0.x, 46487u), true), var_0.c.a).b.x, any(vec4<bool>(var_0.a & true, false, global2[_wgslsmith_index_u32(var_0.b.b.x, 31u)] >= global2[_wgslsmith_index_u32(3608u, 31u)], var_0.c.c))), ~_wgslsmith_div_i32(global4[_wgslsmith_index_u32(4294967295u, 30u)], reverseBits(-2147483647i)));
}

