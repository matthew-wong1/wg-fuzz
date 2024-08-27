struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, false, true, true, true, false, false, true, true, true, true, false, false, false, false, true, false, true, false, true);

var<private> global1: Struct_3 = Struct_3(vec4<i32>(-3637i, 1i, -27431i, 34679i), Struct_1(vec3<f32>(763f, 318f, 207f), 190f, true, vec2<f32>(1000f, 1436f)), vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(2464f, 176f, 897f), 426f, false, vec2<f32>(181f, -1129f)));

var<private> global2: Struct_3;

var<private> global3: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(836f, -1698f, -1977f), vec3<f32>(169f, 1868f, -539f), vec3<f32>(349f, 907f, -1039f), vec3<f32>(-1607f, 456f, -142f), vec3<f32>(190f, 251f, -1059f), vec3<f32>(475f, -399f, 221f), vec3<f32>(1949f, -138f, 1619f), vec3<f32>(367f, 1000f, 728f), vec3<f32>(-341f, 365f, 141f), vec3<f32>(-206f, 1762f, 1208f), vec3<f32>(591f, -1423f, -160f), vec3<f32>(-839f, -1638f, 159f), vec3<f32>(-761f, 1500f, 1318f), vec3<f32>(-2367f, -624f, -1017f), vec3<f32>(-600f, 811f, 237f), vec3<f32>(1140f, -1616f, 332f), vec3<f32>(-711f, -527f, 1000f), vec3<f32>(-1000f, 979f, -542f), vec3<f32>(-197f, 331f, -3094f), vec3<f32>(-1451f, 336f, -220f), vec3<f32>(-1306f, 170f, -1009f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    let var_0 = global2.d;
    var var_1 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(firstLeadingBit(u_input.d), reverseBits(1i), _wgslsmith_sub_i32(global2.a.x, u_input.d), global1.a.x) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), u_input.c.x & 4294967295u, u_input.c.x, firstLeadingBit(u_input.c.x)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.d, reverseBits(global1.a.x), 42324i), ~select(global2.a.x, u_input.e, true), _wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(global2.a.x, -2147483647i, global2.a.x, 1i)), global1.a.x), -vec4<i32>(global2.a.x, i32(-1i) * -1i, -1i, global1.a.x), -min(global1.a, vec4<i32>(27105i, 0i, global1.a.x, global1.a.x))));
    return select(_wgslsmith_sub_vec3_i32(max(var_1.zwx, select(vec3<i32>(-2147483647i, 1i, global2.a.x) | vec3<i32>(-35751i, -1i, global2.a.x), global1.a.xwy, false)), vec3<i32>(global1.a.x, var_1.x, global2.a.x & _wgslsmith_add_i32(global1.a.x, u_input.d))), select(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, global2.a.x, -6211i), vec3<i32>(1i, u_input.e, -58577i)) >> (~u_input.c % vec3<u32>(32u))), ~vec3<i32>(var_1.x, _wgslsmith_mult_i32(u_input.a, 0i), ~38301i), global1.b.c), !all(select(vec4<bool>(var_0.c, global2.b.c, false, false), global2.c, global2.d.c)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<f32> {
    global1 = Struct_3(vec4<i32>(_wgslsmith_div_i32(1i, global1.a.x), u_input.d, global2.a.x, 0i), global2.d, global1.c, global1.d);
    var var_0 = (firstTrailingBit(countOneBits(~vec3<i32>(global2.a.x, global2.a.x, global2.a.x))) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(7087u, u_input.c.x, u_input.c.x), ~(~vec3<u32>(u_input.c.x, 1u, 0u))) % vec3<u32>(32u))) << (u_input.c % vec3<u32>(32u));
    global2 = Struct_3(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.b, func_3())), -(~(-6112i)) >> (countOneBits(u_input.c.x ^ 0u) % 32u), u_input.a, i32(-1i) * -countOneBits(39566i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b.a + vec3<f32>(global1.d.b, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(min(global2.b.a, vec3<f32>(1114f, -1095f, global2.d.a.x))))), _wgslsmith_f_op_f32(abs(arg_0.x)), !global2.d.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.xz, vec2<f32>(-122f, arg_0.x)) - global2.d.d) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.b.d, arg_0.yx)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a.x, arg_0.x) - vec2<f32>(global2.b.d.x, arg_0.x))))), vec4<bool>(true, true, all(!global2.c.yz), global2.d.c), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.d.d.x - -1938f), _wgslsmith_f_op_f32(abs(796f)), _wgslsmith_f_op_f32(1000f * global1.d.a.x)) * _wgslsmith_f_op_vec3_f32(select(global2.d.a, _wgslsmith_f_op_vec3_f32(step(global1.b.a, global1.b.a)), !global1.c.wyw))), global1.b.b, any(select(global1.c.xz, arg_1.a.zy, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, global1.b.b))))));
    var var_1 = Struct_3(_wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(-4082i, _wgslsmith_mult_i32(-1i, var_0.x), ~_wgslsmith_clamp_i32(38750i, global1.a.x, -2147483647i), -(~4322i))), global1.b, !(!global2.c), global2.d);
    var var_2 = 0u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-641f, _wgslsmith_f_op_f32(f32(-1f) * -148f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_3(min(firstLeadingBit(vec4<i32>(global1.a.x << (47851u % 32u), _wgslsmith_clamp_i32(-1i, 24683i, -8228i), global1.a.x, 1i)), -(~global2.a) << (~abs(vec4<u32>(21778u, u_input.c.x, u_input.c.x, 26509u)) % vec4<u32>(32u))), global1.b, select(select(!select(global2.c, global1.c, global1.c), !select(global2.c, global2.c, global0[_wgslsmith_index_u32(1u, 21u)]), !global2.c.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], all(!global2.c.wzy), !global1.c.x, global1.c.x), vec4<bool>(global2.b.c, u_input.c.x == 1u, all(select(vec3<bool>(global0[_wgslsmith_index_u32(48216u, 21u)], global1.b.c, global2.d.c), global2.c.ywz, global2.c.x)), global1.c.x)), global1.d);
    let var_1 = any(select(vec4<bool>(true, global2.b.c, true, false), vec4<bool>(false, var_0.c.x, true, global1.c.x), any(!(!vec4<bool>(global2.b.c, true, global2.c.x, true)))));
    global3 = array<vec3<f32>, 21>();
    global1 = Struct_3(var_0.a, Struct_1(vec3<f32>(-563f, arg_1.x, _wgslsmith_f_op_f32(var_0.d.a.x + arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.a.x - arg_0.x))), any(select(select(global1.c, vec4<bool>(var_1, var_0.b.c, true, global2.c.x), global1.c), !vec4<bool>(true, true, var_1, var_1), any(global1.c.zwy))), arg_1), global2.c, Struct_1(global1.d.a, _wgslsmith_f_op_f32(-542f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x))), select(global2.c.x, select(-34906i <= u_input.a, true, true), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(963f, 1521f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.b.a.yz);
    return false;
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global1.b.a);
    global0 = array<bool, 21>();
    var var_1 = Struct_2(vec3<bool>(select(_wgslsmith_f_op_f32(round(202f)) <= global2.d.b, true, any(select(global1.c.xy, arg_0.yx, vec2<bool>(false, true)))), global0[_wgslsmith_index_u32(~(u_input.c.x >> (7303u % 32u)) | select(_wgslsmith_add_u32(u_input.c.x, 55541u), _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 4294967295u), global1.c.x), 21u)], select(true, func_4(_wgslsmith_f_op_vec2_f32(global1.b.a.xz - vec2<f32>(var_0.x, 528f)), vec2<f32>(-502f, 582f)), all(!global2.c))));
    global1 = Struct_3(~(~global2.a) | countOneBits(global2.a), global2.b, arg_0, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.b.a)), global2.d.a), -546f, any(!global2.c), global1.b.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(81591u, 21u)]);
    return Struct_3(vec4<i32>(u_input.a, global1.a.x, -2147483647i, ~_wgslsmith_div_i32(select(1i, -20161i, true), u_input.a)), global1.d, global2.c, global2.d);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_1 {
    global3 = array<vec3<f32>, 21>();
    global1 = func_5(!vec4<bool>(false | any(vec4<bool>(global2.c.x, global1.b.c, false, true)), !(!global0[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(max(global1.b.a.x, -2398f)) <= global2.b.d.x, func_4(vec2<f32>(global1.d.d.x, 196f), _wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(global1.d.d.x, global1.b.a.x, global2.b.a.x, 2132f), Struct_2(global2.c.xww))))), ~4294967295u, !select(global2.c, !select(global1.c, vec4<bool>(true, arg_1, true, false), vec4<bool>(true, false, global1.b.c, global1.c.x)), any(!vec3<bool>(global2.b.c, true, arg_0))));
    global1 = Struct_3(vec4<i32>(_wgslsmith_mult_i32(~arg_2, 2147483647i), 0i, global2.a.x, reverseBits(-4856i)), func_5(select(global2.c, global2.c, arg_2 > _wgslsmith_add_i32(15550i, global1.a.x)), ~arg_3 >> (arg_3 % 32u), vec4<bool>(!global2.c.x, !(!arg_0), any(global1.c.zwz), !arg_1 | false)).d, vec4<bool>(true, true, arg_1, select(any(!vec4<bool>(global2.d.c, false, false, arg_0)), func_4(_wgslsmith_f_op_vec2_f32(global2.b.d - vec2<f32>(982f, -905f)), _wgslsmith_f_op_vec2_f32(round(global1.d.d))), arg_0 & true)), func_5(vec4<bool>(arg_1, true & any(vec3<bool>(true, global2.d.c, arg_1)), true | func_4(global1.d.a.xz, vec2<f32>(-134f, global1.d.a.x)), true), countOneBits(0u), !select(global2.c, func_5(global2.c, u_input.c.x, global1.c).c, true)).d);
    let var_0 = ~_wgslsmith_add_i32(-(-u_input.d & (1i ^ global2.a.x)), ~2147483647i);
    let var_1 = Struct_2(vec3<bool>(true, false, func_5(!(!vec4<bool>(arg_0, true, arg_1, true)), 9764u, !global2.c).c.x));
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.c.x, !global1.c.x, global1.a.x, u_input.c.x);
    global1 = func_5(!select(vec4<bool>(true, true, true, func_1(false, false, -2147483647i, u_input.c.x).c), !vec4<bool>(global2.c.x, global2.d.c, false, var_0.c), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global2.c.x, global2.b.c, global2.c.x)), _wgslsmith_clamp_u32(0u, u_input.c.x & countOneBits(min(u_input.c.x, 0u)), ~56627u), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(~(27974u >> (u_input.c.x % 32u)), 21u)], global1.b.a.x == 1487f));
    let var_1 = select(~global1.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(2147483647i), 26711i, ~u_input.b.x, -3883i), countOneBits(firstLeadingBit(global2.a))), false);
    var var_2 = vec2<bool>(!(!(true || var_0.c)) | !any(select(global1.c, global1.c, global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -573f) > var_0.a.x);
    let var_3 = global2.b;
    let var_4 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.b, -1311f, 823f, -1274f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global1.d.d.x), global1.b.b, _wgslsmith_div_f32(var_3.a.x, -848f), var_0.d.x))))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(23881u, u_input.c.x, u_input.c.x, 41880u), abs(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))));
}

