struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.e.b)), 415f, _wgslsmith_f_op_f32(arg_0.e.b - 1283f), arg_0.e.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0.b.xyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.zxy) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, -177f), vec3<f32>(-181f, var_0.x, 995f))))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -518f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(117f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(var_1.xz));
    let var_3 = true;
    return vec3<i32>(u_input.a, i32(-1i) * -u_input.a, ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, -19192i)), (vec2<i32>(u_input.a, u_input.a) << (arg_0.a.yz % vec2<u32>(32u))) | -vec2<i32>(u_input.a, 1i)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(1u, -918f, true);
    let var_1 = select(_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 6500i, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a)), func_3(Struct_4(vec4<u32>(1u, var_0.a, 0u, var_0.a), vec4<f32>(1332f, 657f, 233f, var_0.b), Struct_2(var_0.a, var_0.b, false), vec4<u32>(36149u, var_0.a, 0u, 4294967295u), Struct_3(var_0.a, var_0.b)), !vec4<bool>(true, true, var_0.c, true))), vec3<i32>(countOneBits(0i), _wgslsmith_mod_i32(0i, -2147483647i), u_input.a | u_input.a) << (countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(363u, var_0.a, var_0.a), vec3<u32>(var_0.a, 82920u, var_0.a))) % vec3<u32>(32u)), !(u_input.a <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 18506i), vec3<i32>(26754i, u_input.a, u_input.a)))) << (vec3<u32>(~_wgslsmith_mult_u32(var_0.a ^ var_0.a, _wgslsmith_mod_u32(var_0.a, 0u)), ~max(22564u, var_0.a), ~1u) % vec3<u32>(32u));
    let var_2 = Struct_5(var_0.c, vec4<f32>(_wgslsmith_f_op_f32(268f - 287f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_div_f32(-461f, 921f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.b)))))), -581f), vec3<i32>(i32(-1i) * -1i, var_1.x, ~abs(-8258i)));
    let var_3 = -vec3<i32>(var_2.c.x, u_input.a, 0i);
    var var_4 = vec4<i32>(1i, firstTrailingBit(func_3(Struct_4(vec4<u32>(var_0.a, 1u, 36860u, 10323u) ^ vec4<u32>(21136u, var_0.a, var_0.a, 4294967295u), _wgslsmith_f_op_vec4_f32(ceil(var_2.b)), Struct_2(1u, 2432f, var_0.c), vec4<u32>(4294967295u, 1u, 4294967295u, 26111u), Struct_3(var_0.a, -2037f)), vec4<bool>(var_0.c, var_2.a, var_2.a, false)).x), u_input.a, -(~(-var_1.x)));
    return var_0.a;
}

fn func_1(arg_0: bool) -> vec4<f32> {
    global0 = true;
    global0 = true;
    global0 = arg_0 && !(!(arg_0 != false) & (1u > func_2()));
    let var_0 = vec4<u32>(~max(0u, 102795u), func_2(), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1539u, 26714u, 66906u, 1u), vec4<u32>(1u, 1u, 20514u, 4294967295u)), 38041u)) << (1u % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 32491u), _wgslsmith_mod_u32(~1u, 4294967295u)), reverseBits(_wgslsmith_mod_u32(72214u, 1u)), 4294967295u));
    var var_1 = Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-889f)), _wgslsmith_f_op_f32(select(-612f, _wgslsmith_div_f32(-128f, 339f), 1i >= u_input.a))))), -342f, ~(-15481i >> (_wgslsmith_dot_vec4_u32(var_0, countOneBits(vec4<u32>(var_0.x, var_0.x, 1u, 40886u))) % 32u)), false);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(select(var_1.a, 1577f, arg_0)))), 1492f), _wgslsmith_f_op_f32(-var_1.b), var_1.b, _wgslsmith_div_f32(var_1.a, 444f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1202f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-860f))))))));
    var var_2 = Struct_4(~reverseBits(vec4<u32>(abs(4294967295u), 1u, 7435u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(52457u, 0u)))), _wgslsmith_f_op_vec4_f32(func_1(var_0)), Struct_2(abs(~(~16482u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1566f + -1631f) * 394f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(143f, 651f, var_0))))), var_0), reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(~46363u, _wgslsmith_f_op_vec4_f32(func_1(any(vec4<bool>(false, var_0, var_0, false)))).x));
    let var_3 = var_2.b;
    var_1 = var_3.x;
    let var_4 = Struct_4(var_2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(782f, -493f, var_2.b.x, var_2.e.b))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(var_3.x)), var_3.x, _wgslsmith_f_op_f32(var_3.x * var_2.b.x), _wgslsmith_f_op_f32(max(-445f, 152f)))))), Struct_2(_wgslsmith_dot_vec2_u32(reverseBits(var_2.a.yw), var_2.a.xz) >> (~min(var_2.d.x, var_2.a.x) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_2.b.x), true), ~(~var_2.d), var_2.e);
    var var_5 = select(_wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.a, 1i) << ((vec2<u32>(var_4.c.a, 4294967295u) >> (var_4.a.zx % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, 1450i), vec2<i32>(abs(u_input.a), u_input.a >> (4294967295u % 32u)))), ~vec2<i32>(u_input.a, countOneBits(0i)) << (~(~vec2<u32>(4294967295u, var_4.a.x)) % vec2<u32>(32u)), all(select(select(!vec2<bool>(var_4.c.c, var_0), vec2<bool>(true, var_0), true), select(vec2<bool>(true, var_2.c.c), !vec2<bool>(var_4.c.c, var_4.c.c), all(vec3<bool>(false, false, var_0))), any(vec2<bool>(var_2.c.c, false)))));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2.d.x)), countOneBits(abs(var_2.a.x)), 30173u);
}

