struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(false, true, 0i, true, true), Struct_1(false, true, -29446i, true, true), Struct_1(false, true, 2147483647i, true, false), Struct_1(false, true, 1i, true, false), Struct_1(true, true, 14946i, true, false), Struct_1(true, true, -24928i, false, false), Struct_1(true, false, -40871i, false, false), Struct_1(true, false, -37492i, false, true), Struct_1(true, true, 1i, true, true), Struct_1(true, true, -1i, false, false), Struct_1(false, true, 2147483647i, false, true), Struct_1(false, true, -13362i, true, true), Struct_1(false, true, 1206i, false, true), Struct_1(true, false, 79978i, false, false), Struct_1(false, false, 18303i, false, false), Struct_1(true, true, -23241i, false, true), Struct_1(false, false, -33948i, false, false), Struct_1(false, false, 0i, false, false), Struct_1(true, true, -15633i, false, false), Struct_1(false, true, 9770i, true, true), Struct_1(false, true, 0i, false, false), Struct_1(false, true, -26916i, true, true), Struct_1(true, false, 1i, false, false), Struct_1(true, false, i32(-2147483648), false, false), Struct_1(true, false, 4129i, true, false), Struct_1(true, true, 0i, false, false), Struct_1(false, true, -2840i, false, false));

var<private> global2: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    global2 = arg_0 <= ~abs(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 0u, arg_2), ~0u));
    let var_0 = Struct_1(!global0.x, !(!arg_1), u_input.a, !select(true, !all(vec3<bool>(arg_1, false, true)), true), arg_1);
    global0 = select(!select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, true, true), arg_0 > arg_0), !select(vec3<bool>(global0.x, arg_3.b, true), vec3<bool>(false, global0.x, false), vec3<bool>(var_0.a, arg_1, var_0.e)), var_0.a), !select(!select(vec3<bool>(arg_1, arg_3.e, var_0.d), vec3<bool>(false, true, true), vec3<bool>(arg_1, false, var_0.a)), select(select(vec3<bool>(global0.x, false, arg_1), vec3<bool>(arg_1, var_0.a, true), true), select(vec3<bool>(false, true, var_0.e), vec3<bool>(true, true, true), var_0.e), select(vec3<bool>(true, false, false), vec3<bool>(arg_3.b, global0.x, false), var_0.d)), !all(vec3<bool>(true, true, false))), !(!vec3<bool>(!global0.x, any(vec2<bool>(var_0.a, global0.x)), !var_0.b)));
    let var_1 = global1[_wgslsmith_index_u32(max(~(~(~4294967295u << (arg_0 % 32u))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(1u, ~0u)), 0u)), 27u)];
    global1 = array<Struct_1, 27>();
    return vec4<bool>(arg_1, false, !(!arg_3.e && var_0.a), true);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = Struct_1(any(!(!func_3(67897u, arg_2.d, 57798u, Struct_1(arg_2.a, global0.x, 43847i, global0.x, true)))), true, abs(2147483647i), true, false);
    var var_1 = arg_2;
    let var_2 = Struct_1(var_1.d, (arg_2.c < arg_3) & false, _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, -1i, var_0.c, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c.x, 0i), -3837i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, -1i, 29567i, 2147483647i) >> (vec4<u32>(7159u, 30272u, 4294967295u, 1u) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.c.x, -31132i, 1i, 37384i)) & vec4<i32>(arg_3, var_1.c, -1i, -1i))), select(any(vec4<bool>(func_3(0u, false, 0u, Struct_1(false, true, -1i, var_0.e, false)).x, true, all(vec2<bool>(true, var_0.d)), true)), false, true), func_3(4294967295u, var_0.e, select(_wgslsmith_dot_vec2_u32(vec2<u32>(6529u, 1u), vec2<u32>(0u, 12345u)), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 89963u), max(30579u, 40327u)), _wgslsmith_f_op_f32(trunc(401f)) < -499f), Struct_1(arg_0.x, var_0.b, countOneBits(reverseBits(-83576i)), var_1.b, all(func_3(18715u, arg_0.x, 21427u, arg_2).xxy))).x);
    var var_3 = Struct_1(true, var_1.b, _wgslsmith_div_i32(1i, var_0.c), true, true);
    let var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, 1f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1246f, _wgslsmith_f_op_f32(-arg_1.x), -573f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)), -1023f, -482f)));
    return reverseBits(~firstTrailingBit(18400u));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = select(any(!(!vec3<bool>(global0.x, global0.x, false))) && global0.x, ~u_input.a < -(~arg_0 >> (func_2(global0.xz, vec2<f32>(673f, -1295f), global1[_wgslsmith_index_u32(0u, 27u)], arg_0) % 32u)), false);
    var var_1 = -u_input.c.xz;
    let var_2 = !(!(!func_3(firstLeadingBit(34618u), all(vec3<bool>(false, false, true)), ~39174u, Struct_1(true, var_0, -1i, true, var_0)).www));
    let var_3 = Struct_1(var_0, true, ~_wgslsmith_div_i32(-7723i, _wgslsmith_add_i32(~arg_0, -var_1.x)), var_0, select(global0.x, var_0, ~arg_1 <= _wgslsmith_sub_u32(4294967295u, ~arg_1)));
    global0 = var_2;
    return global1[_wgslsmith_index_u32(countOneBits(arg_1), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!all(select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, global0.x, global0.x))), global0.x, ~_wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(min(u_input.c.x, 2147483647i), -2147483647i)), !all(!vec3<bool>(global0.x, false, global0.x)), !any(select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, true, false), vec4<bool>(false, global0.x, global0.x, true)), vec4<bool>(false, global0.x, true, global0.x), select(vec4<bool>(false, true, global0.x, false), vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x)))));
    var_0 = func_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, _wgslsmith_add_i32(26468i, -29064i), ~var_0.c, u_input.b), vec4<i32>(-22103i, 0i, -10496i, 0i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), -abs(-vec4<i32>(71389i, u_input.c.x, var_0.c, 2147483647i))), 21224u);
    global1 = array<Struct_1, 27>();
    let var_1 = Struct_1(1i < abs(u_input.b), true & !any(vec4<bool>(false, true, true, true)), ~(~_wgslsmith_sub_i32(min(-46996i, 48131i), -2147483647i)), var_0.e, global0.x);
    var_0 = func_1(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.c, -2147483647i), 0i, var_0.c), 4294967295u);
    var var_2 = global1[_wgslsmith_index_u32(abs(1u), 27u)];
    global1 = array<Struct_1, 27>();
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-763f, -450f, -129f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-814f, -401f, 324f, -1000f) + vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1231f, 554f, -1090f, 107f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(293f, 1806f, -542f, -655f), vec4<f32>(819f, -713f, 721f, 2080f))))))));
    let var_4 = func_1(35413i, select(_wgslsmith_clamp_u32(109848u, ~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(46186u, 14027u, 9078u, 9894u), abs(vec4<u32>(29734u, 0u, 1u, 72022u)))), countOneBits(20640u), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(1u, 1u))), ~(select(~vec4<u32>(4294967295u, 34669u, 4294967295u, 7298u), select(vec4<u32>(0u, 1u, 0u, 35605u), vec4<u32>(45193u, 18239u, 7689u, 0u), false), var_2.e) >> (firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f - var_3.x))), 1u, vec4<f32>(-594f, -948f, var_3.x, 3139f));
}

