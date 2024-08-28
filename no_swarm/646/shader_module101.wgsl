struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(true, Struct_2(vec4<bool>(true, false, true, false))), Struct_4(true, Struct_2(vec4<bool>(true, false, false, true))), Struct_4(false, Struct_2(vec4<bool>(true, false, false, false))), Struct_4(true, Struct_2(vec4<bool>(false, true, true, false))), Struct_4(false, Struct_2(vec4<bool>(true, false, true, false))), Struct_4(true, Struct_2(vec4<bool>(true, true, false, true))), Struct_4(true, Struct_2(vec4<bool>(false, true, false, true))), Struct_4(true, Struct_2(vec4<bool>(false, false, false, false))), Struct_4(true, Struct_2(vec4<bool>(true, true, false, false))), Struct_4(false, Struct_2(vec4<bool>(false, true, false, false))), Struct_4(true, Struct_2(vec4<bool>(true, true, true, false))), Struct_4(true, Struct_2(vec4<bool>(true, false, true, true))), Struct_4(false, Struct_2(vec4<bool>(false, true, false, false))), Struct_4(true, Struct_2(vec4<bool>(false, true, false, false))), Struct_4(true, Struct_2(vec4<bool>(false, false, false, true))));

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, false, false, true));

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, true, false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec3<bool> {
    global1 = Struct_2(vec4<bool>(!select(true, global1.a.x & true, arg_2.x && false), arg_2.x, any(select(vec2<bool>(false, arg_2.x), select(vec2<bool>(true, false), arg_0.a.xx, global1.a.x), arg_0.a.wx)), ~(~4294967295u) != u_input.e));
    global0 = array<Struct_4, 15>();
    let var_0 = -2147483647i;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2075f, arg_1.x, 1243f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-174f, arg_1.x, -602f) - vec3<f32>(-1108f, -993f, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1427f, -1000f) - vec3<f32>(arg_1.x, 378f, 554f))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))) + vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-1631f - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -276f)))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.x, arg_1.x) * vec3<f32>(arg_1.x, arg_1.x, 1190f)))))), arg_0, vec4<u32>(4981u, u_input.e, u_input.e, 1u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-227f, arg_1.x, arg_1.x, -828f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, 854f, arg_1.x, 995f)))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-228f, 177f, arg_1.x, arg_1.x)))))));
    return vec3<bool>(false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, global1.a.x, arg_0.a.x, true), !vec4<bool>(false, false, global1.a.x, var_1.d.a.x)), !select(global1.a, arg_2, false), vec4<bool>(all(global1.a), true, false, any(vec4<bool>(arg_2.x, arg_2.x, true, global1.a.x))))), select(any(!var_1.d.a), all(select(select(var_1.d.a.zwx, vec3<bool>(false, false, false), vec3<bool>(false, false, arg_2.x)), !global1.a.yxz, any(arg_2))), !select(u_input.e < var_1.e.x, arg_2.x, !global1.a.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    var var_0 = Struct_2(select(!select(!arg_0.b.a, global1.a, vec4<bool>(true, global1.a.x, global1.a.x, arg_0.a)), select(arg_0.b.a, vec4<bool>(true, arg_0.a & true, any(vec3<bool>(global1.a.x, arg_1.x, false)), arg_1.x), !any(arg_1)), false));
    var_0 = Struct_2(var_0.a);
    var var_1 = max(-(~u_input.d), u_input.d) ^ vec4<i32>(u_input.c.x, _wgslsmith_div_i32(-21087i, u_input.a), _wgslsmith_clamp_i32(~firstTrailingBit(u_input.b.x), ~2147483647i >> ((u_input.e ^ arg_3) % 32u), countOneBits(u_input.a)), ~(~1i & ~u_input.c.x));
    let var_2 = Struct_4(global1.a.x && func_3(Struct_2(vec4<bool>(true, arg_0.b.a.x, var_0.a.x, arg_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, -1275f) + _wgslsmith_f_op_vec2_f32(arg_2.a.zy + arg_2.a.zx)), select(var_0.a, arg_0.b.a, arg_0.b.a)).x, Struct_2(var_0.a));
    var var_3 = select(select(arg_1, vec3<bool>(all(select(vec4<bool>(true, arg_1.x, true, arg_0.b.a.x), vec4<bool>(true, false, var_2.b.a.x, true), var_0.a.x)), _wgslsmith_f_op_f32(trunc(arg_2.a.x)) != -1790f, !(var_1.x >= -1i)), global1.a.yzw), func_3(global2[_wgslsmith_index_u32(~6205u, 12u)], arg_2.a.zz, var_2.b.a), var_0.a.yyz);
    return var_0.a.zzw;
}

fn func_2() -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-214f * _wgslsmith_f_op_f32(f32(-1f) * -2501f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1390f + 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(115f, 694f))), 202f, 1000f);
    var var_1 = var_0.x;
    let var_2 = select(!vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(any(func_4(Struct_4(global1.a.x, global2[_wgslsmith_index_u32(u_input.e, 12u)]), func_3(Struct_2(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true)), var_0.yx, vec4<bool>(global1.a.x, false, false, global1.a.x)), Struct_1(var_0.zzx), ~u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))) == _wgslsmith_f_op_f32(f32(-1f) * -139f)), vec2<bool>(false, global1.a.x));
    global2 = array<Struct_2, 12>();
    return _wgslsmith_f_op_vec2_f32(var_0.xy + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.yy + vec2<f32>(-488f, var_0.x)))) + var_0.wy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1467f, var_0.x), vec2<f32>(348f, -800f))) * vec2<f32>(var_0.x, -1000f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wz) - vec2<f32>(var_0.x, var_0.x)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_2());
    global2 = array<Struct_2, 12>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(round(590f)), _wgslsmith_f_op_f32(sign(497f)))));
    let var_3 = vec4<u32>(u_input.e, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 17179u, 9022u, u_input.e)), vec4<u32>(u_input.e, 36169u, u_input.e, u_input.e)), u_input.e | u_input.e), u_input.e, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.e, u_input.e, 1u, 89601u) ^ vec4<u32>(u_input.e, u_input.e, 111339u, u_input.e)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.e, 58976u, 0u) ^ ~vec4<u32>(1u, u_input.e, 29860u, u_input.e), min(~vec4<u32>(u_input.e, 4294967295u, 23940u, 16415u), vec4<u32>(0u, u_input.e, 41336u, u_input.e)))));
    return Struct_1(vec3<f32>(var_2.a.x, -1275f, 652f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 12>();
    let var_0 = abs(u_input.d.yz);
    var var_1 = func_1(vec3<bool>(!(!select(global1.a.x, false, global1.a.x)), global1.a.x, true), vec2<i32>(_wgslsmith_add_i32(11339i, _wgslsmith_clamp_i32(~0i, var_0.x, ~var_0.x)), -1i), global1.a.zzy, global1.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) + var_1.a.x), _wgslsmith_f_op_f32(1045f * _wgslsmith_f_op_f32(round(1091f))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1644f * var_1.a.x)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_2.yzy)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -173f), var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1313f))) - 256f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1223f, -653f), _wgslsmith_f_op_f32(-797f + var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(var_1.a.x, 582f, -304f, -263f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.x, -1524f, 350f, -1755f), var_2)))), vec4<bool>(global1.a.x | global1.a.x, false, true, true))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1715f, var_3.x)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f + 486f) * _wgslsmith_f_op_f32(var_3.x * var_2.x))), _wgslsmith_f_op_f32(exp2(var_3.x))), _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(ceil(var_3.x)))));
}

