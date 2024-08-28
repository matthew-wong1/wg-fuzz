struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

var<private> global3: bool = false;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = ~vec2<u32>(u_input.a.x, ~1u);
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -849f), select(select(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 4294967295u), 21u)]), ~(u_input.a.x ^ 35723u), vec4<u32>(reverseBits(u_input.a.x), countOneBits(0u), max(12031u, 365u), countOneBits(u_input.a.x)), 2147483647i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1870f, -571f), vec2<f32>(-1674f, 566f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(152f - 1151f)))), abs(~vec3<u32>(var_0.x, arg_0, 39522u)) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_0.x, 71810u), vec3<u32>(arg_0, arg_0, 0u)), var_0.x, u_input.a.x)), false, Struct_3(_wgslsmith_div_i32(1i, _wgslsmith_div_i32(~18136i, abs(-12635i))), vec2<i32>(1i, select(i32(-1i) * -62898i, 1i, all(global2[_wgslsmith_index_u32(u_input.a.x, 21u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1932f + -340f), _wgslsmith_div_f32(-179f, -409f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -873f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f - -657f)) - _wgslsmith_div_f32(-1376f, _wgslsmith_f_op_f32(ceil(463f)))), -1091f));
    let var_2 = Struct_3(var_1.c.a, firstLeadingBit(vec2<i32>(firstLeadingBit(var_1.a.a.e), -5954i)), _wgslsmith_f_op_f32(f32(-1f) * -1991f));
    let var_3 = _wgslsmith_f_op_vec4_f32(var_1.d - var_1.d);
    let var_4 = i32(-1i) * -select(i32(-1i) * -19129i, var_2.a << (~4351u % 32u), var_1.a.a.b.x);
    return 1i;
}

