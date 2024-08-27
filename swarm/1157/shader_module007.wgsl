struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec2<u32>(73008u, 29332u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-116f, -1000f, any(vec2<bool>(true, true))))));
    global0 = Struct_1(~(~global0.a << (select(~u_input.a, ~vec3<u32>(4294967295u, 12562u, u_input.a.x), vec3<bool>(true, false, true)) % vec3<u32>(32u))), ~vec2<u32>(_wgslsmith_clamp_u32(reverseBits(4294967295u), 5271u, ~1u), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.yz))));
    var_0 = -785f;
    var_0 = 424f;
    var var_1 = 28209u;
    return 47991u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_u32(global0.b.x | ~func_3(), func_3()) | _wgslsmith_clamp_u32(global0.a.x, 4294967295u, ~select(4294967295u << (u_input.a.x % 32u), 4294967295u << (u_input.d.x % 32u), any(vec3<bool>(true, true, true))));
    var var_1 = -303f;
    let var_2 = global0.b;
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 278f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -752f)))), Struct_2(Struct_1(u_input.d.zzx, ~firstTrailingBit(u_input.d.ww))));
    global0 = Struct_1(vec3<u32>(u_input.a.x, ~func_3(), ~(~(~var_2.x))), var_3.b.a.b);
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(895f, var_3.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, -375f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.x, var_3.a.x), vec2<f32>(var_3.a.x, 2005f))))), var_3.b);
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = ~arg_0.c;
    let var_1 = !(!all(vec3<bool>(true, true, u_input.b.x >= -1i)));
    global0 = arg_0.d;
    global0 = Struct_1(global0.a, _wgslsmith_div_vec2_u32(~vec2<u32>(global0.b.x, firstTrailingBit(global0.a.x)), ~(~(vec2<u32>(global0.b.x, 0u) ^ global0.a.zz))));
    global0 = Struct_1(countOneBits(vec3<u32>(arg_0.a.b.a.b.x, 35704u, 0u)), ~(~(~vec2<u32>(17551u, global0.a.x) << (~vec2<u32>(10087u, global0.a.x) % vec2<u32>(32u)))));
    return func_2(arg_0.c).b.a;
}

