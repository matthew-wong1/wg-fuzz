struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> vec3<bool> {
    global1 = _wgslsmith_f_op_f32(-arg_1.b);
    var var_0 = firstLeadingBit(arg_1.c);
    return vec3<bool>(any(arg_1.d), 12725i > _wgslsmith_mod_i32(47243i, u_input.a.x), arg_1.d.x);
}

fn func_2() -> f32 {
    let var_0 = 0u;
    let var_1 = Struct_3(-32261i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f - 482f) * -587f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1433f), _wgslsmith_f_op_f32(min(1502f, -980f)), false))))), u_input.a.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 14658u), vec2<u32>(1u, 1u)) | ~vec2<u32>(4294967295u, 6738u), vec2<u32>(~1u, 0u)) % 32u), select(func_3(Struct_5(var_0, _wgslsmith_f_op_f32(-254f * -868f)), Struct_3(~2147483647i, _wgslsmith_f_op_f32(floor(-342f)), u_input.a.x, select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))), func_3(Struct_5(reverseBits(var_0), 1000f), Struct_3(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -472f), _wgslsmith_mult_i32(-43853i, u_input.a.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), true));
    var var_2 = Struct_5(0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1108f, 1410f)), _wgslsmith_f_op_f32(1f + -885f)) * _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), var_1.b)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b), -273f)) - 287f))));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(round(var_1.b))))) * 1669f)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(min(var_1.b, 154f))) * _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1085f, _wgslsmith_f_op_f32(abs(var_2.b))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), 871f))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    var var_0 = 4294967295u;
    var var_1 = -1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-237f * _wgslsmith_f_op_f32(abs(766f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-609f)) + _wgslsmith_f_op_f32(1000f * -638f)) + _wgslsmith_f_op_f32(min(265f, -773f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-2074f * _wgslsmith_f_op_f32(func_2()))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, -490f, -1065f, 592f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(539f, -373f, 648f, 621f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(362f, -549f, -457f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(448f, 1000f, 282f, -1000f), vec4<f32>(636f, -3937f, 1293f, 596f)))))));
    var_1 = ~arg_3;
    let var_3 = vec2<f32>(-1506f, var_2.x);
    return Struct_4(arg_0);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: i32) -> vec2<bool> {
    return func_3(Struct_5(~(~(~1u)), -1000f), global0[_wgslsmith_index_u32(3354u, 30u)]).zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(_wgslsmith_clamp_u32(0u, abs(0u), ~(~6768u)), 4294967295u);
    var var_1 = select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, false), false), select(!func_4(vec4<u32>(1u, 1u, 1u, 1u), ~vec3<u32>(4294967295u, 0u, 4294967295u), func_1(Struct_1(u_input.a.x, u_input.a.x, u_input.a.zzw, 4294967295u), 4294967295u, Struct_2(vec3<i32>(1i, u_input.a.x, 2147483647i), vec3<bool>(false, true, false), Struct_1(14837i, -9140i, u_input.a.zxy, 1u)), 2147483647i), _wgslsmith_clamp_i32(-2740i, -31934i, u_input.a.x)), !vec2<bool>(true, all(vec4<bool>(true, false, true, true))), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true))), !(!func_4(~vec4<u32>(0u, 36069u, 28519u, 0u), ~vec3<u32>(33526u, 56755u, 10163u), Struct_4(Struct_1(1i, 46455i, u_input.a.wyy, 4294967295u)), countOneBits(-54519i))));
    var_0 = ~(~(~(1u << (_wgslsmith_div_u32(0u, 1u) % 32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(377f, 534f, -207f) - vec3<f32>(-213f, -1300f, -2378f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(801f, 916f, -347f) * vec3<f32>(-2770f, -2329f, 436f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, 682f, -812f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1285f, _wgslsmith_f_op_f32(969f + 115f), _wgslsmith_f_op_f32(select(-710f, 1000f, false))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, -459f, -118f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-437f, 1000f, 2314f) * vec3<f32>(-834f, -1000f, -1198f)))))));
    let var_3 = func_1(Struct_1(u_input.a.x, _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-8085i, u_input.a.x, u_input.a.x), u_input.a.wwz), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 19889i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x))), u_input.a.yzz << (_wgslsmith_clamp_vec3_u32(vec3<u32>(20392u, 56799u, 16078u), reverseBits(vec3<u32>(27002u, 0u, 1u)), vec3<u32>(0u, 4163u, 24969u)) % vec3<u32>(32u)), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 15587u)), ~vec2<u32>(1u, 0u))), 28647u, Struct_2(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, select(-1i, 1i, var_1.x))), !vec3<bool>(true, var_1.x, true), func_1(Struct_1(1i, -u_input.a.x, u_input.a.yzz | vec3<i32>(-21705i, -5885i, u_input.a.x), select(17903u, 4294967295u, true)), 1u, Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), !vec3<bool>(false, true, var_1.x), func_1(Struct_1(-1i, u_input.a.x, u_input.a.yxw, 0u), 44233u, Struct_2(u_input.a.xxw, vec3<bool>(false, var_1.x, true), Struct_1(1i, u_input.a.x, u_input.a.zxy, 37076u)), 2147483647i).a), u_input.a.x).a), ~max(func_1(Struct_1(-2147483647i, -1i, vec3<i32>(-1i, 0i, 1i), 1u), ~1u, Struct_2(vec3<i32>(u_input.a.x, -26487i, -1i), vec3<bool>(var_1.x, var_1.x, var_1.x), Struct_1(u_input.a.x, u_input.a.x, vec3<i32>(67691i, 1i, -34262i), 0u)), _wgslsmith_clamp_i32(-1i, 4446i, -184i)).a.a, i32(-1i) * -2147483647i));
    let var_4 = Struct_4(func_1(func_1(var_3.a, ~var_3.a.d, Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(15998i, 17899i, -2147483647i), u_input.a.wwz, vec3<i32>(u_input.a.x, 42064i, var_3.a.c.x)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, var_1.x), var_1.x), Struct_1(u_input.a.x, u_input.a.x, vec3<i32>(-1i, u_input.a.x, 0i), 29688u)), 1i).a, var_3.a.d, Struct_2(~var_3.a.c, !vec3<bool>(var_1.x, true, false), func_1(func_1(Struct_1(var_3.a.c.x, 14158i, vec3<i32>(2147483647i, var_3.a.a, -6287i), 28638u), var_3.a.d, Struct_2(vec3<i32>(1i, u_input.a.x, -29635i), vec3<bool>(var_1.x, var_1.x, var_1.x), var_3.a), u_input.a.x).a, ~1u, Struct_2(var_3.a.c, vec3<bool>(false, var_1.x, var_1.x), Struct_1(u_input.a.x, var_3.a.b, var_3.a.c, 4294967295u)), 0i).a), 93672i).a);
    var var_5 = 0i;
    var var_6 = vec4<i32>(-2147483647i, u_input.a.x, ~u_input.a.x, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(abs(0i)), var_4.a.a, 1i, min(-var_4.a.a, 34943i)), vec4<i32>(firstLeadingBit(-23701i), u_input.a.x, 1i, _wgslsmith_mod_i32(-1i, -2147483647i)) >> (~(~vec4<u32>(69442u, var_3.a.d, var_4.a.d, var_3.a.d)) % vec4<u32>(32u))), 7936u, ~vec3<u32>(var_3.a.d, var_3.a.d, 76733u) ^ vec3<u32>(func_1(Struct_1(-54967i, var_6.x, var_4.a.c, var_3.a.d), ~var_4.a.d, Struct_2(vec3<i32>(8291i, var_3.a.c.x, u_input.a.x), vec3<bool>(false, var_1.x, true), Struct_1(var_3.a.a, 80569i, u_input.a.xwz, var_4.a.d)), 22080i).a.d, var_4.a.d, ~44499u));
}

