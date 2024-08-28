struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(50285u, vec3<u32>(48257u, 0u, 4294967295u), 2147483647i, vec4<i32>(52567i, -50073i, 64955i, 25663i))));

var<private> global3: f32 = -121f;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(795f, -495f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1899f) + vec2<f32>(624f, -1000f))), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)), 402f)));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -1057f) + var_1))));
    var var_3 = Struct_2(Struct_1(firstLeadingBit(u_input.c.x), ~(~u_input.c.wwz), ~u_input.e, -(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -18581i, 0i, u_input.a))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1034f) * vec2<f32>(-1837f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1)), true)) * vec2<f32>(_wgslsmith_f_op_f32(var_1 * 324f), _wgslsmith_f_op_f32(-var_0.x)))), max(~_wgslsmith_mod_vec4_u32(~u_input.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, var_3.a.a, var_3.a.b.x, 41939u), vec4<u32>(var_3.a.b.x, 0u, u_input.c.x, u_input.c.x), u_input.c)), u_input.c), abs(var_3.a.d.yyx));
    return -21021i;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> bool {
    global3 = _wgslsmith_f_op_f32(-arg_0.a.x);
    global1 = !select(!(false == !arg_2), all(select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, false, arg_2), arg_2), select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, false, arg_2)), vec3<bool>(arg_2, arg_2, false))), arg_0.a.x >= arg_0.a.x);
    let var_0 = vec4<bool>(arg_2, arg_2, true, true);
    global2 = array<Struct_2, 1>();
    let var_1 = max(select(-arg_0.c.x, _wgslsmith_mult_i32(func_2(~4294967295u), reverseBits(-2147483647i & arg_0.c.x)), false), 40916i);
    return !(true && (true | var_0.x));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    global2 = array<Struct_2, 1>();
    var var_0 = u_input.c;
    var var_1 = vec2<i32>(firstTrailingBit(~u_input.b), u_input.a);
    let var_2 = any(!arg_1.yzy);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(306f, 164f, 1000f, -854f) * vec4<f32>(1000f, -1584f, 1664f, -1589f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1504f, -161f, 1254f, -193f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1376f, -148f, -233f)))), vec4<bool>(true, var_2, false, arg_1.x)))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(var_3.zz)))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c.yz), abs(vec2<u32>(27631u, 4294967295u))), 0u, 1u, ~44516u), ~vec3<i32>(var_1.x ^ var_1.x, ~abs(-41790i), u_input.d));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~arg_0.b.xx, ~(~vec2<u32>(1u, arg_0.b.x))) << (34271u % 32u), ~u_input.c.yxz, 0i, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(u_input.d, arg_0.c.x, 33857i, -2147483647i)), vec4<i32>(-2147483647i, abs(arg_0.c.x), 7422i, -41556i)), vec4<i32>(arg_0.c.x, func_2(0u), u_input.e, max(25654i, 1i)), abs(vec4<i32>(-21544i, 1i, 1i, u_input.d) & vec4<i32>(arg_0.c.x, u_input.e, 1i, 6450i)) ^ ~vec4<i32>(0i, 1i, -28484i, -27086i)));
    var var_1 = _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(abs(arg_0.b.x), abs(_wgslsmith_mod_u32(countOneBits(54783u), _wgslsmith_div_u32(49372u, u_input.c.x)))));
    var var_2 = any(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true), any(vec3<bool>(false, true, false))), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), all(vec3<bool>(true, true, true))));
    var var_3 = var_0;
    var var_4 = ~_wgslsmith_mult_i32(arg_0.c.x, 1i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_3(all(vec4<bool>(false, all(vec2<bool>(true, false)), true, true)), select(vec4<bool>(false, true, func_1(Struct_3(vec2<f32>(1468f, -925f), u_input.c, vec3<i32>(u_input.e, -16556i, u_input.d)), 37365u, true), false), vec4<bool>(select(true, true, true), u_input.c.x < 0u, true, true), func_1(Struct_3(vec2<f32>(-509f, -441f), u_input.c, vec3<i32>(47547i, -2147483647i, u_input.a)), ~u_input.c.x, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1660f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1701f, 117f)) * _wgslsmith_f_op_f32(floor(-1627f)))) + vec2<f32>(_wgslsmith_f_op_f32(select(-1451f, _wgslsmith_div_f32(1672f, -181f), any(vec2<bool>(false, true)))), 825f)));
    var var_2 = Struct_2(Struct_1(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), vec3<u32>(1u ^ countOneBits(u_input.c.x), u_input.c.x, u_input.c.x), u_input.e, firstLeadingBit(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -13535i, u_input.d, var_0.c)), abs(vec4<i32>(var_0.d.x, -32601i, u_input.b, 42910i))))));
    global1 = ~(~var_2.a.b.x) < 0u;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i);
}

