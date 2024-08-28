struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(51798u, 46153u, 1u, 73352u, 1u, 39094u, 4294967295u, 1u);

var<private> global1: Struct_1;

var<private> global2: u32 = 82684u;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<f32> {
    var var_0 = -28712i;
    var var_1 = -2147483647i;
    global2 = 3217u;
    var var_2 = global1.a != !global1.a;
    global0 = array<u32, 8>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2660f + 167f) + -830f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-442f)))), -874f));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f * 948f) + 412f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -542f)) + vec2<f32>(var_0, 350f));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(var_0, -1498f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(442f, _wgslsmith_div_f32(1643f, 648f), var_0, _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(_wgslsmith_div_f32(-1085f, -420f), var_1.x, -1286f, _wgslsmith_f_op_f32(1641f * -1327f)))))));
    let var_3 = u_input.a.yx;
    let var_4 = min(vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(0u << (u_input.b.x % 32u), u_input.d.x)), reverseBits(~0u), 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, ~u_input.b.x, reverseBits(global0[_wgslsmith_index_u32(1u, 8u)])), ~(~vec4<u32>(10184u, 4294967295u, u_input.d.x, 65209u))));
    return Struct_1(!any(vec2<bool>(select(false, false, true), false == global1.a)), -(~var_3.x));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<bool>) -> vec3<f32> {
    let var_0 = ~vec3<i32>(-6643i, _wgslsmith_sub_i32(countOneBits(global1.b), i32(-1i) * -2147483647i), global1.b);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, arg_0, 882f)))))), func_2(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.c), u_input.a.xx, vec2<i32>(-22625i, u_input.a.x))))), func_2(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.a.ww, firstTrailingBit(vec2<i32>(var_0.x, 53093i))), vec2<i32>(u_input.a.x & u_input.a.x, -1i))));
    global3 = select(arg_2.zy, arg_2.xy, arg_2.xz);
    global1 = func_2(~_wgslsmith_mult_vec2_i32(u_input.a.xy, _wgslsmith_div_vec2_i32(-u_input.a.wx, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c.b, global1.b), vec2<i32>(var_0.x, -2147483647i)))));
    global2 = u_input.d.x >> (25088u % 32u);
    return _wgslsmith_div_vec3_f32(vec3<f32>(-234f, _wgslsmith_f_op_f32(ceil(198f)), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(666f, -1583f, -3753f), vec3<f32>(1000f, -294f, -862f)) * var_1.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1966f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.a, var_1.a, arg_2)))), arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 1u), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, 1040f, 2244f) - vec3<f32>(-897f, -863f, 404f)), _wgslsmith_f_op_vec3_f32(func_1(185f, -657f, vec3<bool>(false, false, true))))))), Struct_1(!global1.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(4179i, u_input.c), vec2<i32>(u_input.a.x, u_input.c))), func_2(u_input.a.wz)), 0u);
    var var_1 = _wgslsmith_f_op_f32(-var_0.b.a.x);
    let var_2 = ~firstLeadingBit(u_input.a);
    var var_3 = Struct_2(vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.a.x))) + _wgslsmith_f_op_f32(-var_0.b.a.x)), 1052f), var_0.b.b, func_2((vec2<i32>(-1i) * -u_input.a.yw) | _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -71941i), var_2.zw & vec2<i32>(var_2.x, 0i))));
    let var_4 = ~64070u;
    var var_5 = select(vec2<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, var_0.b.c.a, true))), false), vec2<bool>(!(firstTrailingBit(1u) == global0[_wgslsmith_index_u32(1u, 8u)]), !(514f >= var_0.b.a.x)), vec2<bool>(~(u_input.d.x & 1u) < max(~81874u, 0u), _wgslsmith_dot_vec3_i32(-u_input.a.wzw, -vec3<i32>(u_input.c, u_input.c, -6495i)) <= 37013i));
    var var_6 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x - -1403f), _wgslsmith_f_op_f32(-526f + var_0.b.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) + 842f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(767f)) + _wgslsmith_f_op_f32(-1401f + 421f)))), var_0.b.b, Struct_1(var_3.b.a | select(!var_0.b.c.a, u_input.c != -36654i, global1.a), select(countOneBits(_wgslsmith_div_i32(-1i, 31041i)), i32(-1i) * -1i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.b.x, firstTrailingBit(_wgslsmith_mod_u32(abs(var_0.c), 7055u))));
}

