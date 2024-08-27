struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(6280u, 24552u, 1u, 18532u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    let var_0 = abs(countOneBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(41382u, 89389u, 0u, global0.x)), countOneBits(vec4<u32>(global0.x, global0.x, global0.x, global0.x)))));
    global0 = max(abs(vec4<u32>(37211u, global0.x, global0.x, global0.x) ^ (vec4<u32>(var_0, global0.x, global0.x, global0.x) ^ vec4<u32>(global0.x, 0u, var_0, 4294967295u))) & ~(_wgslsmith_sub_vec4_u32(vec4<u32>(18597u, 4294967295u, var_0, var_0), vec4<u32>(global0.x, var_0, var_0, var_0)) & ~vec4<u32>(36619u, global0.x, global0.x, 0u)), min(vec4<u32>(4294967295u, 4294967295u, ~0u, reverseBits(7897u)), select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(19028u, global0.x, 9571u), vec3<u32>(0u, 1u, 4294967295u)), ~64727u, 0u, ~global0.x), (vec4<u32>(var_0, 11278u, 4982u, 36820u) << (vec4<u32>(var_0, 0u, 1u, 71770u) % vec4<u32>(32u))) ^ (vec4<u32>(var_0, var_0, 1u, 0u) ^ vec4<u32>(var_0, global0.x, 1u, var_0)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(295f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f * -2311f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(830f, _wgslsmith_f_op_f32(-488f * _wgslsmith_f_op_f32(-171f - -146f)))), -203f, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)))));
    global0 = abs(~(~vec4<u32>(global0.x, 8888u, 36650u, var_0) >> (~vec4<u32>(global0.x, var_0, 1u, 13123u) % vec4<u32>(32u))) << (select(_wgslsmith_sub_vec4_u32(max(vec4<u32>(global0.x, global0.x, 28173u, 29415u), vec4<u32>(global0.x, global0.x, global0.x, 30092u)), _wgslsmith_div_vec4_u32(vec4<u32>(14187u, 44450u, 36756u, global0.x), vec4<u32>(var_0, global0.x, 4294967295u, global0.x))), ~vec4<u32>(0u, 4294967295u, global0.x, global0.x), vec4<bool>(select(false, true, false), u_input.b < -86324i, false, true)) % vec4<u32>(32u)));
    global0 = vec4<u32>(abs(global0.x), countOneBits(_wgslsmith_add_u32(~var_0, ~43511u)), firstLeadingBit(_wgslsmith_add_u32(4294967295u, 0u)), 53500u);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a), var_1.a))), var_1.b) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f), var_1.b), -468f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1493f, var_1.b, _wgslsmith_f_op_f32(-var_1.b)) * vec3<f32>(var_1.b, _wgslsmith_f_op_f32(max(var_1.a, 896f)), _wgslsmith_f_op_f32(max(var_1.b, var_1.b)))))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(abs(1120f)));
    global0 = abs(~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0.x, global0.x, global0.x), vec4<u32>(66981u, global0.x, 4294967295u, 53620u), vec4<u32>(1u, 15758u, global0.x, global0.x)))));
    var var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1, vec3<f32>(-2671f, 682f, -1773f), vec3<bool>(arg_0, false, arg_0)))), ~(~vec2<u32>(global0.x, global0.x)), select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, true)), vec3<bool>(true, true, true)), vec2<bool>(arg_0, true))), Struct_4(var_0.b, -636f), vec3<u32>(18045u, _wgslsmith_add_u32(~_wgslsmith_div_u32(1539u, global0.x), min(min(0u, global0.x), global0.x)), ~_wgslsmith_sub_u32(7163u, global0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1089f, -1097f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-arg_2.a), -154f), !arg_0 | (-21606i != u_input.b))), _wgslsmith_add_vec2_u32(global0.zx & vec2<u32>(1u, 55953u), firstTrailingBit(vec2<u32>(0u, 86021u) ^ vec2<u32>(global0.x, 0u))), !select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, arg_0), false), vec3<bool>(true, true, true), true), vec2<bool>(!arg_0 & all(vec3<bool>(arg_0, arg_0, arg_0)), all(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0))))));
    var var_2 = ~_wgslsmith_sub_u32(firstTrailingBit(min(1u, var_1.c.x)), _wgslsmith_clamp_u32(global0.x << (var_1.d.b.x % 32u), global0.x, ~39877u) >> (firstTrailingBit(_wgslsmith_add_u32(var_1.d.b.x, 52050u)) % 32u));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a))) * var_0.a), _wgslsmith_f_op_f32(-1414f - 228f)), _wgslsmith_clamp_vec2_u32(global0.yz, ~reverseBits(vec2<u32>(1u, 4294967295u)), ~(select(var_1.c.yy, global0.zw, vec2<bool>(false, false)) << (select(global0.wx, vec2<u32>(global0.x, 24425u), var_1.a.a.d.x) % vec2<u32>(32u)))), !(!(!var_1.a.a.c)), var_1.d.d);
    return !(!(true | select(false, var_1.a.a.d.x, var_1.d.c.x)));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, -194f))))), ~global0.zz << (~(~(global0.wz ^ vec2<u32>(global0.x, global0.x))) % vec2<u32>(32u)), select(vec3<bool>(func_4(true, _wgslsmith_f_op_vec3_f32(func_3()), Struct_4(arg_0, 583f)), true, -11442i != u_input.b), vec3<bool>(any(vec3<bool>(true, true, false)), !(-1000f > arg_0), true), vec3<bool>(select(true, global0.x >= global0.x, false), func_4(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1777f, 430f, -934f) + vec3<f32>(arg_0, -1337f, -941f)), Struct_4(arg_0, arg_0)), true)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), (u_input.c << (global0.x % 32u)) > (u_input.a.x ^ u_input.a.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(false, u_input.c > u_input.b))));
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_mult_u32(30020u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(var_0.b.x, 14907u), 0u));
    let var_3 = 840f;
    var var_4 = _wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1124f, var_0.a.x)))));
    return ~(~(~1u) >> (var_0.b.x % 32u));
}

