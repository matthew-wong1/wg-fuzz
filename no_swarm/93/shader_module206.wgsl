struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global2: i32 = 0i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>) -> bool {
    global0 = ~(~(~vec4<u32>(0u, 0u, 0u, 0u)) & (firstLeadingBit(vec4<u32>(arg_1.x, global0.x, u_input.a, 16048u)) | max(vec4<u32>(0u, u_input.a, global0.x, 0u), vec4<u32>(1001u, 22384u, 1u, 32783u)))) >> (vec4<u32>(0u << (_wgslsmith_dot_vec2_u32(select(global0.yy, global0.xz, true), vec2<u32>(arg_1.x, 60818u) >> (vec2<u32>(23365u, 0u) % vec2<u32>(32u))) % 32u), _wgslsmith_div_u32(~4294967295u, u_input.a) | ~u_input.a, ~(~global0.x) ^ (global0.x ^ (global0.x << (global0.x % 32u))), ~reverseBits(_wgslsmith_add_u32(arg_1.x, 4294967295u))) % vec4<u32>(32u));
    var var_0 = Struct_2(!any(vec3<bool>(true, true, true)), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1118f + -1007f), -903f), _wgslsmith_f_op_f32(abs(865f)), 728f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1634f * -2290f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, 161f, 856f)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, -1481f, 630f, 122f)), vec4<f32>(-229f, 321f, -2060f, 1763f), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-932f, -481f, -413f, 1034f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, -821f, -679f, 1261f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(741f, -981f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(527f, 320f, 243f)))))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_add_vec2_i32((_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, u_input.b.x), countOneBits(vec2<i32>(-1i, -51331i))) >> (vec2<u32>(~u_input.a, 20285u) % vec2<u32>(32u))) ^ u_input.b, u_input.c);
    global0 = vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), ~vec2<u32>(0u, arg_1.x)), _wgslsmith_clamp_u32(~4294967295u, ~39668u, 14299u << (1u % 32u)), 0u), ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, 61054u, global0.x), global0.xzw), vec3<u32>(arg_1.x, u_input.a, arg_1.x))), 42596u, _wgslsmith_clamp_u32(u_input.a, 0u, arg_1.x));
    var var_2 = 52476u;
    return select(true, all(vec4<bool>(true, true, any(select(vec4<bool>(true, var_0.d, var_0.d, false), vec4<bool>(true, false, var_0.a, false), vec4<bool>(true, var_0.a, true, true))), false)), true);
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, -1934f, -1021f, 2216f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, -1104f, -2284f, 1480f) + vec4<f32>(1146f, -2102f, -660f, 328f))))), vec3<f32>(148f, -112f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1345f)))));
    global2 = 2147483647i;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.a.zzw), var_0.b, !vec3<bool>(!func_3(vec2<i32>(-10926i, -30452i), vec2<u32>(22520u, u_input.a)), true, !all(vec4<bool>(true, false, false, false)))));
    let var_2 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(486f, var_1.x, _wgslsmith_f_op_f32(round(var_0.b.x)), -207f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)))), Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a.yzz, var_0.b)))), !(_wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(1u, (43094u & global0.x) & (global0.x | 21535u)), abs(66364u), max(countOneBits(7551u), abs(56332u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(33540u, u_input.a, 0u), arg_0.ywx)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, select(global0.x, countOneBits(95005u), all(vec3<bool>(var_2.d, true, var_2.a))), 25914u, abs(global0.x)), _wgslsmith_div_vec4_u32(arg_0, _wgslsmith_add_vec4_u32(arg_0 & arg_0, ~vec4<u32>(arg_0.x, arg_0.x, global0.x, 1u)))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = vec3<bool>(true, any(vec4<bool>(true, true, true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))), true);
    global0 = vec4<u32>(~(~4294967295u), 22941u, arg_0 << (~(~(~9804u)) % 32u), ~u_input.a);
    let var_1 = 1955f;
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(global1.x << (select(19698u, global0.x, false) % 32u), -select(global1.x, -2147483647i, false)) >> (u_input.a % 32u), firstLeadingBit(global1.x), max(-22577i, global1.x), ~(~(-18528i)));
    global0 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(~global0.x, 4294967295u, 0u, global0.x | arg_0), ~vec4<u32>(17913u, global0.x, global0.x, u_input.a) | ~func_2(vec4<u32>(u_input.a, 0u, 26684u, 93410u))), vec4<u32>(~arg_0 << (_wgslsmith_mult_u32(16433u, firstTrailingBit(arg_0)) % 32u), min(~(~17024u), 4294967295u), abs(~(~4294967295u)), arg_0));
    return any(vec2<bool>(false, var_1 != -128f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true && select(func_1(u_input.a), true, true);
    var var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, 1000f, -1865f, -1160f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(804f, -1086f, -349f, 263f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-289f, 1207f, 1092f, 1302f))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-2096f)), _wgslsmith_div_f32(-1808f, -2001f), _wgslsmith_f_op_f32(-169f * -1000f), _wgslsmith_f_op_f32(294f + -227f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f) + _wgslsmith_f_op_f32(ceil(1297f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1285f, -693f, false)) - -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -1000f))))), !(!(func_2(vec4<u32>(4294967295u, global0.x, global0.x, u_input.a)).x <= ~77587u)));
    let var_2 = select(vec3<bool>(!(var_1.d | !var_1.a), true, var_1.d), vec3<bool>((i32(-1i) * -2147483647i) >= reverseBits(global1.x), var_1.c.b.x < _wgslsmith_f_op_f32(-var_1.b.a.x), !((global0.x <= u_input.a) & false)), select(!(!select(vec3<bool>(false, var_1.d, var_1.d), vec3<bool>(true, true, true), vec3<bool>(false, true, var_1.d))), vec3<bool>(true, false, var_1.d), !select(vec3<bool>(false, var_1.d, false), select(vec3<bool>(var_1.a, false, var_1.d), vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(var_1.d, false, true)), !var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-915f, global0.www);
}

