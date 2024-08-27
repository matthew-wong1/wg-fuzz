struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) + 1409f))))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: i32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = arg_1.b;
    let var_2 = ~1u;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(612f, -1000f) * arg_1.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(458f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, -440f)) + vec2<f32>(arg_1.b.b, _wgslsmith_f_op_f32(func_3(~var_0.a.d, arg_1.a, arg_2)))));
    let var_4 = var_0.a.c;
    return Struct_1(firstTrailingBit(~var_2 | ~_wgslsmith_clamp_u32(u_input.b, 0u, u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-2992f, 336f, _wgslsmith_f_op_f32(var_1.b * -1142f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, var_0.b, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(arg_0.b - var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -988f))))), arg_1.a);
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = select(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c.wz, arg_0.c.yx);
    var var_1 = _wgslsmith_clamp_vec2_u32(abs(u_input.a.xy) >> (u_input.a.zx % vec2<u32>(32u)), vec2<u32>(u_input.a.x, min(u_input.b, u_input.b)) & max(vec2<u32>(_wgslsmith_div_u32(25566u, u_input.b), arg_0.a), ~vec2<u32>(u_input.c.x, arg_0.a)), u_input.c);
    var_1 = vec2<u32>(abs(firstLeadingBit(u_input.b)), ~(~var_1.x));
    var_1 = ~abs(vec2<u32>(9289u, _wgslsmith_dot_vec3_u32(u_input.a >> (vec3<u32>(var_1.x, 33797u, arg_0.a) % vec3<u32>(32u)), u_input.a)));
    let var_2 = u_input.a;
    return !(!(arg_0.b.x <= 648f));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(any(vec4<bool>(false, false, true, true)) | func_4(func_2(Struct_4(Struct_2(false, false, -2147483647i, 33880i), 1876f), Struct_5(vec4<bool>(false, true, true, false), Struct_4(Struct_2(true, false, arg_1, -35122i), -1077f), vec3<bool>(false, false, true)), 17005i)), (~(-40264i) > abs(u_input.d.x)) == func_4(Struct_1(1u, vec3<f32>(822f, 498f, 127f), vec4<bool>(true, true, true, false))), -(~_wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), firstLeadingBit(-(u_input.d.x | u_input.d.x))), -205f);
    var_0 = Struct_4(var_0.a, var_0.b);
    return Struct_4(Struct_2(false, select(var_0.a.b, func_4(func_2(Struct_4(var_0.a, var_0.b), Struct_5(vec4<bool>(false, true, true, false), Struct_4(Struct_2(true, true, -1i, u_input.d.x), var_0.b), vec3<bool>(var_0.a.a, var_0.a.a, false)), -10596i)), true), select(-689i, 1i, var_0.a.b), -53278i), func_2(Struct_4(Struct_2(true, u_input.d.x != arg_1, min(var_0.a.d, u_input.d.x), -25686i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, var_0.b)))), Struct_5(vec4<bool>(var_0.a.b, !var_0.a.b, var_0.a.a, true), Struct_4(var_0.a, 1952f), func_2(Struct_4(var_0.a, -158f), Struct_5(vec4<bool>(false, var_0.a.b, true, false), Struct_4(Struct_2(true, true, u_input.d.x, -14587i), var_0.b), vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.a)), arg_1).c.xxw), abs(_wgslsmith_mod_i32(arg_1, arg_1)) & ~(arg_1 & arg_1)).b.x);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_1(u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(func_2(arg_1.b, arg_0, -7413i).b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.b, arg_2.x, arg_1.b.b) - vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) - vec3<f32>(-1464f, -415f, 2135f)))), !vec4<bool>(!(!arg_1.a.x), all(select(arg_0.a, arg_1.a, false)), arg_1.a.x, !arg_0.a.x));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.b, -1284f, 1656f)))) - var_0.b) - _wgslsmith_f_op_vec3_f32(abs(var_0.b))), Struct_2(false, all(vec2<bool>(true, true)), -2947i >> (var_0.a % 32u), -1i), var_0);
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.a.xz))), vec2<f32>(arg_1.b.b, _wgslsmith_f_op_f32(min(300f, arg_1.b.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 - var_1.a.xx) * _wgslsmith_f_op_vec2_f32(-arg_2)) * vec2<f32>(arg_2.x, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-250f, 1020f) - _wgslsmith_f_op_vec2_f32(round(var_0.b.zz)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yx))), vec2<bool>(arg_0.a.x, true | arg_1.b.a.a)));
    var_2 = firstTrailingBit(countOneBits(u_input.a.zy));
    return 4294967295u;
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: f32) -> Struct_4 {
    var var_0 = u_input.a;
    var_0 = select(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u, var_0.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(64950u, var_0.x, 45315u, 14692u), abs(vec4<u32>(27893u, arg_0, 30479u, u_input.c.x))), _wgslsmith_add_u32(~arg_0, _wgslsmith_mod_u32(u_input.a.x, 1u)))), ~vec3<u32>(~(~arg_0), _wgslsmith_mult_u32(arg_0, 4294967295u) << (~52644u % 32u), arg_0), 0u == ~(~(~var_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3)))), func_2(arg_1, Struct_5(!vec4<bool>(true, arg_1.a.b, true, arg_1.a.a), arg_1, vec3<bool>(true, arg_1.a.a, false)), ~(-2147483647i)).b.x, func_1(countOneBits(vec3<u32>(u_input.a.x, arg_0, 91234u)), u_input.d.x).b) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1142f), arg_3, _wgslsmith_div_f32(138f, arg_3), arg_1.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-365f, arg_3, -853f, arg_3), vec4<f32>(arg_3, arg_3, 941f, arg_3)), _wgslsmith_div_vec4_f32(vec4<f32>(919f, arg_3, arg_3, 594f), vec4<f32>(280f, arg_1.b, -451f, arg_3)))))));
    let var_2 = ~vec4<u32>(4294967295u, 4294967295u, 1u, ~firstTrailingBit(u_input.c.x));
    var_0 = var_2.wyw;
    return func_1(u_input.a, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(min(func_5(Struct_5(vec4<bool>(true, true, false, false), func_1(vec3<u32>(31862u, u_input.a.x, 4294967295u), 58094i), vec3<bool>(true, false, false)), Struct_5(vec4<bool>(true, true, true, true), func_1(vec3<u32>(0u, u_input.b, 1u), u_input.d.x), vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1684f), _wgslsmith_f_op_f32(1609f + -2089f))), 0u), func_1(_wgslsmith_mult_vec3_u32(~u_input.a, ~u_input.a), u_input.d.x), -1i, 302f);
    var var_1 = u_input.d | -((u_input.d ^ (u_input.d ^ vec3<i32>(-7477i, -2147483647i, -13910i))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(23701u, u_input.a.x, 49369u)), vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x) & u_input.a) % vec3<u32>(32u)));
    var_0 = Struct_4(func_1(u_input.a << (~vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), u_input.d.x).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1122f, _wgslsmith_div_f32(-1065f, -389f))), -365f));
    var var_2 = vec3<i32>(_wgslsmith_div_i32(15672i, -2147483647i), u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, 8428i));
    var var_3 = Struct_2(func_4(func_2(func_6(u_input.a.x, func_6(u_input.a.x, Struct_4(var_0.a, -982f), 21027i, var_0.b), ~0i, _wgslsmith_f_op_f32(abs(var_0.b))), Struct_5(vec4<bool>(false, true, true, true), func_6(u_input.a.x, Struct_4(Struct_2(false, true, 1i, u_input.d.x), -1338f), -2147483647i, var_0.b), !vec3<bool>(true, var_0.a.a, var_0.a.b)), var_0.a.d)), _wgslsmith_sub_u32(u_input.c.x, u_input.a.x) > u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(-func_1(vec3<u32>(u_input.b, u_input.b, u_input.c.x), -87266i).a.d, -18680i), var_0.a.d), 2156i);
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

