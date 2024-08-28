struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f);

var<private> global1: array<u32, 27> = array<u32, 27>(0u, 1u, 0u, 41168u, 5304u, 1u, 2951u, 0u, 12871u, 30013u, 0u, 1u, 1u, 1u, 34604u, 43026u, 1u, 35618u, 8767u, 1u, 11779u, 22999u, 0u, 0u, 0u, 4294967295u, 17542u);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-581f), Struct_1(-1167f), Struct_1(719f), Struct_1(1448f), Struct_1(-957f), Struct_1(128f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1313f - global0.a)))))), vec3<f32>(532f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + -617f), -1388f), global0.a), u_input.c.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -310f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(942f * 497f))) - _wgslsmith_f_op_f32(min(-1049f, 1f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.d.a));
    var var_2 = Struct_2(Struct_1(global0.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.b))), 1i, var_0.d, Struct_1(_wgslsmith_f_op_f32(-var_0.b.x)));
    let var_3 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.b.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-354f, var_0.b.x, true))));
    var_2 = Struct_2(global2[_wgslsmith_index_u32(54408u | global1[_wgslsmith_index_u32(~u_input.a, 27u)], 6u)], vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1126f, -2774f)), var_1.a, true))), _wgslsmith_f_op_f32(-var_1.a), var_0.b.x), max(0i, 1i) | u_input.c.x, var_1, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1222f)));
    return vec4<bool>(var_3 | (true || arg_0), true, any(vec2<bool>(arg_0, !(!var_3))), any(vec4<bool>(any(!vec3<bool>(false, false, arg_0)), var_3, select(!var_3, var_3, var_3), arg_0)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: bool) -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a));
    let var_0 = all(func_3(!arg_0));
    let var_1 = reverseBits(u_input.c);
    var var_2 = Struct_1(1000f);
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, 1f, 941f)), u_input.c.x, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1566f, global0.a, false)) * _wgslsmith_f_op_f32(exp2(global0.a)))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1288f)));
    return _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.b ^ vec4<u32>(abs(global1[_wgslsmith_index_u32(4294967295u, 27u)]), 9223u, abs(0u), 4294967295u)), vec4<u32>(u_input.a << (abs(_wgslsmith_mult_u32(13771u, global1[_wgslsmith_index_u32(26278u, 27u)])) % 32u), global1[_wgslsmith_index_u32(abs(u_input.b.x), 27u)], ~(~16946u), global1[_wgslsmith_index_u32(reverseBits(~min(36254u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49055u, 27u)], 27u)])), 27u)]));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global2 = array<Struct_1, 6>();
    let var_0 = arg_0.ww;
    var var_1 = arg_3;
    global0 = Struct_1(global0.a);
    global0 = var_1.a;
    return Struct_2(var_1.a, _wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(-837f, var_1.d.a, _wgslsmith_f_op_f32(-var_1.e.a))), 16257i, arg_3.d, Struct_1(arg_2.a));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_4(reverseBits(select(u_input.b, _wgslsmith_mod_vec4_u32(func_2(false, vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, u_input.c.x), false), u_input.b), vec4<bool>(false, true, global0.a != global0.a, true))), _wgslsmith_add_i32(u_input.c.x, u_input.c.x), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(319f * global0.a)))))), Struct_2(Struct_1(-323f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a, -375f, -514f)))))), u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, countOneBits(4557u)), vec2<u32>(u_input.a, u_input.a & global1[_wgslsmith_index_u32(1u, 27u)])), 6u)]));
    let var_1 = _wgslsmith_add_vec2_u32(u_input.b.zw, ~func_2(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), -(vec4<i32>(-1i, var_0.c, u_input.c.x, 16101i) >> (vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(27228u, 27u)], u_input.a, u_input.b.x) % vec4<u32>(32u))), true).yy);
    var var_2 = var_1;
    let var_3 = var_1.x;
    let var_4 = ~vec2<i32>(i32(-1i) * -max(u_input.c.x, var_0.c), -func_4(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(var_3, 27u)], var_1.x, 4294967295u), u_input.b), -1i, func_4(vec4<u32>(global1[_wgslsmith_index_u32(0u, 27u)], u_input.b.x, 0u, var_1.x), u_input.c.x, global2[_wgslsmith_index_u32(u_input.a, 6u)], Struct_2(global2[_wgslsmith_index_u32(19066u, 6u)], var_0.b, var_0.c, global2[_wgslsmith_index_u32(64118u, 6u)], global2[_wgslsmith_index_u32(var_1.x, 6u)])).a, Struct_2(Struct_1(global0.a), var_0.b, var_0.c, var_0.a, Struct_1(2007f))).c);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-func_4(u_input.b, max(var_0.c, 0i), Struct_1(-131f), Struct_2(Struct_1(1735f), var_0.b, 38511i, var_0.a, var_0.e)).a.a)), 1132f, 1f);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(~(u_input.c.x >> (u_input.a % 32u)), -abs(0i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.c.x, u_input.c.x)), -u_input.c.x);
    global1 = array<u32, 27>();
    let var_1 = func_4(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, ~arg_1, global1[_wgslsmith_index_u32(~arg_1, 27u)], min(0u, 1u)), vec4<u32>(select(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global1[_wgslsmith_index_u32(31872u, 27u)], 0u, arg_0, 28274u)), u_input.a >> (global1[_wgslsmith_index_u32(arg_0, 27u)] % 32u), true), global1[_wgslsmith_index_u32(9401u, 27u)], _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yz), ~58324u), arg_1)), u_input.c.x ^ (u_input.c.x ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 1i, -1i, var_0.x), countOneBits(vec4<i32>(1i, -50284i, var_0.x, var_0.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1005f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1793f, 1370f)))), Struct_2(func_4(select(u_input.b, firstTrailingBit(u_input.b), all(vec4<bool>(arg_3.x, true, arg_3.x, true))), u_input.c.x, func_4(func_2(false, vec4<i32>(1i, u_input.c.x, u_input.c.x, -1i), arg_3.x), countOneBits(-2147483647i), func_4(vec4<u32>(28136u, 123794u, 1u, 4294967295u), var_0.x, global2[_wgslsmith_index_u32(13811u, 6u)], Struct_2(global2[_wgslsmith_index_u32(1u, 6u)], arg_2.wxz, var_0.x, global2[_wgslsmith_index_u32(15927u, 6u)], global2[_wgslsmith_index_u32(arg_1, 6u)])).a, func_4(vec4<u32>(global1[_wgslsmith_index_u32(arg_0, 27u)], global1[_wgslsmith_index_u32(arg_0, 27u)], 54984u, 45285u), -1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64550u, 27u)], 6u)], Struct_2(Struct_1(458f), arg_2.zyw, -6166i, global2[_wgslsmith_index_u32(4294967295u, 6u)], Struct_1(arg_2.x)))).e, Struct_2(Struct_1(global0.a), vec3<f32>(-167f, 1053f, -1907f), -u_input.c.x, func_4(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.a, 4294967295u), 2147483647i, global2[_wgslsmith_index_u32(arg_0, 6u)], Struct_2(Struct_1(arg_2.x), vec3<f32>(global0.a, 1000f, global0.a), -2147483647i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 6u)], Struct_1(-608f))).e, func_4(u_input.b, -16024i, global2[_wgslsmith_index_u32(4294967295u, 6u)], Struct_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 6u)], arg_2.xyz, 9114i, Struct_1(arg_2.x), Struct_1(arg_2.x))).e)).a, arg_2.wwz, -_wgslsmith_mult_i32(-var_0.x, var_0.x), func_4(abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(99626u, arg_0, 29968u, 59829u))), 1229i, Struct_1(_wgslsmith_f_op_f32(arg_2.x + -996f)), func_4(~u_input.b, _wgslsmith_sub_i32(var_0.x, 4215i), Struct_1(global0.a), Struct_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 6u)], arg_2.zzw, var_0.x, global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(0u, 6u)]))).a, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~4294967295u), 1u, arg_0), 6u)])).e;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yz - vec2<f32>(-1000f, global0.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1784f), vec2<f32>(arg_2.x, var_1.a)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(494f, 1404f) + arg_2.ww)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1367f * global0.a), _wgslsmith_f_op_f32(trunc(global0.a))), arg_2.yz))), vec2<f32>(479f, global0.a));
    var var_3 = 135f;
    return func_4(u_input.b, 1i, func_4(u_input.b, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, var_0.x), vec3<i32>(1i, var_0.x, var_0.x)), func_4(u_input.b, u_input.c.x, Struct_1(arg_2.x), Struct_2(global2[_wgslsmith_index_u32(60218u ^ global1[_wgslsmith_index_u32(u_input.a, 27u)], 6u)], vec3<f32>(var_2.x, global0.a, var_2.x), -34171i, Struct_1(var_2.x), Struct_1(767f))).a, Struct_2(global2[_wgslsmith_index_u32(max(8247u, min(arg_0, 1u)), 6u)], vec3<f32>(arg_2.x, -1000f, global0.a), abs(var_0.x), var_1, var_1)).a, func_4(min(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(19317u, u_input.b.x, arg_0, 54982u), u_input.b, u_input.b)), u_input.b), u_input.c.x >> (6651u % 32u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(var_1.a, -1402f)))), func_4(~vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 4294967295u), 0i, Struct_1(_wgslsmith_f_op_f32(step(1000f, global0.a))), func_4(vec4<u32>(arg_0, arg_0, 4294967295u, 1u), select(-87786i, u_input.c.x, true), Struct_1(var_1.a), Struct_2(Struct_1(var_1.a), arg_2.wwz, u_input.c.x, var_1, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74657u, 27u)], 6u)])))));
}

