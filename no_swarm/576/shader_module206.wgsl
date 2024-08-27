struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(~u_input.a.x, arg_2.d.x, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, arg_2.c, arg_2.c, u_input.d.x), vec4<u32>(4294967295u, arg_2.d.x, u_input.a.x, 39840u)), u_input.a.x))));
    var_0 = ~countOneBits(~(~u_input.a)) ^ select(vec4<u32>(arg_2.c, arg_2.d.x, 1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 13957u, 91822u), u_input.a.yyy)), u_input.a, _wgslsmith_f_op_f32(1f + 879f) < _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -1436f), 1600f, true)));
    var var_1 = arg_2.a;
    let var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(arg_2.b, arg_2.b)), select(!select(vec2<bool>(false, arg_2.b), vec2<bool>(true, true), arg_2.b), select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), true), vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_2.b), vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, arg_0))), true), select(select(select(vec2<bool>(true, true), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, arg_0)), vec2<bool>(false, arg_0), select(arg_2.b, true, true)), !vec2<bool>(arg_2.b, arg_0), select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_2.b, false), arg_0), vec2<bool>(true, false), arg_0))), !vec2<bool>(true, !arg_2.b), vec2<bool>(true, arg_0));
    let var_3 = reverseBits(min(select(select(vec3<i32>(var_1.a.x, 1i, -1i), var_1.a.yyy, vec3<bool>(false, false, arg_2.b)) ^ ~arg_2.a.a.xxy, vec3<i32>(-arg_2.e.x, select(-1i, -2147483647i, var_2.x), 1i), vec3<bool>(!var_2.x, all(vec3<bool>(true, arg_2.b, arg_2.b)), false || var_2.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.a.zzw, var_1.a.ywx, vec3<i32>(arg_1, arg_1, 1i)) | vec3<i32>(0i, 15632i, 61760i), var_1.a.zzx, _wgslsmith_add_vec3_i32(select(var_1.a.yzy, vec3<i32>(arg_2.e.x, -9520i, arg_1), var_2.x), var_1.a.zxx << (vec3<u32>(24419u, arg_2.d.x, 0u) % vec3<u32>(32u))))));
    return select(!(!vec3<bool>(arg_2.b, true, arg_2.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, !select(false, true, arg_2.b)), true), !select(select(vec3<bool>(true, var_2.x, true), select(vec3<bool>(arg_0, false, arg_2.b), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(arg_0, arg_0, false)), var_2.x), select(!vec3<bool>(arg_2.b, false, arg_0), vec3<bool>(arg_2.b, true, var_2.x), vec3<bool>(true, arg_2.b, var_2.x)), var_2.x));
}

