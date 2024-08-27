struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    var var_0 = max(1u ^ _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), min(38013u, u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1466f));
    let var_2 = vec2<bool>(arg_1.a.b.d, arg_3 >= _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = arg_1.c.b;
    let var_4 = select(arg_1.d.ywx, select(arg_1.d.wwz, select(!vec3<bool>(var_3.a.x, true, true), !select(vec3<bool>(true, var_2.x, var_2.x), arg_1.d.wyw, arg_1.d.wwx), vec3<bool>(!var_3.d, var_3.b, arg_1.b.b.c.x >= 24941i)), !(!vec3<bool>(false, true, arg_1.b.b.a.x))), true);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(~0u, ~arg_2.x << (1u % 32u));
    let var_1 = Struct_4(arg_1.b, Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.b.b.c.zy, arg_1.b.b.c.zz) | vec2<i32>(arg_1.b.a, arg_1.c.c.x), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.c, 1i), vec2<i32>(2147483647i, 14841i)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.b.c.x, arg_1.b.a), vec2<i32>(-1i, -1i)))), Struct_1(arg_1.b.b.a, true, arg_1.c.c, _wgslsmith_f_op_f32(-373f * 1182f) > arg_0.x), min(i32(-1i) * -arg_1.c.c.x, 49386i), !(!(!arg_1.c.d))), Struct_2((~(-2147483647i) | arg_1.b.c) | _wgslsmith_mod_i32(countOneBits(arg_1.b.c), 1i), arg_1.c, reverseBits(arg_1.c.c.x >> (~71385u % 32u)), !(any(vec3<bool>(arg_1.c.a.x, arg_1.b.b.d, arg_1.a)) | (false & arg_1.c.b))), vec4<bool>(arg_1.a, select(countOneBits(arg_1.c.c.x) <= 1i, !arg_1.b.b.a.x, true), arg_1.c.d, arg_1.a));
    let var_2 = ~func_3(_wgslsmith_f_op_f32(f32(-1f) * -119f), Struct_4(Struct_2(-2147483647i, var_1.b.b, arg_1.c.c.x, false), Struct_2(7656i, Struct_1(var_1.a.b.a, var_1.c.b.d, vec3<i32>(1i, var_1.c.c, -12717i), false), 1i, var_1.c.b.b), Struct_2(178i, Struct_1(vec2<bool>(arg_1.a, true), true, vec3<i32>(var_1.b.a, arg_1.b.c, arg_1.b.b.c.x), arg_1.a), var_1.b.b.c.x, var_1.d.x), !var_1.d), (vec3<i32>(var_1.c.a, 1i, 0i) ^ arg_1.c.c) ^ vec3<i32>(6139i, -5842i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -302f)) >> (~4294967295u % 32u);
    global0 = array<vec3<bool>, 14>();
    var var_3 = arg_1;
    return var_3.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-686f, -1224f)) + -920f)))) + _wgslsmith_f_op_f32(-3614f - 694f));
    var var_1 = ~2147483647i;
    var var_2 = Struct_4(Struct_2(arg_1.c.x, arg_1, -countOneBits(-arg_1.c.x), any(vec3<bool>(false, arg_1.b, any(vec4<bool>(true, false, arg_1.d, false))))), Struct_2(abs(_wgslsmith_mod_i32(~(-2147483647i), -24930i)), arg_0.c, arg_1.c.x, !(!(!arg_1.d))), Struct_2(arg_1.c.x, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-567f, 648f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1097f), vec2<f32>(441f, -1000f))), Struct_3(arg_2.x || true, arg_0.b, Struct_1(vec2<bool>(true, arg_0.b.d), arg_1.b, vec3<i32>(-2147483647i, arg_0.c.c.x, arg_0.c.c.x), arg_0.b.b.a.x)), ~abs(vec4<u32>(1u, u_input.a.x, u_input.a.x, 14689u))), ~_wgslsmith_mult_i32(1i, -7439i), all(!select(vec4<bool>(arg_2.x, false, arg_2.x, arg_0.b.b.a.x), vec4<bool>(arg_0.c.a.x, false, true, true), arg_1.b))), vec4<bool>(arg_0.b.b.b | true, !(_wgslsmith_f_op_f32(f32(-1f) * -1644f) < _wgslsmith_f_op_f32(sign(-719f))), true, !(!(!arg_0.b.d))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(-240f)), -707f, -136f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-496f, -1392f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(394f))))), _wgslsmith_f_op_f32(sign(-1029f)))));
    var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -468f), var_3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1268f, 430f, -1492f) * _wgslsmith_div_vec3_f32(vec3<f32>(-105f, var_3.x, var_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x) * vec3<f32>(-1424f, var_3.x, var_3.x)))))), vec3<f32>(1894f, 785f, -1000f)));
    return ~abs(vec3<i32>(arg_0.c.c.x & -27894i, max(arg_0.c.c.x, countOneBits(-2147483647i)), reverseBits(~arg_0.c.c.x)));
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-11592i, abs(-54516i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 769i, -18875i, -73381i), vec4<i32>(1i, 0i, 0i, 2147483647i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -58607i, 1i), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))) >> (~(~vec3<u32>(0u, 92033u, 1u) << (max(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 1i, ~(-2147483647i)), _wgslsmith_div_vec3_i32(-vec3<i32>(-32219i, 0i, 2147483647i), func_4(Struct_3(arg_0.x, Struct_2(0i, Struct_1(vec2<bool>(arg_0.x, arg_0.x), arg_0.x, vec3<i32>(-2147483647i, -13043i, -2147483647i), true), -2147483647i, false), Struct_1(arg_0.zx, false, vec3<i32>(-2147483647i, -6021i, -60566i), arg_0.x)), func_2(vec2<f32>(-152f, -1070f), Struct_3(arg_0.x, Struct_2(-1i, Struct_1(vec2<bool>(arg_0.x, false), false, vec3<i32>(1i, 10173i, 1390i), arg_0.x), -48654i, true), Struct_1(arg_0.zy, arg_0.x, vec3<i32>(-2147483647i, 2147483647i, 12780i), true)), vec4<u32>(45464u, 0u, 41561u, u_input.a.x)), !vec3<bool>(arg_0.x, arg_0.x, false)))));
    var var_1 = Struct_2(_wgslsmith_div_i32(-var_0.x, abs(max(min(var_0.x, var_0.x), -2016i))), Struct_1(arg_0.xy, u_input.a.x == _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 94708u)), ~u_input.a), ~(reverseBits(vec3<i32>(1i, var_0.x, var_0.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 20017u, 15225u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), !(!arg_0.x)), 24185i, arg_0.x);
    var_1 = Struct_2(~(-countOneBits(-16389i)), var_1.b, -var_1.c, !(!arg_0.x));
    return StorageBuffer(select(~vec4<u32>(u_input.a.x << (u_input.a.x % 32u), 76245u, abs(93132u), _wgslsmith_dot_vec3_u32(vec3<u32>(32428u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 5324u, 78337u))), vec4<u32>(1u, u_input.a.x, u_input.a.x, max(~u_input.a.x, 4294967295u)), !(!all(arg_0))), reverseBits(~vec4<i32>(var_0.x, var_0.x, -27181i, var_1.c)) ^ vec4<i32>((var_0.x | 1446i) & reverseBits(1i), ~firstLeadingBit(46693i), var_0.x, firstTrailingBit(_wgslsmith_mult_i32(62i, 1i))), var_1.c, 1i, countOneBits(firstLeadingBit(~(~28872u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    let var_0 = !(!any(vec2<bool>(true, true)));
    let var_1 = all(!select(vec3<bool>(!var_0, !var_0, true), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false));
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    let x = u_input.a;
    s_output = func_1(!(!select(!vec4<bool>(var_1, true, true, true), vec4<bool>(var_0, true, true, false), select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_1, var_1, false, false), var_1))));
}

