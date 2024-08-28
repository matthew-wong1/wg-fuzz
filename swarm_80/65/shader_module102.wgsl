struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-1000f, -195f, -733f, -1000f, -442f, -153f, -1397f, -1260f, -773f, 1451f, -1201f, -150f, -1000f, -287f, -1817f, -2442f, -622f, -702f, 2082f, 260f);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 34152u, 1u);

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(false, true, true), vec4<u32>(99892u, 1u, 4294967295u, 406u), 927f), Struct_2(Struct_1(vec3<bool>(false, true, false)), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 64428u, 4294967295u, 4294967295u), -1650f), Struct_2(Struct_1(vec3<bool>(true, true, false)), vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 1u, 0u), 283f));

var<private> global3: Struct_5 = Struct_5(false, i32(-2147483648), 1608f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: f32) -> vec3<bool> {
    global1 = u_input.b.wwx;
    global0 = array<f32, 20>();
    var var_0 = 3056u;
    var var_1 = Struct_5(false, arg_2.x ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(26751i, global3.b, arg_2.x, arg_2.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.b, arg_2.x, 2147483647i, arg_1.a.c.x), arg_1.a.c | arg_1.a.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.e.d))));
    var var_2 = _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.b.zww, ~arg_1.a.e.c.zxy), vec3<u32>(0u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.c.x, global1.x, 48049u, 54715u), u_input.b))), arg_1.a.a.c.zxz);
    return arg_1.a.e.b;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec2<u32> {
    global2 = array<Struct_2, 3>();
    let var_0 = Struct_2(Struct_1(vec3<bool>(!global3.a, false || all(vec4<bool>(arg_0.a, false, true, arg_2.x)), true)), !vec3<bool>(true, arg_0.a, true), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(56997u, 103101u, 44576u, 18894u), ~u_input.b) & 1u, ~(4294967295u >> (countOneBits(58521u) % 32u)), ~1u, firstLeadingBit(u_input.c.x)), arg_0.c);
    var var_1 = Struct_4(Struct_3(Struct_2(var_0.a, vec3<bool>(!global3.a, all(arg_2), true || global3.a), ~(~u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c)))), Struct_1(vec3<bool>(true, true, true)), min(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global3.b, global3.b, arg_0.b, -43831i), vec4<i32>(-61013i, global3.b, -24464i, 718i))), ~vec4<i32>(arg_0.b, 0i, global3.b, arg_0.b)), !var_0.a.a.yx, var_0));
    global2 = array<Struct_2, 3>();
    var var_2 = min(~(~global1.zy), var_0.c.xy);
    return vec2<u32>(var_2.x, var_2.x);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-582f));
    var var_1 = Struct_2(Struct_1(!(!vec3<bool>(global3.a, global3.a, true))), select(select(!(!vec3<bool>(false, true, global3.a)), !(!vec3<bool>(true, global3.a, false)), global1.x != ~34699u), vec3<bool>(all(vec4<bool>(false, global3.a, true, global3.a)), !all(vec2<bool>(false, false)), global3.a), global3.a), _wgslsmith_mod_vec4_u32(u_input.b, ~u_input.b), _wgslsmith_div_f32(-1000f, 358f));
    var var_2 = Struct_5(!(!(global1.x < _wgslsmith_dot_vec3_u32(vec3<u32>(73181u, global1.x, 102087u), vec3<u32>(u_input.a.x, global1.x, var_1.c.x)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, global3.b, global3.b), vec3<i32>(global3.b, 5669i, global3.b)) << (vec3<u32>(17077u, var_1.c.x, 0u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(1i, global3.b, 2147483647i)), vec3<i32>(~(-1i), countOneBits(-48628i), 1i << (1u % 32u)), firstTrailingBit(-vec3<i32>(global3.b, -14588i, 0i)))), -634f);
    var var_3 = max(_wgslsmith_sub_vec2_u32(func_4(Struct_5(global3.a, 453i, _wgslsmith_f_op_f32(min(var_1.d, var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_f32(f32(-1f) * -406f), 1471f), select(vec3<bool>(var_2.a, var_1.b.x, var_2.a), func_3(var_1.a, Struct_4(Struct_3(global2[_wgslsmith_index_u32(0u, 3u)], var_1.a, vec4<i32>(global3.b, global3.b, global3.b, global3.b), var_1.b.xy, Struct_2(var_1.a, vec3<bool>(true, var_1.b.x, global3.a), vec4<u32>(u_input.c.x, 132u, 0u, 65283u), 415f))), vec2<i32>(var_2.b, var_2.b), var_1.d), vec3<bool>(var_2.a, global3.a, var_2.a))), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(global1.x, u_input.a.x) << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))))), ~(var_1.c.xy & ~(~global1.zx)));
    let var_4 = 229f;
    return Struct_1(!select(var_1.a.a, func_3(var_1.a, Struct_4(Struct_3(global2[_wgslsmith_index_u32(20039u, 3u)], Struct_1(vec3<bool>(var_2.a, var_1.a.a.x, var_2.a)), vec4<i32>(var_2.b, var_2.b, 2147483647i, -1i), vec2<bool>(var_2.a, var_2.a), Struct_2(Struct_1(var_1.b), vec3<bool>(false, true, var_2.a), u_input.b, 916f))), select(vec2<i32>(0i, 13712i), vec2<i32>(global3.b, 1i), var_1.a.a.yz), _wgslsmith_f_op_f32(floor(-533f))), select(vec3<bool>(true, global3.a, var_2.a), var_1.b, !var_1.a.a)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_5(false & !global3.a, firstTrailingBit(global3.b), 152f);
    global3 = Struct_5(true, -(~(-2147483647i)), _wgslsmith_div_f32(-537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1284f, global0[_wgslsmith_index_u32(arg_0, 20u)], global3.a))) + -590f)));
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(u_input.b.x >> (global1.x % 32u)) << (~1u % 32u), global1.x, u_input.a.x), 3u)], Struct_1(arg_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(17979i << (~arg_0 % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(global3.b, var_0.b)), 1i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, -1i, global3.b), vec3<i32>(global3.b, 1i, 34004i)), -1030i, ~global3.b), _wgslsmith_clamp_i32(2147483647i, var_0.b, _wgslsmith_mult_i32(global3.b, 1i))), abs(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, var_0.b, global3.b, -78811i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 31343i, 4433i, -1i), vec4<i32>(global3.b, -42090i, -14433i, -24947i))))), select(func_3(func_2(), Struct_4(Struct_3(global2[_wgslsmith_index_u32(69154u, 3u)], Struct_1(vec3<bool>(global3.a, false, var_0.a)), vec4<i32>(71998i, global3.b, -7171i, global3.b), vec2<bool>(global3.a, global3.a), global2[_wgslsmith_index_u32(global1.x, 3u)])), -(~vec2<i32>(-1i, -40980i)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(728f, 679f, var_0.a)))).xx, vec2<bool>(!(var_0.a != true), true && any(arg_1.a)), (var_0.a | !global3.a) != all(!vec3<bool>(false, arg_1.a.x, true))), Struct_2(arg_1, func_3(Struct_1(arg_1.a), Struct_4(Struct_3(Struct_2(Struct_1(vec3<bool>(true, var_0.a, true)), vec3<bool>(var_0.a, global3.a, true), u_input.b, 794f), arg_1, vec4<i32>(-15432i, global3.b, global3.b, global3.b), arg_1.a.xz, Struct_2(arg_1, vec3<bool>(false, var_0.a, true), u_input.b, arg_2.x))), vec2<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-23637i, var_0.b, -39056i, -2147483647i), vec4<i32>(-45215i, var_0.b, -19730i, 18779i))), _wgslsmith_f_op_f32(trunc(arg_2.x))), u_input.b, -1509f));
    var var_2 = u_input.b.yyy;
    var var_3 = Struct_1(vec3<bool>(!(true || global3.a), ~1u >= _wgslsmith_add_u32(~1u, global1.x), var_1.b.a.x));
    return !vec3<bool>((-global3.b <= 1i) || !all(var_1.b.a), 2147483647i >= global3.b, select(true, var_0.a, true));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> i32 {
    global0 = array<f32, 20>();
    let var_0 = Struct_5(((select(false, true, false) == false) & (global3.a | global3.a)) | true, abs(global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)));
    let var_1 = Struct_1(func_5(arg_0, func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.xyx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, arg_1.x, var_0.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xyz)))));
    let var_2 = select(vec3<i32>(arg_2.x, (-8259i | (global3.b | -30272i)) << (~select(4294967295u, global1.x, var_1.a.x) % 32u), -19726i | firstTrailingBit(global3.b)), vec3<i32>(global3.b, ~select(1i, 599i, !global3.a), select(~var_0.b & _wgslsmith_add_i32(0i, arg_2.x), arg_2.x, false && (global3.a & true))), func_2().a);
    var var_3 = func_5(~(~min(0u, func_4(var_0, vec3<f32>(406f, -1230f, global3.c), vec3<bool>(true, true, global3.a)).x)), var_1, _wgslsmith_f_op_vec3_f32(max(arg_1.wzw, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1396f, var_0.c, -749f), vec3<f32>(global0[_wgslsmith_index_u32(46739u, 20u)], 1000f, global3.c), vec3<bool>(true, var_1.a.x, false)))))))));
    return _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global3.b, 18661i, 6575i, global3.b)), max(vec4<i32>(var_0.b, -99335i, 22781i, global3.b), vec4<i32>(arg_2.x, -2147483647i, global3.b, var_0.b))), -arg_2.x | var_2.x) | -23867i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 3>();
    var var_0 = 51887u;
    let var_1 = 2147483647i;
    var var_2 = vec3<u32>(52131u, _wgslsmith_dot_vec3_u32(~u_input.a, ~(vec3<u32>(u_input.c.x, 1u, global1.x) >> (u_input.b.wxz % vec3<u32>(32u)))), 4294967295u);
    var var_3 = -func_1(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, global0[_wgslsmith_index_u32(var_2.x, 20u)], 1618f, global0[_wgslsmith_index_u32(1u, 20u)]) + vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], global0[_wgslsmith_index_u32(4317u, 20u)], -1000f, global0[_wgslsmith_index_u32(0u, 20u)]))))), select(firstTrailingBit(vec3<i32>(var_1, var_1, global3.b)), select(vec3<i32>(global3.b, var_1, global3.b), vec3<i32>(0i, global3.b, 19374i), vec3<bool>(true, false, global3.a)), vec3<bool>(global3.a, false, false)) << (countOneBits(~u_input.a) % vec3<u32>(32u)));
    let var_4 = abs(vec2<i32>(-9346i, 1i));
    let var_5 = Struct_2(func_2(), func_2().a, abs(~_wgslsmith_mod_vec4_u32(~u_input.b, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.d, 20u)], -785f, 1509f != global0[_wgslsmith_index_u32(var_2.x, 20u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-629f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-701f, global3.c)))));
    let var_6 = 1667f;
    let var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 20u)], global3.c), -1192f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_5.c.x, 20u)], 222f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(772f, 679f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1 & countOneBits(var_1), 0i, ~(-28693i) << (global1.x % 32u)) | (reverseBits(vec3<i32>(1i, 32021i, 0i) | vec3<i32>(global3.b, 4036i, global3.b)) | select(vec3<i32>(31016i, global3.b, -4568i), ~vec3<i32>(global3.b, global3.b, var_1), global3.a)));
}

