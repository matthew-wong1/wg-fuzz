struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<f32>(-1077f, -349f, 206f, -638f), -504f), Struct_2(vec4<f32>(-292f, 1295f, -817f, 1385f), 1245f), Struct_2(vec4<f32>(-2480f, -435f, 1000f, -236f), 668f), Struct_2(vec4<f32>(-107f, 762f, -816f, 268f), -1949f), Struct_2(vec4<f32>(-361f, -1500f, 1000f, 260f), 1202f), Struct_2(vec4<f32>(1178f, 393f, -1623f, 366f), -832f), Struct_2(vec4<f32>(-1000f, -219f, -331f, -593f), 1856f), Struct_2(vec4<f32>(1853f, -1208f, -1165f, 176f), -1743f), Struct_2(vec4<f32>(-1573f, 467f, 645f, -779f), -1053f), Struct_2(vec4<f32>(-488f, 221f, -1625f, 988f), -354f), Struct_2(vec4<f32>(-1394f, 255f, -1250f, -643f), -1202f), Struct_2(vec4<f32>(-189f, 1426f, -1797f, 417f), 315f), Struct_2(vec4<f32>(1000f, 1406f, 161f, 1000f), -1855f), Struct_2(vec4<f32>(619f, -543f, -976f, -1000f), -1000f), Struct_2(vec4<f32>(-2432f, -834f, -1721f, 1242f), -2138f), Struct_2(vec4<f32>(816f, 1055f, 1584f, -837f), -167f), Struct_2(vec4<f32>(-1335f, 2515f, 932f, -196f), -559f), Struct_2(vec4<f32>(-423f, -512f, -807f, -231f), -350f), Struct_2(vec4<f32>(558f, 257f, 538f, 2869f), -1560f), Struct_2(vec4<f32>(737f, 1000f, 1000f, 293f), 1058f), Struct_2(vec4<f32>(1590f, -570f, -989f, -403f), 1649f), Struct_2(vec4<f32>(1231f, 489f, 653f, -1623f), -157f), Struct_2(vec4<f32>(1291f, 236f, -1612f, 1000f), 522f), Struct_2(vec4<f32>(-1000f, 1139f, -191f, 1166f), -942f), Struct_2(vec4<f32>(-700f, 474f, 1000f, 619f), 1273f), Struct_2(vec4<f32>(1208f, -957f, 933f, -896f), 667f), Struct_2(vec4<f32>(-663f, 1854f, -696f, -720f), -282f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_3.a.x));
    var var_1 = vec3<i32>(-u_input.c, u_input.b ^ u_input.b, -u_input.b);
    var var_2 = firstTrailingBit(~_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(u_input.a.x, 4294967295u, 56222u, 0u), ~vec4<u32>(u_input.a.x, 8342u, 0u, 55124u)), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 25383u), ~(~vec4<u32>(u_input.a.x, 22511u, 0u, u_input.a.x))));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(select(var_2.x, 0u, true != all(vec2<bool>(false, false))), u_input.a.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, var_2.x, var_2.x)), firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 0u), ~vec3<u32>(57488u, 1u, var_2.x)))), var_2.x, abs(var_2.x));
    var var_4 = _wgslsmith_f_op_f32(sign(631f));
    return ~_wgslsmith_add_u32(reverseBits(10067u), select(~var_3.x, ~47669u, true)) <= var_3.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), all(vec4<bool>(false, true, true, true))), vec2<bool>(true, func_3(34475i, global1[_wgslsmith_index_u32(arg_0, 27u)], vec2<i32>(-19300i, 2147483647i), Struct_2(vec4<f32>(global0.b, global0.b, -969f, global0.a.x), global0.a.x))), vec2<bool>(true, u_input.b <= u_input.c)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)));
    var var_1 = global1[_wgslsmith_index_u32(1u, 27u)];
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(select(1f, global0.a.x, !(var_0 || var_0))));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 1744f, 703f, -1805f) - var_1.a), _wgslsmith_f_op_vec4_f32(floor(var_1.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -774f, 301f, global0.a.x) + global0.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1167f, global0.b, 488f, -931f) * vec4<f32>(global0.b, global0.a.x, var_1.b, -2577f))))), 1141f);
    let var_2 = Struct_1(548f, -_wgslsmith_clamp_vec2_i32(max(vec2<i32>(-2147483647i, 43267i), vec2<i32>(u_input.c, -28146i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(1i, -18001i)), abs(vec2<i32>(-28679i, u_input.c))) & vec2<i32>(2147483647i << ((44483u | arg_0) % 32u), _wgslsmith_mod_i32(u_input.b, 1i)), countOneBits(reverseBits(select(_wgslsmith_dot_vec2_u32(vec2<u32>(45461u, u_input.a.x), vec2<u32>(25759u, u_input.a.x)), ~u_input.a.x, false))));
    return var_2;
}

fn func_1() -> Struct_2 {
    var var_0 = 1i;
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    var_0 = ~2147483647i;
    let var_1 = func_2(max(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 65350u), ~44984u), ~1u) >> (u_input.a.x % 32u));
    return Struct_2(vec4<f32>(global0.b, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(trunc(var_1.a))), _wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1502f - -630f), func_2(select(4294967295u, var_1.c, true)).a)), _wgslsmith_f_op_f32(floor(var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.a.x, 31598u) & u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -621f), global0.b, -555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2043f * global0.a.x))))));
    global0 = func_1();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1492f)) * -105f))), vec2<i32>(-countOneBits(2147483647i), reverseBits(func_2(25106u).b.x)), firstTrailingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(45708u, u_input.a.x, u_input.a.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 0u) >> (vec4<u32>(var_0, var_0, 0u, var_0) % vec4<u32>(32u)), vec4<u32>(38593u, 1u, var_0, 1u)))));
    var var_3 = global0.a.ywz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-918f, -1064f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(ceil(var_2.a))), _wgslsmith_f_op_f32(652f * func_2(u_input.a.x).a)), _wgslsmith_f_op_f32(-var_2.a)), global0.a);
}

