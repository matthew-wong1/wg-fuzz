struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: f32 = 425f;

var<private> global3: u32 = 1u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<bool>) -> u32 {
    let var_0 = true;
    global1 = array<Struct_2, 22>();
    global3 = ~u_input.d.x;
    global3 = ~max(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), 1u);
    global2 = _wgslsmith_f_op_f32(ceil(-1403f));
    return u_input.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_3 {
    global1 = array<Struct_2, 22>();
    let var_0 = ~u_input.e.x <= ~1i;
    global0 = array<vec4<u32>, 21>();
    var var_1 = arg_2.x;
    var var_2 = ~vec4<u32>((u_input.d.x ^ 1u) >> (select(~u_input.d.x, func_3(Struct_4(u_input.e.yww), u_input.d.x, vec4<bool>(true, false, true, false)), true) % 32u), 0u, arg_3, abs(~45726u));
    return Struct_3(Struct_1(~(~select(global0[_wgslsmith_index_u32(arg_3, 21u)], vec4<u32>(arg_3, 91108u, u_input.c, var_2.x), vec4<bool>(false, false, var_0, var_0))), vec2<u32>(var_2.x, u_input.c)), reverseBits(u_input.b.x), global1[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(f32(-1f) * -1520f), Struct_1(vec4<u32>(40323u, 21883u | _wgslsmith_sub_u32(arg_3, arg_3), arg_3, ~0u), u_input.d));
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -886f, 2105f), vec3<f32>(105f, -1809f, 870f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-592f, 226f, -1086f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, -642f, 189f) - vec3<f32>(1333f, -1000f, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-349f, -1000f, 150f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1153f, 518f)) + -698f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-201f + -356f), -264f), _wgslsmith_f_op_f32(f32(-1f) * -1070f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1482f + -845f), 919f, -738f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(944f, 760f, 1592f))) + vec3<f32>(407f, -949f, 908f))))), 29217u);
    let var_1 = Struct_2(Struct_1(firstTrailingBit(~firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.d.x, var_0.e.b.x))), vec2<u32>(1u, 0u)), func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.d, -1000f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 1000f, var_0.d) - vec3<f32>(486f, -1592f, 907f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, var_0.d, var_0.d), vec3<f32>(var_0.d, var_0.d, var_0.d)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2450f, var_0.d, var_0.d) * vec3<f32>(-436f, 542f, -485f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d, 906f, -2500f), vec3<f32>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-728f, var_0.d, 438f), vec3<f32>(-818f, 1376f, -339f))) + vec3<f32>(1000f, -786f, -1124f)), vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))))), ~(~u_input.d.x)).c.c, Struct_1(vec4<u32>(countOneBits(1u), u_input.c, u_input.c, 30198u) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 30744u, 119072u, 1101u), global0[_wgslsmith_index_u32(1u, 21u)], vec4<u32>(20050u, u_input.d.x, var_0.c.a.b.x, u_input.c)) % vec4<u32>(32u)), abs(vec2<u32>(~u_input.d.x, 4294967295u >> (var_0.a.a.x % 32u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 1031f, 1000f, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1051f, -187f, var_0.d, -172f) + vec4<f32>(152f, var_0.d, -161f, var_0.d))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d, 508f, var_0.d, -215f))))))));
    var var_3 = !(_wgslsmith_f_op_f32(abs(780f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d + var_0.d)))));
    global2 = 1053f;
    return ~(~(~20549u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i << (_wgslsmith_add_u32(~45744u, func_1()) % 32u);
    let var_1 = Struct_4(~u_input.e.yxw);
    var_0 = var_1.a.x;
    var var_2 = func_2(vec3<f32>(-1269f, _wgslsmith_f_op_f32(select(-113f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(190f, 409f)))), false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-929f - -185f) * _wgslsmith_div_f32(-836f, -778f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(-1000f + 2506f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(2242f, -1396f)), -1503f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f - -262f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(470f, 1294f) - 1061f))), _wgslsmith_f_op_f32(-208f * -353f)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-971f, 191f)), 386f))), -675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(364f, -1056f))) + 1024f)), _wgslsmith_mod_u32(abs(1u), u_input.c << (select(0u, abs(u_input.c), any(vec4<bool>(false, true, true, true))) % 32u)));
    var var_3 = _wgslsmith_add_u32(abs(var_2.e.a.x), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(abs(~4294967295u), 21u)] << (vec4<u32>(var_2.c.c.b.x, 6034u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.c), var_2.c.c.a.zxx), var_2.e.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(20277u, 21u)], ~vec4<u32>(var_2.a.b.x, u_input.d.x, 1u, var_2.c.a.a.x))));
    let var_4 = Struct_3(var_2.c.b, 1i, Struct_2(var_2.c.a, func_2(vec3<f32>(var_2.d, _wgslsmith_f_op_f32(-var_2.d), -2018f), vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(round(var_2.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, var_2.d, -1832f), vec3<f32>(var_2.d, var_2.d, -1493f))), max(u_input.c, var_2.c.b.a.x)).a, Struct_1(global0[_wgslsmith_index_u32(u_input.c | _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(56552u, 21u)], vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 41490u)), 21u)], ~(vec2<u32>(28290u, u_input.d.x) ^ var_2.c.c.a.zw))), var_2.d, var_2.e);
    var var_5 = vec3<f32>(_wgslsmith_div_f32(var_4.d, var_2.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d + 779f) * -201f)) + func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(129f, -509f, var_4.d) - vec3<f32>(var_4.d, var_4.d, 462f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1952f, var_4.d, -728f) - vec3<f32>(var_2.d, -586f, var_2.d))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1569f, var_4.d, var_2.d) - vec3<f32>(var_4.d, 1188f, var_4.d)), _wgslsmith_div_vec3_f32(vec3<f32>(var_4.d, var_4.d, var_4.d), vec3<f32>(var_4.d, -1000f, var_2.d)))), func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.d, -666f, -889f))), _wgslsmith_div_vec3_f32(vec3<f32>(1578f, -1000f, -1095f), vec3<f32>(var_2.d, var_2.d, var_4.d)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 245f, var_2.d), vec3<f32>(var_4.d, var_2.d, var_2.d))), ~var_4.e.b.x).c.b.b.x).d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(22454i, -countOneBits(var_1.a.x)), vec2<i32>(~(-2387i), _wgslsmith_clamp_i32(-19576i, _wgslsmith_mod_i32(-3012i, u_input.e.x), i32(-1i) * -21378i))), var_1.a.x ^ -1i, _wgslsmith_f_op_f32(trunc(391f)), ~var_4.e.a.xzx);
}

