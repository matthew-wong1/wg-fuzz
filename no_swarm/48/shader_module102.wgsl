struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<u32, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1.a.d.yxx);
    return global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(~58913u, 15u)], arg_0, arg_0, 0u)), vec4<u32>(39971u, reverseBits(global3[_wgslsmith_index_u32(1u, 15u)] ^ global1.b.x), ~(~arg_0), arg_0)), 15u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: i32) -> bool {
    global3 = array<u32, 15>();
    global3 = array<u32, 15>();
    var var_0 = _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~1u, 15u)], ~(18184u ^ global3[_wgslsmith_index_u32(4294967295u, 15u)]));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.a.b)), 1797f) + global1.a.d.x))), global1.a.d.x, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(select(866f, _wgslsmith_f_op_f32(sign(775f)), global0[_wgslsmith_index_u32(~(~4294967295u), 10u)]))), 348f);
    let var_2 = Struct_3(Struct_1(true, arg_0.d.x, arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 880f), _wgslsmith_f_op_f32(-867f * -185f), 310f, arg_0.b)), ~vec2<u32>(global1.b.x, 1u));
    return !global1.a.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = select(vec3<bool>(true, !arg_2.a, true), vec3<bool>(!global1.a.a, all(vec2<bool>(all(vec4<bool>(global1.a.a, false, true, global0[_wgslsmith_index_u32(50599u, 10u)])), true)), global1.a.a), func_4(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(4294967295u, true, true, true), ~global1.b.x << (global3[_wgslsmith_index_u32(1u, 15u)] % 32u)), 15u)], 4u)], ~arg_1.a.c, any(vec3<bool>(arg_2.a, !global0[_wgslsmith_index_u32(0u, 10u)], arg_1.a.a)), _wgslsmith_dot_vec2_i32(-arg_0.xw, _wgslsmith_mult_vec2_i32(-arg_0.zy, ~vec2<i32>(-1i, global1.a.c)))));
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(~1u, 4u)], _wgslsmith_add_vec2_u32(abs(~global1.b), global1.b) | ~global1.b);
    global2 = array<Struct_1, 4>();
    global1 = Struct_3(arg_2, min(select(~vec2<u32>(4294967295u, 111758u), vec2<u32>(min(var_1.b.x, 6766u), 4294967295u), vec2<bool>(!global0[_wgslsmith_index_u32(global1.b.x, 10u)], true)), var_1.b));
    var_1 = Struct_3(arg_1.a, ~firstTrailingBit(reverseBits(global1.b)));
    return _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, ~0u >> (reverseBits(global1.b.x) % 32u), global3[_wgslsmith_index_u32(6323u, 15u)]), vec3<u32>(1u, var_1.b.x & global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(11582u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)], true), 15u)], arg_1.b)), ~(~(~firstLeadingBit(vec3<u32>(77533u, var_1.b.x, 58571u)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = vec3<i32>(-global1.a.c, 23292i, global1.a.c);
    var var_1 = global3[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, _wgslsmith_mod_u32(44956u, global1.b.x), arg_0.x, ~0u), vec4<u32>(~arg_0.x, arg_0.x << (4294967295u % 32u), ~44809u, 10592u)), 15u)], global3[_wgslsmith_index_u32(~1u & arg_0.x, 15u)]), func_3(~max(arg_0.x, ~arg_0.x), (40395u & arg_0.x) <= ~4294967295u, select(false, -1i != _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -1i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), global1.a.a), all(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), 23036i > _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a.c, -37279i, global1.a.c, u_input.a.x), countOneBits(vec4<i32>(20377i, -1i, var_0.x, -35975i))), select(abs(vec4<i32>(-42786i, global1.a.c, 4700i, global1.a.c)), vec4<i32>(-2147483647i, global1.a.c, -27798i, u_input.a.x), select(arg_1, arg_1, global0[_wgslsmith_index_u32(arg_0.x, 10u)])))), 15u)];
    var var_2 = ~vec4<u32>(~1u, firstLeadingBit(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(abs(57992u), 15u)], firstLeadingBit(arg_0.x), 39349u)), _wgslsmith_sub_u32(reverseBits(~0u), firstLeadingBit(global3[_wgslsmith_index_u32(1u, 15u)])), ~global1.b.x);
    var var_3 = Struct_1(arg_1.x, global1.a.b, -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global1.a.c, global1.a.c, global1.a.c) & vec4<i32>(u_input.a.x, 3421i, -2147483647i, 1i), vec4<i32>(-24825i, u_input.a.x, 2147483647i, global1.a.c)) >> (_wgslsmith_div_u32(~global1.b.x, ~global1.b.x) % 32u)), vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(ceil(-367f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.x))), global1.a.d.x));
    let var_4 = Struct_2(global1.a, reverseBits(435u), _wgslsmith_f_op_f32(104f + _wgslsmith_f_op_f32(ceil(-204f))), vec4<f32>(-154f, _wgslsmith_f_op_f32(abs(1723f)), var_3.b, global1.a.d.x));
    return Struct_3(Struct_1(45944u >= ~(~var_4.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(70629i, -1i, var_3.c)) >> (_wgslsmith_div_vec3_u32(var_2.xwx, vec3<u32>(global3[_wgslsmith_index_u32(arg_0.x, 15u)], var_4.b, var_4.b)) % vec3<u32>(32u)), abs(vec3<i32>(487i, -1i, u_input.a.x))), vec4<f32>(global1.a.d.x, _wgslsmith_f_op_f32(global1.a.d.x + var_4.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.d.x), _wgslsmith_div_f32(287f, 107f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.d.x - global1.a.b), _wgslsmith_f_op_f32(-var_4.d.x))))), vec2<u32>(~global3[_wgslsmith_index_u32(26841u, 15u)], var_4.b));
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~(11952u & (arg_0.b.x ^ ~_wgslsmith_dot_vec2_u32(arg_0.b, global1.b))), 10u)];
    let var_1 = func_5(countOneBits(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.b.x, global1.b.x, 64774u), ~vec3<u32>(888u, global3[_wgslsmith_index_u32(57632u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 15u)], arg_0.b.x, global1.b.x), vec3<u32>(1u, 47399u, 1u))), abs(vec3<u32>(global1.b.x, global3[_wgslsmith_index_u32(103559u, 15u)], 63325u) & vec3<u32>(arg_0.b.x, arg_0.b.x, global1.b.x)))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(63293u, 10u)], false, all(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)], false)), global1.a.a), vec4<bool>(true, true, true, true), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 10u)], arg_0.a.a, arg_0.a.a, false))), vec4<bool>(!(u_input.a.x == u_input.a.x), true, arg_0.a.a, global1.a.a), vec4<bool>(true, any(vec2<bool>(false, arg_0.a.a)), all(select(vec4<bool>(arg_0.a.a, true, false, global0[_wgslsmith_index_u32(50054u, 10u)]), vec4<bool>(true, true, arg_0.a.a, true), vec4<bool>(false, true, true, global1.a.a))), !any(vec4<bool>(global1.a.a, false, global1.a.a, false))))).a;
    global3 = array<u32, 15>();
    global1 = arg_0;
    var var_2 = Struct_1(!(!(_wgslsmith_f_op_f32(trunc(arg_1)) == _wgslsmith_f_op_f32(arg_2 - arg_0.a.b))), arg_0.a.b, arg_3, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.d, vec4<f32>(-1000f, global1.a.d.x, 1008f, var_1.d.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.a.d + arg_0.a.d)))), vec4<f32>(116f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f)), -1532f))));
    return arg_0;
}

