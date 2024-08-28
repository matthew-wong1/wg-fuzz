struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 303f, -116f), global0[_wgslsmith_index_u32(4455u, 32u)], vec4<bool>(true, false, false, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -242f, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-arg_0), -434f, arg_0)), 948f, u_input.c << (~u_input.c % vec3<u32>(32u)), true);
    var var_1 = var_0;
    var_1 = Struct_1(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0)))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b, arg_0), _wgslsmith_f_op_f32(-arg_0), var_0.d)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)), _wgslsmith_f_op_f32(trunc(arg_0)), all(vec2<bool>(false, u_input.e != 19024i)))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_0.c, u_input.c), ~u_input.c), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, 1u, 1u), reverseBits(var_0.c))), abs(countOneBits(~var_1.c))), var_1.d);
    var var_2 = 17919u;
    var_2 = ~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, ~u_input.c.x, abs(1171u)), vec3<u32>(min(var_1.c.x, 12282u), firstLeadingBit(var_0.c.x), 0u)));
    return ~abs(firstTrailingBit(41524u) >> (13388u % 32u));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = ~(~select(func_3(_wgslsmith_f_op_f32(min(-217f, 429f))), ~firstLeadingBit(4294967295u), true));
    let var_1 = arg_2;
    global0 = array<vec4<f32>, 32>();
    let var_2 = 22369i;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-605f)), -541f, all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2679f, -2531f)))), -343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(154f * -1304f) - 402f)), 928f), 1f, ~select(vec3<u32>(u_input.a, 1u, arg_0), u_input.c, !(!vec3<bool>(arg_1.x, false, false))), ~_wgslsmith_mod_u32(u_input.c.x, 0u) == var_1.x);
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(476f, 465f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(443f, 699f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b + 352f) * var_3.a.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = abs(countOneBits(((u_input.b.xz | vec2<i32>(-43936i, 34319i)) >> (~vec2<u32>(u_input.a, arg_2.c.x) % vec2<u32>(32u))) << (abs(~u_input.c.xx) % vec2<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_2.b), arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.b), -385f), arg_2.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-arg_2.b), any(vec2<bool>(true, arg_1)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-774f * 1111f) + arg_0.x)))), arg_2.c, true);
    let var_2 = !vec3<bool>(var_1.d, true == !all(vec4<bool>(false, true, arg_1, arg_2.d)), _wgslsmith_f_op_f32(sign(1000f)) <= 575f);
    var_0 = vec2<i32>(-46710i, 51619i);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(1536f, arg_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(var_1.b + 1334f), _wgslsmith_f_op_f32(select(-484f, arg_2.b, var_2.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), 1488f, var_1.a.x, var_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-925f + arg_0.x)), vec3<u32>(0u, _wgslsmith_sub_u32(0u, var_1.c.x), arg_2.c.x << (16677u % 32u)), var_1.d);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.a.ywx)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.wxw, vec3<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -903f))) - _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2(arg_0.c.x & 1u, !vec2<bool>(true, arg_0.d), reverseBits(vec3<u32>(arg_0.c.x, arg_0.c.x, 1u)))))), any(select(!vec3<bool>(false, true, arg_1.x), !vec3<bool>(true, arg_1.x, false), any(vec4<bool>(false, true, false, arg_0.d)))), Struct_1(arg_0.a, 1251f, vec3<u32>(102113u, abs(9526u), _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(arg_0.c.x, arg_0.c.x, u_input.a))), any(arg_2)))));
    var var_1 = true;
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.b), _wgslsmith_f_op_f32(-376f + arg_0.b)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-1478f, _wgslsmith_f_op_f32(-arg_0.b), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x)))), _wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) - 420f)), _wgslsmith_div_vec3_u32(arg_0.c, arg_0.c), !select(select(all(arg_2), true, arg_0.d), arg_1.x, arg_2.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) + var_2.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, var_0.x, 1000f, -757f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1140f, arg_0.b, 880f, -885f), arg_0.a)), false)))), 1175f, vec3<u32>(u_input.a, ~min(25101u, firstTrailingBit(20668u)), ~select(arg_0.c.x, ~u_input.c.x, true)), true);
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_2(func_3(arg_0.a.x), arg_1, countOneBits(abs(vec3<u32>(1u, 4294967295u, var_3.c.x))))).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), 604f))));
    return ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c, arg_0.c, var_2.c), vec3<u32>(arg_0.c.x, (27574u | arg_0.c.x) ^ ~1u, ~(~arg_0.c.x)), ~arg_0.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a))), _wgslsmith_f_op_f32(-arg_0.a.x), vec3<u32>(~_wgslsmith_sub_u32(14982u, ~arg_1.c.x), arg_1.c.x, _wgslsmith_div_u32(max(4294967295u, min(40512u, arg_1.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(84567u, arg_0.c.x), vec2<u32>(u_input.a, 1u)) & arg_1.c.x)), all(!vec2<bool>(arg_0.d && true, any(vec2<bool>(arg_1.d, arg_1.d)))));
    let var_1 = 35084i;
    var var_2 = any(select(!(!select(vec4<bool>(true, arg_1.d, false, arg_0.d), vec4<bool>(true, false, true, true), vec4<bool>(true, var_0.d, true, false))), !select(select(vec4<bool>(false, false, var_0.d, arg_0.d), vec4<bool>(false, arg_0.d, false, false), vec4<bool>(arg_1.d, false, true, true)), !vec4<bool>(arg_1.d, var_0.d, var_0.d, arg_0.d), var_0.d), vec4<bool>(false, false, arg_1.d, any(!vec2<bool>(false, arg_1.d)))));
    var var_3 = var_0;
    var var_4 = Struct_1(var_0.a, _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-498f + -1000f) - -614f)))), countOneBits(vec3<u32>(select(63559u, 1u, false), ~var_0.c.x, arg_0.c.x | 1u) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 6167u, 4294967295u), ~vec3<u32>(arg_1.c.x, arg_0.c.x, var_0.c.x))), arg_1.d);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.a.zxy))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(1424f - 964f), _wgslsmith_f_op_f32(var_0.a.x * -1388f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 32>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(u_input.a, 32u)], -817f, u_input.c, all(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), false, true, any(vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b, -908f, var_0.b) * _wgslsmith_div_vec4_f32(var_0.a, var_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x - -704f), _wgslsmith_f_op_f32(max(1760f, -336f)))), vec3<u32>(28758u, 4294967295u, 52658u) >> (func_1(Struct_1(vec4<f32>(var_0.b, -1030f, -768f, var_0.b), var_0.a.x, var_0.c, var_0.d), vec2<bool>(var_0.d, false), vec2<bool>(true, var_0.d)) % vec3<u32>(32u)), all(select(vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, true)))), Struct_1(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(max(u_input.a, 4294967295u), 32u)] + _wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(-1227f, -1000f, -600f, -142f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), abs(firstTrailingBit(vec3<u32>(var_0.c.x, u_input.c.x, u_input.a))), false))));
}