fn func_2() -> Struct_3 {
    return Struct_3(!(!any(vec4<bool>(false, false, false, false)) || all(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec4<i32>(select(u_input.c, u_input.c, true), reverseBits(u_input.c), u_input.b.x, 2147483647i)), any(func_3(true, u_input.c, Struct_2(Struct_1(u_input.b), false, u_input.d.x, vec3<u32>(u_input.a.x, 2426u, u_input.d.x), vec2<i32>(u_input.b.x, -18851i)))), _wgslsmith_mult_u32(max(1u, 100444u), abs(1u)), u_input.a.xyw, countOneBits(max(select(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.c), vec2<bool>(true, false)), firstTrailingBit(u_input.b.xy)))), Struct_2(Struct_1(u_input.b), 457f <= _wgslsmith_f_op_f32(select(486f, -535f, any(vec4<bool>(true, false, false, false)))), u_input.d.x << (u_input.a.x % 32u), _wgslsmith_mult_vec3_u32(~u_input.a.yxw, _wgslsmith_add_vec3_u32(vec3<u32>(27258u, 55292u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x)) | vec3<u32>(u_input.a.x, 15702u, 0u)), -(~(~vec2<i32>(23482i, 2147483647i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yyx, u_input.b.yzy), u_input.b.x, u_input.c ^ u_input.b.x) | _wgslsmith_mult_vec3_i32(~vec3<i32>(50818i, 12427i, u_input.b.x), u_input.b.xww), vec3<i32>(14975i, _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), u_input.b.x)), u_input.d.x ^ min(~u_input.a.x, _wgslsmith_div_u32(0u, u_input.d.x ^ u_input.d.x)));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1393f, -725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(627f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-311f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(796f, 967f, -788f, 657f) + vec4<f32>(-412f, 287f, -1131f, 1000f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2360f, 1000f, var_1.x, var_1.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -753f, 835f, 853f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-2198f)), _wgslsmith_f_op_f32(-1025f - -2265f), _wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(abs(var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(601f * 113f), 305f, var_1.x, _wgslsmith_f_op_f32(var_1.x * -1173f)), all(func_3(false, 1i, Struct_2(Struct_1(arg_0.a), var_0.a, var_0.c.d.x, u_input.d, u_input.b.xw)).xy))))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(~(u_input.d.x << (var_0.b.d.x % 32u)), ~1u | (var_0.b.c >> (var_0.c.c % 32u)), var_0.e << (0u % 32u)) | firstTrailingBit((var_0.c.d & var_0.c.d) ^ vec3<u32>(0u, u_input.d.x, var_0.b.d.x)), var_0.c.d);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f + -186f)), arg_1.x);
    var var_1 = func_2().c;
    var var_2 = Struct_2(func_2().b.a, any(!vec4<bool>(false, func_2().c.b, select(true, false, var_1.b), false)), 49390u, vec3<u32>(~u_input.d.x, var_1.d.x, ~16u), var_1.e);
    var_2 = func_2().b;
    var_1 = func_2().b;
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = func_2().b.e.x;
    var var_1 = select(select(select(select(vec3<bool>(true, false, true), !vec3<bool>(false, false, arg_3.a), arg_3.a), !select(vec3<bool>(true, arg_3.b.b, true), vec3<bool>(arg_3.a, arg_3.c.b, arg_3.c.b), vec3<bool>(arg_3.c.b, true, arg_3.c.b)), arg_3.a), !(!func_3(arg_3.a, arg_0.a.x, Struct_2(Struct_1(vec4<i32>(1i, 0i, arg_3.c.a.a.x, u_input.b.x)), arg_3.a, u_input.a.x, u_input.a.wxw, arg_0.a.zx))), !select(vec3<bool>(arg_3.a, false, true), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(arg_3.b.b || true, arg_3.c.b, true), func_3(arg_3.a, -53253i, arg_3.b), func_3(arg_3.b.b && arg_3.c.b, 1i, arg_3.b)), vec3<bool>(!all(vec3<bool>(false, false, arg_3.c.b)), true, !arg_3.c.b), false), !(!(!arg_3.a)));
    var var_2 = arg_3.c;
    var_2 = Struct_2(func_2().c.a, arg_3.b.b & true, 21011u, ~vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(func_1(arg_3.c.a).x, 0u), 4294967295u), arg_1.a.ww);
    var var_3 = ~(-(func_2().b.a.a >> (u_input.a % vec4<u32>(32u))));
    return Struct_3(!arg_3.c.b, Struct_2(func_2().c.a, -1i < ~_wgslsmith_mult_i32(arg_3.b.a.a.x, 0i), 4294967295u, vec3<u32>(abs(u_input.d.x), arg_2.x, ~(~4294967295u)), select(~(vec2<i32>(-9510i, 2147483647i) | vec2<i32>(arg_0.a.x, -1i)), vec2<i32>(var_3.x, u_input.c), !select(var_2.b, var_2.b, true))), arg_3.c, abs(_wgslsmith_clamp_i32(0i, ~(-19050i), 11715i)), ~func_1(arg_3.b.a).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(firstLeadingBit(~u_input.d), vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(390f - _wgslsmith_f_op_f32(-113f * 763f)), 998f), _wgslsmith_mult_vec3_u32(func_1(Struct_1(u_input.b)) << (countOneBits(vec3<u32>(1u, 0u, 1u)) % vec3<u32>(32u)), select(func_2().b.d, u_input.a.zwy, func_3(false, u_input.c, Struct_2(Struct_1(u_input.b), false, 41933u, vec3<u32>(15942u, 1u, u_input.a.x), u_input.b.zy))))), Struct_1(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(-18509i, -2147483647i, _wgslsmith_mod_i32(-2147483647i, u_input.c), 0i))), select(vec3<u32>(_wgslsmith_div_u32(u_input.d.x, u_input.a.x & 1u), 3885u, 1u), u_input.a.xxx, true), Struct_3(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) == u_input.d.x, Struct_2(Struct_1(~u_input.b), u_input.b.x == u_input.b.x, ~u_input.d.x, (vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x) >> (vec3<u32>(49418u, u_input.d.x, 1u) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x)), firstTrailingBit(vec2<i32>(24597i, 0i) ^ u_input.b.yz)), Struct_2(Struct_1(u_input.b | u_input.b), true, ~abs(u_input.a.x), select(vec3<u32>(1u, u_input.a.x, u_input.a.x) & u_input.d, u_input.d, vec3<bool>(true, true, true)), max(-vec2<i32>(1i, u_input.b.x), ~u_input.b.yz)), -u_input.b.x, func_1(func_2().b.a).x));
    let var_1 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, ~(~var_0.b.c), var_0.e, ~min(u_input.a.x, u_input.d.x)), firstTrailingBit(u_input.a >> (u_input.a % vec4<u32>(32u)))), u_input.a, vec4<bool>(true, true, var_0.c.b, func_5(Struct_1(-var_0.c.a.a), var_0.b.a, abs(vec3<u32>(var_0.b.c, var_0.c.d.x, 49969u)), Struct_3(any(vec2<bool>(false, var_0.a)), var_0.c, var_0.c, 2147483647i, ~1u)).a));
    var var_2 = true;
    var var_3 = Struct_3(true, Struct_2(func_5(var_0.b.a, func_2().c.a, func_2().c.d, func_2()).c.a, !var_0.c.b, 4294967295u, var_0.b.d, vec2<i32>(u_input.b.x, u_input.b.x)), var_0.b, reverseBits(select(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a.a.x, var_0.c.e.x, -2147483647i, u_input.c), u_input.b)), ~abs(u_input.c), false)), 4294967295u);
    var var_4 = var_3.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f * 826f) + -922f)))));
}

