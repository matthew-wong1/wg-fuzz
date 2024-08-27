struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_3(-232f, Struct_1(vec2<u32>(1u, 1u), 1i, u_input.a.x, vec2<u32>(~0u, countOneBits(4294967295u)) >> (_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 22391u), select(vec2<u32>(0u, 5995u), vec2<u32>(0u, 13344u), vec2<bool>(false, true))) % vec2<u32>(32u))));
    var_0 = Struct_3(-669f, Struct_1(select(countOneBits(countOneBits(vec2<u32>(0u, 8621u))), ~(var_0.b.a >> (var_0.b.d % vec2<u32>(32u))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), false)), -2147483647i, select(_wgslsmith_dot_vec3_i32(u_input.a.zwz, vec3<i32>(-48006i, 28857i, u_input.a.x)) | u_input.a.x, var_0.b.b, false), min(vec2<u32>(var_0.b.d.x, ~4294967295u), vec2<u32>(39012u, 1u) ^ (vec2<u32>(5650u, 11678u) & var_0.b.a))));
    let var_1 = (var_0.a > _wgslsmith_f_op_f32(f32(-1f) * -992f)) || true;
    return vec2<u32>(58680u, 0u);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(1177f + _wgslsmith_f_op_f32(floor(-1221f)));
    let var_1 = Struct_3(arg_3.a, Struct_1(func_3(), -firstLeadingBit(firstTrailingBit(u_input.b)), -16593i, ~(~vec2<u32>(arg_3.b.d.x, 820u)) << ((_wgslsmith_add_vec2_u32(arg_3.b.a, vec2<u32>(4294967295u, 19133u)) << (~vec2<u32>(0u, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = vec3<u32>(~firstTrailingBit(1u << (arg_1 % 32u)), var_1.b.a.x, ~_wgslsmith_mult_u32(arg_1, abs(var_1.b.d.x)));
    var var_3 = _wgslsmith_mult_vec2_i32(-u_input.a.ww, -_wgslsmith_sub_vec2_i32(u_input.a.ww, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.b.b, -1905i), vec2<i32>(2437i, var_1.b.c))));
    let var_4 = select(vec3<bool>((false == arg_0.e.x) || true, max(-arg_0.d.c, abs(-2147483647i)) <= reverseBits(var_3.x & -41864i), any(select(select(arg_0.e, arg_0.e, vec2<bool>(true, arg_0.e.x)), vec2<bool>(arg_0.e.x, true), arg_0.e.x))), select(select(vec3<bool>(true & arg_0.e.x, true, false), !vec3<bool>(true, false, arg_0.e.x), true || arg_0.e.x), select(vec3<bool>(false, arg_0.e.x | true, true), vec3<bool>(arg_0.e.x, false, true), vec3<bool>(all(vec3<bool>(false, false, true)), !arg_0.e.x, !arg_0.e.x)), !(!any(vec3<bool>(arg_0.e.x, arg_0.e.x, false)))), !arg_0.e.x);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - arg_0.c)))), Struct_1(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(arg_1, 0u)), var_2.yy), abs(abs(19312i)), abs(-min(u_input.b, 15732i)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u & arg_0.d.d.x, 4294967295u), ~select(arg_0.b.a, vec2<u32>(4294967295u, 0u), vec2<bool>(arg_0.e.x, false)))), 645f, arg_3.b, select(arg_0.e, !select(select(vec2<bool>(true, var_4.x), vec2<bool>(false, false), vec2<bool>(var_4.x, true)), select(arg_0.e, vec2<bool>(false, var_4.x), var_4.yy), all(var_4)), vec2<bool>(any(var_4.yx), var_4.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    var var_0 = select(vec2<bool>(any(vec2<bool>(!arg_0.e.x, true)), false), !(!select(!arg_0.e, !vec2<bool>(arg_0.e.x, arg_0.e.x), true)), any(!(!vec3<bool>(true, false, arg_0.e.x))));
    var_0 = arg_0.e;
    return _wgslsmith_sub_i32(-_wgslsmith_div_i32(1i, arg_1.x), max(arg_1.x, -2147483647i));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = arg_1.x;
    let var_1 = Struct_3(509f, Struct_1(vec2<u32>(23631u, arg_1.x), func_4(func_2(Struct_2(-1057f, Struct_1(arg_1, -2147483647i, 1i, arg_1), -1000f, Struct_1(arg_1, arg_0, arg_0, arg_1), vec2<bool>(true, true)), 17029u, vec4<f32>(233f, 1000f, -782f, 2668f), Struct_3(1255f, Struct_1(vec2<u32>(1u, 36099u), arg_0, u_input.a.x, vec2<u32>(0u, 1u)))), u_input.a.wxx, ~firstLeadingBit(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 32258u)), _wgslsmith_f_op_f32(-func_2(Struct_2(262f, Struct_1(vec2<u32>(arg_1.x, 34313u), u_input.a.x, arg_0, vec2<u32>(arg_1.x, 4294967295u)), 948f, Struct_1(vec2<u32>(arg_1.x, 51013u), 24343i, u_input.b, vec2<u32>(1u, arg_1.x)), vec2<bool>(false, true)), arg_1.x, vec4<f32>(561f, 1370f, 1000f, 433f), Struct_3(-1215f, Struct_1(vec2<u32>(arg_1.x, arg_1.x), u_input.b, u_input.b, arg_1))).a)), ~select(-2147483647i, 0i, true), arg_1));
    var_0 = var_1.b.a.x;
    let var_2 = func_2(Struct_2(-167f, var_1.b, _wgslsmith_f_op_f32(round(var_1.a)), var_1.b, !vec2<bool>(all(vec3<bool>(true, true, false)), false)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.b.a.x, _wgslsmith_div_u32(arg_1.x, var_1.b.d.x)), ~4294967295u) ^ var_1.b.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.a), var_1.a, _wgslsmith_f_op_f32(-var_1.a)))), var_1);
    var_0 = 1u;
    return Struct_1(arg_1, u_input.a.x, -30946i, ~vec2<u32>(arg_1.x, var_2.b.a.x >> (16882u % 32u)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(~51693u, ~83278u), countOneBits(vec2<u32>(arg_1.x, var_1.b.d.x))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1000f, func_1(_wgslsmith_dot_vec4_i32(u_input.a, firstTrailingBit(vec4<i32>(u_input.b, u_input.a.x, -2147483647i, 2147483647i))), ~countOneBits(vec2<u32>(54522u, 0u))), 762f, Struct_1(~vec2<u32>(0u, 1u), -(~(-9859i)), u_input.a.x, vec2<u32>(1u, 1u)), select(vec2<bool>(select(any(vec3<bool>(false, true, true)), true, true), true), vec2<bool>(false || any(vec2<bool>(true, false)), true), true | all(vec4<bool>(true, true, true, true))));
    let var_1 = abs(-func_4(func_2(func_2(Struct_2(var_0.c, var_0.d, 1000f, var_0.d, var_0.e), 1u, vec4<f32>(var_0.a, -2184f, -141f, var_0.a), Struct_3(-1292f, var_0.b)), 82092u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1854f, var_0.c, 1000f, var_0.c)), Struct_3(-239f, var_0.d)), u_input.a.zww, _wgslsmith_sub_vec4_u32(~vec4<u32>(15879u, var_0.b.d.x, 1u, var_0.b.a.x), vec4<u32>(var_0.b.d.x, 31809u, 1u, 4294967295u) ^ vec4<u32>(var_0.b.d.x, var_0.b.a.x, var_0.d.d.x, var_0.d.d.x)), var_0.c));
    var_0 = Struct_2(-543f, var_0.b, _wgslsmith_f_op_f32(ceil(325f)), func_1(1i, _wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, var_0.d.d.x) & var_0.d.a), var_0.b.a)), vec2<bool>(func_2(func_2(Struct_2(var_0.a, Struct_1(vec2<u32>(1u, var_0.d.d.x), var_0.d.b, u_input.a.x, vec2<u32>(var_0.d.a.x, var_0.b.d.x)), -1000f, var_0.b, var_0.e), abs(var_0.d.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1539f, -422f, var_0.a)), Struct_3(var_0.a, var_0.b)), _wgslsmith_mod_u32(~var_0.d.a.x, 53327u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, 608f, -1792f, 577f))), Struct_3(var_0.c, Struct_1(vec2<u32>(33187u, var_0.d.d.x), u_input.a.x, -1i, vec2<u32>(var_0.b.d.x, 4294967295u)))).e.x, false));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f + var_0.a)))), Struct_1(vec2<u32>(var_0.d.a.x, 1u), -1i, ~1i, vec2<u32>(abs(var_0.b.a.x << (var_0.d.d.x % 32u)), 56522u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1f) * _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.a, 142f)))))), var_0.d, var_0.e);
    let var_2 = vec4<f32>(-402f, 375f, _wgslsmith_f_op_f32(abs(1247f)), -435f);
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.c)), var_0.b, 1265f, Struct_1(vec2<u32>(~40792u, _wgslsmith_sub_u32(1u, var_0.d.d.x)) >> (var_0.d.d % vec2<u32>(32u)), 30243i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(var_0.b.b, u_input.a.x, var_1, var_0.d.c)), max(vec4<i32>(var_1, var_1, var_1, 2147483647i), u_input.a)), firstLeadingBit(~vec4<i32>(var_0.b.c, 0i, 24561i, var_1))), min(var_0.d.a << (vec2<u32>(var_0.d.d.x, var_0.b.a.x) % vec2<u32>(32u)), var_0.d.a)), var_0.e);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * 1000f);
    var var_4 = _wgslsmith_mod_u32(14565u, var_0.b.d.x);
    var_0 = func_2(Struct_2(_wgslsmith_f_op_f32(-var_0.c), var_0.d, 506f, func_2(func_2(Struct_2(962f, var_0.b, -1079f, var_0.b, var_0.e), func_3().x, _wgslsmith_f_op_vec4_f32(abs(var_2)), Struct_3(780f, Struct_1(vec2<u32>(var_0.d.a.x, 4294967295u), 39573i, 5434i, vec2<u32>(var_0.b.d.x, 1u)))), var_0.b.d.x ^ var_0.d.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(642f, var_2.x, -257f, var_0.c))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b)).d, !select(vec2<bool>(var_0.e.x, var_0.e.x), !vec2<bool>(false, var_0.e.x), select(var_0.e.x, false, var_0.e.x))), var_0.d.a.x, var_2, Struct_3(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c - var_0.a), var_0.c)))), var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec4<u32>(~var_0.d.a.x, var_0.d.d.x, var_0.b.a.x, ~var_0.d.a.x)), _wgslsmith_add_u32(select(~max(41361u, 4294967295u), ~(~var_0.b.d.x), var_0.e.x), 21366u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))), var_0.c);
}

