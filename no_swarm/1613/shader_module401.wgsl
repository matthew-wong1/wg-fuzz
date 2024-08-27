struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<f32>(-1269f, -593f, -910f)), Struct_1(vec3<f32>(-1000f, 1339f, 160f)), Struct_1(vec3<f32>(-306f, 2859f, 376f)), Struct_1(vec3<f32>(-1000f, 669f, 800f)), Struct_1(vec3<f32>(-265f, -2008f, 515f)), Struct_1(vec3<f32>(-805f, 348f, 2044f)), Struct_1(vec3<f32>(2826f, 2622f, -2182f)), Struct_1(vec3<f32>(445f, 452f, -368f)), Struct_1(vec3<f32>(1070f, 123f, -1272f)), Struct_1(vec3<f32>(1534f, 1000f, -442f)), Struct_1(vec3<f32>(1241f, 288f, -645f)), Struct_1(vec3<f32>(-782f, 173f, 2242f)), Struct_1(vec3<f32>(922f, 924f, 835f)), Struct_1(vec3<f32>(254f, -579f, -1000f)), Struct_1(vec3<f32>(-1000f, 1624f, 1002f)), Struct_1(vec3<f32>(480f, -351f, 507f)), Struct_1(vec3<f32>(789f, 2131f, 424f)), Struct_1(vec3<f32>(706f, 228f, 222f)), Struct_1(vec3<f32>(-387f, -440f, 724f)), Struct_1(vec3<f32>(651f, -255f, -104f)), Struct_1(vec3<f32>(541f, 328f, 110f)), Struct_1(vec3<f32>(-1109f, -411f, -1230f)), Struct_1(vec3<f32>(524f, -822f, -158f)), Struct_1(vec3<f32>(142f, 900f, -764f)), Struct_1(vec3<f32>(1219f, 1070f, 501f)), Struct_1(vec3<f32>(873f, 531f, -1093f)), Struct_1(vec3<f32>(-128f, -424f, -1343f)), Struct_1(vec3<f32>(979f, -490f, 772f)), Struct_1(vec3<f32>(1682f, -242f, -1000f)), Struct_1(vec3<f32>(-380f, 1000f, -1000f)));

var<private> global3: array<bool, 26> = array<bool, 26>(true, true, false, false, false, false, true, false, true, false, true, false, true, false, false, false, true, true, true, false, true, false, true, true, false, false);

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -103f))))), arg_0.b);
    let var_1 = Struct_1(vec3<f32>(-740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, global0.a))), 352f));
    return Struct_2(var_0.a, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, global4.b, arg_0.b), select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 26u)], false), global0.b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = global0.b;
    global4 = func_1(Struct_2(arg_0.a.x, (true | global4.b) != all(select(vec2<bool>(global0.b, true), vec2<bool>(false, true), vec2<bool>(global0.b, true)))));
    var var_1 = arg_0;
    global1 = 0i;
    global1 = -_wgslsmith_div_i32(u_input.a, i32(-1i) * -2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a));
}

fn func_2(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = func_1(Struct_2(1000f, _wgslsmith_f_op_f32(abs(-1196f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.a))))));
    global4 = Struct_2(-1703f, u_input.a < _wgslsmith_add_i32(u_input.a, ~1i));
    global1 = u_input.a;
    var_0 = func_1(Struct_2(var_0.a, _wgslsmith_f_op_f32(step(654f, _wgslsmith_f_op_f32(-global0.a))) < 279f));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1737f, global0.a))))) * var_0.a), func_1(Struct_2(var_0.a, false)).b);
    return vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(18609u, 4561u)), vec2<u32>(1841u, 1u))), 54674u, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 56460u), ~1u), 62908u, ~4294967295u), max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_clamp_u32(11507u, 0u, 0u), _wgslsmith_mult_u32(0u, 27792u), ~0u, ~1u))), ~(~(~min(28631u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.a | ~firstTrailingBit(~(-1i));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1605f)) - _wgslsmith_f_op_f32(sign(global4.a)))))), true);
    let var_0 = func_1(Struct_2(-776f, true));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + global4.a), -376f), -1723f, -1307f));
    let var_2 = min(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(14457u, 6957u, 29316u, 4294967295u) ^ func_2(vec2<bool>(false, false))), vec4<u32>(35866u, 1u, 9476u, 1u)), ~1u);
    global3 = array<bool, 26>();
    global0 = func_1(var_0);
    let var_3 = var_0;
    var var_4 = -6255i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32((vec3<u32>(var_2, 56531u, 3516u) << (countOneBits(vec3<u32>(4294967295u, var_2, 1u)) % vec3<u32>(32u))) ^ firstLeadingBit(select(vec3<u32>(var_2, 61848u, var_2), vec3<u32>(var_2, 0u, 33466u), vec3<bool>(true, global3[_wgslsmith_index_u32(var_2, 26u)], global0.b))), max(vec3<u32>(var_2, var_2, 0u) | ~vec3<u32>(var_2, 0u, 54274u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(9839u, 0u, 11267u), vec3<u32>(18649u, var_2, 4294967295u)))), vec2<u32>(4294967295u, ~(~(~72869u))), ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_2, var_2, var_2, 18938u)), ~vec4<u32>(var_2, 0u, 0u, var_2), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, var_2, var_2, 1u), vec4<u32>(var_2, var_2, var_2, var_2))), ~vec4<u32>(var_2, var_2, 0u, var_2) ^ vec4<u32>(var_2, 72649u, 6187u, 33551u)), (firstLeadingBit(abs(vec3<i32>(-17588i, 11318i, 2147483647i))) | ~min(vec3<i32>(-8259i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))) >> (~vec3<u32>(var_2, var_2, var_2 ^ 18737u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a)))))));
}

