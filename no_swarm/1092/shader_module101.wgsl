struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-319f, 1958f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    let var_0 = Struct_1(~vec2<u32>(~(~20646u), ~firstTrailingBit(11393u)));
    var var_1 = vec3<bool>(any(vec4<bool>(true, false, true, !(1i > u_input.a.x))), !(~_wgslsmith_div_u32(var_0.a.x, var_0.a.x) < 41980u), u_input.a.x < u_input.a.x);
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(~var_0.a >> (var_0.a % vec2<u32>(32u)), ~vec2<u32>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 818f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -256f)))), vec2<f32>(_wgslsmith_f_op_f32(-188f - _wgslsmith_f_op_f32(-156f - 1220f)), -596f))), var_0.a, -(~u_input.a.x), any(!select(!var_1.xz, select(var_1.zy, vec2<bool>(var_1.x, var_1.x), var_1.x), false)));
    var var_3 = Struct_2(Struct_1(~var_2.c), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a, 1000f))), ~abs(vec2<u32>(var_0.a.x, var_0.a.x & var_2.a.a.x)), _wgslsmith_mod_i32(var_2.d, var_2.d >> (var_2.c.x % 32u)), var_1.x);
    let var_4 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.a.x, var_0.a.x), max(vec2<u32>(var_2.a.a.x, 4294967295u) & vec2<u32>(1u, var_3.c.x), var_3.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1804f, -1515f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(245f, 545f), var_3.b)))), vec2<u32>(abs(9678u), firstTrailingBit(~(~var_0.a.x))), 4214i, (any(var_1.zx) && true) & var_2.e);
    return var_1.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    var var_0 = select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, func_3())), vec3<bool>((_wgslsmith_f_op_f32(min(-1121f, arg_0.x)) != arg_1.x) != false, true, true & all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1310f)))), -1035f);
    var_0 = vec3<bool>(all(!select(!vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, false, false, var_0.x))), !var_0.x, -305f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-780f)), _wgslsmith_f_op_f32(-var_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(531f, global0.b), var_1.x, global0.a, _wgslsmith_f_op_f32(var_1.x + -207f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, arg_1.x, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-217f, arg_0.x, arg_1.x, -1734f))))))) - vec4<f32>(-631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -568f) * -398f)), -1644f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.x, -1793f)))));
    var var_3 = _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(arg_2.a.x, ~59478u, select(arg_2.a.x, arg_2.a.x, true)), 1u, arg_3), vec3<u32>(arg_2.a.x, _wgslsmith_clamp_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 51657u))), ~arg_3, 6675u), 4294967295u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2, vec4<f32>(-288f, var_2.x, var_2.x, var_2.x))))))) + vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(sign(1173f)))) * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> vec2<u32> {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b, 383f, 1143f), vec3<f32>(arg_2.b.x, arg_2.b.x, arg_1.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.b.x, -1482f, 554f), vec3<f32>(arg_2.b.x, 941f, arg_2.b.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-391f)), _wgslsmith_f_op_f32(arg_1.b - arg_2.b.x), _wgslsmith_f_op_f32(-182f + -583f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, 562f))))), Struct_1(vec2<u32>(select(~arg_2.c.x, ~arg_2.a.a.x, false), 99723u)), 4998u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32((arg_2.a.a >> (vec2<u32>(arg_2.a.a.x, 60428u) % vec2<u32>(32u))) << (select(arg_2.c, arg_2.a.a, vec2<bool>(arg_3, arg_2.e)) % vec2<u32>(32u)), ~vec2<u32>(41838u, arg_2.a.a.x))), _wgslsmith_f_op_vec2_f32(select(arg_2.b, arg_2.b, func_3())), _wgslsmith_add_vec2_u32(~(~firstTrailingBit(arg_2.c)), ~arg_2.c), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, 5327i, -11509i)), u_input.a.wzz), func_3());
    let var_2 = vec3<bool>(!var_1.e, !(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(arg_1.a - var_0.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), any(select(select(vec2<bool>(true, false), vec2<bool>(var_1.e, false), vec2<bool>(false, var_1.e)), !vec2<bool>(arg_3, arg_2.e), select(vec2<bool>(false, arg_3), vec2<bool>(arg_2.e, var_1.e), false))) & any(vec4<bool>(!arg_2.e, true, true, true)));
    let var_3 = -333f;
    return ~vec2<u32>(_wgslsmith_add_u32(min(arg_2.c.x & arg_2.a.a.x, select(1u, 1u, arg_2.e)), 0u), var_1.c.x);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1668f, -1079f, 142f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 692f, global0.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2961f, _wgslsmith_f_op_f32(-656f - global0.a), _wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(268f, -428f, global0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(830f, -1008f, global0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(572f, global0.b, -488f) * vec3<f32>(1016f, -622f, global0.a)), Struct_1(arg_0.a), firstLeadingBit(arg_0.a.x))).yxx) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b, global0.b, global0.a))))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(529f + var_0.x))) + global0.a)), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(global0.b, global0.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b, 2415f)), var_0.x)))));
    let var_2 = arg_0;
    var var_3 = Struct_1(countOneBits(~reverseBits(arg_0.a)) >> (_wgslsmith_add_vec2_u32(reverseBits(max(arg_0.a, vec2<u32>(0u, 20956u))), ~(~arg_0.a)) % vec2<u32>(32u)));
    let var_4 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return Struct_2(arg_0, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-625f - _wgslsmith_f_op_f32(355f * -1485f)))), 801f), ~vec2<u32>(_wgslsmith_sub_u32(~var_2.a.x, 4294967295u), firstTrailingBit(var_2.a.x)), _wgslsmith_mod_i32(u_input.a.x, abs(-56651i) ^ ~u_input.a.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b))))));
    let var_0 = func_4(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(71840u, 4294967295u), func_1(Struct_3(-1771f, global0.b), Struct_3(global0.a, -1376f), Struct_2(Struct_1(vec2<u32>(0u, 0u)), vec2<f32>(global0.a, -251f), vec2<u32>(12938u, 4294967295u), u_input.a.x, false), true)), ~_wgslsmith_div_vec2_u32(vec2<u32>(26082u, 0u), vec2<u32>(52947u, 1u)))));
    let var_1 = select(select(!(!vec4<bool>(var_0.e, true, false, var_0.e)), !(!vec4<bool>(true, false, var_0.e, var_0.e)), var_0.e), vec4<bool>(var_0.e, false, !(_wgslsmith_dot_vec3_i32(vec3<i32>(-5765i, var_0.d, 33792i), u_input.a.zww) <= -8952i), func_4(var_0.a).e), !(!(!vec4<bool>(var_0.e, true, var_0.e, true))));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, 1425f, global0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -643f, var_0.b.x) - vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), func_4(var_0.a).a, ~(~77934u))).x), 678f);
    var var_2 = ~firstTrailingBit(vec3<u32>(13952u, 11854u, var_0.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, 0i, 59717i), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1437f, _wgslsmith_f_op_f32(f32(-1f) * -645f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2402f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1626f)) - _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(select(var_0.b.x, 1669f, var_0.e))))), 1u);
}

