struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1((countOneBits(firstLeadingBit(u_input.b)) != ((-2147483647i << (u_input.a.x % 32u)) & 1i)) & arg_0.a, vec4<i32>(-1i) * -(-vec4<i32>(-13912i, u_input.b, 0i, -13224i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-47543i, 4306i, 0i, -29275i), arg_0.b)), true == (u_input.a.x < 49732u), -1283f, 982f);
    var var_1 = abs(u_input.a.xy);
    var var_2 = Struct_2(firstTrailingBit((~1u & var_1.x) << (~_wgslsmith_clamp_u32(56788u, var_1.x, u_input.a.x) % 32u)), Struct_1(-2147483647i == ~u_input.b, arg_0.b, -22574i >= u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - 243f))), -1000f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - _wgslsmith_f_op_f32(sign(arg_1))), arg_1, _wgslsmith_f_op_f32(-arg_0.e)), 2216i);
    let var_3 = Struct_2(13191u, var_2.b, vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1668f))), arg_1), arg_0.b.x);
    var_1 = u_input.a.yz;
    return ~_wgslsmith_add_u32(u_input.a.x, countOneBits(~0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    return ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a << (select(u_input.a.x, 40832u, arg_2.a) % 32u), func_3(arg_0.b, arg_2.e, _wgslsmith_clamp_vec3_i32(arg_1.b.b.xzx, vec3<i32>(-1220i, 0i, arg_1.b.b.x), vec3<i32>(arg_2.b.x, u_input.b, u_input.b)), false), firstLeadingBit(_wgslsmith_mod_u32(arg_0.a, arg_1.a)), countOneBits(firstLeadingBit(4294967295u))), vec4<u32>(~(~26523u), ~u_input.a.x, ~(u_input.a.x ^ 4294967295u), _wgslsmith_div_u32(max(arg_1.a, u_input.a.x), max(arg_0.a, arg_0.a))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 63092i;
    var var_1 = countOneBits(arg_0.b.b.wzy & -(~_wgslsmith_sub_vec3_i32(vec3<i32>(59732i, -4615i, -1i), vec3<i32>(var_0, var_0, arg_0.b.b.x))));
    let var_2 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(_wgslsmith_sub_u32(arg_0.a, ~arg_0.a), firstTrailingBit(~u_input.a.x), ~1u, _wgslsmith_dot_vec2_u32(~u_input.a.yy, vec2<u32>(78637u, 4294967295u))), max(vec4<u32>(u_input.a.x, u_input.a.x, 1452u, 1u) << ((vec4<u32>(1u, 47342u, 1u, 51035u) | vec4<u32>(0u, 4294967295u, arg_0.a, arg_0.a)) % vec4<u32>(32u)), vec4<u32>(0u, 1u, u_input.a.x, ~3019u)), !select(select(vec4<bool>(arg_0.b.c, arg_0.b.a, arg_0.b.c, false), vec4<bool>(arg_0.b.c, arg_0.b.a, false, arg_0.b.a), false), select(vec4<bool>(true, false, false, arg_0.b.a), vec4<bool>(true, true, arg_0.b.c, arg_0.b.a), arg_0.b.a), !vec4<bool>(true, arg_0.b.a, arg_0.b.c, arg_0.b.c))), ~(~func_2(arg_0, arg_0, arg_0.b) & select(vec4<u32>(u_input.a.x, arg_0.a, arg_0.a, arg_0.a), vec4<u32>(50895u, 84067u, arg_0.a, 33827u), any(vec2<bool>(arg_0.b.c, arg_0.b.c)))));
    var var_3 = true;
    var_1 = -countOneBits(arg_0.b.b.wxx);
    return Struct_1(true, arg_0.b.b, true, arg_0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - 1359f) - arg_0.c.x) + 963f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_0.x;
    var var_1 = max(vec3<i32>(arg_2.b.x >> (_wgslsmith_div_u32(u_input.a.x ^ u_input.a.x, _wgslsmith_div_u32(0u, 76286u)) % 32u), u_input.b, arg_2.b.x), arg_2.b.xwy);
    let var_2 = func_1(Struct_2(u_input.a.x, arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-241f, arg_0.x, arg_1.x))))), arg_2.b.x));
    var var_3 = Struct_2(0u, var_2, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_2.d, 934f))))), min(_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(var_2.b.xx, var_2.b.xw), -2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, arg_2.b.x, 54179i, var_1.x), vec4<i32>(var_1.x, var_2.b.x, u_input.b, -2147483647i))), arg_2.b.x));
    return Struct_2(1u, arg_2, vec3<f32>(-847f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.c.x)))), _wgslsmith_f_op_f32(var_3.b.e + arg_1.x)), ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1663f;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(642f, 574f, -292f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1001f, -1024f, 636f) * vec3<f32>(-963f, 1677f, 2376f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(575f)), _wgslsmith_f_op_f32(round(709f)), _wgslsmith_f_op_f32(min(1000f, -1691f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-870f, -1895f, 1029f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1209f, 1215f, 826f), vec3<f32>(1000f, -1860f, -1719f))))))), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-868f - 548f) * -542f) + _wgslsmith_f_op_f32(f32(-1f) * -861f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(306f))), -927f)), 1713f), func_1(Struct_2(reverseBits(u_input.a.x), Struct_1(false, reverseBits(vec4<i32>(u_input.b, 2147483647i, 2147483647i, u_input.b)), u_input.b == u_input.b, _wgslsmith_f_op_f32(-1022f - -327f), _wgslsmith_f_op_f32(f32(-1f) * -1011f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(195f, -981f, -967f) + vec3<f32>(2884f, 498f, -369f)))), _wgslsmith_sub_i32(u_input.b, u_input.b))));
    let var_2 = Struct_1(false, func_1(func_4(var_1.c, vec4<f32>(var_1.b.e, _wgslsmith_f_op_f32(trunc(847f)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(min(var_1.b.d, var_1.b.d))), func_1(func_4(vec3<f32>(var_1.b.d, var_1.b.e, var_1.b.e), vec4<f32>(var_1.b.d, 832f, 622f, var_1.b.e), var_1.b)))).b, var_1.b.c, -1340f, -813f);
    var var_3 = Struct_1(var_2.e != 1f, vec4<i32>(_wgslsmith_mult_i32(0i, u_input.b), min(abs(max(-20237i, -1i)), _wgslsmith_sub_i32(0i, abs(22282i))), -1i, -47600i), var_1.b.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(284f, 1481f, false)))))), _wgslsmith_f_op_f32(-179f + -2137f));
    var_3 = var_2;
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(~21191u, u_input.a.x), var_1.a), select(func_3(Struct_1(var_2.d > var_1.b.e, countOneBits(vec4<i32>(0i, -27406i, var_2.b.x, -12377i)), !var_3.a, var_2.d, 1000f), _wgslsmith_f_op_f32(select(-1656f, _wgslsmith_f_op_f32(sign(461f)), var_1.b.a)), ~vec3<i32>(var_2.b.x, 16619i, 2147483647i), true), firstTrailingBit(~(~u_input.a.x)), var_1.b.c));
}

