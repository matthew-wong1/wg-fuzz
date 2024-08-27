struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_clamp_i32(-2147483647i, 1i, u_input.a.x << (14459u % 32u));
    var var_1 = arg_1.b.b.xy;
    let var_2 = arg_1.b.a;
    var var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.yy, abs(vec2<u32>(var_2, 1u) | vec2<u32>(38063u, arg_1.a))), !(!select(arg_1.b.b, vec3<bool>(false, false, var_1.x), vec3<bool>(arg_1.b.b.x, true, true))), firstTrailingBit(vec4<i32>(u_input.d | u_input.d, firstLeadingBit(1i), _wgslsmith_div_i32(u_input.a.x, arg_1.b.c.x), -7111i)), ~vec2<i32>(arg_1.b.d.x, arg_1.b.c.x & 2147483647i), 1u), arg_1.b.d, (u_input.b | _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, -14885i)), arg_1.b.d)) << (0u % 32u), vec2<bool>((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, 9670u, 65465u), vec4<u32>(var_2, 0u, 49610u, 44641u)) > 1u) == any(arg_1.b.b), any(arg_1.b.b)));
    let var_4 = arg_1.b;
    return select(var_1.x, true, true);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    let var_0 = true;
    let var_1 = Struct_3(_wgslsmith_div_u32(u_input.e.x & (u_input.e.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 2546u), vec3<u32>(13894u, u_input.e.x, u_input.c.x)) % 32u)), _wgslsmith_mod_u32(~u_input.e.x & u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, u_input.c.x, u_input.c.x), u_input.c.zxz), u_input.c.xzz))), Struct_1(_wgslsmith_mod_u32(4294967295u, reverseBits(4294967295u)), vec3<bool>(!func_3(0u, Struct_3(1u, Struct_1(u_input.c.x, vec3<bool>(arg_0, var_0, true), vec4<i32>(25593i, u_input.d, u_input.b, u_input.b), u_input.a, 14871u)), 359f, -813f), var_0, select(true, arg_1.x, false)), abs(-vec4<i32>(0i, -9092i, -2147483647i, u_input.d)), u_input.a, 2744u));
    let var_2 = Struct_1(u_input.e.x, select(var_1.b.b, !vec3<bool>(arg_1.x, false, true), arg_1), max(firstLeadingBit(vec4<i32>(u_input.d & u_input.a.x, 29114i ^ u_input.a.x, u_input.b << (var_1.b.a % 32u), -1i)), _wgslsmith_clamp_vec4_i32(var_1.b.c, -_wgslsmith_div_vec4_i32(vec4<i32>(9621i, 1i, var_1.b.d.x, 14104i), vec4<i32>(u_input.b, u_input.a.x, u_input.d, 1i)), countOneBits(var_1.b.c))), u_input.a, 0u ^ _wgslsmith_dot_vec3_u32(abs(~u_input.e), vec3<u32>(1u, u_input.c.x, u_input.c.x) << (~vec3<u32>(u_input.c.x, var_1.a, 4294967295u) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(var_1.a, _wgslsmith_clamp_u32(~var_1.a, 0u, 55771u))), vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(10078u, var_2.a), abs(var_1.b.a >> (4294967295u % 32u))), var_1.a));
    var var_4 = vec2<bool>(any(!var_1.b.b.yy), ~countOneBits(~u_input.d) == -8654i);
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(11929i, u_input.d), -2147483647i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.c.x, select(select(arg_0.b, !(!arg_0.b), select(vec3<bool>(false, false, arg_0.b.x), vec3<bool>(false, false, true), arg_0.b.x)), vec3<bool>(true, true, any(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true))), select(!(!arg_0.b), arg_0.b, !(!arg_0.b))), arg_0.c, ~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, arg_0.c.x, u_input.d), 0i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-42887i, -2147483647i), vec2<i32>(arg_0.c.x, arg_0.d.x) & vec2<i32>(u_input.a.x, u_input.b))), u_input.c.x);
    var_0 = arg_0;
    let var_1 = ~(-(~1i));
    let var_2 = ~(~(-5116i));
    var_0 = arg_0;
    return Struct_1(19399u, select(vec3<bool>(select(true, func_3(0u, Struct_3(arg_0.a, Struct_1(arg_0.a, var_0.b, vec4<i32>(var_1, -1i, var_0.d.x, var_0.d.x), var_0.c.wy, var_0.e)), 872f, -1000f), true), !any(arg_0.b), false), select(!vec3<bool>(true, var_0.b.x, arg_0.b.x), arg_0.b, arg_0.b), var_0.b), firstTrailingBit(-var_0.c), u_input.a, arg_0.a);
}

