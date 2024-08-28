struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<Struct_3, 12>;

var<private> global2: Struct_5;

var<private> global3: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = 74177u;
    global3 = array<vec3<bool>, 23>();
    var var_1 = Struct_2(arg_0.c, arg_0.c, vec2<i32>(~global2.a.x, 1i), arg_0.c);
    var var_2 = (vec2<i32>(-select(1i, var_1.c.x, false), firstLeadingBit(reverseBits(global2.a.x))) >> (countOneBits(~(~arg_0.a.xz)) % vec2<u32>(32u))) ^ ~_wgslsmith_mod_vec2_i32(var_1.c, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.a.x, u_input.b.x), vec2<i32>(1i, global2.a.x)), vec2<i32>(var_1.c.x, 8593i)));
    var var_3 = ~global2.a.x;
    return 1172f;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-314f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -470f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f * -132f)))), false, true, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -37802i, -23261i, -1i), vec4<i32>(global2.a.x, -u_input.b.x, u_input.b.x, 47626i)) <= global2.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(447f)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec3<u32>(u_input.a.x, 0u, 0u), 723f, var_0, var_0.d)))), _wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(1646f * var_0.a)) < var_0.e, arg_1.x, any(arg_1), 1005f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1112f), all(arg_0), true, true, -1287f), vec2<i32>(_wgslsmith_clamp_i32(-(~u_input.b.x), _wgslsmith_div_i32(~u_input.b.x, global2.a.x), global2.a.x), ~(1i >> (select(global0[_wgslsmith_index_u32(0u, 4u)], 3051u, true) % 32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1662f) * _wgslsmith_f_op_f32(807f + var_0.e))), true, !(!any(arg_1.xw)), any(!arg_1.xz), _wgslsmith_f_op_f32(min(var_0.e, var_0.e))));
    let var_2 = select(select(arg_1, vec4<bool>(any(select(arg_0, arg_0, arg_1.xz)), true, arg_1.x, all(!arg_1)), vec4<bool>(arg_0.x, !(u_input.a.x == u_input.a.x), true, true)), select(!select(arg_1, vec4<bool>(var_1.a.d, true, arg_0.x, false), -22389i > global2.a.x), vec4<bool>(arg_0.x, false, true, arg_0.x), arg_1), ~(~(-27372i) & _wgslsmith_mod_i32(2147483647i, var_1.c.x)) < global2.a.x);
    let var_3 = _wgslsmith_div_u32(0u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(~u_input.a.x, global0[_wgslsmith_index_u32(~31818u, 4u)]), ~17855u));
    global1 = array<Struct_3, 12>();
    return var_0.e;
}

fn func_1() -> vec4<f32> {
    var var_0 = i32(-1i) * -11924i;
    let var_1 = Struct_4(u_input.a.zxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), vec4<bool>(true, true, false, false))), -379f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(371f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -666f)))), Struct_1(1017f, any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true))), true, false, 287f), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global2 = Struct_5(select(abs(u_input.b), min(vec3<i32>(global2.a.x, 2147483647i, u_input.b.x), _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 0i, u_input.b.x))) >> ((var_1.a << (max(vec3<u32>(15439u, 0u, global0[_wgslsmith_index_u32(15831u, 4u)]), vec3<u32>(u_input.a.x, 1u, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), select(vec3<bool>(true, var_1.d, true), vec3<bool>(false, true, true | var_1.d), global3[_wgslsmith_index_u32(var_1.a.x, 23u)])));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(var_1.c.e + -500f)), var_1.d, !(1i < _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x, 33880i, u_input.b.x), vec3<i32>(-2147483647i, global2.a.x, 61083i))), !(true && any(vec3<bool>(var_1.d, var_1.d, false))), var_1.c.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, 230f))) - _wgslsmith_f_op_f32(-var_1.b)), var_1.d && all(vec2<bool>(var_1.d, true)), false, -326f <= _wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(var_1.b + 1376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -947f))))), ~vec2<i32>(~countOneBits(u_input.b.x), abs(1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1417f)) - _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), vec4<bool>(var_1.d, var_1.d, false, var_1.c.b)))), var_1.d, var_1.d, any(select(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(48505u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]), 23u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(var_1.a.x, 4294967295u), 4u)], 23u)], all(vec3<bool>(var_1.d, true, var_1.d)))), var_1.c.a));
    global1 = array<Struct_3, 12>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false), vec4<bool>(var_2.a.c, false, var_2.d.c, true)))), _wgslsmith_f_op_f32(-730f * var_2.a.e), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -432f, var_2.a.a, 2676f), vec4<f32>(var_1.c.e, var_2.a.a, -235f, 253f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, var_1.b, var_1.c.a, -432f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, 199f, var_1.c.a, var_1.b)), vec4<bool>(false, var_2.a.d, false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1286f + 106f), _wgslsmith_f_op_f32(-1000f + 651f), _wgslsmith_f_op_f32(floor(212f)), _wgslsmith_div_f32(1134f, 1970f)), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2074f, _wgslsmith_f_op_f32(step(1746f, -777f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())))))));
    global0 = array<u32, 4>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * -272f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), vec4<bool>(false, true, true, true)))))) * -673f));
    var var_2 = Struct_5(vec3<i32>(~(-45045i), firstTrailingBit(2147483647i), firstLeadingBit(-_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))));
    let var_3 = min(global2.a.x, u_input.b.x);
    var_1 = _wgslsmith_f_op_vec2_f32(round(var_0.ww));
    let var_4 = false;
    global1 = array<Struct_3, 12>();
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec2<bool>(any(vec4<bool>(var_4, var_4, var_4, false)), all(vec3<bool>(true, var_4, var_4))), vec4<bool>(true, any(vec4<bool>(var_4, var_4, var_4, var_4)), !var_4, !all(global3[_wgslsmith_index_u32(u_input.a.x, 23u)])))), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(u_input.a.yzy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), min(-2147483647i, global2.a.x), u_input.a.yz, u_input.a.zyz);
}

