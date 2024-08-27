struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(1u, 0u, 10272u), vec4<i32>(2147483647i, i32(-2147483648), 69885i, -571i)), Struct_1(vec3<u32>(97256u, 71453u, 38914u), vec4<i32>(i32(-2147483648), 45980i, 10332i, 0i)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<i32>(-1i, -15886i, -49380i, -1i)), Struct_1(vec3<u32>(7803u, 4294967295u, 1u), vec4<i32>(32745i, -1i, 0i, i32(-2147483648))), Struct_1(vec3<u32>(9829u, 0u, 1u), vec4<i32>(-1i, 43120i, i32(-2147483648), 81716i)), Struct_1(vec3<u32>(24514u, 1u, 80505u), vec4<i32>(13329i, -1i, 0i, 17100i)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec4<i32>(1i, 5004i, -33894i, i32(-2147483648))), Struct_1(vec3<u32>(2139u, 4294967295u, 1u), vec4<i32>(32655i, 1277i, 2375i, 13232i)), Struct_1(vec3<u32>(18706u, 1u, 25783u), vec4<i32>(-15715i, i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 1u, 1u), vec4<i32>(i32(-2147483648), -1i, 52558i, 15477i)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec4<i32>(1i, 1i, -666i, 36955i)), Struct_1(vec3<u32>(1u, 78222u, 4294967295u), vec4<i32>(i32(-2147483648), -15385i, -30773i, i32(-2147483648))), Struct_1(vec3<u32>(96613u, 4294967295u, 1u), vec4<i32>(-26801i, -1i, 16603i, -1i)), Struct_1(vec3<u32>(30101u, 38872u, 63716u), vec4<i32>(-7459i, 1i, 2743i, 0i)), Struct_1(vec3<u32>(1u, 26366u, 70893u), vec4<i32>(23393i, 0i, 0i, 70620i)), Struct_1(vec3<u32>(109657u, 0u, 1u), vec4<i32>(-21885i, -10782i, 1i, 38002i)), Struct_1(vec3<u32>(13486u, 1u, 8277u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 37320i)), Struct_1(vec3<u32>(73022u, 18766u, 7781u), vec4<i32>(-20632i, i32(-2147483648), 0i, 0i)), Struct_1(vec3<u32>(1u, 42435u, 21310u), vec4<i32>(32362i, i32(-2147483648), 8184i, 2147483647i)), Struct_1(vec3<u32>(115905u, 48213u, 4294967295u), vec4<i32>(0i, 2147483647i, -1i, 13995i)), Struct_1(vec3<u32>(59042u, 4294967295u, 4294967295u), vec4<i32>(-7205i, 12216i, -1i, 68033i)), Struct_1(vec3<u32>(16572u, 10186u, 1u), vec4<i32>(1i, -25082i, -1i, 11514i)), Struct_1(vec3<u32>(0u, 57182u, 0u), vec4<i32>(15941i, -1i, 2147483647i, -28508i)), Struct_1(vec3<u32>(1u, 47924u, 78246u), vec4<i32>(0i, -1i, 0i, 2147483647i)), Struct_1(vec3<u32>(4294967295u, 0u, 27430u), vec4<i32>(-3649i, 0i, i32(-2147483648), 2147483647i)), Struct_1(vec3<u32>(0u, 4294967295u, 76851u), vec4<i32>(22399i, 35673i, 1i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 61636u, 0u), vec4<i32>(i32(-2147483648), -1i, 0i, 3372i)), Struct_1(vec3<u32>(51442u, 12796u, 55714u), vec4<i32>(i32(-2147483648), 2147483647i, -17755i, -36284i)), Struct_1(vec3<u32>(0u, 12180u, 54996u), vec4<i32>(10912i, 13301i, -16986i, 26088i)), Struct_1(vec3<u32>(1u, 18024u, 0u), vec4<i32>(1i, -1i, 22004i, 42994i)), Struct_1(vec3<u32>(12138u, 114103u, 0u), vec4<i32>(i32(-2147483648), 31909i, 3191i, 70520i)));

