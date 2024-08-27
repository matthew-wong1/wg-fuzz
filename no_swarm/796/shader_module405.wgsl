struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-280f, 1686f);

var<private> global1: bool = false;

var<private> global2: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-56416i, -2529i), vec2<i32>(-3115i, -22029i), vec2<i32>(50764i, -34309i), vec2<i32>(-12926i, i32(-2147483648)), vec2<i32>(15968i, 29216i), vec2<i32>(1i, -20503i), vec2<i32>(-1i, -22717i), vec2<i32>(-29032i, 2147483647i), vec2<i32>(i32(-2147483648), 12511i), vec2<i32>(-1i, 1i), vec2<i32>(-60027i, 26718i), vec2<i32>(-23100i, 0i), vec2<i32>(-42266i, -1i), vec2<i32>(-37248i, 16469i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-13363i, 2147483647i), vec2<i32>(65253i, 0i), vec2<i32>(1i, -68121i), vec2<i32>(22221i, -24247i), vec2<i32>(-28470i, 2147483647i), vec2<i32>(23905i, i32(-2147483648)), vec2<i32>(-7215i, 2147483647i), vec2<i32>(28554i, -743i), vec2<i32>(-30075i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-96303i, 9805i), vec2<i32>(-36003i, -1i), vec2<i32>(-8173i, i32(-2147483648)), vec2<i32>(1i, 51604i));

var<private> global3: Struct_1;

