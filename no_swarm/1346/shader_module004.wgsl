struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: bool) -> vec3<u32> {
    let var_0 = ~arg_1.d.a;
    let var_1 = 438f;
    global0 = _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 0u)), ~(vec2<u32>(~72178u, 1u) >> (_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.d.a, 2766u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 8150u), vec2<u32>(1u, 0u))) % vec2<u32>(32u))));
    let var_2 = Struct_2(_wgslsmith_div_u32(abs(_wgslsmith_mod_u32(1u >> (var_0 % 32u), arg_1.d.a)), 94525u), firstLeadingBit(abs(arg_1.b.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1070f, var_1, arg_1.a, var_1) * vec4<f32>(1219f, 305f, var_1, -623f)), vec4<f32>(526f, -1264f, 438f, -1022f))))), vec4<bool>(any(select(arg_1.d.b.xxy, arg_1.d.b.ywx, select(arg_1.d.b.zzy, arg_1.d.b.zzx, arg_2))), countOneBits(-38018i) >= arg_1.b.x, false, !select(true, false, all(arg_1.d.b.wx))));
    let var_3 = arg_1;
    return (_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(35123u, var_0, arg_1.d.a), _wgslsmith_mult_vec3_u32(vec3<u32>(35940u, 22410u, u_input.a), vec3<u32>(var_0, var_3.d.a, 0u))), (vec3<u32>(2995u, var_0, 1u) & vec3<u32>(var_0, var_3.d.a, var_2.a)) & vec3<u32>(26958u, 1591u, u_input.a)) | _wgslsmith_mod_vec3_u32(~max(vec3<u32>(arg_1.d.a, 0u, 1u), vec3<u32>(u_input.a, 0u, 51955u)), countOneBits(~vec3<u32>(59775u, 1u, var_3.d.a)))) | reverseBits(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_2.a, var_0), vec3<u32>(14806u, 80723u, var_0))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(arg_2.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, arg_2.a.a, 0u), func_3(min(vec3<i32>(arg_2.a.b, 0i, 38895i), vec3<i32>(arg_2.a.b, 1i, -51161i)), Struct_5(arg_0.x, vec2<i32>(arg_2.a.b, 45842i), arg_1, Struct_1(arg_2.a.a, vec4<bool>(false, arg_1, false, arg_2.a.d.x)), true), true)), u_input.a), u_input.a, _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(28777u, arg_2.a.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(2926u, 4294967295u), vec2<u32>(37559u, arg_2.a.a)) | (countOneBits(vec2<u32>(arg_2.a.a, 28347u)) << (vec2<u32>(34396u, u_input.a) % vec2<u32>(32u)))), ~9501u);
    global0 = _wgslsmith_add_u32(var_0.x, ~(~1u));
    global0 = 5702u;
    return Struct_3(arg_2.a, arg_2.a.d.x, arg_2.a.d.zwz, -2147483647i >= arg_2.a.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = arg_1;
    global0 = arg_2.a.a << (arg_2.a.a % 32u);
    var var_1 = Struct_3(arg_2.a, !arg_0.b.x, vec3<bool>(arg_0.b.x, any(vec4<bool>(false, arg_0.b.x, any(vec3<bool>(arg_2.d, false, true)), func_2(arg_1, true, Struct_4(arg_2.a), arg_2.a.c).c.x)), true), arg_0.b.x);
    global0 = 65684u | _wgslsmith_dot_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_0.a, 0u))), firstTrailingBit(abs(firstTrailingBit(vec2<u32>(arg_0.a, var_1.a.a)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(136f, -850f), arg_2.a.c.xx), _wgslsmith_f_op_vec2_f32(sign(var_1.a.c.xz)), any(var_1.a.d)))) * _wgslsmith_f_op_vec2_f32(var_1.a.c.yx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1703f, arg_2.a.c.x)))));
    return _wgslsmith_dot_vec2_u32(firstTrailingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_0.a), vec2<u32>(1u, u_input.a))), firstTrailingBit(~reverseBits(vec2<u32>(var_1.a.a, var_1.a.a)))) & ~0u;
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: f32) -> u32 {
    global0 = arg_0;
    global0 = u_input.a;
    global0 = min(arg_1.d.a, select(countOneBits(func_3(min(vec3<i32>(26041i, arg_1.b.x, arg_1.b.x), vec3<i32>(1i, arg_1.b.x, arg_1.b.x)), arg_1, !arg_1.d.b.x).x), arg_0, !arg_1.e));
    var var_0 = ~vec3<u32>(_wgslsmith_add_u32(func_4(Struct_1(4294967295u, vec4<bool>(false, arg_1.e, arg_1.d.b.x, arg_1.e)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(405f, -161f), vec2<f32>(arg_2, arg_2))), Struct_3(Struct_2(arg_1.d.a, -3525i, vec4<f32>(-682f, arg_2, 1636f, arg_1.a), vec4<bool>(false, false, arg_1.e, arg_1.c)), arg_1.d.b.x, arg_1.d.b.zzw, false)), firstLeadingBit(_wgslsmith_clamp_u32(arg_0, 53402u, 4294967295u))), arg_0, arg_1.d.a);
    var_0 = abs(~vec3<u32>(~0u, 4294967295u, arg_0));
    return _wgslsmith_mult_u32(countOneBits(abs(u_input.a)), 1u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec3<bool> {
    global0 = _wgslsmith_div_u32(18981u, arg_1.x >> (_wgslsmith_dot_vec3_u32(select(min(vec3<u32>(84410u, 22015u, arg_1.x), vec3<u32>(34148u, arg_1.x, u_input.a)), vec3<u32>(4294967295u, 45652u, u_input.a), true), arg_1.xyx) % 32u));
    var var_0 = reverseBits(arg_0.xx);
    var_0 = firstTrailingBit(_wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(-arg_0.yz, ~vec2<i32>(var_0.x, var_0.x)), -vec2<i32>(arg_0.x & var_0.x, arg_0.x)));
    let var_1 = func_5(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14902u, u_input.a), reverseBits(vec2<u32>(33855u, u_input.a)) << (arg_1.zw % vec2<u32>(32u))), 4294967295u), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1160f), ~arg_0.xw, true, Struct_1(func_4(Struct_1(arg_1.x, vec4<bool>(false, false, true, true)), vec2<f32>(721f, -1287f), func_2(vec2<f32>(1000f, 857f), false, Struct_4(Struct_2(24054u, -65085i, vec4<f32>(1000f, -501f, -780f, 965f), vec4<bool>(false, false, false, false))), vec4<f32>(1940f, -616f, 437f, 306f))), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, true)), !any(vec3<bool>(true, true, true))), -1199f);
    return !vec3<bool>(true, !(!any(vec2<bool>(false, true))), any(vec4<bool>(false, true, any(vec4<bool>(false, false, true, false)), true)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(u_input.a, 45167i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1930f) - arg_1.a), -889f, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 2269f)), true, Struct_4(Struct_2(1u, arg_1.b.x, vec4<f32>(-169f, arg_1.a, arg_1.a, arg_1.a), arg_1.d.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1031f, arg_1.a, arg_1.a, -1614f)))).a.c.x, -901f), arg_1.d.b));
    let var_1 = arg_1.d;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, select(false, true, false), true), func_1(~vec4<i32>(2147483647i, 36891i, -21636i, 1i), abs(vec4<u32>(87257u, u_input.a, 0u, 0u))), true), vec3<bool>(true, all(func_2(vec2<f32>(315f, 360f), true, Struct_4(Struct_2(u_input.a, 0i, vec4<f32>(460f, -1077f, 103f, 1260f), vec4<bool>(true, false, false, false))), vec4<f32>(-992f, -151f, 225f, 694f)).a.d), true)), Struct_5(-868f, vec2<i32>(1i, 1i), all(vec2<bool>(any(vec3<bool>(true, false, false)), true)), Struct_1(4294967295u, vec4<bool>(true, true, true, any(vec2<bool>(true, true)))), 1i == reverseBits(select(-3024i, 51212i, true))));
    var var_1 = max(var_0.a.b, var_0.a.b);
    global0 = ~u_input.a;
    var var_2 = Struct_1(u_input.a & ~u_input.a, var_0.a.d);
    var_2 = Struct_1(var_0.a.a, var_0.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_vec3_f32(-func_2(var_0.a.c.zy, true, var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.a.c)))).a.c.xyz), -vec4<i32>(-1i << (~4294967295u % 32u), 1i, reverseBits(~var_0.a.b), var_0.a.b), _wgslsmith_f_op_vec3_f32(exp2(var_0.a.c.zwx)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -477f))));
}

