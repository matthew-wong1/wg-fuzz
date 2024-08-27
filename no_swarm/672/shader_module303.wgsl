struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-118f, -128f), vec2<f32>(-1444f, 144f), vec2<f32>(566f, 1006f), vec2<f32>(-489f, -1173f), vec2<f32>(-354f, 453f), vec2<f32>(-841f, -515f), vec2<f32>(-1272f, 449f), vec2<f32>(1000f, -384f), vec2<f32>(-119f, -108f), vec2<f32>(182f, -1235f), vec2<f32>(-1148f, -581f), vec2<f32>(-1000f, 1000f), vec2<f32>(1984f, 1054f), vec2<f32>(291f, 868f), vec2<f32>(263f, 308f), vec2<f32>(365f, -228f), vec2<f32>(-480f, 2335f), vec2<f32>(-1205f, 1000f), vec2<f32>(149f, 1083f), vec2<f32>(362f, -892f), vec2<f32>(519f, 136f), vec2<f32>(-937f, -558f), vec2<f32>(436f, 772f), vec2<f32>(995f, 238f), vec2<f32>(901f, 267f), vec2<f32>(236f, -1000f), vec2<f32>(-557f, -220f), vec2<f32>(-674f, -713f), vec2<f32>(1648f, -1249f), vec2<f32>(503f, -348f));

var<private> global1: array<bool, 28> = array<bool, 28>(false, true, false, true, true, false, false, false, true, false, true, true, false, true, true, false, false, false, true, false, true, true, true, false, true, true, true, false);

var<private> global2: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(4294967295u, 42438u), vec2<u32>(4294967295u, 0u), vec2<u32>(36234u, 4294967295u), vec2<u32>(0u, 0u));

var<private> global3: array<Struct_2, 17>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~countOneBits(-vec3<i32>(arg_2.x, arg_2.x, 0i)), vec3<i32>(_wgslsmith_mult_i32(0i, 49564i), _wgslsmith_mod_i32(arg_2.x, 2147483647i), min(19671i, arg_2.x)) >> ((min(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a.yxw) ^ u_input.a.www) % vec3<u32>(32u))), vec3<i32>(arg_2.x, 1i, _wgslsmith_div_i32(arg_2.x, 1i)) ^ (_wgslsmith_sub_vec3_i32(abs(arg_1.d), arg_1.d) ^ -(arg_1.d | vec3<i32>(arg_2.x, arg_2.x, arg_1.a))));
    global2 = array<vec2<u32>, 4>();
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-arg_1.d, abs(vec3<i32>(-1i, arg_1.d.x, -1i))) & vec3<i32>(~arg_2.x, _wgslsmith_mod_i32(var_1.x, 53865i), var_1.x), arg_1.d));
    global2 = array<vec2<u32>, 4>();
    return ~firstLeadingBit(countOneBits(~u_input.a.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_mod_i32(-28998i, firstLeadingBit(reverseBits(-11014i)));
    let var_2 = select(~(~0u) > (_wgslsmith_mult_u32(24573u, func_3(Struct_1(vec2<f32>(1298f, 1258f)), Struct_2(arg_3.a, Struct_1(arg_2.a), true, arg_3.d), arg_3.d.xy)) ^ 45741u), arg_3.c, true);
    var var_3 = arg_3.b;
    let var_4 = i32(-1i) * -7872i;
    return _wgslsmith_f_op_f32(arg_3.b.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_3.a.x)));
}

fn func_1() -> vec2<f32> {
    global1 = array<bool, 28>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(923f + _wgslsmith_f_op_f32(func_2(vec2<u32>(4294967295u, 2214u), u_input.a.ww, Struct_1(vec2<f32>(2212f, -432f)), Struct_2(2147483647i, Struct_1(vec2<f32>(-1533f, 1616f)), false, vec3<i32>(-2147483647i, 1i, -47647i))))), _wgslsmith_f_op_f32(f32(-1f) * -418f))), -138f, 1350f, -1132f);
    var var_1 = _wgslsmith_f_op_f32(abs(1514f));
    global4 = var_0.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1005f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(func_2(u_input.a.yx, u_input.a.wx, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), global2[_wgslsmith_index_u32(1u, 4u)]), 17u)])))), -779f)));
    return vec2<f32>(-1110f, _wgslsmith_f_op_f32(f32(-1f) * -927f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global4 = var_0.a.x;
    var var_1 = global3[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), 17u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.a.x, 1638f), -1130f))));
    global3 = array<Struct_2, 17>();
    return arg_1;
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, 540f)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.x)), _wgslsmith_f_op_f32(trunc(arg_2.a.x))), arg_2.a, select(arg_0.zy, vec2<bool>(true, arg_1), vec2<bool>(false, true))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(-1000f));
    let var_2 = !(!select(vec3<bool>(true, any(vec2<bool>(arg_1, true)), arg_2.a.x > -431f), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), arg_0, vec3<bool>(false, true, false))));
    global1 = array<bool, 28>();
    global1 = array<bool, 28>();
    return vec2<u32>(u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-501f, 39369i, min(func_5(!(!vec3<bool>(global1[_wgslsmith_index_u32(43883u, 28u)], true, global1[_wgslsmith_index_u32(5484u, 28u)])), all(vec3<bool>(true, true, true)), func_4(_wgslsmith_f_op_vec2_f32(func_1()), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))), ~u_input.a.xx), vec3<i32>(-1i, max(countOneBits(-2147483647i), (i32(-1i) * -1i) & _wgslsmith_clamp_i32(53323i, 20388i, 0i)), ~select(-7564i, _wgslsmith_dot_vec3_i32(vec3<i32>(-12919i, 48472i, -9345i), vec3<i32>(-2147483647i, 0i, 0i)), global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)] * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-104f, 419f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -597f))), !vec2<bool>(global1[_wgslsmith_index_u32(7112u, 28u)], global1[_wgslsmith_index_u32(39767u, 28u)])))))));
}

