struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 323f;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(true, vec3<u32>(30626u, 43697u, 0u), vec3<i32>(-23221i, 12180i, 27898i), Struct_1(0u, vec2<bool>(true, false), 0u, 1199f), vec4<f32>(1000f, -1699f, -719f, 101f)), Struct_2(false, vec3<u32>(83711u, 4294967295u, 112311u), vec3<i32>(-81950i, 12260i, 8844i), Struct_1(0u, vec2<bool>(true, false), 31961u, 1459f), vec4<f32>(399f, 1000f, -549f, -1302f)), Struct_2(true, vec3<u32>(4294967295u, 52420u, 25588u), vec3<i32>(2147483647i, 0i, 2147483647i), Struct_1(4294967295u, vec2<bool>(true, false), 5338u, 156f), vec4<f32>(-1433f, 1000f, 121f, -600f)), Struct_2(true, vec3<u32>(4294967295u, 6220u, 14461u), vec3<i32>(-3649i, i32(-2147483648), 2147483647i), Struct_1(4294967295u, vec2<bool>(false, true), 19725u, 1000f), vec4<f32>(-116f, -381f, 1885f, 229f)), Struct_2(false, vec3<u32>(8665u, 4294967295u, 39766u), vec3<i32>(-1911i, -1i, 21861i), Struct_1(107290u, vec2<bool>(true, true), 0u, -189f), vec4<f32>(429f, -756f, -870f, 1000f)), Struct_2(false, vec3<u32>(38894u, 71114u, 4989u), vec3<i32>(1i, i32(-2147483648), 6223i), Struct_1(26321u, vec2<bool>(false, true), 6760u, -789f), vec4<f32>(-371f, -1281f, -384f, 1060f)), Struct_2(true, vec3<u32>(1u, 65980u, 4294967295u), vec3<i32>(16618i, i32(-2147483648), -8743i), Struct_1(20924u, vec2<bool>(false, false), 4294967295u, -292f), vec4<f32>(270f, 2281f, 390f, -104f)), Struct_2(true, vec3<u32>(4294967295u, 19453u, 22300u), vec3<i32>(1i, 33594i, -6128i), Struct_1(4294967295u, vec2<bool>(false, false), 13404u, -205f), vec4<f32>(-574f, 1083f, 769f, -917f)), Struct_2(false, vec3<u32>(1u, 0u, 5926u), vec3<i32>(2147483647i, -18083i, -769i), Struct_1(96084u, vec2<bool>(false, false), 32139u, -894f), vec4<f32>(-1010f, 628f, -409f, -2086f)));

var<private> global2: u32 = 4294967295u;

var<private> global3: array<u32, 23> = array<u32, 23>(4294967295u, 4294967295u, 16323u, 43870u, 45995u, 4294967295u, 27686u, 4294967295u, 22374u, 1u, 20703u, 75u, 4294967295u, 29163u, 17935u, 1u, 30093u, 0u, 72300u, 1u, 0u, 59520u, 5026u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<f32> {
    global2 = firstTrailingBit(_wgslsmith_mult_u32(76208u, global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~49323u, u_input.a ^ 44922u)), 23u)]));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(341f, 1119f)) - _wgslsmith_f_op_f32(min(-1016f, arg_0)))) * -888f), arg_0);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.d - 1000f)), 1034f) - vec2<f32>(960f, 1105f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = Struct_3(Struct_1(~global3[_wgslsmith_index_u32(57044u, 23u)], select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, all(vec4<bool>(true, false, false, false))), false), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2225f)))));
    var var_2 = !vec3<bool>(false, var_1.a.b.x, var_1.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~abs(~global3[_wgslsmith_index_u32(59842u, 23u)]), var_1.a.a, ~(~var_1.a.a), var_1.a.a), firstLeadingBit(~u_input.a) & ~(~4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(945f, var_0.x, 576f), vec3<f32>(var_1.a.d, var_1.a.d, var_0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_1.a.d)) + vec2<f32>(-1000f, -1797f)) + _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - var_0.x)), Struct_3(var_1.a)))));
}