fn func_2() -> u32 {
    global1 = array<vec3<f32>, 3>();
    global0 = array<vec2<u32>, 30>();
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(20394i, -2147483647i, -39863i), abs(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(1i, 52584i, 1i)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(max(12419i, 24005i), -16626i, 1i))));
    var var_1 = Struct_3(-func_3(u_input.a.x) ^ 1i, var_0.zy, _wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(1f * 1f)));
    let var_2 = _wgslsmith_f_op_f32(-var_1.c);
    return 1u;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1146f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1184f - arg_0.a.a) - _wgslsmith_f_op_f32(-1000f - var_0.a.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -1389f)));
    global1 = array<vec3<f32>, 3>();
    var var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -542f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -150f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.a)))), 425f));
    return Struct_1(var_1.x, vec3<bool>(true, true, all(arg_0.a.b.zy)), 0u, vec4<u32>(~(4294967295u ^ u_input.a.x) & (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) ^ var_0.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, ~18378u, 34859u, countOneBits(0u)), arg_0.a.d), _wgslsmith_clamp_u32(max(arg_0.a.d.x, u_input.a.x), ~4294967295u, _wgslsmith_div_u32(reverseBits(41190u), max(0u, 35455u))), ~1u), _wgslsmith_mod_i32(-1i, -8407i));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_2) * -1221f), false)) + _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1197f + arg_1.x) - -477f))) - _wgslsmith_f_op_f32(trunc(arg_2)));
    let var_1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, arg_1.x))), global2[_wgslsmith_index_u32(abs(func_2()), 21u)], ~arg_0.x, abs(~vec4<u32>(arg_0.x, 4294967295u, 1723u, 4294967295u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(0i, -26861i))), arg_1, vec3<u32>(u_input.a.x, _wgslsmith_add_u32(func_2(), abs(4294967295u)), arg_0.x)));
    var var_2 = reverseBits(-(2147483647i & firstTrailingBit(-39122i & var_1.e)));
    let var_3 = ~var_1.c;
    let var_4 = vec4<f32>(137f, _wgslsmith_f_op_f32(exp2(func_4(Struct_2(var_1, vec2<f32>(var_0, 846f), var_1.d.wyy)).a)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * -1198f) + -670f));
    return Struct_1(var_4.x, vec3<bool>(all(!vec4<bool>(true, true, arg_3, var_1.b.x)), arg_3, arg_3), var_3, var_1.d, -5736i);
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    global3 = ((2147483647i <= (arg_0.a.e << (~arg_0.a.d.x % 32u))) || (select(!arg_0.a.b.x, true, arg_0.a.b.x) | arg_0.a.b.x)) | (max(-17153i, -8051i) >= abs(~max(arg_0.a.e, -1i)));
    let var_0 = (_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, -17272i), ~(-1i), countOneBits(907i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.e, arg_0.a.e), vec2<i32>(arg_0.a.e, 1i))), vec4<i32>(arg_0.a.e, ~arg_0.a.e, reverseBits(arg_0.a.e), arg_0.a.e)) | -select(vec4<i32>(arg_0.a.e, -2147483647i, arg_0.a.e, 6299i) >> (arg_0.a.d % vec4<u32>(32u)), min(vec4<i32>(8638i, arg_0.a.e, arg_0.a.e, arg_0.a.e), vec4<i32>(arg_0.a.e, arg_0.a.e, arg_0.a.e, 4701i)), all(vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, true)))) | countOneBits(_wgslsmith_div_vec4_i32(~(~vec4<i32>(2147483647i, -15762i, arg_0.a.e, arg_0.a.e)), -vec4<i32>(arg_0.a.e, 39389i, arg_0.a.e, arg_0.a.e)));
    let var_1 = 32400u;
    global1 = array<vec3<f32>, 3>();
    let var_2 = ~(~vec2<i32>(-_wgslsmith_mod_i32(var_0.x, arg_0.a.e), 0i));
    return Struct_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1129f - arg_0.a.a), arg_0.b.x, _wgslsmith_f_op_f32(step(-765f, -875f)), _wgslsmith_f_op_f32(-arg_0.a.a))))));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<vec3<f32>, 3>();
    global1 = array<vec3<f32>, 3>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.c), _wgslsmith_f_op_f32(arg_1.c.c + _wgslsmith_f_op_f32(arg_3.x - -1022f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.x, arg_1.a.b.x, !(!arg_1.a.a.b.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-965f)))), 1068f, arg_2))), func_1(~arg_1.a.c.zz << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.c.x, u_input.a.x) & vec2<u32>(u_input.a.x, 15597u), min(vec2<u32>(arg_1.a.c.x, arg_1.a.a.d.x), vec2<u32>(1u, 1u))) % vec2<u32>(32u)), arg_0.a.yw, 1213f, !arg_1.b).a);
    let var_1 = !func_4(Struct_2(func_1(~u_input.a, vec2<f32>(-2495f, var_0.x), _wgslsmith_f_op_f32(arg_1.c.c - -1000f), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d.yx) * vec2<f32>(arg_3.x, -950f)), arg_1.a.c)).b;
    let var_2 = select(!select(vec4<bool>(false, all(vec2<bool>(var_1.x, true)), false, true), vec4<bool>(arg_1.b, true, arg_1.a.a.e != arg_1.c.b.x, arg_2 || arg_1.a.a.b.x), true), select(!vec4<bool>(arg_2, true, var_1.x, arg_1.b), select(!(!vec4<bool>(arg_1.b, arg_2, arg_2, false)), !vec4<bool>(false, false, arg_2, arg_1.a.a.b.x), true), !select(select(vec4<bool>(false, var_1.x, true, arg_1.a.a.b.x), vec4<bool>(true, true, arg_1.a.a.b.x, false), vec4<bool>(arg_2, true, var_1.x, arg_2)), !vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, false, false, true))), 832f >= _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x));
    return Struct_1(1000f, !global2[_wgslsmith_index_u32(36176u, 21u)], max(1u, 4294967295u), ~arg_1.a.a.d, arg_1.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 21>();
    var var_0 = func_6(func_5(Struct_2(func_1(abs(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1561f, -1010f), vec2<f32>(-1668f, 467f), false)), _wgslsmith_div_f32(-239f, 479f), select(false, false, false)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-943f, -210f)))), vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(34145u, 14520u), u_input.a.x << (344u % 32u)))), Struct_4(Struct_2(Struct_1(-1362f, vec3<bool>(true, true, true), ~u_input.a.x, ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), -2147483647i), vec2<f32>(-390f, 209f), _wgslsmith_clamp_vec3_u32(func_1(global0[_wgslsmith_index_u32(4294967295u, 30u)], vec2<f32>(-522f, -1070f), 523f, true).d.yzz, ~vec3<u32>(u_input.a.x, u_input.a.x, 56750u), vec3<u32>(59144u, u_input.a.x, 0u))), true, Struct_3(i32(-1i) * -2147483647i, vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(-724f - -853f)), vec4<f32>(-893f, _wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-423f, -294f))), _wgslsmith_f_op_f32(select(1012f, _wgslsmith_f_op_f32(abs(-283f)), all(vec3<bool>(false, false, false)))))), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(765f, 1000f) + _wgslsmith_div_vec2_f32(vec2<f32>(1409f, -609f), vec2<f32>(1087f, 1391f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1076f, -722f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1883f, -673f)))))));
    global2 = array<vec3<bool>, 21>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))))), vec3<bool>(!(!var_0.b.x) && false, !(!var_0.b.x), false), ~u_input.a.x, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 37166u, var_0.c, ~(~0u)), vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(abs(u_input.a.x), _wgslsmith_mult_u32(39858u, 0u), firstLeadingBit(53317u)), select(1u, 3894u, false), u_input.a.x & u_input.a.x)), 0i);
    global3 = true;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), func_6(Struct_5(vec4<f32>(var_0.a, -1326f, -2044f, var_0.a)), Struct_4(Struct_2(Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, false), 4294967295u, var_0.d, 0i), vec2<f32>(var_0.a, -258f), vec3<u32>(41818u, u_input.a.x, 1u)), var_0.b.x, Struct_3(var_0.e, vec2<i32>(var_0.e, -52091i), -1479f), vec4<f32>(var_0.a, var_0.a, -240f, var_0.a)), !var_0.b.x, vec2<f32>(-484f, var_0.a)).a, _wgslsmith_div_f32(1972f, var_0.a), _wgslsmith_f_op_f32(1795f * var_0.a))));
    let var_2 = func_5(Struct_2(Struct_1(var_1.a.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c, 0u, 4294967295u) << (u_input.a.x % 32u), 21u)], 0u, vec4<u32>(max(var_0.d.x, 0u), u_input.a.x, var_0.d.x & 1u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, var_0.d.x)), var_0.e), var_1.a.ww, vec3<u32>(1u, 0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.c), var_0.d.zy), max(global0[_wgslsmith_index_u32(var_0.c, 30u)], global0[_wgslsmith_index_u32(var_0.c, 30u)])))));
    let var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(countOneBits(~var_0.d), var_0.d), _wgslsmith_clamp_u32(var_0.d.x, 22967u >> (u_input.a.x % 32u), ~(~4294967295u)), _wgslsmith_dot_vec4_u32(var_0.d, vec4<u32>(61098u, 73229u, min(86610u, 4294967295u), ~u_input.a.x))), var_0.e << ((max(u_input.a.x, ~1u) & min(~43193u, 4294967295u)) % 32u), var_1.a.x);
}

