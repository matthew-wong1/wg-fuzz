struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = select(!(!(!arg_0.b)), select(select(arg_1.b, vec4<bool>(4294967295u > u_input.e, arg_1.a.x > arg_1.a.x, true, all(vec3<bool>(true, arg_0.b.x, true))), (false | arg_1.b.x) && true), vec4<bool>(true, false, false, arg_2.x), !select(!vec4<bool>(false, arg_0.b.x, arg_1.b.x, arg_0.b.x), arg_2, vec4<bool>(true, true, arg_0.b.x, true))), arg_1.b);
    let var_1 = Struct_2(~vec4<u32>(6224u, u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 38096u, 8399u, 0u), u_input.d), firstLeadingBit(u_input.e)), select(!vec3<bool>(arg_1.b.x, all(vec2<bool>(arg_2.x, false)), !var_0.x), !vec3<bool>(arg_1.b.x, !arg_0.b.x, arg_2.x), false), arg_0, abs(u_input.a.x), arg_0.b.yx);
    var var_2 = !arg_2.x;
    let var_3 = arg_0.a.zxx;
    var var_4 = abs(reverseBits(vec2<i32>(-1i, 56846i)));
    return reverseBits(0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = u_input.d.yw;
    let var_1 = _wgslsmith_div_vec4_i32((u_input.a >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.e, var_0.x, u_input.c), u_input.d ^ u_input.d, ~u_input.d) % vec4<u32>(32u))) & u_input.a, arg_0);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(893f, arg_1.a.x)) * -1263f);
    let var_3 = Struct_2(u_input.d | select(u_input.d, vec4<u32>(u_input.d.x, var_0.x, u_input.c, u_input.e) | _wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(21227u, 4294967295u, var_0.x, u_input.d.x), u_input.d), vec4<bool>(any(vec3<bool>(arg_1.b.x, arg_1.b.x, true)), arg_1.b.x, false, true)), arg_1.b.zxy, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(arg_1.a, vec4<f32>(832f, -727f, arg_1.a.x, -673f), arg_1.b.x)))), !vec4<bool>(true, select(arg_1.b.x, arg_1.b.x, arg_1.b.x), !arg_1.b.x, select(false, arg_1.b.x, false))), _wgslsmith_mult_i32(-var_1.x, abs(-arg_0.x)), select(arg_1.b.xw, arg_1.b.wz, true));
    var var_4 = ~min(vec2<u32>(~func_3(var_3.c, Struct_1(var_3.c.a, arg_1.b), var_3.c.b), 24823u), ~(~u_input.d.ww));
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2428f + arg_1.a.x))) != var_2);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = func_4(Struct_2(_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(1u, 29960u, arg_0, arg_0)) & ~u_input.d, select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), func_2(u_input.a, Struct_1(vec4<f32>(225f, -341f, -989f, 665f), vec4<bool>(false, true, false, false)))), max(-1i, 0i) > arg_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-686f, 962f, -125f, -1199f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1473f, -946f, 909f, -1557f)))), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true)), -arg_1, select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))))), _wgslsmith_add_u32(~76944u, 1u) > _wgslsmith_add_u32(arg_0, u_input.b), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(509f, -1000f, -306f, 2994f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(563f, -430f, -833f, -545f))), vec4<f32>(_wgslsmith_f_op_f32(abs(1814f)), _wgslsmith_f_op_f32(step(-218f, -616f)), _wgslsmith_f_op_f32(-1947f * 858f), -135f)), select(vec4<bool>(true, true, func_2(vec4<i32>(2147483647i, arg_1, 2198i, -17336i), Struct_1(vec4<f32>(-567f, 113f, 976f, 751f), vec4<bool>(false, true, false, false))), true), vec4<bool>(true, true, true, true), true)));
    var var_1 = Struct_2(~u_input.d, var_0.b.wyw, func_4(Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c, u_input.d.x), u_input.d), var_0.b.zwy, func_4(Struct_2(vec4<u32>(u_input.d.x, 0u, 65356u, 0u), var_0.b.www, Struct_1(var_0.a, var_0.b), arg_2.x, var_0.b.yx), var_0.b.x, Struct_1(var_0.a, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false))), arg_1 >> (~4294967295u % 32u), var_0.b.xw), 1i == min(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(arg_1, u_input.a.x)), arg_1), func_4(Struct_2(u_input.d >> (u_input.d % vec4<u32>(32u)), !var_0.b.wyw, func_4(Struct_2(vec4<u32>(u_input.e, u_input.c, 4294967295u, u_input.e), vec3<bool>(false, var_0.b.x, var_0.b.x), Struct_1(vec4<f32>(-451f, var_0.a.x, 516f, -1000f), vec4<bool>(var_0.b.x, true, var_0.b.x, true)), arg_1, vec2<bool>(var_0.b.x, true)), var_0.b.x, Struct_1(var_0.a, var_0.b)), i32(-1i) * -1i, !var_0.b.xw), select(true, true, var_0.b.x), func_4(Struct_2(u_input.d, vec3<bool>(var_0.b.x, true, var_0.b.x), Struct_1(var_0.a, var_0.b), 9587i, vec2<bool>(false, var_0.b.x)), true, Struct_1(vec4<f32>(var_0.a.x, 1000f, var_0.a.x, -692f), var_0.b)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zw, max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, arg_2.x), vec2<i32>(2147483647i, 61717i)), vec2<i32>(arg_2.x, 0i))), vec2<i32>(-34759i, countOneBits(u_input.a.x)) & vec2<i32>(arg_2.x ^ u_input.a.x, 0i)), !vec2<bool>((var_0.b.x || false) && any(vec3<bool>(var_0.b.x, var_0.b.x, false)), true));
    var var_2 = false;
    let var_3 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 56257u, _wgslsmith_add_u32(3351u, 71224u) >> (~arg_0 % 32u), firstTrailingBit(~72995u)), ~select(_wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(var_1.a.x, var_1.a.x, 96003u, 58326u), vec4<u32>(u_input.c, 853u, 1u, arg_0)), _wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(var_1.a.x, u_input.c, 58813u, arg_0), vec4<u32>(0u, arg_0, 9670u, 1u)), true), u_input.d), var_0.b.wwz, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a.x, -530f, var_0.a.x, var_1.c.a.x)) - vec4<f32>(var_0.a.x, var_0.a.x, var_1.c.a.x, -654f))), var_0.b), -abs(u_input.a.x), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 0u), countOneBits(vec3<u32>(var_1.a.x, 136u, var_1.a.x))) < u_input.b, ~(~4294967295u) < _wgslsmith_mod_u32(reverseBits(26629u), var_1.a.x & var_1.a.x)));
    var var_4 = var_3.c;
    return Struct_2(var_3.a, !func_4(var_3, var_1.b.x || false, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.a.x, -918f, -1343f, 1794f) - vec4<f32>(-532f, -1159f, var_0.a.x, -844f)), var_3.c.b)).b.wzw, Struct_1(var_4.a, select(!select(vec4<bool>(false, var_3.b.x, var_0.b.x, var_4.b.x), vec4<bool>(var_4.b.x, true, var_1.c.b.x, var_4.b.x), var_4.b), var_4.b, any(select(vec3<bool>(var_4.b.x, false, var_4.b.x), var_3.b, vec3<bool>(false, false, var_3.b.x))))), 12368i, vec2<bool>(true, true));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = arg_0.c.a.x;
    return StorageBuffer(vec3<f32>(arg_0.c.a.x, 1554f, 771f), _wgslsmith_f_op_f32(arg_3.c.a.x * arg_0.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 32824u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(240f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1187f))));
    let var_2 = u_input.d.yy;
    let x = u_input.a;
    s_output = func_5(func_1(~(~(~var_2.x)), ~(~(-2147483647i)), -u_input.a), _wgslsmith_dot_vec3_u32(~u_input.d.wxx, ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_0, var_0), u_input.d.yxw, u_input.d.zwy) ^ countOneBits(vec3<u32>(4294967295u, var_0, 4294967295u)))), _wgslsmith_dot_vec3_u32(u_input.d.wzx, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, var_2.x, var_0)), vec3<u32>(u_input.b, 33323u, 1u)), vec3<u32>(86042u, var_0, _wgslsmith_div_u32(var_0, u_input.e)))), func_1(_wgslsmith_div_u32(1u, var_0), firstTrailingBit(u_input.a.x), u_input.a));
}

