struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-27545i, -1i, 1i), vec3<i32>(-3529i, 1i, -39641i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(-44194i, -58928i, -1i), vec3<i32>(2147483647i, 1i, 46497i), vec3<i32>(2147483647i, -37709i, 2147483647i), vec3<i32>(-30888i, -24322i, 22652i));

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1332f, -1017f, 676f, -2336f), vec4<f32>(2826f, -171f, -652f, -679f), vec4<f32>(1000f, 2061f, -851f, -218f), vec4<f32>(1000f, 446f, 484f, 1000f), vec4<f32>(-677f, -596f, 354f, -1358f), vec4<f32>(-1042f, -1115f, 351f, -871f));

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<i32>(i32(-2147483648), 60516i), Struct_1(vec3<i32>(0i, -1i, i32(-2147483648)), 0u), Struct_1(vec3<i32>(i32(-2147483648), 3043i, -12564i), 26623u), vec4<bool>(true, false, false, true), Struct_1(vec3<i32>(-3805i, -36787i, -1i), 4294967295u)), Struct_2(vec2<i32>(1i, 0i), Struct_1(vec3<i32>(1i, 11723i, -23894i), 11534u), Struct_1(vec3<i32>(15315i, -25585i, -1i), 0u), vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(2147483647i, -64384i, 1i), 44962u)), Struct_2(vec2<i32>(2147483647i, 10271i), Struct_1(vec3<i32>(0i, 40115i, 2147483647i), 0u), Struct_1(vec3<i32>(1i, 0i, -13210i), 4294967295u), vec4<bool>(false, false, false, true), Struct_1(vec3<i32>(0i, -22866i, 45505i), 12892u)), Struct_2(vec2<i32>(-32174i, 17805i), Struct_1(vec3<i32>(2147483647i, 1i, 0i), 1u), Struct_1(vec3<i32>(2147483647i, 51034i, 1i), 4294967295u), vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(-10641i, -27408i, 23880i), 0u)), Struct_2(vec2<i32>(17122i, 0i), Struct_1(vec3<i32>(-39152i, 8641i, 1i), 9806u), Struct_1(vec3<i32>(-90552i, 2147483647i, -46508i), 76919u), vec4<bool>(false, false, true, true), Struct_1(vec3<i32>(-22619i, 1i, -12275i), 0u)), Struct_2(vec2<i32>(-31930i, -1i), Struct_1(vec3<i32>(0i, 20924i, -47495i), 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), 10405i, 2147483647i), 86888u), vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), 4294967295u)), Struct_2(vec2<i32>(-40066i, -28968i), Struct_1(vec3<i32>(0i, -1i, 50034i), 1u), Struct_1(vec3<i32>(1i, i32(-2147483648), -11181i), 0u), vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), 1u)), Struct_2(vec2<i32>(1i, 1400i), Struct_1(vec3<i32>(1i, -45265i, 19835i), 32295u), Struct_1(vec3<i32>(i32(-2147483648), 6160i, -16070i), 0u), vec4<bool>(true, true, true, false), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -10838i), 4294967295u)), Struct_2(vec2<i32>(-1i, 29192i), Struct_1(vec3<i32>(0i, -22488i, -56480i), 1u), Struct_1(vec3<i32>(-21112i, 45586i, 8776i), 19817u), vec4<bool>(true, false, true, false), Struct_1(vec3<i32>(2147483647i, 27297i, 321i), 0u)), Struct_2(vec2<i32>(0i, i32(-2147483648)), Struct_1(vec3<i32>(-1i, 4649i, 267i), 0u), Struct_1(vec3<i32>(-1i, -118397i, 13820i), 4294967295u), vec4<bool>(false, false, true, false), Struct_1(vec3<i32>(86438i, 26199i, -1i), 32047u)), Struct_2(vec2<i32>(-27426i, 7236i), Struct_1(vec3<i32>(19313i, -39219i, -33581i), 4294967295u), Struct_1(vec3<i32>(5301i, i32(-2147483648), 26510i), 15375u), vec4<bool>(false, false, false, true), Struct_1(vec3<i32>(1i, 36922i, -6559i), 0u)));

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0.d;
    var var_1 = arg_2.c.b;
    return -3566f;
}

