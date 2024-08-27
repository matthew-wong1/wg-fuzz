struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<bool>(false, false, false, true), 24320u, 4294967295u, vec2<u32>(46870u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), 0u, 4294967295u, vec2<u32>(46932u, 1u)), Struct_1(vec4<bool>(false, true, false, false), 1u, 4294967295u, vec2<u32>(4294967295u, 45666u)), Struct_1(vec4<bool>(true, false, true, false), 0u, 52913u, vec2<u32>(97606u, 1u)), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, 28977u, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<bool>(false, true, true, true), 39363u, 14958u, vec2<u32>(81905u, 1u)), Struct_1(vec4<bool>(true, false, true, false), 4294967295u, 0u, vec2<u32>(107374u, 1u)), Struct_1(vec4<bool>(false, true, false, true), 0u, 1u, vec2<u32>(32024u, 20548u)), Struct_1(vec4<bool>(true, true, true, false), 4294967295u, 1u, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<bool>(true, false, true, true), 89652u, 4294967295u, vec2<u32>(16173u, 1u)), Struct_1(vec4<bool>(false, true, false, true), 4294967295u, 4294967295u, vec2<u32>(22981u, 0u)), Struct_1(vec4<bool>(false, false, false, true), 6193u, 0u, vec2<u32>(1u, 1u)), Struct_1(vec4<bool>(true, false, false, false), 1u, 4294967295u, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<bool>(true, false, true, true), 19150u, 1u, vec2<u32>(6186u, 1u)), Struct_1(vec4<bool>(true, false, true, false), 7487u, 65172u, vec2<u32>(1u, 86338u)), Struct_1(vec4<bool>(true, true, false, false), 1u, 0u, vec2<u32>(4294967295u, 0u)), Struct_1(vec4<bool>(false, false, false, true), 1u, 10105u, vec2<u32>(20589u, 0u)));

var<private> global3: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(20205i, 41359i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, -44186i, 0i, i32(-2147483648)), vec4<i32>(-25767i, 32854i, 1745i, 1i), vec4<i32>(-1i, -21052i, 30432i, 1i), vec4<i32>(-18031i, -1i, 1i, i32(-2147483648)), vec4<i32>(31060i, 6082i, 2147483647i, 28589i), vec4<i32>(-5832i, i32(-2147483648), 0i, -1i), vec4<i32>(59642i, -1i, 54231i, 298i), vec4<i32>(27207i, 0i, -16734i, 0i), vec4<i32>(2147483647i, 20700i, 0i, -19737i), vec4<i32>(-1i, 1i, 0i, 1114i), vec4<i32>(35290i, -20904i, 0i, i32(-2147483648)), vec4<i32>(10923i, 2147483647i, 22767i, 12717i), vec4<i32>(-1i, 2147483647i, -7783i, -15891i), vec4<i32>(43911i, 8252i, 32791i, 2147483647i), vec4<i32>(1i, -1i, i32(-2147483648), 19464i), vec4<i32>(0i, 19059i, -1i, -24944i), vec4<i32>(0i, -1801i, 14665i, 1i), vec4<i32>(-23285i, -1i, 25236i, 2147483647i), vec4<i32>(-332i, -11572i, 0i, -1i), vec4<i32>(i32(-2147483648), -33103i, -8004i, -19469i), vec4<i32>(-18792i, -17635i, -26592i, 1i), vec4<i32>(1i, 27115i, -37937i, i32(-2147483648)), vec4<i32>(-1i, -49721i, 21251i, 0i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 17>();
    var var_0 = Struct_1(vec4<bool>(u_input.b.x > 43791i, true, !any(vec4<bool>(true, true, false, false)), select(false, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))))), 20075u, ~1u, vec2<u32>(58736u, ~(~min(u_input.a, 45116u))));
    global3 = array<vec4<i32>, 24>();
    global2 = array<Struct_1, 17>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(var_0.b), var_0.b), 24u)];
    return -735f;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: i32) -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2530f)), _wgslsmith_f_op_f32(2088f + -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(664f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-960f * 1000f))), true))), _wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-534f * 1f));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~(~0u), u_input.a << (firstTrailingBit(u_input.a) % 32u)), u_input.a), 32206u, _wgslsmith_mult_u32(~u_input.a, 26782u), countOneBits(4294967295u));
    global0 = array<Struct_1, 24>();
    let var_2 = global2[_wgslsmith_index_u32(u_input.a, 17u)];
    global3 = array<vec4<i32>, 24>();
    return !var_2.a.wzz;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1;
    global3 = array<vec4<i32>, 24>();
    global0 = array<Struct_1, 24>();
    global1 = any(func_2(arg_2.a.x, !arg_2.a, u_input.b.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~vec2<i32>(1i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 1i)) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) | max(-abs(vec2<i32>(0i, -39242i)), reverseBits(abs(~u_input.b.xw)));
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.a), 24u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-718f, vec2<u32>(_wgslsmith_mod_u32(select(u_input.a, 22136u, true), ~1u), ~_wgslsmith_mult_u32(u_input.a, u_input.a)), Struct_1(vec4<bool>(u_input.a <= 0u, true, false | var_1.a.x, var_1.a.x && var_1.a.x), 9159u, 26221u, min(var_1.d, ~var_1.d)))) * -2339f);
    global1 = all(vec3<bool>(false, true, all(select(vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.x)))) && var_1.a.x;
    var var_3 = Struct_1(var_1.a, 94309u, 79806u, (~(~var_1.d) & _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.d.x), var_1.d ^ vec2<u32>(u_input.a, u_input.a))) | var_1.d);
    var var_4 = Struct_1(!vec4<bool>(!var_3.a.x, _wgslsmith_f_op_f32(500f * 201f) < _wgslsmith_f_op_f32(sign(var_2)), all(!vec2<bool>(var_1.a.x, var_1.a.x)), var_1.a.x), ~_wgslsmith_mult_u32(~1u, var_3.b), u_input.a, vec2<u32>(~4294967295u, _wgslsmith_sub_u32(var_3.c, 0u)) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, var_1.d.x, var_3.d.x) & vec4<u32>(u_input.a, 54309u, 1u, u_input.a), ~vec4<u32>(u_input.a, 22790u, 19732u, 1u)), var_3.c));
    var_3 = Struct_1(var_3.a, 1u, ~(var_4.b ^ ~1u), ~var_3.d);
    global3 = array<vec4<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.wwx, u_input.b.yxx) << ((~(~vec3<u32>(1u, u_input.a, var_3.b)) & countOneBits(~vec3<u32>(u_input.a, 4680u, 1u))) % vec3<u32>(32u)), ~(~var_4.d));
}

