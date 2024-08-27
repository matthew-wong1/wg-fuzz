struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 83888u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_4(!(!(!select(vec4<bool>(true, false, true, true), arg_3, arg_1.x))), countOneBits(vec4<u32>(~min(u_input.a.x, 60152u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(24120u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 42110u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), 0u)));
    global0 = ~43109u;
    var_0 = Struct_4(vec4<bool>(any(arg_1.yy), -1163f <= arg_0.x, true | arg_3.x, arg_1.x), vec4<u32>(var_0.b.x, _wgslsmith_clamp_u32(15413u, 22866u, u_input.a.x), ~abs(0u), _wgslsmith_mod_u32(u_input.a.x ^ u_input.a.x, ~40940u)) >> (firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.b.zz, vec2<u32>(var_0.b.x, var_0.b.x)), var_0.b.x, var_0.b.x, u_input.a.x)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_2 = var_0.b.x;
    return 5366u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.a;
    global0 = _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(arg_2.b.x, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.b, -173f, -557f, arg_3.b), vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -1000f)), select(arg_2.a, vec4<bool>(arg_2.a.x, false, arg_2.a.x, arg_2.a.x), arg_2.a), 1i, select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false), arg_2.a, arg_2.a)) | arg_2.b.x));
    global0 = arg_2.b.x;
    var var_1 = _wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(arg_2.b.x, 1u))), ~countOneBits(vec2<u32>(arg_1.a, 12074u))) & ~4294967295u;
    global0 = ~arg_1.a;
    return select(!vec4<bool>(!(arg_1.b > 4294967295u), 0i <= arg_3.a, arg_2.a.x, !arg_2.a.x), arg_2.a, vec4<bool>(!any(arg_2.a.wzx), any(select(select(vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x), arg_2.a, arg_2.a.x), arg_2.a, arg_2.a.x)), (4294967295u > arg_1.a) | true, arg_2.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_2.x));
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a.x), u_input.a), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6772u, 0u, arg_0.a, 1u), vec4<u32>(arg_0.a, 27357u, arg_0.a, arg_0.a)), abs(1u), 14070u), arg_0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(arg_2));
    var var_3 = vec3<bool>(arg_1, _wgslsmith_sub_u32(arg_0.a, var_1.x & ~arg_0.a) < 0u, all(vec2<bool>(arg_1, true)));
    var var_4 = Struct_4(select(!vec4<bool>(true, !arg_1, !var_3.x, true), select(!func_2(Struct_1(-2147483647i, var_0), Struct_3(u_input.a.x, u_input.a.x), Struct_4(vec4<bool>(false, true, var_3.x, false), var_1), Struct_1(2968i, 587f)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(select(var_3.zy, var_3.zx, var_3.zy)), false, any(select(vec4<bool>(true, var_3.x, arg_1, true), vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(arg_1, var_3.x, true, false))))), var_1);
    return ~(~53973u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~0u, abs(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(134785u, u_input.a.x, 13858u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 25929u)) % vec3<u32>(32u)), (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 55704u) % vec3<u32>(32u))) | (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), ~u_input.a.x);
    var_0 = min(~vec3<u32>(func_1(Struct_3(0u, var_0.x), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, 845f, -1621f))), u_input.a.x, _wgslsmith_mult_u32(1u, var_0.x)), vec3<u32>(~select(4294967295u, u_input.a.x, true), 0u, u_input.a.x) << (vec3<u32>(1u, ~func_3(vec4<f32>(-147f, -319f, 384f, -256f), vec4<bool>(false, false, true, false), 0i, vec4<bool>(false, false, false, true)), firstLeadingBit(0u)) % vec3<u32>(32u)));
    var_0 = vec3<u32>(func_1(Struct_3(var_0.x, var_0.x), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -1000f, 736f))), ~((~u_input.a.x << (var_0.x % 32u)) ^ ~var_0.x), ~(~abs(1u)) << (_wgslsmith_mod_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 14296u, var_0.x, var_0.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 50314u)), _wgslsmith_dot_vec4_u32(vec4<u32>(52254u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, 8458u, 11306u, var_0.x)), any(vec3<bool>(true, false, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 0u, var_0.x), vec4<u32>(var_0.x, 39339u, 1340u, 1u) | vec4<u32>(15168u, var_0.x, u_input.a.x, 0u))) % 32u));
    var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(1u, 4294967295u, u_input.a.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(~1u, func_1(Struct_3(u_input.a.x, var_0.x), false, vec3<f32>(-968f, -1148f, -342f)), ~1u), ~select(vec3<u32>(var_0.x, 0u, 36466u), vec3<u32>(u_input.a.x, 0u, var_0.x), vec3<bool>(true, false, true)))));
    var_0 = ~vec3<u32>(~func_3(vec4<f32>(-1000f, 469f, -2316f, -628f), vec4<bool>(true, true, false, false), 46601i, vec4<bool>(true, true, true, true)), ~firstTrailingBit(u_input.a.x), ~(~23645u)) & ((vec3<u32>(~31722u, ~42191u, _wgslsmith_dot_vec2_u32(var_0.zy, u_input.a)) | ~(~vec3<u32>(1u, var_0.x, u_input.a.x))) | max(abs(vec3<u32>(0u, 6826u, var_0.x)), firstLeadingBit(vec3<u32>(var_0.x, 4294967295u, 5750u))));
    var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, ~(var_0.x ^ u_input.a.x), var_0.x), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 34895u)) ^ select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(var_0.x, 4294967295u, u_input.a.x)), reverseBits(vec3<u32>(var_0.x, var_0.x, 197u)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    let var_1 = Struct_4(vec4<bool>(false, all(vec3<bool>(false, any(vec2<bool>(true, true)), true)), true & any(vec2<bool>(true, false)), select(true, false, (u_input.a.x <= 121130u) | any(vec3<bool>(false, false, true)))), select(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(45431u, u_input.a.x, var_0.x, 65620u), vec4<u32>(63960u, 13433u, u_input.a.x, 98468u)), ~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 25358u, 0u))), _wgslsmith_clamp_vec4_u32(max(abs(vec4<u32>(0u, 1u, 0u, 71955u)), ~vec4<u32>(1u, 1u, 0u, 31152u)), select(~vec4<u32>(39383u, 29828u, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, 28739u, var_0.x, var_0.x), true), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 16510u, 4294967295u) >> (vec4<u32>(10742u, 0u, var_0.x, var_0.x) % vec4<u32>(32u)), select(vec4<u32>(101652u, 0u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 78835u, var_0.x, u_input.a.x), true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false))));
    global0 = ~_wgslsmith_mod_u32(var_1.b.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-376f, abs(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 208i, 0i), vec4<i32>(1i, 2147483647i, 2147483647i, 0i)), max(vec4<i32>(0i, 1i, -1i, -21228i), vec4<i32>(-2147483647i, 19410i, 5545i, -2147483647i)), var_1.a.x)));
}

