struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(0i, i32(-2147483648), -1i, -29715i, 10044i, 0i, 20146i, 2147483647i, i32(-2147483648), i32(-2147483648), 1i, 33500i, 14683i, 3413i, 1i, -1i, 51656i, -1i, 11989i, -1i, 71024i, 0i, 10997i, 2147483647i, -56665i, 2147483647i, -2291i, 2147483647i, 0i, 7612i, 8953i, -1i);

var<private> global1: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-5734i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -26362i), vec2<i32>(0i, 4174i), vec2<i32>(0i, 58029i), vec2<i32>(47432i, 45777i), vec2<i32>(1i, -1i), vec2<i32>(-51978i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(62231i, 55865i));

var<private> global2: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_1(reverseBits(reverseBits(vec3<u32>(reverseBits(u_input.b.x), 1u, 0u))), ~(-(~1i) | arg_0.b.b), firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(50616u, arg_0.b.a.x, arg_0.b.a.x), arg_0.b.a)) == 4294967295u);
    global0 = array<i32, 32>();
    let var_1 = ~firstLeadingBit(arg_0.a);
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(970f, 1382f, false)), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(709f + 1015f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(753f, arg_2.x, -250f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-807f, arg_2.x, arg_1.x)), !vec3<bool>(true, false, arg_0.b.c)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, 353f, -550f), vec3<f32>(arg_2.x, -2079f, 890f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = select(select(vec3<bool>(u_input.c == (37089u ^ u_input.b.x), true || any(vec3<bool>(false, true, false)), !(u_input.a < 4294967295u)), vec3<bool>(false, true, select(select(true, true, false), true, all(vec4<bool>(false, true, false, true)))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))), any(vec4<bool>(true, _wgslsmith_clamp_u32(0u, u_input.b.x, 4294967295u) >= 57555u, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))))));
    var var_1 = Struct_2(abs(-vec2<i32>(1i, ~1i)), Struct_1(select(reverseBits(vec3<u32>(u_input.b.x, u_input.a, u_input.a)), u_input.b.zww, var_0.x), _wgslsmith_sub_i32(-19253i, select(arg_3.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], arg_1.x), all(vec4<bool>(var_0.x, false, var_0.x, false)))), var_0.x), u_input.b);
    var var_2 = var_1.b;
    var_0 = vec3<bool>(!(select(select(u_input.e, -4578i, false), _wgslsmith_div_i32(var_1.b.b, arg_1.x), true) < 2147483647i), all(vec3<bool>(false, all(var_0.xy), var_1.b.c)), any(!vec2<bool>(true, var_0.x | true)));
    let var_3 = vec2<bool>(-1i == _wgslsmith_add_i32(var_2.b, _wgslsmith_sub_i32(arg_1.x, -6833i)), var_0.x);
    return vec2<bool>(var_0.x, true);
}

fn func_2() -> bool {
    global2 = 0u;
    let var_0 = vec2<i32>(-1i) * -global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 10u)];
    return any(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(firstLeadingBit(vec2<i32>(u_input.e, global0[_wgslsmith_index_u32(19453u, 32u)])), Struct_1(u_input.b.wzx, var_0.x, true), ~vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1477f, -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(903f, -970f), vec2<f32>(-232f, 1015f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-477f, 953f)))))), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, var_0.x, var_0.x, ~0i), select(vec4<i32>(-15265i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 0i, var_0.x) << (u_input.b % vec4<u32>(32u)), vec4<i32>(56848i, global0[_wgslsmith_index_u32(u_input.a, 32u)], 58713i, 2147483647i), any(vec2<bool>(false, true)))), global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~4813u, ~u_input.c)), 32u)], reverseBits(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 0i, var_0.x), vec3<i32>(-1i, 2147483647i, u_input.d), vec3<i32>(global0[_wgslsmith_index_u32(40938u, 32u)], 1i, var_0.x)), vec3<i32>(var_0.x, u_input.e, var_0.x), u_input.a < 1u))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global2 = u_input.c;
    let var_0 = !(!func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, 189f, 973f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-164f, 1000f, -986f), vec3<f32>(-1186f, -660f, 512f), true))), ~select(vec4<i32>(-20385i, u_input.e, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], -52767i), vec4<i32>(11964i, u_input.e, 18728i, arg_0.b), false), -firstLeadingBit(-1i), vec3<i32>(2147483647i, _wgslsmith_add_i32(-34214i, -1i), select(19095i, -53045i, arg_1))));
    global2 = 4294967295u;
    var var_1 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-9537i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_0.a.x, 32u)], arg_0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, -2147483647i, u_input.e, u_input.d), vec4<i32>(u_input.d, 62788i, 1i, arg_0.b)), arg_0.b), -(~vec4<i32>(global0[_wgslsmith_index_u32(arg_0.a.x, 32u)], 12187i, -27253i, -2534i)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, 1785f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, -1000f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-533f, 270f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-343f, -802f), vec2<f32>(2065f, 696f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1098f, 1246f) - vec2<f32>(1f, 1f)))));
    return arg_0;
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1219f, -498f))))));
    global0 = array<i32, 32>();
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_div_u32(u_input.c, 89820u), 1u), ~_wgslsmith_sub_u32(44267u, 1u))), 10u)], func_5(Struct_1(~(u_input.b.zyw | vec3<u32>(1u, 0u, u_input.b.x)), u_input.d, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), select(true, func_2(), all(vec4<bool>(true, true, false, false)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, 0u, _wgslsmith_add_u32(u_input.a, u_input.c), 85933u >> (u_input.b.x % 32u)), reverseBits(abs(vec4<u32>(30611u, u_input.b.x, 24918u, 51846u)))));
    let var_2 = vec3<u32>(~46514u, ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(94179u, var_1.b.a.x, 4294967295u), var_1.b.a ^ vec3<u32>(1u, var_1.c.x, 79457u))), 4294967295u);
    let var_3 = Struct_2(abs(~var_1.a), var_1.b, countOneBits(~min(var_1.c, var_1.c)));
    return !(!select(!vec3<bool>(false, true, var_1.b.c), !vec3<bool>(var_3.b.c, var_3.b.c, var_1.b.c), select(vec3<bool>(true, var_3.b.c, false), select(vec3<bool>(true, var_3.b.c, var_1.b.c), vec3<bool>(var_1.b.c, var_1.b.c, var_1.b.c), vec3<bool>(false, false, var_3.b.c)), vec3<bool>(var_1.b.c, true, false))));
}