fn func_1() -> vec4<f32> {
    let var_0 = -firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 360i, global1.a.c), vec3<i32>(-66223i, -4675i, -13960i)), 58056i, i32(-1i) * -22385i, _wgslsmith_dot_vec3_i32(vec3<i32>(-15163i, u_input.a.x, -16955i), vec3<i32>(0i, global1.a.c, global1.a.c))) | _wgslsmith_add_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, global1.a.c, -2147483647i, global1.a.c) >> (vec4<u32>(global1.b.x, 0u, 51399u, 27579u) % vec4<u32>(32u))));
    let var_1 = func_6(func_5(select(~func_2(var_0, Struct_2(global1.a, global1.b.x, -368f, global1.a.d), Struct_1(true, global1.a.d.x, u_input.a.x, global1.a.d)), vec3<u32>(reverseBits(28440u), global1.b.x, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 15u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 15u)], 15u)])), all(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.b.x, 10u)], global1.a.a))), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global1.a.a, false, global0[_wgslsmith_index_u32(120726u, 10u)])))), _wgslsmith_f_op_f32(-global1.a.d.x), _wgslsmith_f_op_f32(min(global1.a.b, -890f)), reverseBits(countOneBits(-2147483647i)));
    var var_2 = _wgslsmith_sub_u32(30636u, func_2(abs(vec4<i32>(-9105i, i32(-1i) * -10733i, _wgslsmith_sub_i32(0i, global1.a.c), u_input.a.x)), Struct_2(func_6(func_5(vec3<u32>(14742u, 41133u, 4294967295u), vec4<bool>(var_1.a.a, var_1.a.a, global1.a.a, false)), var_1.a.d.x, _wgslsmith_f_op_f32(-var_1.a.d.x), 1i).a, ~(7909u | var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x)), var_1.a.d), Struct_1(false, var_1.a.d.x, ~abs(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, var_1.a.d.x, var_1.a.b, global1.a.b)))).x);
    let var_3 = func_5(~(~(~(vec3<u32>(101502u, var_1.b.x, global1.b.x) & vec3<u32>(var_1.b.x, global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)])))), !select(vec4<bool>(!global1.a.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_1.b.x, 1u), 10u)], true, !global0[_wgslsmith_index_u32(global1.b.x, 10u)]), select(vec4<bool>(true, true, true, global1.a.a), vec4<bool>(var_1.a.a, global1.a.a, false, global1.a.a), 86805i <= var_1.a.c), !(!vec4<bool>(global1.a.a, global0[_wgslsmith_index_u32(80602u, 10u)], true, false)))).a;
    global3 = array<u32, 15>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.d + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(200f, var_3.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1741f, var_3.d.x, global1.a.a)) - 670f), -193f, _wgslsmith_f_op_f32(sign(-443f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-664f - -2224f), _wgslsmith_f_op_f32(max(var_1.a.b, -951f)), func_4(Struct_1(true, var_3.d.x, var_3.c, vec4<f32>(var_1.a.b, var_1.a.d.x, var_3.d.x, global1.a.d.x)), u_input.a.x, var_3.a, 0i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.b)), _wgslsmith_f_op_f32(sign(var_1.a.b))), var_1.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-927f, _wgslsmith_f_op_f32(var_1.a.b - var_1.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(any(vec3<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(18484u, 10u)])), global1.a.a, !global1.a.a)), -790f, global1.a.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1())))), firstLeadingBit(~global1.b));
    global1 = Struct_3(Struct_1(global1.a.a && (var_0.a.a | var_0.a.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.d.x))), global1.a.c, global1.a.d), global1.b);
    var var_1 = _wgslsmith_dot_vec2_u32(global1.b, var_0.b);
    let var_2 = Struct_3(func_6(func_5(~(~vec3<u32>(507u, var_0.b.x, global1.b.x)), !(!vec4<bool>(var_0.a.a, false, global1.a.a, var_0.a.a))), var_0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b - -124f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.a.b) * _wgslsmith_f_op_f32(502f - -388f))), ~(~(-22328i) >> ((global1.b.x & global1.b.x) % 32u))).a, global1.b);
    var_0 = func_5(max(select(~vec3<u32>(4294967295u, 70889u, 8624u), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, global1.b.x, var_2.b.x), vec3<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.b.x, 15u)], 15u)], global3[_wgslsmith_index_u32(var_0.b.x, 15u)])), var_2.a.b > global1.a.d.x), (~vec3<u32>(1u, global1.b.x, 48113u) & max(vec3<u32>(0u, 15375u, 65994u), vec3<u32>(8342u, 10493u, 12639u))) ^ ~(~vec3<u32>(var_2.b.x, 59242u, global1.b.x))), !vec4<bool>(false, any(!vec2<bool>(false, var_2.a.a)), all(vec2<bool>(var_2.a.a, false)), true));
    var var_3 = func_6(func_6(var_2, _wgslsmith_f_op_f32(-var_2.a.d.x), 451f, min(u_input.a.x, 1i)), global1.a.d.x, 163f, -(~var_2.a.c) & global1.a.c);
    global2 = array<Struct_1, 4>();
    global3 = array<u32, 15>();
    let var_4 = _wgslsmith_f_op_f32(sign(var_2.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(abs(var_2.b.x), 4294967295u, _wgslsmith_div_u32(var_2.b.x, 1u))), min(select(17713u, 4294967295u, true), ~var_2.b.x) | 8079u, var_3.b.x), var_2.b.x, -u_input.a, 0u);
}

