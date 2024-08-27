struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<i32>(8053i, 0i, -27217i)), Struct_1(vec3<i32>(2147483647i, 41934i, i32(-2147483648))), Struct_1(vec3<i32>(-29756i, 2147483647i, -1i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(3802i, -30219i, 0i)), Struct_1(vec3<i32>(1i, 2147483647i, 0i)), Struct_1(vec3<i32>(4265i, i32(-2147483648), i32(-2147483648))));

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 78443u, 4554u, 20330u), vec4<u32>(0u, 1u, 4294967295u, 34901u), vec4<u32>(113879u, 92897u, 1u, 121729u), vec4<u32>(4294967295u, 4294967295u, 51884u, 4294967295u), vec4<u32>(4294967295u, 52800u, 76856u, 1u), vec4<u32>(0u, 1u, 31789u, 27228u), vec4<u32>(0u, 46106u, 46134u, 14805u), vec4<u32>(0u, 61656u, 4294967295u, 47255u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(22831u, 19740u, 68007u, 4294967295u), vec4<u32>(1939u, 77804u, 15548u, 1u), vec4<u32>(11292u, 42156u, 2157u, 0u), vec4<u32>(41893u, 4294967295u, 44109u, 40265u), vec4<u32>(32195u, 76025u, 0u, 3692u), vec4<u32>(61477u, 26301u, 15077u, 0u), vec4<u32>(4294967295u, 100040u, 7107u, 1u), vec4<u32>(65933u, 1u, 35944u, 1u), vec4<u32>(80759u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 13564u, 1u, 29020u), vec4<u32>(1u, 16491u, 88252u, 64194u), vec4<u32>(0u, 4294967295u, 47040u, 21489u), vec4<u32>(32861u, 1u, 1u, 53204u), vec4<u32>(69824u, 43104u, 1u, 31438u));

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i)), Struct_1(vec3<i32>(20164i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(-27254i, 30965i, -34502i)), Struct_1(vec3<i32>(11919i, 9941i, i32(-2147483648))), Struct_1(vec3<i32>(26190i, -1i, 2147483647i)), Struct_1(vec3<i32>(-11492i, -34738i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(-30446i, 2147483647i, 26098i)), Struct_1(vec3<i32>(2147483647i, 16088i, 74363i)), Struct_1(vec3<i32>(12544i, -1i, -13233i)), Struct_1(vec3<i32>(2147483647i, -1i, -1i)), Struct_1(vec3<i32>(-18869i, 0i, -47321i)), Struct_1(vec3<i32>(-1i, -4731i, 22681i)), Struct_1(vec3<i32>(0i, 3745i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec3<i32>(-34130i, 2147483647i, 24751i)), Struct_1(vec3<i32>(-1i, 0i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(-1i, 0i, -1i)), Struct_1(vec3<i32>(1i, 0i, 2147483647i)), Struct_1(vec3<i32>(67053i, -64637i, -31964i)), Struct_1(vec3<i32>(20921i, 35702i, -1i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 52325i)), Struct_1(vec3<i32>(i32(-2147483648), -2554i, 310i)), Struct_1(vec3<i32>(1i, -65377i, 0i)), Struct_1(vec3<i32>(2147483647i, -25247i, 13921i)), Struct_1(vec3<i32>(-42419i, -8502i, 48989i)), Struct_1(vec3<i32>(2147483647i, 1i, -1i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -11093i)), Struct_1(vec3<i32>(57116i, 1159i, -1i)));

var<private> global3: u32;

var<private> global4: vec3<f32> = vec3<f32>(645f, 714f, 896f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> bool {
    return any(arg_0) & false;
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global4.zx);
    global2 = array<Struct_1, 31>();
    let var_1 = -589f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 316f) * 1153f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))));
    var var_3 = -67570i;
    return true;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = vec3<i32>(~select(u_input.a & (i32(-1i) * -7528i), firstTrailingBit(~u_input.a), any(!vec4<bool>(false, true, arg_0, arg_0))), -5951i, -1i);
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(-vec3<i32>(-var_0.x, u_input.a, u_input.a | var_0.x) & select(-firstTrailingBit(var_0), ~var_0, func_2(!vec4<bool>(var_1.x, var_1.x, false, arg_0), !vec4<bool>(var_1.x, arg_0, false, false), ~vec4<i32>(-37665i, -18200i, 34908i, -2147483647i))));
    var var_3 = select(!select(vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, arg_0)), func_2(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<i32>(-1i, 1i, -1i, var_0.x)), arg_0, -21540i >= var_0.x), vec4<bool>(true, u_input.a <= var_2.a.x, any(vec4<bool>(var_1.x, true, var_1.x, true)), arg_0), var_1.x), vec4<bool>(all(vec2<bool>(!arg_0, true)), true, func_3(u_input.c.zx), false & !(-441f <= global4.x)), false);
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(230f + -1000f), _wgslsmith_f_op_f32(min(global4.x, global4.x)), -1310f, _wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1481f, 821f, global4.x, 300f)))))));
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(5902u, u_input.c.x, 40652u, u_input.b.x)) | global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, 46041u), u_input.c.xy, var_1), vec2<u32>(0u, 4294967295u))), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32((~max(u_input.c.x, 4968u) >> (abs(66596u) % 32u)) | ~firstTrailingBit(u_input.b.x), 4294967295u), 7u)];
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(554f * global4.x), _wgslsmith_f_op_f32(select(global4.x, global4.x, var_1.x)), global4.x), vec4<f32>(_wgslsmith_f_op_f32(abs(-1936f)), 214f, global4.x, 1000f)))));
    let var_3 = global2[_wgslsmith_index_u32(u_input.b.x, 31u)];
    var_0 = global2[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], vec4<u32>(27186u, u_input.c.x, u_input.c.x, u_input.c.x)) & u_input.b.x, func_1(!var_1.x)), 31u)];
    var_0 = Struct_1(-(~vec3<i32>(-2147483647i, reverseBits(var_0.a.x), -var_0.a.x)));
    global1 = array<vec4<u32>, 23>();
    global2 = array<Struct_1, 31>();
    var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(global4.x, -456f, 164f, var_2.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, -1124f, -1145f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(select(global4.x, 1119f, var_1.x)), func_1(true));
}

