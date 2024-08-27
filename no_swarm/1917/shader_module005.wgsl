struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: Struct_4 = Struct_4(true);

var<private> global2: f32 = 433f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    global2 = -1142f;
    let var_0 = ~u_input.b;
    let var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -880f) + arg_0.x))));
    let var_2 = true;
    var var_3 = vec2<f32>(_wgslsmith_div_f32(742f, arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-713f * -928f), -607f))), var_1)));
    return max(vec3<i32>(u_input.b, var_0, _wgslsmith_add_i32(~(-28398i), var_0)), -_wgslsmith_clamp_vec3_i32(select(max(vec3<i32>(2147483647i, 1i, -4921i), vec3<i32>(-17155i, u_input.b, u_input.b)), vec3<i32>(u_input.b, 3147i, var_0), false), vec3<i32>(-22885i | u_input.b, ~(-18119i), abs(2147483647i)), countOneBits(vec3<i32>(u_input.b, -2147483647i, var_0))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(func_3(vec2<f32>(-309f, 1941f)), ~firstLeadingBit(abs(vec4<i32>(-26041i, u_input.b, -2147483647i, u_input.b))), global0[_wgslsmith_index_u32(~reverseBits(global0[_wgslsmith_index_u32(21923u, 26u)] ^ 38587u), 26u)], 432f, !(!select(true, true, true))), ~countOneBits(~u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(42139u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a ^ global0[_wgslsmith_index_u32(u_input.a, 26u)], 26u)] >> ((global0[_wgslsmith_index_u32(1u, 26u)] | 4294967295u) % 32u), 26u)], 26u)], abs(reverseBits(_wgslsmith_add_u32(10362u, global0[_wgslsmith_index_u32(34869u, 26u)]))), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(4116u, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a, 22300u)), _wgslsmith_mod_vec3_u32(vec3<u32>(26728u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84046u, 26u)], 26u)]), vec3<u32>(30530u, 70881u, 0u))), global0[_wgslsmith_index_u32(u_input.a, 26u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 39478u, 5482u, u_input.a), vec4<u32>(30737u, 1u, global0[_wgslsmith_index_u32(9676u, 26u)], global0[_wgslsmith_index_u32(23963u, 26u)])), 26u)], min(u_input.a, u_input.a), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 26u)]), vec2<u32>(global0[_wgslsmith_index_u32(37339u, 26u)], 0u)))));
    var var_1 = !select(select(!(!vec3<bool>(var_0.a.e, var_0.a.e, false)), select(select(vec3<bool>(global1.a, false, var_0.a.e), vec3<bool>(false, false, true), var_0.a.e), !vec3<bool>(var_0.a.e, global1.a, global1.a), var_0.a.e), !vec3<bool>(global1.a, true, true)), select(select(select(vec3<bool>(true, var_0.a.e, false), vec3<bool>(true, var_0.a.e, var_0.a.e), false), vec3<bool>(true, true, true), !vec3<bool>(false, true, global1.a)), select(vec3<bool>(false, false, global1.a), vec3<bool>(true, true, global1.a), !vec3<bool>(global1.a, false, false)), false), true);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) + -451f)))), _wgslsmith_f_op_f32(f32(-1f) * -563f)));
    var var_3 = _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_0.d.x)), var_0.c.xw << (var_0.c.yw % vec2<u32>(32u)))) | ~vec2<u32>(~u_input.a, var_0.d.x << (var_0.c.x % 32u)), vec2<u32>(4294967295u, 26352u));
    var var_4 = var_0.a.b;
    return Struct_4(true);
}

fn func_1(arg_0: vec4<f32>) -> Struct_5 {
    let var_0 = Struct_5(func_2(), any(select(select(!vec4<bool>(global1.a, false, true, global1.a), select(vec4<bool>(global1.a, false, true, global1.a), vec4<bool>(global1.a, global1.a, true, true), vec4<bool>(false, global1.a, false, true)), false), select(select(vec4<bool>(true, false, true, global1.a), vec4<bool>(false, false, global1.a, global1.a), vec4<bool>(global1.a, true, true, false)), select(vec4<bool>(global1.a, false, global1.a, global1.a), vec4<bool>(false, global1.a, global1.a, global1.a), true), global1.a), global1.a)));
    global0 = array<u32, 26>();
    let var_1 = ~(~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 26u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(0u, 26u)], 39997u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a, 1u, 19842u)), ~43623u)));
    var var_2 = arg_0.yyz;
    let var_3 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(sign(var_2.x))) + 245f)));
    return Struct_5(func_2(), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(966f, -803f, 1257f, 262f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, -194f, -1917f, -1000f) + vec4<f32>(-1902f, 1000f, 244f, 477f))))));
    global0 = array<u32, 26>();
    var var_1 = _wgslsmith_mult_vec4_u32(~(~max(max(vec4<u32>(u_input.a, 1u, u_input.a, 15356u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], 0u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 26u)])), vec4<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(1u, 26u)], 0u))), vec4<u32>(15996u, u_input.a, select(u_input.a, u_input.a, select(true, global1.a | true, true)), ~global0[_wgslsmith_index_u32(u_input.a, 26u)] << (2441u % 32u)));
    let var_2 = vec4<bool>(!func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-432f, -1000f, -1036f, -313f), vec4<f32>(621f, -1000f, 900f, 684f), var_0.a.a)))).a.a, global1.a & true, false, true);
    var var_3 = Struct_2(Struct_1(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 26412i, 56010i), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec4<i32>(_wgslsmith_sub_i32(u_input.b, -2147483647i), firstTrailingBit(firstTrailingBit(u_input.b)), -29197i, 1i), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), var_1.yx), min(var_1.zw, vec2<u32>(4294967295u, u_input.a))) ^ u_input.a, -861f, global1.a), u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 93989u), 17545u), max(min(global0[_wgslsmith_index_u32(1u, 26u)], u_input.a), _wgslsmith_div_u32(u_input.a, var_1.x))), 26u)], 15192u, _wgslsmith_sub_u32(1u, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, 27775u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(~0u, countOneBits(56410u)), var_1.x)), ~var_1.wwy | ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(35405u, global0[_wgslsmith_index_u32(8760u, 26u)], 51171u), var_1.zzx), var_1.wyx));
    global1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a.d, -439f, var_3.a.d))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-276f, var_3.a.d, var_3.a.d))))))), vec3<u32>(1u, var_3.b, _wgslsmith_mod_u32(firstTrailingBit(1u), ~(u_input.a | 1u))));
}

