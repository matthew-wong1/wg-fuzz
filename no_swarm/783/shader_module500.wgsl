struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: vec2<u32> = vec2<u32>(12443u, 4294967295u);

var<private> global2: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(62400u, 4294967295u), vec2<u32>(4294967295u, 4941u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u));

var<private> global3: i32;

var<private> global4: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = u_input.d.x <= firstTrailingBit(_wgslsmith_mod_i32(~(u_input.d.x ^ u_input.d.x), ~firstLeadingBit(2147483647i)));
    global2 = array<vec2<u32>, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1125f))) + -1587f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1066f, -741f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-157f, -971f))))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), true))), false | any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)));
    let var_2 = _wgslsmith_mult_i32(33069i, u_input.b.x);
    var var_3 = Struct_2(select(!any(select(vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, false), false)), _wgslsmith_div_u32(~9319u, ~global1.x) > _wgslsmith_div_u32(arg_0.x >> (1u % 32u), _wgslsmith_sub_u32(u_input.c.x, 1u)), all(vec4<bool>(-52373i < var_2, true, false || var_1.c, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(509f, _wgslsmith_f_op_f32(ceil(-1000f))))))), Struct_1(var_1.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(229f, var_1.b.x))))), true), _wgslsmith_f_op_f32(1469f + _wgslsmith_f_op_f32(-var_1.b.x)), 1i);
    return false;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    global0 = array<vec2<u32>, 23>();
    global3 = ~0i;
    var var_0 = vec2<bool>(!func_3(u_input.c), true);
    let var_1 = Struct_2(true, arg_1, Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, 260f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(-837f, -536f))))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-261f)) + arg_1), firstLeadingBit(-36326i));
    global3 = u_input.d.x;
    return var_1.c;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), 188f) + vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a))), -705f));
    var var_1 = !(!arg_2.c);
    let var_2 = func_2(select(arg_3.a.c.c, true, all(vec3<bool>(true, arg_2.b.x != arg_3.c.d, arg_2.c))), arg_2.b.x);
    var var_3 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_0, u_input.b.x >> (~10096u % 32u), 0i ^ max(arg_3.c.e, arg_0), select(u_input.b.x, arg_3.a.e, true) ^ u_input.d.x), countOneBits(firstTrailingBit(vec4<i32>(arg_0, u_input.b.x, arg_3.a.e, u_input.b.x))), select(select(!vec4<bool>(true, false, arg_3.a.c.c, true), vec4<bool>(true, true, true, true), arg_1), vec4<bool>(!arg_3.a.a, arg_1, true, arg_2.c), arg_3.a.a)), ~u_input.b);
    global0 = array<vec2<u32>, 23>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-220f, _wgslsmith_f_op_f32(sign(arg_3.a.d)), func_3(u_input.c))))), _wgslsmith_f_op_f32(round(-393f)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_f_op_f32(1458f + -329f))), 1648f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(410f, _wgslsmith_f_op_f32(func_1(u_input.a.x, true, Struct_1(-255f, vec2<f32>(-224f, -1038f), false), Struct_3(Struct_2(true, 1034f, Struct_1(131f, vec2<f32>(-512f, 943f), true), 662f, u_input.d.x), global1.x, Struct_2(true, -878f, Struct_1(-355f, vec2<f32>(1070f, -1000f), false), -586f, u_input.b.x)))), 535f)))))));
    var var_1 = 1u;
    var var_2 = min(max(min(u_input.d | countOneBits(u_input.b), _wgslsmith_sub_vec4_i32(u_input.b & vec4<i32>(-55234i, u_input.a.x, 3518i, u_input.d.x), u_input.d)), vec4<i32>(min(-1i, u_input.d.x), abs(u_input.b.x), countOneBits(-15983i), abs(-1i & u_input.d.x))), abs(_wgslsmith_div_vec4_i32(u_input.d, u_input.b)));
    global2 = array<vec2<u32>, 4>();
    var var_3 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x));
    let var_4 = Struct_1(var_0.x, _wgslsmith_div_vec2_f32(var_0.xz, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))), any(!vec4<bool>(true, func_3(u_input.c), true, true)));
    var var_5 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(vec4<u32>(u_input.c.x, global1.x, 1u, 65423u) >> (u_input.c % vec4<u32>(32u)), u_input.c)) ^ u_input.c, countOneBits(countOneBits(~vec4<u32>(u_input.c.x, 53907u, u_input.c.x, 30557u))), 116f, ~u_input.c.wxz, vec4<u32>(_wgslsmith_add_u32(global1.x, 4294967295u), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(25167u, 4891u, u_input.c.x), u_input.c.wyy), ~(~vec3<u32>(global1.x, 4294967295u, 4294967295u))), ~u_input.c.x, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c.x, 79913u), 72128u, 40178u)));
}