fn func_1() -> vec3<bool> {
    global0 = vec4<u32>(select(_wgslsmith_add_u32(global0.x, global0.x), select(_wgslsmith_dot_vec3_u32(vec3<u32>(68018u, global0.x, 4294967295u), global0.xyw), 60595u, true), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)))), global0.x | 4294967295u, _wgslsmith_sub_u32(~(~global0.x), ~(~global0.x)), abs(~24956u >> (abs(func_2(818f)) % 32u)));
    global0 = ~min(~vec4<u32>(_wgslsmith_mult_u32(4294967295u, global0.x), global0.x, ~50287u, ~42925u), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.xyy, global0.xyy), countOneBits(global0.xxz)), global0.x | 1u, global0.x >> (~1u % 32u), countOneBits(4294967295u)));
    global0 = firstTrailingBit((vec4<u32>(firstTrailingBit(55748u), 0u, abs(10659u), global0.x) | vec4<u32>(60509u, global0.x >> (6307u % 32u), global0.x, global0.x)) & ~(~vec4<u32>(8073u, global0.x, global0.x, global0.x)));
    let var_0 = true;
    let var_1 = vec3<i32>(-51571i, -26550i, u_input.a.x);
    return !vec3<bool>(var_0, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_div_f32(-1000f, -113f), _wgslsmith_f_op_f32(abs(-1873f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(627f, 893f, 412f), vec3<f32>(-2239f, 1000f, -331f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(371f, 951f, -1687f))))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global0.wz, global0.wy), global0.wy), !select(vec3<bool>(false, true, false), func_1(), vec3<bool>(true, true, true)), select(vec2<bool>(true, func_4(true, vec3<f32>(785f, -793f, -1224f), Struct_4(-322f, 588f))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), func_1().yy, false), true)));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-344f, var_0.a.a.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 487f) * vec2<f32>(_wgslsmith_f_op_f32(max(-333f, -256f)), _wgslsmith_f_op_f32(min(-546f, var_0.a.a.x)))))));
    var var_2 = Struct_3(Struct_2(var_0.a), u_input.a, var_0.a, ~(~(~4294967295u)) & global0.x);
    var_0 = var_2.a;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-417f + var_2.a.a.a.x), _wgslsmith_f_op_f32(sign(var_2.a.a.a.x)));
    var_0 = var_2.a;
    let var_3 = Struct_4(var_1.x, var_2.c.a.x);
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(32281u, 0u, 30708u, global0.x), vec4<u32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 1u, 25494u, global0.x), vec4<u32>(2053u, global0.x, 4294967295u, var_0.a.b.x)) | reverseBits(vec4<u32>(0u, 1u, 1654u, var_2.d))), ~1u, var_0.a.b.x, 4294967295u) >> (vec4<u32>(max(global0.x >> (abs(global0.x) % 32u), 58809u), ~min(~var_0.a.b.x, 2847u), ~(~(~4294967295u)), ~var_0.a.b.x) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.a.a.yz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1868f, var_1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.a.a.yz), vec2<f32>(var_2.a.a.a.x, var_3.b)))), var_2.c.b.x);
}

