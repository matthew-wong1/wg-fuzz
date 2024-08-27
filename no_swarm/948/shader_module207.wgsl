struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<i32> = vec3<i32>(-1i, 32783i, -20152i);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<f32>(1263f, 437f, 1089f)), Struct_2(vec3<f32>(-967f, -287f, 450f)), Struct_2(vec3<f32>(1523f, -370f, -526f)), Struct_2(vec3<f32>(-1001f, -364f, -842f)), Struct_2(vec3<f32>(1001f, -647f, -210f)), Struct_2(vec3<f32>(-182f, -1102f, -1000f)), Struct_2(vec3<f32>(-606f, 115f, -650f)), Struct_2(vec3<f32>(799f, -1052f, -239f)), Struct_2(vec3<f32>(-415f, 2106f, 463f)), Struct_2(vec3<f32>(-728f, -1047f, -162f)), Struct_2(vec3<f32>(-1000f, -703f, -1000f)), Struct_2(vec3<f32>(2708f, 546f, 1054f)), Struct_2(vec3<f32>(1000f, -152f, -791f)), Struct_2(vec3<f32>(390f, 1196f, 1000f)), Struct_2(vec3<f32>(884f, 540f, -370f)), Struct_2(vec3<f32>(1863f, -1081f, -396f)), Struct_2(vec3<f32>(-797f, 1626f, 125f)), Struct_2(vec3<f32>(252f, -702f, -944f)), Struct_2(vec3<f32>(-643f, 972f, -1397f)), Struct_2(vec3<f32>(1192f, 854f, -2353f)), Struct_2(vec3<f32>(495f, -1136f, -1107f)), Struct_2(vec3<f32>(1097f, -169f, -432f)), Struct_2(vec3<f32>(-2027f, 1233f, 832f)), Struct_2(vec3<f32>(-126f, 893f, -890f)), Struct_2(vec3<f32>(-803f, 299f, -1957f)), Struct_2(vec3<f32>(-705f, 2774f, -1019f)), Struct_2(vec3<f32>(114f, 829f, -1000f)), Struct_2(vec3<f32>(754f, 504f, 866f)), Struct_2(vec3<f32>(-166f, -180f, -1298f)), Struct_2(vec3<f32>(742f, 683f, -1246f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec3<i32> {
    return -vec3<i32>(_wgslsmith_div_i32(17710i, arg_1.x), ~u_input.a, ~global1.x);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<i32> {
    global1 = arg_1.b.xyz;
    let var_0 = _wgslsmith_div_vec2_f32(global0.a.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-635f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, 989f) * -1284f)) + vec2<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(step(571f, global0.a.x))), 1177f)));
    let var_1 = Struct_2(global0.a);
    var var_2 = ~vec3<u32>(0u, _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(~66568u, ~u_input.b)), ~(~(19390u | u_input.b)));
    let var_3 = ~var_2.x;
    return select(firstTrailingBit(-arg_1.b.xxx), _wgslsmith_mult_vec3_i32(firstTrailingBit(-func_1(var_2.xx, vec4<i32>(arg_1.b.x, -7953i, -2147483647i, 0i))), ~(vec3<i32>(arg_1.b.x, -5254i, -2147483647i) >> (vec3<u32>(0u, u_input.b, 4294967295u) % vec3<u32>(32u)))), !any(select(vec2<bool>(true, true), select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, true), vec2<bool>(true, false)), u_input.b >= u_input.b)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec3<i32> {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-global0.a));
    var var_0 = -global1.zx;
    let var_1 = global0.a.x;
    global2 = array<Struct_2, 30>();
    var var_2 = global1.xy;
    return _wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(func_3(true, Struct_1(arg_2.x, vec4<i32>(var_0.x, var_0.x, var_0.x, -4178i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -2147483647i, u_input.a), vec3<i32>(-2147483647i, 0i, var_2.x)), var_2.x << (arg_1.x % 32u), 1i)), vec3<i32>(u_input.a, -44531i, _wgslsmith_mod_i32(0i, ~(-2147483647i))) >> (countOneBits(abs(arg_1) >> (vec3<u32>(34131u, arg_1.x, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x)))));
    var_0 = global0.a.yy;
    let var_1 = max((-select(vec3<i32>(-77676i, 1i, -2147483647i), vec3<i32>(u_input.a, u_input.a, 0i), false) & -func_1(vec2<u32>(u_input.b, 1u), vec4<i32>(u_input.a, u_input.a, global1.x, -15377i))) ^ ~abs(-vec3<i32>(u_input.a, -1i, 39333i)), min(vec3<i32>(1i, 1i, 1i), -func_2(0u, vec3<u32>(1u, 33201u, u_input.b), vec3<bool>(true, false, true))));
    var var_2 = abs(-44681i);
    let var_3 = false;
    let var_4 = global0.a;
    var var_5 = false;
    var var_6 = vec3<u32>(2395u << (_wgslsmith_mod_u32(4960u, _wgslsmith_dot_vec4_u32(vec4<u32>(11684u, u_input.b, 10671u, 107805u), vec4<u32>(7180u, 14441u, 0u, u_input.b)) << (u_input.b % 32u)) % 32u), select(min(u_input.b, _wgslsmith_mod_u32(22233u, u_input.b)), ~1u, var_3) & 17772u, 1u);
    var var_7 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(252f, _wgslsmith_f_op_f32(-434f * -713f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-158f, 1024f))))))), -456f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(-var_4.x))));
}