fn func_6(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(-1414f));
    var var_1 = Struct_3(vec4<bool>(true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), false, (global0[_wgslsmith_index_u32(~34713u, 32u)] & func_5(Struct_1(u_input.b.yzx, 2147483647i, arg_0.x), arg_0.x).b) < global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c, u_input.b.x, u_input.c, 66132u), vec4<u32>(u_input.a, 4294967295u, u_input.c, u_input.c)), reverseBits(u_input.b)), 32u)]), Struct_1(~(select(u_input.b.zxw, u_input.b.xxw, true) << (u_input.b.xwx % vec3<u32>(32u))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], -53034i, global0[_wgslsmith_index_u32(1u, 32u)]) & vec4<i32>(28879i, -35186i, u_input.e, global0[_wgslsmith_index_u32(1u, 32u)])), countOneBits(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], -836i, -11109i, u_input.d)))), _wgslsmith_f_op_f32(430f + _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(9886u, 32u)], 1i), Struct_1(u_input.b.xxz, global0[_wgslsmith_index_u32(u_input.c, 32u)], true), vec4<u32>(u_input.b.x, u_input.c, 4294967295u, u_input.c)), vec2<f32>(1000f, -236f), vec2<f32>(243f, -768f))).x) >= _wgslsmith_f_op_f32(ceil(-2115f))), vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(36143u, u_input.b.x)), abs(u_input.b.yz)), _wgslsmith_sub_u32(u_input.a, 4294967295u), ~(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.b.x, 7521u, 45136u)) >> (u_input.b.x % 32u)), u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(457f, 405f, -451f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(670f, 3241f, -279f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(273f, -1535f, 2334f))))), Struct_2(vec2<i32>(-1i) * -global1[_wgslsmith_index_u32(46141u, 10u)], func_5(func_5(Struct_1(u_input.b.zwz, 22113i, arg_0.x), arg_0.x | arg_0.x), -global0[_wgslsmith_index_u32(u_input.b.x, 32u)] >= _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), (u_input.b ^ vec4<u32>(63097u, u_input.c, 4294967295u, 66856u)) >> (_wgslsmith_mult_vec4_u32(~u_input.b, u_input.b) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.d.yx + _wgslsmith_f_op_vec2_f32(-var_1.d.xz));
    var var_3 = var_1.e.c;
    var var_4 = -112f;
    return var_1.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 32>();
    global2 = 18694u;
    var var_0 = func_6(!select(select(vec3<bool>(true, false, true), func_1(), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), vec3<bool>(all(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(u_input.a, 32u)] == -2147483647i, true), any(vec3<bool>(true, true, true))));
    global0 = array<i32, 32>();
    let var_1 = ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, var_0.a.x), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(-1i, _wgslsmith_div_i32(var_0.b, -firstLeadingBit(2147483647i))), 468f, min(func_5(Struct_1(_wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(45761u, 15406u, 103578u)), 10150i, var_0.c), true).b, func_6(!vec3<bool>(false, var_0.c, true)).b), _wgslsmith_sub_vec4_i32(~(-abs(vec4<i32>(-49211i, 1i, 43901i, 41761i))), _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(0i), 1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 1u, u_input.b.x, var_0.a.x)), 32u)], _wgslsmith_mult_i32(var_0.b, -52957i)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1i, 21405i, var_1, var_0.b)), min(vec4<i32>(-17090i, 0i, var_1, var_0.b), vec4<i32>(7132i, -60311i, -1i, global0[_wgslsmith_index_u32(21532u, 32u)]))))), _wgslsmith_f_op_f32(-1314f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1117f)) + _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<i32>(var_1, -46537i), Struct_1(vec3<u32>(53384u, var_0.a.x, 0u), var_0.b, var_0.c), vec4<u32>(u_input.b.x, 21211u, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1057f, -664f) - vec2<f32>(-903f, -1000f)), vec2<f32>(-303f, 398f))).x)));
}