fn func_6(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(3021i, abs(-2147483647i), -arg_0.c), 1i, func_5(u_input.a, global1[_wgslsmith_index_u32(~1u, 27u)], vec4<f32>(global0.a, global0.a, global0.a, 566f), vec2<bool>(true, true)).c, _wgslsmith_mult_i32(140i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, u_input.c.x, arg_0.c), vec3<i32>(arg_0.c, u_input.c.x, 41697i)))), ~(-abs(vec4<i32>(1i, u_input.c.x, arg_0.c, u_input.c.x)))));
    var var_1 = select(func_3(func_2(true, vec4<i32>(arg_0.c, 1i, 0i, u_input.c.x), all(vec3<bool>(true, true, false))).x != ~44536u).zw, !select(vec2<bool>(all(vec4<bool>(true, true, false, true)), true), vec2<bool>(arg_0.e.a == 1699f, true), vec2<bool>(true, true)), true);
    global1 = array<u32, 27>();
    let var_2 = Struct_1(func_5(~0u, func_2(_wgslsmith_f_op_f32(step(global0.a, 1015f)) == _wgslsmith_f_op_f32(global0.a + global0.a), firstLeadingBit(vec4<i32>(arg_0.c, var_0.x, 2147483647i, 6255i)), var_1.x).x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1()))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.a, -579f, global0.a, global0.a) * vec4<f32>(1427f, arg_0.d.a, -1521f, -1636f)), vec4<f32>(arg_0.a.a, 725f, global0.a, 221f))), !select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, var_1.x, false, var_1.x)))), select(vec2<bool>(true, var_1.x), vec2<bool>(true, true), vec2<bool>(-1000f != arg_0.b.x, true))).b.x);
    global0 = arg_0.e;
    return vec3<bool>(false, true, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(abs(0u), abs(~(u_input.a | global1[_wgslsmith_index_u32(u_input.a, 27u)])), _wgslsmith_f_op_vec4_f32(func_1()), vec2<bool>(true, true)));
    global2 = array<Struct_1, 6>();
    var var_1 = select(func_3(func_3(u_input.b.x <= firstLeadingBit(u_input.a)).x).xx, vec2<bool>(var_0.x || true, false), true);
    global2 = array<Struct_1, 6>();
    var var_2 = ~u_input.c.x;
    let var_3 = countOneBits((-u_input.c.x | -54209i) << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.a)), -1158f, _wgslsmith_f_op_f32(max(global0.a, -1361f))) + vec3<f32>(683f, func_4(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 4294967295u, global1[_wgslsmith_index_u32(26009u, 27u)], 1u), var_3, global2[_wgslsmith_index_u32(44357u, 6u)], Struct_2(global2[_wgslsmith_index_u32(4294967295u, 6u)], vec3<f32>(382f, -407f, 271f), u_input.c.x, Struct_1(global0.a), Struct_1(-975f))).a.a, _wgslsmith_f_op_f32(max(677f, global0.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, global0.a, -1968f), vec3<f32>(global0.a, 203f, global0.a), var_0)))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-890f - 1027f), -1471f)))), 551f));
}