fn func_1() -> i32 {
    var var_0 = func_4(Struct_1(73823u, !vec3<bool>(true, true, select(false, true, true)), vec4<i32>(u_input.b, func_2(true, vec3<bool>(true, true, true)), select(_wgslsmith_sub_i32(u_input.a.x, u_input.d), -1i, true), u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -65559i), -u_input.a), 64180u));
    var var_1 = -1i;
    let var_2 = ~_wgslsmith_sub_u32(~(~u_input.e.x), var_0.e) << (_wgslsmith_clamp_u32(~var_0.e, min(_wgslsmith_mult_u32(35141u, select(0u, 4294967295u, var_0.b.x)), u_input.e.x), 4294967295u) % 32u);
    var_0 = Struct_1(13683u, func_4(func_4(Struct_1(var_2, select(var_0.b, var_0.b, true), ~vec4<i32>(u_input.d, u_input.d, 81214i, var_0.d.x), vec2<i32>(var_0.d.x, 19560i), _wgslsmith_clamp_u32(var_2, var_2, u_input.e.x)))).b, var_0.c, var_0.d, ~_wgslsmith_add_u32(var_2, 0u));
    let var_3 = vec4<bool>(func_3(countOneBits(~_wgslsmith_mult_u32(u_input.e.x, 2565u)), Struct_3(~u_input.c.x, Struct_1(~46641u, var_0.b, func_4(Struct_1(u_input.c.x, var_0.b, var_0.c, vec2<i32>(11122i, 1i), var_2)).c, -vec2<i32>(-5944i, 53168i), _wgslsmith_mult_u32(var_0.e, u_input.e.x))), -2876f, _wgslsmith_f_op_f32(f32(-1f) * -507f)), any(vec2<bool>(true, all(vec4<bool>(false, var_0.b.x, false, var_0.b.x)))) | (-27555i <= -u_input.d), true, var_0.b.x);
    return 55233i >> (u_input.e.x % 32u);
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = ~arg_1.wz;
    let var_1 = _wgslsmith_mod_u32(0u, 1u << (reverseBits(_wgslsmith_mult_u32(~u_input.c.x, ~1u)) % 32u));
    var var_2 = arg_2;
    var_2 = arg_2;
    var var_3 = arg_2;
    return arg_2.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a.x, -2147483647i, 17809i, 6327i), vec4<i32>(u_input.d, -24703i, u_input.d, u_input.a.x)) << (u_input.c % vec4<u32>(32u)), func_5(func_1(), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, 22109i, 16901i), vec4<i32>(u_input.a.x, -22358i, 1i, u_input.a.x) >> (vec4<u32>(u_input.e.x, u_input.e.x, 37443u, u_input.e.x) % vec4<u32>(32u))), Struct_2(Struct_1(u_input.c.x, vec3<bool>(false, false, true), vec4<i32>(u_input.a.x, 47875i, 1i, 14551i), u_input.a, u_input.c.x), ~u_input.a, select(u_input.a.x, u_input.a.x, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), true), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.d, u_input.d, u_input.a.x), vec4<i32>(-4697i, 2147483647i, u_input.b, -1i)) >> (~u_input.c % vec4<u32>(32u))));
    var_0 = ~vec4<i32>(-(~(~u_input.d)), var_0.x, func_2(true, !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), u_input.d);
    var var_1 = ~(-51093i);
    var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(select(522f, _wgslsmith_f_op_f32(trunc(596f)), func_4(func_4(func_4(Struct_1(u_input.e.x, vec3<bool>(false, false, false), vec4<i32>(1i, var_0.x, u_input.a.x, u_input.a.x), var_0.zy, u_input.c.x)))).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, -17116i, _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 67314u, u_input.e.x, u_input.e.x), u_input.c)), ~u_input.c) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), ~u_input.c.x), ~_wgslsmith_sub_u32(14504u, u_input.c.x), ~(~58286u)) % 32u), vec4<i32>(47195i, -_wgslsmith_mult_i32(~var_0.x, var_0.x), firstTrailingBit(-16436i), -countOneBits(-2147483647i)));
}

