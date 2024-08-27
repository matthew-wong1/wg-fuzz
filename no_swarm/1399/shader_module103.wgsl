struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-465f - -624f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1382f, 664f, true))))), arg_0.d.x, true, vec4<bool>(any(arg_1.zxy), all(select(vec2<bool>(arg_0.c, arg_1.x), vec2<bool>(arg_0.d.x, false), any(arg_0.d.wyx))), true, arg_0.d.x));
    var var_1 = 30932i;
    var var_2 = Struct_2(reverseBits(abs(vec4<u32>(_wgslsmith_mod_u32(0u, 57785u), _wgslsmith_mult_u32(u_input.b, u_input.a), u_input.b, u_input.a))), _wgslsmith_f_op_f32(var_0.a * 112f), true, var_0.b);
    let var_3 = u_input.c;
    var_1 = 16179i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(-222f, -234f, false))), _wgslsmith_f_op_f32(-668f * 549f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(512f, true, false, vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, true))))), 465f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1313f, 317f, -201f, -961f), vec4<f32>(1154f, 539f, -988f, -1440f), vec4<bool>(true, true, false, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-535f, -370f, -732f, 718f), vec4<f32>(-2451f, -408f, -1862f, 664f), vec4<bool>(false, false, true, false))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1181f, 1618f, 283f, 1044f), vec4<f32>(1000f, -1854f, -249f, -387f), false))))));
    var var_1 = Struct_3(Struct_2(abs(vec4<u32>(51151u, 20718u, u_input.a, u_input.b) & vec4<u32>(4294967295u, 1377u, u_input.a, u_input.a)) << (~(vec4<u32>(u_input.b, u_input.b, 59265u, u_input.b) | vec4<u32>(u_input.a, 1u, 1u, u_input.a)) % vec4<u32>(32u)), var_0.x, false, false), Struct_2(_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, u_input.b, u_input.a, u_input.b)), max(vec4<u32>(26857u, u_input.b, 16567u, 0u), ~vec4<u32>(1u, 70015u, 4294967295u, u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1641f))))), (true | any(vec4<bool>(false, true, false, false))) & select(select(true, true, false), u_input.a != u_input.b, all(vec3<bool>(false, false, true))), !(!(u_input.e != 1i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, false, true, vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, true))))) - 617f), false, !all(vec2<bool>(true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))));
    let var_2 = Struct_3(var_1.b, var_1.a, Struct_1(718f, false, var_1.a.d, !vec4<bool>(true, false, true, any(var_1.c.d))));
    var_0 = vec4<f32>(844f, var_1.c.a, _wgslsmith_div_f32(var_0.x, 1000f), _wgslsmith_f_op_f32(679f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.b))))));
    var_1 = var_2;
    return 4294967295u;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_3(Struct_2(~firstLeadingBit(arg_2.a) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(108646u, arg_2.a.x), arg_3.b.a.zz), abs(arg_3.a.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 6762u, 0u, 10429u), vec4<u32>(4294967295u, 1u, 1u, arg_3.a.a.x)), func_2()) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b * arg_2.b)))), !arg_3.c.d.x, any(!arg_3.c.d.yyz)), Struct_2(abs(~vec4<u32>(arg_3.a.a.x, 4294967295u, arg_3.b.a.x, arg_2.a.x)), 128f, arg_3.c.d.x, arg_3.b.c), arg_3.c);
    var var_1 = var_0.a.a.xy;
    let var_2 = Struct_3(Struct_2(max(~firstTrailingBit(arg_2.a), vec4<u32>(arg_3.a.a.x, 4294967295u, 2854u, 0u) ^ vec4<u32>(1u, arg_2.a.x, 22088u, var_1.x)), 926f, true, true), var_0.b, Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(arg_2.b, _wgslsmith_f_op_f32(func_3(Struct_1(413f, true, true, var_0.c.d), arg_3.c.d))))), arg_2.a.x < ~(~0u), all(!(!vec4<bool>(true, var_0.a.c, arg_2.c, arg_2.c))), !arg_3.c.d));
    let var_3 = _wgslsmith_mult_i32(firstTrailingBit(arg_1.x), -50994i);
    var var_4 = arg_2.a.x;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_0.a.a.x, var_1.x, ~var_2.a.a.x), ~var_0.b.a.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.d;
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = Struct_1(-870f, select(false || var_1.x, var_1.x, _wgslsmith_f_op_f32(ceil(-541f)) == -1820f), var_1.x, !(!var_1));
    var_0 = u_input.d;
    var var_3 = select(~_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 2147483647i), vec2<i32>(~u_input.d, ~171i)), -(~1i), var_2.a > _wgslsmith_f_op_f32(f32(-1f) * -1484f));
    var var_4 = vec2<bool>(any(vec2<bool>(false, var_1.x)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1232u << (u_input.b % 32u), max(func_1(vec2<f32>(var_2.a, 789f), vec2<i32>(-57761i, u_input.c), Struct_2(vec4<u32>(103883u, u_input.a, 0u, 41922u), var_2.a, true, var_1.x), Struct_3(Struct_2(vec4<u32>(4294967295u, u_input.b, 27238u, 109727u), var_2.a, var_4.x, false), Struct_2(vec4<u32>(u_input.a, 1u, u_input.a, u_input.b), var_2.a, var_1.x, true), Struct_1(var_2.a, false, var_2.d.x, vec4<bool>(var_1.x, var_4.x, false, var_4.x)))), _wgslsmith_mod_u32(34887u, u_input.b))));
}

