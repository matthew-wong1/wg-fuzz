struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(56246i, 1i), vec2<bool>(false, true), vec3<bool>(true, true, false), vec2<i32>(-2897i, 0i), 519f), Struct_1(vec2<i32>(-43998i, -1i), vec2<bool>(true, false), vec3<bool>(false, true, true), vec2<i32>(1i, -12137i), -461f), Struct_1(vec2<i32>(2147483647i, 1i), vec2<bool>(true, false), vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), 1483f), Struct_1(vec2<i32>(-11889i, 0i), vec2<bool>(false, false), vec3<bool>(false, true, true), vec2<i32>(1i, 2147483647i), -1306f), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(false, false), vec3<bool>(false, true, false), vec2<i32>(28443i, -11443i), 738f), Struct_1(vec2<i32>(-6484i, 2147483647i), vec2<bool>(true, true), vec3<bool>(true, true, true), vec2<i32>(1832i, 1i), -289f), Struct_1(vec2<i32>(1i, 0i), vec2<bool>(false, false), vec3<bool>(false, true, false), vec2<i32>(-55500i, 2147483647i), -187f), Struct_1(vec2<i32>(48124i, -27028i), vec2<bool>(true, true), vec3<bool>(false, true, true), vec2<i32>(i32(-2147483648), 74642i), 612f), Struct_1(vec2<i32>(13044i, -15081i), vec2<bool>(true, true), vec3<bool>(true, false, true), vec2<i32>(0i, -1i), -1000f), Struct_1(vec2<i32>(2147483647i, -2785i), vec2<bool>(false, true), vec3<bool>(false, true, false), vec2<i32>(1i, i32(-2147483648)), -358f), Struct_1(vec2<i32>(2147483647i, -56696i), vec2<bool>(true, true), vec3<bool>(true, true, false), vec2<i32>(i32(-2147483648), 1i), -894f), Struct_1(vec2<i32>(-2035i, i32(-2147483648)), vec2<bool>(true, true), vec3<bool>(true, false, true), vec2<i32>(-35594i, i32(-2147483648)), -454f), Struct_1(vec2<i32>(1i, 2147483647i), vec2<bool>(false, true), vec3<bool>(false, true, false), vec2<i32>(-1i, 13329i), -1171f), Struct_1(vec2<i32>(-63325i, 0i), vec2<bool>(true, true), vec3<bool>(true, false, true), vec2<i32>(1i, i32(-2147483648)), 261f), Struct_1(vec2<i32>(-1i, -1i), vec2<bool>(true, false), vec3<bool>(true, true, false), vec2<i32>(-13178i, -40618i), 224f), Struct_1(vec2<i32>(2147483647i, 12493i), vec2<bool>(true, false), vec3<bool>(true, true, true), vec2<i32>(2147483647i, 2147483647i), -123f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 0u, 37168u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(43184u, _wgslsmith_div_u32(~firstTrailingBit(63568u), ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(17118u, 0u), vec2<u32>(91009u, 4294967295u)))));
    var var_1 = select(!arg_0.c, !vec3<bool>(true, u_input.a > -26148i, !any(arg_2.c.xy)), true);
    var_0 = _wgslsmith_mult_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.x, 1u), vec3<u32>(62792u, var_0.x, var_0.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 73248u, 0u), vec3<u32>(var_0.x, 1231u, var_0.x)), 0u, var_0.x)) >> (vec3<u32>(0u, ~(~var_0.x), var_0.x | _wgslsmith_sub_u32(var_0.x, var_0.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), min(vec4<u32>(var_0.x, 98770u, 8147u, var_0.x), vec4<u32>(1u, var_0.x, 0u, var_0.x))), max(65143u, countOneBits(var_0.x))), ~(~var_0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 99353u, 62026u), firstLeadingBit(vec3<u32>(0u, 9560u, 77772u))) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(0u, 17612u, 1u, var_0.x)) ^ ~var_0.x) % 32u)));
    var_1 = !vec3<bool>(var_1.x, false, false);
    return 153f;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> bool {
    global0 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) + _wgslsmith_f_op_f32(max(arg_1.e, _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.d, vec2<bool>(false, arg_1.b.x), arg_1.c, arg_1.d, 1226f), _wgslsmith_f_op_f32(abs(arg_1.e)), arg_1)))))));
    global0 = array<Struct_1, 16>();
    return all(select(select(vec3<bool>(true, arg_1.c.x, !arg_1.b.x), arg_1.c, arg_1.c.x && true), select(select(!vec3<bool>(arg_1.c.x, false, true), !arg_1.c, arg_1.c.x), arg_1.c, all(vec2<bool>(arg_1.c.x, true))), select(select(select(vec3<bool>(true, true, arg_1.b.x), arg_1.c, vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.b.x)), arg_1.c, arg_2 == arg_2), arg_1.c, select(arg_1.b.x, true, true))));
}

fn func_1() -> i32 {
    var var_0 = 1u;
    var_0 = 44038u;
    let var_1 = Struct_1(abs(vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a))), -2147483647i)), select(select(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), vec2<bool>(true, false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true)), !vec2<bool>(u_input.a > u_input.a, func_2(175f, global0[_wgslsmith_index_u32(1u, 16u)], 4294967295u)), vec2<bool>(!any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)))), vec3<bool>(true, true, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 63387u, 8914u, 42996u)), vec4<u32>(0u, 45597u, 0u, 26638u)) <= ~1u), ~reverseBits(vec2<i32>(abs(u_input.a), u_input.a)), _wgslsmith_f_op_f32(570f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-156f * _wgslsmith_f_op_f32(-208f - 607f)))));
    global0 = array<Struct_1, 16>();
    let var_2 = var_1.c;
    return countOneBits(u_input.a) >> (~countOneBits(0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(reverseBits(u_input.a | 1i), ~u_input.a, u_input.a, func_1());
    var var_1 = ~vec2<u32>(1u, 1u);
    let var_2 = -var_0.wxw;
    let var_3 = 710f;
    let var_4 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), select(vec2<bool>(any(vec2<bool>(true, true)), select(false, true, false)), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(var_3 > _wgslsmith_f_op_f32(f32(-1f) * -364f), _wgslsmith_f_op_f32(-var_3) > var_3), all(vec2<bool>(all(vec3<bool>(true, false, true)), false))), vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)) & all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), _wgslsmith_f_op_f32(f32(-1f) * -179f) != _wgslsmith_f_op_f32(ceil(2360f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<f32>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(280f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * -1243f))), abs(~vec4<u32>(1u, ~60186u, select(4294967295u, 54657u, var_4.x), var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1605f) * _wgslsmith_f_op_f32(-var_3))), var_3));
}