fn func_2() -> vec2<u32> {
    var var_0 = false;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1318f, -567f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-409f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<i32>(global0.e.a.x, -76580i), Struct_1(global0.e.a, u_input.a), Struct_1(vec3<i32>(global0.b.a.x, 1i, u_input.b.x), 19304u), global0.d, Struct_1(vec3<i32>(global0.a.x, u_input.b.x, -20161i), 40689u)), vec4<i32>(global0.c.a.x, -44685i, 2147483647i, -1i) ^ vec4<i32>(global0.c.a.x, global0.c.a.x, u_input.c, -37784i), Struct_2(vec2<i32>(12729i, -40128i), global0.b, global0.e, vec4<bool>(false, global0.d.x, false, global0.d.x), Struct_1(vec3<i32>(global0.a.x, global0.a.x, u_input.c), 0u)))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1505f, -1000f))));
    global1 = array<vec3<i32>, 7>();
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(~global0.e.b, ~31130u, global0.e.b), countOneBits(u_input.a) >> (~1u % 32u), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(4294967295u, 48760u, 25686u), ~vec3<u32>(u_input.d, u_input.a, global0.c.b), global0.d.yzx), ~vec3<u32>(60631u, 4294967295u, u_input.d)), firstTrailingBit(~abs(global0.b.b))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, 10908u, 41730u, u_input.d)), ~abs(vec4<u32>(4294967295u, 1u, 42229u, global0.c.b))), countOneBits(~reverseBits(vec4<u32>(global0.b.b, global0.b.b, 93851u, 35272u)))));
    return var_2.wy;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = (_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d, 53623u, global0.c.b, ~40043u), select(vec4<u32>(u_input.d, 42316u, u_input.e, u_input.d), vec4<u32>(45513u, u_input.e, 16151u, u_input.e), vec4<bool>(true, arg_0.x, true, true))) >> (u_input.a % 32u)) ^ global0.e.b;
    var var_1 = ~2147483647i;
    let var_2 = func_2();
    global2 = array<vec4<f32>, 6>();
    var var_3 = Struct_1(select(global0.e.a, min(firstTrailingBit(global1[_wgslsmith_index_u32(global0.b.b, 7u)]), global0.e.a) << (reverseBits(max(vec3<u32>(14752u, u_input.a, u_input.d), vec3<u32>(1u, global0.e.b, 2299u))) % vec3<u32>(32u)), !(!vec3<bool>(arg_0.x, true, global0.d.x))), 4294967295u);
    return 1374f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0.d.xw)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2278f, -212f)))));
    global0 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-44097i, global0.e.a.x), vec2<i32>(12486i, 1i))), u_input.b), Struct_1(global1[_wgslsmith_index_u32(~(~global0.b.b), 7u)], u_input.d), global0.c, global0.d, global0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(794f - var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -917f), var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(30749u, 6u)] + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1816f, -709f, -310f), global2[_wgslsmith_index_u32(4294967295u, 6u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, -216f, 602f, var_0.x))))));
    var var_2 = _wgslsmith_mult_vec3_u32(~select(vec3<u32>(0u, countOneBits(0u), global0.b.b), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, global0.e.b), vec3<u32>(global0.c.b, 4294967295u, 0u))), select(global0.d.zwz, !global0.d.zwz, u_input.b.x > u_input.c)), abs(vec3<u32>(u_input.e << (u_input.a % 32u), func_2().x, global0.c.b | ~1u)));
    let var_3 = Struct_1(vec3<i32>(~u_input.b.x, ~_wgslsmith_div_i32(u_input.b.x & -34241i, -global0.b.a.x), _wgslsmith_div_i32(global0.c.a.x, _wgslsmith_mult_i32(1i, 1i) << (u_input.d % 32u))), ~global0.c.b);
    let var_4 = _wgslsmith_mod_vec4_i32(abs(reverseBits(-vec4<i32>(-15324i, 16009i, -2147483647i, var_3.a.x) >> (vec4<u32>(1u, var_3.b, 57161u, var_3.b) % vec4<u32>(32u)))), vec4<i32>(-1i, -18258i, var_3.a.x, min(countOneBits(var_3.a.x), min(var_3.a.x << (4294967295u % 32u), -global0.b.a.x))));
    var var_5 = ~var_2.yy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(~(vec4<u32>(10897u, 1u, 29855u, var_5.x) & vec4<u32>(18472u, 45530u, 4294967295u, u_input.d)))), 142f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -321f))))))), firstLeadingBit(firstLeadingBit(18882u) << (_wgslsmith_clamp_u32(~global0.b.b, 0u, var_3.b) % 32u)));
}

