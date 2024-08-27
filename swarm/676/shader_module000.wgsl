struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_2(65796u, 2147483647i, Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 124734u, 38662u)), vec3<i32>(1i, 5327i, 33662i)), 2147483647i, vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), Struct_3(Struct_2(44430u, 0i, Struct_1(vec3<u32>(1u, 67571u, 1u)), Struct_1(vec3<u32>(0u, 38812u, 65982u)), vec3<i32>(12070i, 0i, 27291i)), -1i, vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), Struct_3(Struct_2(1u, 50465i, Struct_1(vec3<u32>(4294967295u, 32616u, 18523u)), Struct_1(vec3<u32>(0u, 16103u, 1u)), vec3<i32>(37363i, 3029i, -1i)), 2147483647i, vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), Struct_3(Struct_2(1u, 2147483647i, Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(7862u, 1u, 21515u)), vec3<i32>(10206i, 4832i, 1i)), 1i, vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), Struct_3(Struct_2(4294967295u, 1i, Struct_1(vec3<u32>(4294967295u, 33293u, 55700u)), Struct_1(vec3<u32>(4294967295u, 60308u, 4294967295u)), vec3<i32>(-22840i, -9554i, 0i)), 28555i, vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), Struct_3(Struct_2(5162u, 14110i, Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(1u, 1u, 5858u)), vec3<i32>(2147483647i, 33299i, 2147483647i)), 2147483647i, vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), Struct_3(Struct_2(1u, 6024i, Struct_1(vec3<u32>(87288u, 4294967295u, 1u)), Struct_1(vec3<u32>(0u, 5565u, 325u)), vec3<i32>(0i, 1i, -1i)), 31383i, vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)));

var<private> global1: array<vec4<u32>, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(1u), 7u)];
    global1 = array<vec4<u32>, 24>();
    var var_1 = _wgslsmith_f_op_f32(step(143f, _wgslsmith_f_op_f32(step(219f, 251f))));
    global0 = array<Struct_3, 7>();
    let var_2 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(~2782u, _wgslsmith_clamp_u32(var_0.a.a, 68570u, u_input.c.x), abs(31277u))), _wgslsmith_mult_vec3_u32(abs(~(~u_input.c)), ~var_0.a.d.a));
    return abs(_wgslsmith_clamp_i32(83794i, 10223i, -13333i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = vec4<i32>(1i, countOneBits(u_input.b), -16032i, firstLeadingBit(-2147483647i));
    global0 = array<Struct_3, 7>();
    global1 = array<vec4<u32>, 24>();
    let var_1 = select(!select(vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), any(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(any(vec4<bool>(false, false, false, false)), true, false), !any(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, all(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, true, true, true))))), select(vec2<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 80607i, 2147483647i, -47181i), var_0) >= 2147483647i), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), true));
    var var_2 = select(!vec2<bool>((4294967295u >> (arg_0.a.x % 32u)) != ~arg_0.a.x, any(vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec2<bool>(!(32793u > arg_0.a.x), !(!var_1.x)), var_1, false), vec2<bool>(var_1.x, false));
    return vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(~var_0.x, -36145i), abs(var_0.x), arg_1.e.x), u_input.b ^ _wgslsmith_clamp_i32(_wgslsmith_div_i32(max(arg_1.b, arg_1.b), u_input.b), 2147483647i, _wgslsmith_dot_vec2_i32(var_0.wx, -vec2<i32>(1i, 61850i))), -2147483647i);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = ~vec3<i32>(-u_input.b, countOneBits(6026i), -25803i ^ func_2());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * 537f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))) - -1574f));
    var var_2 = ~max(func_3(Struct_1(vec3<u32>(u_input.c.x, 9799u, 1u)), Struct_2(u_input.c.x, 0i, Struct_1(vec3<u32>(u_input.a, u_input.a, 75572u)), Struct_1(vec3<u32>(1u, 50129u, u_input.a)), vec3<i32>(2147483647i, u_input.b, var_0.x))) >> (~global1[_wgslsmith_index_u32(u_input.a, 24u)] % vec4<u32>(32u)), vec4<i32>(func_3(Struct_1(u_input.c), Struct_2(2408u, var_0.x, Struct_1(vec3<u32>(0u, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.a, 4294967295u, u_input.c.x)), var_0)).x | (15466i ^ u_input.b), _wgslsmith_dot_vec2_i32(var_0.yx ^ var_0.zy, max(var_0.yy, var_0.yx)), 37350i, u_input.b));
    var var_3 = var_2.x;
    let var_4 = -873f;
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(countOneBits(~u_input.c.x)), 0u), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, _wgslsmith_div_f32(-1211f, -873f));
    global0 = array<Struct_3, 7>();
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-1891f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f + 371f)), _wgslsmith_f_op_f32(f32(-1f) * -973f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(135f - _wgslsmith_f_op_f32(min(-2785f, -748f))))), 889f));
    let var_2 = !vec4<bool>(false, !func_1(all(vec3<bool>(false, false, var_0.c.x)), _wgslsmith_f_op_f32(round(var_1.x))).c.x, var_0.d.x, !(!func_1(var_0.c.x, var_1.x).d.x));
    var var_3 = func_1(any(select(vec2<bool>(true, true), vec2<bool>(var_0.a.d.a.x <= 87060u, var_2.x), !vec2<bool>(var_2.x, var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 1f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(462f - -1112f)))))).a.d;
    var_0 = Struct_3(func_1(any(var_2), _wgslsmith_f_op_f32(-1621f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f + var_1.x) + -206f))).a, 48814i, !var_0.c, func_1(var_2.x, var_1.x).c);
    let x = u_input.a;
    s_output = StorageBuffer(-41330i);
}

