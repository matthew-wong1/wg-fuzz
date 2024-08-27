struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(3134u, 0u, 36800u), vec3<u32>(9983u, 1u, 6723u), vec3<u32>(1u, 25976u, 0u), vec3<u32>(0u, 26616u, 45413u), vec3<u32>(64696u, 4294967295u, 64645u), vec3<u32>(0u, 4294967295u, 21478u), vec3<u32>(0u, 1u, 55717u), vec3<u32>(2279u, 54215u, 60146u));

var<private> global2: array<bool, 26> = array<bool, 26>(false, false, false, false, false, false, false, true, false, false, false, true, true, true, true, true, true, false, true, false, true, true, true, true, true, true);

var<private> global3: Struct_2 = Struct_2(true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = vec3<bool>(!(!global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), true, ~(-6962i) <= u_input.a);
    let var_1 = firstLeadingBit(0u);
    var var_2 = reverseBits(0i);
    global3 = Struct_2(2147483647i < u_input.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -543f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.a.zw), vec2<f32>(-606f, _wgslsmith_f_op_f32(ceil(arg_0.a.x)))))) * arg_0.a.yw);
    return 1108f;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~select(_wgslsmith_mult_vec3_i32(vec3<i32>(27555i, u_input.a, -1i), vec3<i32>(-1i, 91515i, u_input.a)), ~vec3<i32>(u_input.a, -15623i, 76016i), true), abs(firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a, 1989i, u_input.a))))), ~countOneBits(firstLeadingBit(select(vec3<i32>(-6356i, 1414i, 1i), vec3<i32>(13213i, u_input.a, -1i), global0.xxy))));
    var var_1 = u_input.c;
    global2 = array<bool, 26>();
    let var_2 = _wgslsmith_mult_u32(firstLeadingBit(u_input.b.x | ~4294967295u), ~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.b.x)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, 231f, arg_2, 2780f) - vec4<f32>(103f, arg_2, 1365f, arg_2)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, 1088f)))))), u_input.c, -335f, Struct_2(!all(vec4<bool>(global2[_wgslsmith_index_u32(var_2, 26u)], global0.x, global3.a, true))));
    return !any(select(select(vec2<bool>(false, arg_0.x), global0.zz, arg_0.zw), vec2<bool>(false, arg_0.x), select(arg_0.x, false, global0.x))) & any(!(!select(global0.wzx, arg_0.wyw, vec3<bool>(true, global3.a, global3.a))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_2.d;
    let var_1 = select(vec3<bool>(false, select(arg_2.a.x <= 1399f, global0.x, any(select(arg_0.zz, vec2<bool>(arg_2.d.a, false), true))), any(!select(global0.zwz, vec3<bool>(var_0.a, true, arg_2.d.a), arg_2.d.a))), global0.yyw, global0.yww);
    let var_2 = Struct_2(select(global0.x, func_4(vec4<bool>(1473f <= arg_2.a.x, true, !global3.a, any(global0.wzw)), arg_2.d, _wgslsmith_f_op_f32(func_3(Struct_4(vec4<f32>(arg_2.a.x, arg_2.c, -1861f, 844f), arg_1, arg_2.a.x, Struct_2(global2[_wgslsmith_index_u32(arg_1, 26u)]))))), all(vec2<bool>(true, true))));
    var var_3 = select(vec4<bool>(true, !var_1.x, any(vec4<bool>(!global2[_wgslsmith_index_u32(u_input.c, 26u)], all(arg_0), any(arg_0), false)), !any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, false, true), select(arg_0, vec4<bool>(select(var_0.a, true, false), arg_3.b, false, !arg_0.x || false), true));
    let var_4 = arg_0;
    return ~select(_wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(arg_3.c), 1i, 2147483647i ^ u_input.a), vec3<i32>(u_input.a, ~0i, 2147483647i)), vec3<i32>(-2147483647i & _wgslsmith_clamp_i32(u_input.a, arg_3.c, u_input.a), ~reverseBits(arg_3.c), _wgslsmith_clamp_i32(select(0i, 23194i, var_3.x), 35012i, _wgslsmith_sub_i32(arg_3.c, 1830i))), vec3<bool>(!any(var_3.yww), global3.a & (arg_2.d.a | false), var_0.a));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    global1 = array<vec3<u32>, 8>();
    global1 = array<vec3<u32>, 8>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), any(!(!global0.zw)), -15333i, select(select(abs(vec3<u32>(u_input.c, u_input.b.x, 45020u)), u_input.b, global0.ywz), u_input.b, select(vec3<bool>(false, true, false), select(vec3<bool>(global0.x, true, false), global0.zzy, global2[_wgslsmith_index_u32(24426u, 26u)]), vec3<bool>(false, false, arg_1)))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(101930u, 1u, 24386u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 24422u), select(u_input.b, vec3<u32>(u_input.b.x, 7231u, 0u), vec3<bool>(global3.a, false, global0.x)), max(u_input.b, u_input.b))), ~vec3<u32>(~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-640f, -1171f, -1000f) - vec3<f32>(262f, -684f, 677f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -370f))), !vec3<bool>(true, arg_1, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-480f, 547f, -472f) - vec3<f32>(1159f, 347f, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, -2684f, -207f) - vec3<f32>(-1550f, 1127f, -1064f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1139f, 812f, 1355f)))))), select(vec2<i32>(max(_wgslsmith_add_i32(20979i, 21028i), ~46844i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.x, 10658i, arg_0.x, -50812i)), vec4<i32>(u_input.a, 16212i, u_input.a, arg_0.x))), reverseBits(vec2<i32>(u_input.a, -32543i) << (max(u_input.b.xz, u_input.b.zz) % vec2<u32>(32u))), !global2[_wgslsmith_index_u32(u_input.c, 26u)]), firstTrailingBit(reverseBits(u_input.b.x)));
    global0 = !(!select(!(!vec4<bool>(arg_1, var_0.a.b, true, global2[_wgslsmith_index_u32(40553u, 26u)])), select(!vec4<bool>(global0.x, global0.x, var_0.a.b, true), !vec4<bool>(global0.x, global2[_wgslsmith_index_u32(var_0.b.x, 26u)], false, global3.a), false), select(vec4<bool>(false, global3.a, true, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), select(vec4<bool>(global3.a, global3.a, global2[_wgslsmith_index_u32(42523u, 26u)], false), vec4<bool>(true, true, true, global3.a), false), true)));
    var var_1 = Struct_2(var_0.c.x <= 651f);
    return _wgslsmith_f_op_f32(-var_0.c.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(_wgslsmith_mult_vec3_i32(func_2(vec4<bool>(false, global0.x, true, false), u_input.c, Struct_4(vec4<f32>(269f, 647f, -2040f, 653f), u_input.b.x, 761f, Struct_2(false)), Struct_1(0u, global3.a, arg_0.x, vec3<u32>(0u, arg_1, u_input.b.x))), func_2(vec4<bool>(true, true, global3.a, global2[_wgslsmith_index_u32(u_input.c, 26u)]), 20896u, Struct_4(vec4<f32>(231f, -823f, -1466f, -808f), 4294967295u, 1000f, Struct_2(true)), Struct_1(92856u, false, u_input.a, vec3<u32>(u_input.c, 1u, 4294967295u)))), !global3.a != false))))));
    let var_1 = false;
    let var_2 = u_input.a;
    var var_3 = Struct_2((_wgslsmith_mod_u32(_wgslsmith_clamp_u32(14383u, u_input.b.x, 1u), u_input.c) ^ 95u) < _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(25022u, 8u)])), global1[_wgslsmith_index_u32(min(abs(arg_1), firstTrailingBit(u_input.c)), 8u)]));
    let var_4 = 1i ^ -arg_0.x;
    return _wgslsmith_sub_vec4_u32(~vec4<u32>(countOneBits(u_input.b.x), ~(~u_input.c), arg_1, max(u_input.c, ~0u)), ~select(vec4<u32>(0u, _wgslsmith_add_u32(u_input.b.x, arg_1), 28543u, select(u_input.b.x, u_input.b.x, global0.x)), vec4<u32>(~u_input.c, ~arg_1, 4294967295u, max(arg_1, u_input.b.x)), global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 26>();
    var var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.c, u_input.b.x), u_input.c ^ 63796u), firstTrailingBit(vec2<u32>(u_input.c, u_input.c) ^ ~u_input.b.zz));
    global0 = !(!select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, global3.a, global3.a), vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 26u)], false), vec4<bool>(global3.a, true, global2[_wgslsmith_index_u32(u_input.c, 26u)], global0.x)), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 26u)], true, global3.a), !vec4<bool>(true, global3.a, global0.x, global2[_wgslsmith_index_u32(4294967295u, 26u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], true, global2[_wgslsmith_index_u32(var_0.x, 26u)]), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(0u, 26u)]), true), select(vec4<bool>(global0.x, false, true, false), !vec4<bool>(global3.a, global2[_wgslsmith_index_u32(0u, 26u)], false, true), !vec4<bool>(true, global0.x, global2[_wgslsmith_index_u32(22545u, 26u)], global0.x))));
    global2 = array<bool, 26>();
    let var_1 = _wgslsmith_mult_i32(u_input.a, ~abs((16920i ^ u_input.a) >> (~2195u % 32u)));
    let var_2 = Struct_3(Struct_1(~(~41321u), !global3.a, var_1, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 8035u, 14216u)), ~countOneBits(vec3<u32>(u_input.c, 30013u, var_0.x)))), ~_wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(var_0.x, 8u)], countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, u_input.b.x), vec3<u32>(var_0.x, var_0.x, u_input.b.x))), _wgslsmith_add_vec3_u32(firstTrailingBit(global1[_wgslsmith_index_u32(26367u, 8u)]), vec3<u32>(var_0.x, 1u, 30502u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_clamp_i32(2147483647i, var_1, u_input.a)), ~(-1i >> (var_0.x % 32u)))), _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(func_1(vec4<i32>(u_input.a, var_1, var_1, -34980i), u_input.b.x), firstTrailingBit(vec4<u32>(10016u, 1u, 4294967295u, 0u))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 23814u, u_input.c, 4294967295u), vec4<u32>(9225u, u_input.c, u_input.b.x, u_input.c), vec4<u32>(4294967295u, 4294967295u, 121632u, 0u)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), any(global0.wwy)))));
    var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(~63439u, var_0.x << (var_2.b.x % 32u)) >> (_wgslsmith_mod_vec2_u32(~var_2.a.d.yx, u_input.b.xy) % vec2<u32>(32u)), select(~firstLeadingBit(u_input.b.xz), vec2<u32>(_wgslsmith_mod_u32(0u, 33016u), var_2.b.x), global0.xx));
    global0 = vec4<bool>(true, !all(vec2<bool>(global0.x, false)), 1i > func_2(vec4<bool>(global2[_wgslsmith_index_u32(16954u, 26u)], false, all(vec2<bool>(var_2.a.b, true)), var_2.a.b), 4294967295u, Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -174f, -1206f, 173f)), var_0.x, _wgslsmith_f_op_f32(round(-179f)), Struct_2(false)), var_2.a).x, global0.x);
    var var_3 = -492f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_2.c.x, -1172f, -808f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(758f, 816f, var_2.c.x, -483f))))));
}

