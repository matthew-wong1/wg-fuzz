struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(194f, -1537f, -464f), vec3<f32>(-758f, -494f, -853f), vec3<f32>(508f, -1544f, 1000f), vec3<f32>(1110f, 1184f, 396f), vec3<f32>(-1040f, -414f, 279f), vec3<f32>(-321f, -1144f, -558f), vec3<f32>(-1401f, -1548f, -2716f), vec3<f32>(-1100f, -735f, -101f), vec3<f32>(849f, 1295f, -741f), vec3<f32>(1106f, 877f, -205f), vec3<f32>(-618f, 426f, -595f), vec3<f32>(-1000f, 154f, -1449f), vec3<f32>(337f, -339f, -631f), vec3<f32>(-1000f, 286f, 826f), vec3<f32>(615f, -2619f, 853f), vec3<f32>(1537f, -1688f, 1000f), vec3<f32>(-410f, -237f, -455f), vec3<f32>(571f, 1551f, 1974f), vec3<f32>(1000f, -2144f, -759f), vec3<f32>(1186f, 374f, -123f), vec3<f32>(171f, 144f, 643f), vec3<f32>(-747f, -967f, -1166f), vec3<f32>(-434f, -681f, -228f), vec3<f32>(-1267f, 183f, -604f), vec3<f32>(-653f, -744f, 217f));

var<private> global1: vec3<f32>;

var<private> global2: array<u32, 12> = array<u32, 12>(43081u, 1u, 34201u, 1u, 28587u, 189135u, 59504u, 57310u, 63610u, 1u, 27860u, 4294967295u);

var<private> global3: Struct_2 = Struct_2(-1180f, Struct_1(2114f, true, false, -24429i, 7996i));

