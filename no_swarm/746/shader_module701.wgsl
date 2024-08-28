struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(23826u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(51878u, 78114u), vec2<u32>(28822u, 0u), vec2<u32>(11089u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(60215u, 0u), vec2<u32>(50358u, 64752u), vec2<u32>(1u, 0u));

var<private> global1: f32;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(-415f));
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1394f, _wgslsmith_f_op_f32(1032f * -365f))) + _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(sign(var_0)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2767f * var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(941f - -754f)) * 541f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.x, 1000f)), var_2.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1227f, -544f, arg_2.x))), all(vec2<bool>(arg_1.x, false)) | !arg_1.x))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -291f));
    return _wgslsmith_mult_vec3_i32(u_input.d, u_input.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    var var_0 = Struct_3(vec4<bool>(!((u_input.b.x ^ 4294967295u) <= 0u), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), all(vec2<bool>(select(true, true, false), true)), true), select(true, (any(vec4<bool>(true, true, true, true)) || true) | true, false), ~max(u_input.e, 44903u >> (u_input.b.x % 32u)));
    let var_1 = true;
    var var_2 = vec4<bool>(select(false, all(!var_0.a.zyy), any(select(var_0.a, var_0.a, false))) | var_1, 1273f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3, -1217f)) - _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - 949f))), all(var_0.a), all(vec2<bool>(!var_0.a.x, var_0.b)));
    return 0i;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    global0 = array<vec2<u32>, 12>();
    let var_0 = _wgslsmith_div_u32(1u, arg_2);
    let var_1 = reverseBits(-func_4(Struct_1(_wgslsmith_f_op_f32(select(202f, 691f, true))), vec3<i32>(u_input.c.x, -arg_1.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-154f, -1595f, 1207f, -486f)), -1502f));
    global2 = var_0;
    var var_2 = firstLeadingBit(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-5372i, u_input.d.x, -11717i, arg_1.x), vec4<i32>(arg_0, -2147483647i, arg_1.x, 30360i)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2, 0u, 3638u), vec4<u32>(arg_2, arg_2, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1354f))), -217f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 920f, 694f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-978f, _wgslsmith_f_op_f32(select(1003f, -1190f, true)), 328f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, 271f, 1525f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1361f, 136f, -787f)))))));
    let var_1 = all(vec4<bool>(false, arg_0.x, any(arg_0), false != !(arg_0.x | arg_0.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(func_4(Struct_1(var_0.x), func_3(var_0, vec3<bool>(true, true, true), vec4<f32>(var_0.x, var_0.x, -742f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-2686f, -2035f, -2265f, var_0.x), vec4<f32>(-1114f, var_0.x, -513f, var_0.x)), var_0.x), vec2<i32>(_wgslsmith_sub_i32(16474i, u_input.c.x), countOneBits(2147483647i)), _wgslsmith_div_u32(arg_1.x << (4294967295u % 32u), min(arg_3.x, u_input.e)))), var_0.x, !all(arg_0.yz))), arg_1, Struct_1(var_0.x));
    let var_3 = ~arg_1.ywx;
    let var_4 = arg_0;
    return Struct_3(select(vec4<bool>(all(var_4.zy), ~4294967295u >= min(arg_1.x, arg_3.x), true, var_1), !select(vec4<bool>(arg_0.x, false, arg_0.x, var_1), vec4<bool>(var_4.x, false, false, false), !vec4<bool>(var_1, true, arg_0.x, true)), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(arg_0.x, !all(select(vec2<bool>(false, var_1), vec2<bool>(arg_0.x, true), vec2<bool>(true, var_4.x))), arg_0.x), firstLeadingBit(1u));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(floor(-1340f));
    global0 = array<vec2<u32>, 12>();
    var var_0 = func_2(vec3<bool>(true, true, true), ~max(min(vec4<u32>(arg_1, arg_0.b.x, 19942u, 1u), vec4<u32>(1612u, 35706u, 0u, 4294967295u)), arg_0.b), _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_clamp_vec3_i32(u_input.d, (u_input.c.wzw << (vec3<u32>(arg_0.b.x, 4294967295u, arg_1) % vec3<u32>(32u))) | u_input.d, vec3<i32>(abs(u_input.a.x), -9147i, i32(-1i) * -2147483647i))), vec2<u32>(~(~abs(4294967295u)), ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~u_input.b.x, 12u)], vec2<u32>(21423u, u_input.b.x) | vec2<u32>(arg_0.b.x, 3456u))));
    let var_1 = 2147483647i;
    let var_2 = 1u;
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c.a, 1290f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.a + -540f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-105f + 130f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.a + arg_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(-594f, vec4<u32>(u_input.b.x, 4096u, 0u, u_input.b.x), Struct_1(-243f)), u_input.e)))));
    var var_1 = -358f;
    var var_2 = vec4<u32>(28716u, 4294967295u, 35278u, ~(~func_2(vec3<bool>(true, false, true), vec4<u32>(u_input.b.x, u_input.e, 0u, 4294967295u), 29308i, global0[_wgslsmith_index_u32(u_input.e, 12u)]).c & ~(u_input.e ^ 1u)));
    let var_3 = -u_input.a.x;
    global0 = array<vec2<u32>, 12>();
    let var_4 = firstTrailingBit(vec4<i32>(~(-1773i), reverseBits(_wgslsmith_mult_i32(var_3, func_4(Struct_1(1616f), vec3<i32>(var_3, 1i, 40638i), vec4<f32>(var_0.x, 934f, -1000f, var_0.x), var_0.x))), _wgslsmith_sub_i32(u_input.c.x, reverseBits(_wgslsmith_sub_i32(-10729i, -5553i))), 1i));
    var var_5 = vec2<bool>(all(select(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), select(func_2(vec3<bool>(true, true, true), vec4<u32>(34199u, u_input.b.x, var_2.x, var_2.x), 1i, vec2<u32>(0u, 34427u)).a, vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(vec3<bool>(true, false, true), vec4<u32>(var_2.x, 4294967295u, u_input.e, 1u), u_input.a.x, var_2.zz).a.x, true, any(vec2<bool>(true, false)), false))), false);
    var var_6 = ~_wgslsmith_add_vec3_u32(vec3<u32>(1u & u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 25181u, var_2.x, 4294967295u), vec4<u32>(u_input.e, 1u, var_2.x, var_2.x)), abs(76383u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, var_2.x, var_2.x), var_2.yyx)) << (~_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(16837u, var_2.x, 42916u)), vec3<u32>(51853u, 4294967295u, 69810u) | ~var_2.zyz) % vec3<u32>(32u));
    var var_7 = -(var_4 << (_wgslsmith_add_vec4_u32(vec4<u32>(var_6.x, select(var_2.x, var_6.x, var_5.x), _wgslsmith_add_u32(u_input.e, 0u), 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(6457u, 68887u, var_2.x, 21011u), firstTrailingBit(vec4<u32>(15560u, 59929u, 4294967295u, var_6.x)), ~vec4<u32>(u_input.b.x, 4294967295u, 1u, 1u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1117f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(-306f - var_0.x))))), ~22711u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1179f, -827f, var_5.x))), var_0.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2001f, var_0.x, 378f, var_0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 609f, 1083f, -710f), vec4<f32>(-1000f, 1324f, var_0.x, var_0.x))))), func_2(!vec3<bool>(var_5.x, false, var_5.x), vec4<u32>(_wgslsmith_add_u32(var_2.x, u_input.b.x), abs(u_input.e), var_2.x, 22744u), -2147483647i, max(reverseBits(vec2<u32>(var_2.x, u_input.b.x)), var_6.yy)).b)));
}