var<private> global1: array<f32, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-1055f, global1[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_f32(floor(-781f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~u_input.d, 22u)]))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.c.a.x, 22u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 22u)]))), -1110f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -465f) - vec2<f32>(1309f, 963f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1570f, global1[_wgslsmith_index_u32(~20639u, 22u)]) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-787f, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<f32>(global1[_wgslsmith_index_u32(75892u, 22u)], -762f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.c.a.x, 22u)], -1000f) + vec2<f32>(-354f, 440f))))));
    return _wgslsmith_f_op_f32(1023f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * var_1.x)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_1, 31>();
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(~0u, 22u)];
    var_1 = 155f;
    var_0 = true | (_wgslsmith_mod_u32(1u, min(1u, arg_0.c.a.x) & _wgslsmith_sub_u32(u_input.c, 2340u)) < ~abs(min(u_input.c, 12077u)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(arg_0.c.a.x), 22u)]) - global1[_wgslsmith_index_u32(u_input.d, 22u)])));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<Struct_1, 31>();
    global1 = array<f32, 22>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2264f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(u_input.b.x, 22u)]) - 1117f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(any(vec3<bool>(false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(23118u, u_input.d, 1818u), vec4<i32>(-1i, arg_2.x, arg_1.x, arg_2.x))), Struct_1(~u_input.b.zwy, vec4<i32>(-12747i, arg_1.x, 1i, -2147483647i)))), 1304f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(arg_0, ~(~arg_0))), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(true, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(arg_0, 31u)])))));
    let var_1 = reverseBits(~u_input.c);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -902f)), global1[_wgslsmith_index_u32((_wgslsmith_sub_u32(1292u, var_1) << (~var_1 % 32u)) & 4294967295u, 22u)], false)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(true, select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), Struct_1(u_input.b.wwy, vec4<i32>(arg_2.x, 51495i, u_input.a.x, u_input.a.x))), global0[_wgslsmith_index_u32(~(~var_1), 31u)])) + _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(25613u, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(245f - 199f))));
    return Struct_2(!all(vec4<bool>(true, true, true, true)), select(!vec4<bool>(all(vec4<bool>(false, false, false, false)), true, true, false), !vec4<bool>(true, any(vec2<bool>(false, true)), any(vec3<bool>(true, false, true)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(true, false, false)), vec4<bool>(true, true, true, 1000f == global1[_wgslsmith_index_u32(1668u, 22u)]), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))))), Struct_1(u_input.b.zwx, (_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_2.x, 0i, arg_2.x), u_input.a) & max(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, arg_2.x), u_input.a)) & _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(arg_2.x, 2147483647i, arg_2.x, 1i)), u_input.a)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = -_wgslsmith_mult_vec3_i32(~(-_wgslsmith_div_vec3_i32(arg_1.c.b.wxx, u_input.a.wzz)), countOneBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.c.b.x), u_input.a.xxx)));
    let var_1 = global1[_wgslsmith_index_u32(~(~0u), 22u)];
    let var_2 = Struct_3(func_1(reverseBits(~(~arg_0.x)), vec3<i32>(-2147483647i, ~arg_1.c.b.x, -1i), -vec2<i32>(u_input.a.x, -var_0.x)).c, Struct_1(arg_1.c.a, select(vec4<i32>(arg_1.c.b.x, -34752i, 0i, var_0.x), ~vec4<i32>(0i, arg_1.c.b.x, var_0.x, 0i), arg_1.a) ^ vec4<i32>(var_0.x, -40652i, 41445i, select(52584i, u_input.a.x, arg_1.b.x))), arg_1.c);
    var var_3 = -var_0;
    return -var_3.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: bool) -> StorageBuffer {
    let var_0 = ~(min(~abs(vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, 2147483647i)), vec4<i32>(_wgslsmith_mult_i32(-1i, arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, arg_0.x), vec3<i32>(2147483647i, u_input.a.x, 72943i)), max(u_input.a.x, arg_0.x), arg_0.x)) << (_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 41672u, u_input.c, u_input.b.x), vec4<u32>(48804u, u_input.c, u_input.b.x, 5590u)), firstLeadingBit(~vec4<u32>(1u, u_input.c, 1u, 1u))) % vec4<u32>(32u)));
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~u_input.d, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))), 1000f, -881f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 22u)]) + -465f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d, 22u)]))))), _wgslsmith_f_op_f32(func_3(Struct_2(!arg_1, vec4<bool>(arg_1, arg_1, true, false), Struct_1(u_input.b.wwx, vec4<i32>(8373i, var_0.x, var_0.x, arg_0.x)))))));
    var var_2 = Struct_2(all(vec3<bool>(!(!arg_1), arg_1, true)), !select(func_1(u_input.c | u_input.b.x, -u_input.a.zxy, var_0.xz).b, vec4<bool>(any(vec2<bool>(arg_1, true)), false, all(vec4<bool>(arg_1, false, arg_1, arg_1)), !arg_1), !(!vec4<bool>(true, arg_1, true, true))), func_1(~u_input.b.x, -firstTrailingBit(vec3<i32>(arg_0.x, u_input.a.x, 2147483647i)), select(-select(vec2<i32>(15591i, 0i), vec2<i32>(-12640i, -21547i), vec2<bool>(arg_1, false)), firstTrailingBit(firstTrailingBit(vec2<i32>(2147483647i, var_0.x))), arg_1)).c);
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(682f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -535f) * _wgslsmith_f_op_f32(func_3(Struct_2(false, var_2.b, var_2.c))))), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec4<i32>(func_4(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, 1u)), ~u_input.b.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.c), u_input.b.zw, vec2<u32>(u_input.d, 68560u))), func_1(_wgslsmith_mult_u32(u_input.c, u_input.b.x), -vec3<i32>(u_input.a.x, -2147483647i, -29004i), vec2<i32>(-12608i, 11130i))), u_input.a.x, _wgslsmith_dot_vec2_i32(countOneBits(u_input.a.xy), min(vec2<i32>(u_input.a.x, u_input.a.x), func_1(u_input.b.x, u_input.a.xyz, u_input.a.yz).c.b.wy)), -15650i), any(select(!func_1(9906u, u_input.a.yxx, u_input.a.zx).b, func_1(~u_input.d, -u_input.a.xzx, abs(u_input.a.xx)).b, !all(vec3<bool>(true, true, true)))));
}

