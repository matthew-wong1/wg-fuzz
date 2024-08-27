struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: f32) -> vec3<i32> {
    let var_0 = Struct_3(-_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(1883i, u_input.a.x, 2147483647i), -u_input.a.zzw), vec3<i32>(9479i, _wgslsmith_clamp_i32(arg_2.x, 72199i, 16850i), -27229i)), _wgslsmith_f_op_vec4_f32(arg_1.b.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-582f)), _wgslsmith_f_op_f32(307f * arg_3), _wgslsmith_f_op_f32(f32(-1f) * -847f), arg_1.b.b.x))), ~select(~u_input.c.wxz, arg_1.b.c, select(select(vec3<bool>(arg_1.a.a, arg_0.x, arg_1.a.a), vec3<bool>(arg_0.x, arg_1.a.d, true), vec3<bool>(false, arg_0.x, false)), vec3<bool>(arg_1.a.c.b, arg_1.a.b.b, arg_1.a.a), select(vec3<bool>(arg_0.x, arg_1.a.a, arg_1.a.b.b), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, false, false)))));
    let var_1 = arg_1;
    let var_2 = var_1.a.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(260f, 1015f)), -938f));
    var var_4 = 2331f;
    return vec3<i32>(var_1.b.a.x, arg_1.a.c.c.x, 3994i);
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(false, Struct_1(func_3(vec2<bool>(true, false), Struct_4(Struct_2(false, Struct_1(arg_0.xwx, true, vec4<i32>(u_input.a.x, arg_0.x, -10496i, arg_0.x)), Struct_1(u_input.a.wwx, false, vec4<i32>(-52919i, -23419i, -11891i, u_input.a.x)), true), Struct_3(vec3<i32>(-8703i, u_input.a.x, -1i), vec4<f32>(1013f, -1412f, -148f, -2714f), u_input.b.yzx), -74828i), -arg_0.xxy, -1000f), !any(vec2<bool>(true, true)), ~arg_0), Struct_1(u_input.a.yxy, !all(vec3<bool>(false, true, true)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(23747i, u_input.a.x, u_input.a.x), arg_0.zyy), arg_0.x, 1i, u_input.a.x ^ u_input.a.x)), any(vec3<bool>(all(vec2<bool>(true, false)), true, select(false, true, false)))), Struct_3(-(~(arg_0.xxy & arg_0.wyw)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-527f, 919f, 687f, -540f), vec4<f32>(178f, 123f, 2574f, -1830f)))))), firstTrailingBit(u_input.b.wzw)), -2147483647i);
    let var_1 = 18418u;
    let var_2 = vec4<u32>(0u, (~u_input.d.x | u_input.b.x) ^ u_input.d.x, ~(~u_input.b.x), var_1);
    let var_3 = var_0.b.a.x;
    let var_4 = u_input.a.x;
    return Struct_4(var_0.a, Struct_3(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0.x), var_0.b.a.zx), max(1i, var_4), 0i), var_0.b.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 1u, ~var_1), var_0.b.c)), var_0.a.b.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = arg_0.b.c.x ^ ~_wgslsmith_clamp_u32(firstTrailingBit(reverseBits(30779u)), firstTrailingBit(u_input.d.x >> (1u % 32u)), ~(~1u));
    let var_1 = all(vec2<bool>(true, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.d, arg_0.b.c.xy)) <= u_input.d.x));
    var var_2 = arg_0;
    let var_3 = func_2(firstLeadingBit(abs(arg_0.a.b.c))).b;
    var_2 = Struct_4(func_2(_wgslsmith_clamp_vec4_i32(u_input.a, firstTrailingBit(var_2.a.b.c), select(_wgslsmith_add_vec4_i32(arg_0.a.b.c, vec4<i32>(var_3.a.x, var_3.a.x, var_3.a.x, arg_1.x)), select(vec4<i32>(var_3.a.x, arg_0.a.c.a.x, -1i, 30470i), arg_1, true), select(vec4<bool>(true, arg_0.a.d, var_2.a.d, true), vec4<bool>(var_2.a.b.b, false, var_2.a.d, arg_0.a.a), vec4<bool>(false, true, true, var_1))))).a, func_2(vec4<i32>(~_wgslsmith_mod_i32(47504i, u_input.a.x), ~arg_1.x, -countOneBits(var_2.c), var_3.a.x)).b, var_3.a.x);
    return arg_0;
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = func_4(func_2((~arg_0 >> (u_input.c % vec4<u32>(32u))) & (~arg_0 | _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(arg_0.x, -37927i, -10730i, u_input.a.x)))), ~u_input.a);
    var var_1 = var_0.b;
    let var_2 = var_1.b.x;
    var_1 = var_0.b;
    var var_3 = ~(-38142i << (~var_0.b.c.x % 32u));
    return 376f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(355f, -927f)) * _wgslsmith_f_op_f32(func_1(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -33975i))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1500f - func_2(vec4<i32>(-9431i, -2147483647i, u_input.a.x, u_input.a.x)).b.b.x), -1000f, all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -240f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(355f, 562f))))), -277f)));
    var_0 = 610f;
    let var_1 = _wgslsmith_div_f32(308f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(553f)) * -694f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)))));
    var var_2 = func_4(Struct_4(func_4(func_4(Struct_4(Struct_2(true, Struct_1(u_input.a.zxx, false, u_input.a), Struct_1(vec3<i32>(1i, u_input.a.x, u_input.a.x), false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), true), Struct_3(vec3<i32>(u_input.a.x, 0i, 2147483647i), vec4<f32>(var_1, 114f, var_1, var_1), vec3<u32>(u_input.d.x, u_input.b.x, 4294967295u)), -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, -69591i, 0i, -48778i), u_input.a)).a, Struct_3(firstTrailingBit(func_3(vec2<bool>(true, true), Struct_4(Struct_2(false, Struct_1(u_input.a.wwx, false, vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x)), Struct_1(vec3<i32>(22327i, -2147483647i, u_input.a.x), true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), true), Struct_3(vec3<i32>(29302i, -44826i, 2147483647i), vec4<f32>(var_1, var_1, var_1, -1809f), u_input.c.wxw), 43603i), u_input.a.yxy, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(1634f + var_1), func_2(vec4<i32>(-34324i, u_input.a.x, u_input.a.x, -2147483647i)).b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(-333f - 633f)), u_input.b.wwy & ~vec3<u32>(4294967295u, u_input.b.x, 54258u)), _wgslsmith_mult_i32(u_input.a.x, ~(-u_input.a.x))), ~vec4<i32>(u_input.a.x, ~u_input.a.x, ~u_input.a.x, ~_wgslsmith_mult_i32(748i, 16320i))).b;
    var_2 = func_4(Struct_4(func_2(u_input.a).a, func_4(func_4(func_2(u_input.a), u_input.a), vec4<i32>(-2147483647i, -27348i, 2249i, u_input.a.x)).b, var_2.a.x), u_input.a).b;
    var_2 = func_4(Struct_4(Struct_2(true, func_4(Struct_4(Struct_2(true, Struct_1(vec3<i32>(526i, u_input.a.x, var_2.a.x), false, u_input.a), Struct_1(var_2.a, true, vec4<i32>(-1i, -1i, 36379i, 1i)), false), Struct_3(var_2.a, vec4<f32>(1061f, -1000f, 891f, -1010f), u_input.c.wwx), u_input.a.x), func_2(u_input.a).a.b.c).a.c, Struct_1(max(vec3<i32>(u_input.a.x, -1i, var_2.a.x), vec3<i32>(-29032i, -1i, 1i)), func_2(vec4<i32>(-23364i, -20037i, -13774i, -2147483647i)).a.a, -vec4<i32>(var_2.a.x, var_2.a.x, 1i, u_input.a.x)), false), Struct_3(_wgslsmith_div_vec3_i32(-var_2.a, _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.x, u_input.a.x, var_2.a.x), u_input.a.xyy)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(trunc(3009f)), 1163f, -1000f), u_input.c.wxz), _wgslsmith_add_i32(firstTrailingBit(var_2.a.x), i32(-1i) * -2147483647i)), ~select(~(-u_input.a), _wgslsmith_mult_vec4_i32(u_input.a >> (vec4<u32>(33712u, var_2.c.x, 34232u, var_2.c.x) % vec4<u32>(32u)), u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))).b;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(u_input.a).b.b.x, 1u, 0u, func_4(Struct_4(Struct_2(all(vec2<bool>(true, var_3)), func_2(u_input.a).a.b, func_4(Struct_4(Struct_2(false, Struct_1(vec3<i32>(2147483647i, var_2.a.x, 55039i), var_3, vec4<i32>(var_2.a.x, u_input.a.x, u_input.a.x, var_2.a.x)), Struct_1(vec3<i32>(18873i, 37151i, var_2.a.x), var_3, u_input.a), true), Struct_3(vec3<i32>(var_2.a.x, 0i, 37520i), vec4<f32>(var_1, -635f, -175f, var_1), vec3<u32>(47430u, u_input.d.x, var_2.c.x)), -3719i), u_input.a).a.c, var_3), Struct_3(reverseBits(u_input.a.zyw), vec4<f32>(340f, 1000f, 882f, 122f), vec3<u32>(0u, 4294967295u, 56347u) ^ vec3<u32>(u_input.d.x, 1161u, 1u)), -11064i), select(u_input.a, (u_input.a ^ u_input.a) & u_input.a, false)).c);
}