fn func_1() -> Struct_2 {
    global0 = func_4(Struct_4(func_2(vec4<i32>(u_input.c, 1i, u_input.c, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), Struct_1((u_input.a | u_input.d.wxy) >> (vec3<u32>(u_input.a.x, global0.a.x, 0u) % vec3<u32>(32u)), u_input.d.wy), firstLeadingBit(-(vec4<i32>(-68798i, u_input.b.x, u_input.c, -2147483647i) & vec4<i32>(u_input.c, 0i, u_input.b.x, u_input.c))), Struct_1(~min(vec3<u32>(76456u, global0.a.x, 25508u), u_input.a), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.a.x, u_input.d.x, 58667u, 91264u)), abs(u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f - 130f))));
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(~select(firstTrailingBit(15928u), ~5911u, any(vec4<bool>(false, false, true, false))), _wgslsmith_dot_vec3_u32((u_input.d.wzw ^ u_input.d.xxx) << (~u_input.a % vec3<u32>(32u)), ~global0.a >> (~vec3<u32>(global0.a.x, 24509u, 70585u) % vec3<u32>(32u)))), ~global0.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.d.x, ~u_input.d.x), 4294967295u ^ (u_input.a.x & 4294967295u)), _wgslsmith_add_u32(global0.a.x, global0.a.x | _wgslsmith_mult_u32(45723u, 56286u))), global0.a.x);
    let var_1 = Struct_1(vec3<u32>(countOneBits(1u), _wgslsmith_mod_u32(~var_0.x, ~_wgslsmith_mult_u32(var_0.x, 1u)), _wgslsmith_div_u32(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(global0.b, vec2<u32>(108809u, 4294967295u))), u_input.a.x | _wgslsmith_mod_u32(0u, var_0.x))), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13307u, 64918u, u_input.d.x), u_input.d), ~var_0.x)), _wgslsmith_sub_vec2_u32(firstLeadingBit(var_0.wy << (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))), vec2<u32>(u_input.a.x, 0u) ^ u_input.a.yx)));
    var_0 = u_input.d << (u_input.d % vec4<u32>(32u));
    let var_2 = var_1;
    return Struct_2(Struct_1(select(vec3<u32>(var_2.b.x, global0.a.x & 29937u, global0.b.x), ~(~global0.a), vec3<bool>(true, true, true)), vec2<u32>(global0.b.x, 1u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> Struct_4 {
    let var_0 = u_input.a.x;
    var var_1 = arg_0.a.a.x;
    var_1 = ~(_wgslsmith_dot_vec4_u32(u_input.d ^ (u_input.d ^ u_input.d), vec4<u32>(35705u, ~56625u, ~7605u, 54275u)) | firstTrailingBit(abs(select(var_0, arg_1.b.a.a.x, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-arg_1.a.x)))));
    var var_3 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    return Struct_4(arg_1, func_4(Struct_4(Struct_3(var_2.yx, func_1()), Struct_1(func_2(vec4<i32>(arg_3, u_input.c, u_input.b.x, u_input.b.x)).b.a.a, u_input.d.zz), _wgslsmith_mod_vec4_i32(vec4<i32>(32424i, u_input.b.x, 1i, -6516i), firstLeadingBit(vec4<i32>(arg_3, arg_3, -53218i, arg_3))), func_1().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, 1668f)) + -1424f))), ~vec4<i32>(-arg_3, _wgslsmith_div_i32(-34374i, 43761i), -u_input.b.x, 8065i) ^ vec4<i32>(-2147483647i, min(-2147483647i, 0i << (1u % 32u)), u_input.c, arg_3), arg_1.b.a, -636f);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = arg_0.x;
    var var_1 = arg_1;
    var var_2 = arg_1;
    var var_3 = ~10130i;
    return arg_1.a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(vec2<bool>(true, true), func_5(func_1(), func_2(~(vec4<i32>(-2147483647i, -41731i, 2147483647i, u_input.b.x) ^ vec4<i32>(1i, 0i, u_input.c, u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -967f), 110379i), u_input.a.yz);
    let var_0 = -4820i;
    global0 = Struct_1(u_input.d.wzw, ~(~(global0.b & global0.b)) << (~(~_wgslsmith_add_vec2_u32(global0.b, global0.a.zy)) % vec2<u32>(32u)));
    global0 = func_6(vec2<bool>((var_0 > ~(-1i)) || true, true), Struct_4(func_2((vec4<i32>(var_0, -24061i, u_input.b.x, var_0) | vec4<i32>(-2536i, var_0, 2147483647i, var_0)) << (abs(u_input.d) % vec4<u32>(32u))), Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u) ^ ~u_input.a, func_4(Struct_4(Struct_3(vec2<f32>(-1594f, -1176f), Struct_2(Struct_1(global0.a, u_input.a.zz))), Struct_1(vec3<u32>(global0.b.x, 148060u, u_input.a.x), vec2<u32>(38017u, 26014u)), vec4<i32>(-1i, 2147483647i, -14251i, 1i), Struct_1(global0.a, vec2<u32>(53511u, global0.a.x)), -1000f)).b), reverseBits(vec4<i32>(u_input.b.x, 1i, var_0, var_0) << (vec4<u32>(u_input.d.x, 0u, 4294967295u, global0.a.x) % vec4<u32>(32u))), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 47741i, 1i, 1i), vec4<i32>(var_0, -1i, var_0, u_input.c), vec4<i32>(-1i, -1i, u_input.c, u_input.c)) | (vec4<i32>(var_0, var_0, -1135i, var_0) | vec4<i32>(2287i, u_input.b.x, var_0, var_0))).b.a, _wgslsmith_div_f32(-1000f, func_2(vec4<i32>(-8326i, 71967i, 839i, var_0) & vec4<i32>(0i, -2147483647i, -1505i, -64543i)).a.x)), global0.b);
    global0 = func_1().a;
    let var_1 = !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1237f))), _wgslsmith_f_op_f32(-1358f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f))))), firstTrailingBit(vec3<u32>(u_input.d.x, 1u & _wgslsmith_div_u32(u_input.a.x, 1u), ~(u_input.a.x & 4294967295u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-384f, 356f, 893f) - vec3<f32>(198f, 174f, 164f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1210f, -748f, 246f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(623f, 166f, -1082f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1752f, 2010f, 974f) - vec3<f32>(1602f, 604f, 2034f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(256f, 1600f, 373f))), vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), 297f, _wgslsmith_f_op_f32(1100f - -573f)))))), firstTrailingBit(~u_input.d), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1731f, 230f), -2111f)))));
}

