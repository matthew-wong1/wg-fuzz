struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12>;

var<private> global1: Struct_1 = Struct_1(true, vec4<bool>(true, false, false, false), 14699u, vec3<u32>(0u, 1u, 66308u));

var<private> global2: vec2<bool>;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(false, vec4<bool>(true, false, false, true), 0u, vec3<u32>(4294967295u, 81892u, 19024u))), vec4<bool>(true, true, true, true), -1031i, -4852i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global0 = array<vec2<f32>, 12>();
    var var_0 = 209f;
    global0 = array<vec2<f32>, 12>();
    global1 = global3.a.a;
    return Struct_3(Struct_2(global3.a.a), global3.b, _wgslsmith_add_i32(arg_0.x, max(1i, u_input.a.x)), u_input.a.x);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(-countOneBits(vec2<i32>(1i, 1i)));
    var var_1 = ~var_0.d;
    let var_2 = _wgslsmith_sub_i32(18447i, -53827i) ^ -min(min(var_0.c, firstTrailingBit(-2147483647i)), ~1i);
    var var_3 = Struct_2(Struct_1((!global1.b.x & !var_0.b.x) == true, select(vec4<bool>(false, true, global2.x, var_0.a.a.b.x), !vec4<bool>(false, arg_1.x, global3.a.a.a, global1.a), select(vec4<bool>(false, var_0.a.a.a, arg_0.a.a.b.x, false), vec4<bool>(global3.b.x, true, false, global3.b.x), 1u < var_0.a.a.d.x)), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global3.a.a.c, global1.d.x, 0u), ~arg_0.a.a.d.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(51394u, arg_0.a.a.c, 1u), var_0.a.a.d)));
    global2 = select(global3.b.ww, !vec2<bool>(!arg_1.x, !(!global1.b.x)), false);
    return func_2(u_input.a).a.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec3<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(964f, arg_0.x));
    global0 = array<vec2<f32>, 12>();
    global1 = func_3(func_2(-_wgslsmith_sub_vec2_i32(~vec2<i32>(global3.c, global3.c), u_input.a)), !global3.a.a.b);
    global3 = Struct_3(global3.a, select(global3.a.a.b, select(!vec4<bool>(true, false, false, global1.b.x), global3.a.a.b, global3.a.a.b.x), true), -abs(~u_input.a.x), i32(-1i) * -u_input.a.x);
    return func_2(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a.x), select(u_input.a, vec2<i32>(2147483647i, global3.d), global1.a)), vec2<i32>(5208i, _wgslsmith_div_i32(global3.c, 1202i)), vec2<bool>(!global2.x, func_3(Struct_3(Struct_2(global3.a.a), vec4<bool>(true, var_0, false, false), u_input.a.x, -1i), vec4<bool>(global2.x, global2.x, var_0, global1.a)).b.x))).a.a.d ^ global3.a.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1410f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f))));
    global0 = array<vec2<f32>, 12>();
    global1 = global3.a.a;
    var var_1 = 1u ^ _wgslsmith_div_u32(global3.a.a.d.x, abs(_wgslsmith_dot_vec3_u32(func_1(vec2<f32>(-1000f, 1000f), -425f), vec3<u32>(global3.a.a.c, global1.c, 24557u) << (vec3<u32>(0u, 33699u, 0u) % vec3<u32>(32u)))));
    global0 = array<vec2<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-468f)))))), _wgslsmith_f_op_f32(f32(-1f) * -571f), 1112f), select(u_input.a, -(~vec2<i32>(global3.d, u_input.a.x)), -u_input.a.x > countOneBits(u_input.a.x)), u_input.a.x ^ select(-firstTrailingBit(-2147483647i), u_input.a.x, true), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-208f, 1226f) + global0[_wgslsmith_index_u32(3402u, 12u)]) - global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.c, global3.a.a.c), 12u)]) * _wgslsmith_div_vec2_f32(vec2<f32>(-391f, -2256f), _wgslsmith_f_op_vec2_f32(step(global0[_wgslsmith_index_u32(global3.a.a.c, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-371f))))).x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(976f, -726f, -1295f, 1046f), vec4<f32>(-145f, -822f, 2692f, -1000f), vec4<bool>(false, true, false, global2.x))), vec4<f32>(1000f, -1781f, 488f, 1017f)))))));
}