var<private> global4: array<vec2<f32>, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = select(-(~(-vec2<i32>(global3.b.e, -59005i))), vec2<i32>(u_input.b, u_input.b), !select(!select(vec2<bool>(global3.b.c, global3.b.b), vec2<bool>(global3.b.b, global3.b.c), vec2<bool>(false, global3.b.b)), !vec2<bool>(global3.b.c, global3.b.b), true));
    let var_1 = firstTrailingBit(var_0.x);
    let var_2 = var_0.x;
    var_0 = _wgslsmith_mult_vec2_i32(abs(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(53490i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(global3.b.e, 0i), vec2<i32>(7405i, -28571i)), ~vec2<i32>(0i, 0i))), ~vec2<i32>(~(-1i), i32(-1i) * -1i));
    var var_3 = Struct_1(166f, !global3.b.c, !any(vec3<bool>(false | global3.b.c, !global3.b.c, false != global3.b.b)), 1i, 1i << (abs(~(~0u)) % 32u));
    return ~countOneBits(min(-vec4<i32>(30718i, var_0.x, var_3.e, var_3.e), vec4<i32>(var_1, 0i, _wgslsmith_div_i32(0i, 70579i), 68577i)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_f_op_f32(floor(392f));
    let var_2 = arg_0.b;
    let var_3 = ~_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14205u, 12u)], 12u)], u_input.a.x)), ~vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(1u, 4294967295u), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], u_input.a.x));
    var var_4 = func_3(vec3<f32>(-841f, _wgslsmith_f_op_f32(trunc(-640f)), arg_0.b.a));
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1.x))))))), var_2);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = firstTrailingBit(~vec2<u32>(u_input.a.x, _wgslsmith_div_u32(1u, 112646u)));
    let var_1 = func_2(Struct_2(-442f, arg_2.b));
    let var_2 = -vec4<i32>(func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, -996f, global1.x)))))).x, abs(_wgslsmith_add_i32(u_input.b, arg_3.e) ^ _wgslsmith_add_i32(-10807i, global3.b.e)), max(_wgslsmith_div_i32(var_1.b.d, -65726i), arg_2.b.d), 1i);
    let var_3 = ~(u_input.a.x | abs(_wgslsmith_dot_vec4_u32(vec4<u32>(6198u, arg_0.x, var_0.x, 46385u), vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(var_0.x, 12u)], 23809u, var_0.x)) >> (~4294967295u % 32u)));
    global3 = var_1;
    return !(!(var_1.b.b == true));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = select(vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(arg_0.b, true), arg_0.c)), !arg_0.b, true), !select(!vec3<bool>(false, true, global3.b.b), !select(vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(arg_0.b, false, arg_0.b), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, global3.b.b), arg_0.c || true)), -494f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + 1f)));
    var var_1 = 2819i;
    var_0 = vec3<bool>(!all(select(!vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, global3.b.b, false, var_0.x), false & global3.b.b)), any(vec3<bool>(select(var_0.x, true, false), var_0.x && true, var_0.x)) || true, !all(select(vec3<bool>(false, false, arg_0.b), !vec3<bool>(true, false, var_0.x), false)));
    let var_2 = func_2(func_2(Struct_2(-202f, func_2(Struct_2(arg_0.a, global3.b)).b)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.zz, vec2<f32>(470f, 610f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1207f * global3.b.a), 108f)))));
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(21390u, 1u >> (~u_input.a.x % 32u)), 1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), ~global2[_wgslsmith_index_u32(46745u, 12u)]), ~u_input.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global4 = array<vec2<f32>, 32>();
    var var_0 = vec3<u32>(func_5(Struct_1(_wgslsmith_f_op_f32(-global3.a), global3.b.b, func_4(u_input.a.xz << (u_input.a.yx % vec2<u32>(32u)), !vec4<bool>(global3.b.b, false, true, true), func_2(Struct_2(global3.a, arg_0)), func_2(Struct_2(809f, Struct_1(global1.x, global3.b.b, false, -1i, u_input.b))).b), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e, global3.b.e), vec2<i32>(-23676i, arg_0.e))), _wgslsmith_div_i32(11649i, 50347i))), arg_1.x, _wgslsmith_sub_u32(arg_1.x, func_5(Struct_1(-1021f, true, true, arg_0.e, u_input.b))));
    let var_1 = !(!(!select(!vec3<bool>(arg_0.b, false, arg_0.c), !vec3<bool>(global3.b.c, global3.b.c, false), vec3<bool>(global3.b.b, global3.b.c, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, 746f, arg_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_0.a, -1000f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a, 1225f, 1000f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-627f * 1000f), false, !all(vec3<bool>(false, var_1.x, var_0.x == u_input.a.x)), reverseBits(1i), firstLeadingBit(-abs(-2147483647i)));
    return _wgslsmith_div_f32(var_2.x, 891f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(1641f, global3.b.c, false, ~global3.b.e, -2147483647i), vec2<u32>(1u, 61781u | u_input.a.x))) - _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(-183f)))), Struct_1(global3.a, !(true && global3.b.c), true, reverseBits(max(u_input.b, _wgslsmith_mod_i32(global3.b.d, -9457i))), i32(-1i) * -14328i));
    global3 = func_2(var_0);
    global0 = array<vec3<f32>, 25>();
    let var_1 = Struct_1(-1956f, true, true, -(~(-10963i)), ~firstLeadingBit(~u_input.b >> (u_input.a.x % 32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1447f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-960f + -217f) - global1.x)), Struct_1(-1000f, func_4(u_input.a.yx, select(vec4<bool>(var_1.c, true, true, true), select(vec4<bool>(var_0.b.c, global3.b.c, var_1.b, var_0.b.c), vec4<bool>(var_1.b, var_1.b, false, var_0.b.b), global3.b.b), all(vec4<bool>(global3.b.c, var_0.b.c, global3.b.b, true))), var_0, Struct_1(544f, var_0.b.c, true, u_input.b << (16785u % 32u), u_input.b)), !all(vec2<bool>(true, var_0.b.c)), 0i, -reverseBits(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, -32961i >> (_wgslsmith_add_u32(abs(min(u_input.a.x, u_input.a.x)), firstTrailingBit(15261u)) % 32u), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - -702f)), var_0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + var_0.a)) * _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(785f + -1278f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a), var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * var_1.a), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