var<private> global4: array<bool, 3>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(select(-vec3<i32>(global3.c.x, -17183i, u_input.b.x), vec3<i32>(arg_0.x, u_input.b.x, 0i) & global3.c.wwx, vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_add_i32(9318i, _wgslsmith_add_i32(arg_0.x, arg_0.x)), global3.c.x, _wgslsmith_add_i32(0i, u_input.b.x & global3.c.x))) & min(min(abs(-vec3<i32>(0i, 35854i, u_input.d.x)), firstTrailingBit(global3.c.wwy) << (select(global3.b, global3.b, vec3<bool>(global4[_wgslsmith_index_u32(global3.b.x, 3u)], global4[_wgslsmith_index_u32(u_input.c, 3u)], false)) % vec3<u32>(32u))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.c.x, -20928i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(4611i, global3.c.x, global3.c.x), arg_0.wxw)), vec3<i32>(0i, 1i << (0u % 32u), countOneBits(-11573i))));
    var var_1 = Struct_1(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-291f * _wgslsmith_f_op_f32(max(global0.x, -1137f))) + -181f), _wgslsmith_f_op_f32(-1230f + global3.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-257f, _wgslsmith_f_op_f32(global0.x - 1536f)))))), global3.b, vec4<i32>(~var_0.x, ~1i, -38057i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-4007i, var_0.x, 2147483647i), vec3<i32>(-2147483647i, var_0.x, -5409i)) ^ (i32(-1i) * -global3.c.x)));
    let var_2 = global3.a.zyx;
    global3 = Struct_1(vec4<f32>(-1608f, 1652f, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -1026f)), _wgslsmith_f_op_f32(f32(-1f) * -1118f)), vec3<u32>(78328u, 1u, 12125u), arg_0);
    global1 = true;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.a.x, 1337f), _wgslsmith_f_op_vec2_f32(sign(global3.a.wz)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), var_2.x) - _wgslsmith_f_op_vec2_f32(exp2(var_2.xx)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(232f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + 294f)), -1308f)), vec3<u32>(~min(_wgslsmith_mod_u32(global3.b.x, 44303u), 8480u), 1u, 4294967295u), -vec4<i32>(-2147483647i, -(u_input.d.x >> (33754u % 32u)), _wgslsmith_mod_i32(-1i ^ u_input.b.x, -28256i), u_input.b.x));
    var var_1 = global0.x;
    var var_2 = var_0.c.ww;
    global0 = _wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(var_0.c)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(global3.c.x, 2333i, -24844i, global3.c.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1000f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 292f)), global3.a.xx, !vec2<bool>(global4[_wgslsmith_index_u32(global3.b.x, 3u)], global4[_wgslsmith_index_u32(u_input.a.x, 3u)]))), var_0.a.yx, any(vec4<bool>(true, false, global4[_wgslsmith_index_u32(37626u, 3u)], true))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a - global3.a)) - vec4<f32>(global3.a.x, -658f, _wgslsmith_f_op_f32(-global3.a.x), var_3.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(358f, -1374f, -1479f, global3.a.x), var_0.a)), vec4<f32>(1619f, 1148f, -774f, 173f), var_0.b.x != 4294967295u)))), abs(firstTrailingBit(var_0.b) & abs(global3.b)) & global3.b, max(vec4<i32>(var_0.c.x, ~var_0.c.x >> (_wgslsmith_div_u32(u_input.a.x, 10178u) % 32u), _wgslsmith_sub_i32(~u_input.b.x, ~(-17669i)), max(_wgslsmith_dot_vec3_i32(global3.c.wwy, global3.c.xxz), _wgslsmith_mult_i32(global3.c.x, -7261i))), vec4<i32>(firstLeadingBit(var_2.x), u_input.d.x, _wgslsmith_div_i32(0i, countOneBits(global3.c.x)), _wgslsmith_mult_i32(~var_0.c.x, var_0.c.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 3u)], -585f > var_0.a.x);
    global3 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1290f, -230f, _wgslsmith_f_op_f32(min(812f, global0.x)), func_2().a.x), arg_0.a)), ~vec3<u32>(38317u, ~(var_0.b.x & var_0.b.x), 33216u), vec4<i32>(select(_wgslsmith_div_i32(var_0.c.x, 2147483647i), -2147483647i, global4[_wgslsmith_index_u32(~arg_0.b.x, 3u)]) << (~(1u | u_input.c) % 32u), -(~global3.c.x), 43979i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, 1i, 1i) ^ _wgslsmith_clamp_i32(u_input.d.x, -23164i, -2147483647i), ~(~2147483647i))));
    global2 = array<vec2<i32>, 29>();
    return Struct_1(var_0.a, vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.b.xx, vec2<u32>(var_0.b.x, 76303u) | abs(vec2<u32>(72612u, 1u))), 1u, var_2.b.x >> (_wgslsmith_clamp_u32(~23415u, 0u, global3.b.x) % 32u)), -global3.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_1(arg_2, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, u_input.b.x), -global3.c.x), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0.c.x, 4805i), global3.c.zzy)))).c.x;
    var var_1 = u_input.c;
    global4 = array<bool, 3>();
    let var_2 = min(_wgslsmith_add_u32(36363u, _wgslsmith_mod_u32(select(~arg_0.b.x, 1u, true), global3.b.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0.b), vec3<u32>(~countOneBits(8593u), ~0u, 40126u)));
    global1 = global4[_wgslsmith_index_u32(~global3.b.x, 3u)];
    return func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(arg_0.a.x + global0.x), _wgslsmith_f_op_f32(trunc(global3.a.x)), 1f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_2.a + arg_2.a), arg_2.a))), arg_0.b, -((arg_2.c ^ u_input.b) | (global3.c >> (vec4<u32>(arg_0.b.x, var_2, arg_0.b.x, arg_0.b.x) % vec4<u32>(32u))))), countOneBits(_wgslsmith_div_i32(22339i, global3.c.x)) & 1i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = !select(select(select(select(vec2<bool>(global4[_wgslsmith_index_u32(arg_0.b.x, 3u)], global4[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(global4[_wgslsmith_index_u32(37689u, 3u)], global4[_wgslsmith_index_u32(16455u, 3u)]), vec2<bool>(true, global4[_wgslsmith_index_u32(global3.b.x, 3u)])), vec2<bool>(global4[_wgslsmith_index_u32(25342u, 3u)], true), vec2<bool>(false, false)), vec2<bool>(false, -103f < arg_1.a.x), true), vec2<bool>(global4[_wgslsmith_index_u32(~abs(u_input.c), 3u)], any(select(vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 3u)], false, true), true))), true);
    global4 = array<bool, 3>();
    var var_1 = (abs(~func_4(Struct_1(vec4<f32>(arg_1.a.x, global3.a.x, 1500f, global0.x), arg_0.b, global3.c), vec3<f32>(global0.x, arg_1.a.x, 339f), Struct_1(arg_0.a, arg_0.b, global3.c)).c) & -u_input.b) ^ vec4<i32>(func_4(arg_0, vec3<f32>(797f, _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x * -1933f)), arg_0).c.x, -arg_1.c.x, firstLeadingBit(arg_0.c.x) >> (0u % 32u), ~arg_2.x);
    let var_2 = _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(-arg_1.c.x, arg_1.c.x, _wgslsmith_dot_vec3_i32(arg_1.c.zwz, countOneBits(firstLeadingBit(vec3<i32>(31801i, var_1.x, 57347i))))));
    let var_3 = var_0.x;
    return Struct_1(vec4<f32>(func_1(arg_0, global3.c.x).a.x, global0.x, global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * 1354f)), global3.b, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(func_2().c, global3.c), arg_0.c));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global4 = array<bool, 3>();
    var var_0 = global3.b;
    var var_1 = _wgslsmith_div_u32(select(u_input.c, select(var_0.x, 4294967295u, true), all(vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(1u, 3u)], true, global4[_wgslsmith_index_u32(var_0.x, 3u)], global4[_wgslsmith_index_u32(1u, 3u)])), global4[_wgslsmith_index_u32(u_input.a.x, 3u)] && global4[_wgslsmith_index_u32(global3.b.x, 3u)], !global4[_wgslsmith_index_u32(global3.b.x, 3u)]))), _wgslsmith_mult_u32(arg_0.b.x, 0u));
    let var_2 = 13655u;
    let var_3 = arg_0.c.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(func_1(Struct_1(vec4<f32>(-1065f, -1430f, global3.a.x, global0.x), global3.b, global3.c), global3.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global3.a.x, 114f) - _wgslsmith_f_op_vec3_f32(-global3.a.xxx)), func_1(func_2(), -2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a * global3.a) * vec4<f32>(-1046f, global3.a.x, -516f, 1000f)), abs(max(global3.b, vec3<u32>(0u, 64443u, u_input.c))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b.x), 2147483647i, u_input.d.x, -global3.c.x)), _wgslsmith_mult_vec3_i32(global3.c.zxx, ~(~vec3<i32>(16308i, u_input.d.x, u_input.d.x)))));
    var var_1 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(min(abs(vec3<i32>(global3.c.x, 15783i, u_input.b.x)), vec3<i32>(-26535i, -2147483647i, global3.c.x) << (var_0.b % vec3<u32>(32u))), (var_0.c.yzy | vec3<i32>(-1i, 2147483647i, -2147483647i)) >> (~vec3<u32>(var_0.b.x, 1u, 6854u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(func_5(Struct_1(vec4<f32>(457f, -1365f, -1006f, 1964f), vec3<u32>(var_0.b.x, var_0.b.x, u_input.a.x), vec4<i32>(var_0.c.x, 0i, -40347i, 5978i)), var_0, var_0.c.wwy).c.x, max(global3.c.x, global3.c.x)), global3.c.x, u_input.b.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global3.a, global3.a, _wgslsmith_f_op_f32(-var_0.a.x) <= _wgslsmith_f_op_f32(ceil(var_0.a.x)))), vec3<u32>(4294967295u >> (_wgslsmith_clamp_u32(~23743u, max(56227u, 4294967295u), global3.b.x) % 32u), 7892u, var_0.b.x), abs(~(-vec4<i32>(0i, -21694i, var_0.c.x, var_0.c.x))));
    global4 = array<bool, 3>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f)), global3.a.x);
    var var_4 = _wgslsmith_clamp_vec3_u32(global3.b, abs(vec3<u32>(~26812u, abs(_wgslsmith_mod_u32(global3.b.x, var_0.b.x)), var_2.b.x)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~u_input.b.x, -(~36177i)), -2147483647i, -(var_2.c.x >> (23033u % 32u)));
}

