struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -687f;

var<private> global1: array<vec4<bool>, 29>;

var<private> global2: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(1563f, 1000f, 1000f, 744f), vec4<f32>(1540f, -1134f, -1137f, -114f), vec4<f32>(-2486f, -286f, 736f, 398f), vec4<f32>(871f, 846f, 205f, -1892f), vec4<f32>(-537f, -1164f, -1431f, -571f), vec4<f32>(511f, 1191f, -177f, 1237f), vec4<f32>(-1000f, -481f, -838f, -1564f), vec4<f32>(-396f, -361f, 1203f, -1523f), vec4<f32>(-719f, 1244f, 836f, -2098f), vec4<f32>(721f, -1117f, -486f, -429f), vec4<f32>(-614f, 1086f, 558f, -978f), vec4<f32>(-945f, -654f, 1364f, -2063f), vec4<f32>(-818f, 168f, 297f, 985f), vec4<f32>(619f, -167f, 303f, 1516f), vec4<f32>(284f, 914f, 416f, 145f), vec4<f32>(-654f, 281f, 692f, -228f), vec4<f32>(-540f, -140f, -606f, -263f), vec4<f32>(1000f, 523f, 970f, 683f), vec4<f32>(1268f, 1209f, -413f, -1000f), vec4<f32>(415f, 1000f, 548f, 491f), vec4<f32>(783f, 388f, -544f, -977f), vec4<f32>(666f, -446f, -977f, 830f), vec4<f32>(123f, 2097f, 302f, -1045f));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<f32>(-258f, 2077f), vec4<u32>(76333u, 67448u, 62364u, 4294967295u)), Struct_1(vec2<f32>(293f, -887f), vec4<u32>(27984u, 0u, 67448u, 18366u)));

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_i32(u_input.a.x, countOneBits(~(-u_input.a.x >> (firstLeadingBit(arg_0.b.x) % 32u))));
    global4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1443f + -302f), arg_0.a.x)), _wgslsmith_f_op_f32(-arg_1.x)));
    global0 = _wgslsmith_f_op_f32(min(arg_1.x, 952f));
    global3 = arg_2;
    global1 = array<vec4<bool>, 29>();
    return vec3<bool>(any(select(vec2<bool>(select(true, true, true), select(false, false, false)), vec2<bool>(true, true), false)), !(!(!all(vec3<bool>(false, true, true)))), all(!(!global1[_wgslsmith_index_u32(20527u, 29u)])) & !any(vec2<bool>(false, false)));
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = min(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i | u_input.a.x, ~(-1i), -38882i, countOneBits(u_input.a.x)), vec4<i32>(-u_input.a.x, _wgslsmith_div_i32(-2147483647i, 15115i), select(-1i, -23138i, false), _wgslsmith_div_i32(u_input.a.x, u_input.a.x))), u_input.a.x, u_input.a.x), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.a.x, -u_input.a.x), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), -(u_input.a.x ^ u_input.a.x), ~1i & _wgslsmith_add_i32(-16309i, -u_input.a.x), ~abs(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x - -449f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1175f)), _wgslsmith_f_op_f32(global3.b.a.x - 1f)));
    var var_2 = vec4<bool>(!all(select(vec3<bool>(true, true, true), func_3(global3.b, vec3<f32>(global3.a.a.x, -1103f, var_1.x), arg_0), vec3<bool>(false, true, false))), any(select(vec2<bool>(8837u != arg_0.b.b.x, true), select(func_3(Struct_1(arg_0.a.a, vec4<u32>(0u, global3.b.b.x, 4294967295u, arg_0.a.b.x)), vec3<f32>(arg_0.a.a.x, global3.a.a.x, -839f), arg_0).zz, vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false))), false, any(vec3<bool>(true, true, true)));
    var_2 = !global1[_wgslsmith_index_u32(~global3.b.b.x, 29u)];
    var var_3 = arg_0;
    return var_3.b.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global3.a.a))) + _wgslsmith_f_op_vec2_f32(-global3.a.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, global3.a.a.x), global3.b.a)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.a.a.x, 1637f)))))));
    global1 = array<vec4<bool>, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1, global3.b.a.x))))), global3.a.a.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-global3.b.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(1422f, 828f))), _wgslsmith_div_f32(global3.a.a.x, 511f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(global3.a, global3.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1402f, -276f)))));
    global4 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-global3.b.a.x));
    return global3.b;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    global1 = array<vec4<bool>, 29>();
    let var_0 = vec4<u32>(func_1(~firstLeadingBit(~vec2<u32>(25795u, arg_3.b.x)), func_1(select(vec2<u32>(0u, arg_3.b.x), arg_3.b.xx ^ arg_3.b.xz, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_3.a.x)))), ~(vec4<i32>(u_input.a.x, 9980i, u_input.a.x, 0i) | vec4<i32>(-26802i, 2147483647i, u_input.a.x, u_input.a.x))).a.x, countOneBits(vec4<i32>(-1i, ~(-1i), ~28960i, _wgslsmith_sub_i32(-26098i, 28379i)))).b.x, _wgslsmith_dot_vec3_u32(~arg_3.b.yyx, global3.a.b.zzz), 1u, _wgslsmith_clamp_u32(0u, ~global3.b.b.x, 1u) ^ global3.a.b.x);
    let var_1 = u_input.a.x;
    var var_2 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_1, -21760i, i32(-1i) * -93892i), vec4<i32>(var_1, 1i, -2147483647i, var_1)), firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(48838i, 2147483647i, u_input.a.x, 27587i), vec4<i32>(u_input.a.x, 1i, -1i, var_1)))));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a.x + 1f) + _wgslsmith_f_op_f32(-arg_0)) * -586f));
    return ~min(_wgslsmith_mod_i32(~var_1, ~_wgslsmith_add_i32(36513i, u_input.a.x)), 39351i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, (u_input.a.x <= 52493i) && all(vec3<bool>(true, true, true)), true);
    var var_1 = vec3<u32>(0u, ~(1u & global3.a.b.x), _wgslsmith_dot_vec2_u32(global3.a.b.yz, vec2<u32>(~max(1u, global3.b.b.x), _wgslsmith_sub_u32(~global3.a.b.x, 4294967295u))));
    var_1 = reverseBits(global3.a.b.yzz);
    var var_2 = _wgslsmith_sub_i32(~(~u_input.a.x), -13926i ^ u_input.a.x) ^ _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, -u_input.a.x, u_input.a.x) ^ 16044i, ~func_4(global3.a.a.x, -591f, vec3<f32>(-1077f, global3.a.a.x, -1000f), func_1(var_1.yx, global3.a.a.x, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -7027i))));
    let var_3 = Struct_1(global3.b.a, global3.b.b);
    var var_4 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(reverseBits(u_input.a.x), _wgslsmith_mod_i32(-u_input.a.x, ~u_input.a.x), u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), abs(~vec3<i32>(u_input.a.x, -15189i, -10814i)) | abs(abs(vec3<i32>(2147483647i, 2147483647i, 79934i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x | -2147483647i, var_4.x, countOneBits(var_4.x), -4327i), vec4<i32>(u_input.a.x, -20906i, var_4.x, 36853i)), 2147483647i, var_4.x, 4294967295u);
}

