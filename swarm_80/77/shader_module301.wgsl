struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, Struct_1(5102i, 6278i), false, vec4<f32>(-721f, -259f, 407f, 1473f));

var<private> global1: Struct_2 = Struct_2(5827u, Struct_1(i32(-2147483648), 26932i), true, vec4<f32>(584f, 109f, -558f, -1543f));

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(55475i, 1i), Struct_1(15391i, 12853i), Struct_1(-85355i, 2147483647i), Struct_1(33561i, 2147483647i), Struct_1(25528i, 11947i), Struct_1(-12899i, 0i), Struct_1(-74564i, 2147483647i), Struct_1(2147483647i, 7300i), Struct_1(-31641i, -2789i), Struct_1(-20984i, 2491i), Struct_1(-17510i, -1i), Struct_1(-36204i, 1i), Struct_1(-14825i, 0i), Struct_1(1i, -1i), Struct_1(1i, 22384i), Struct_1(2147483647i, 16778i), Struct_1(19286i, -1009i), Struct_1(i32(-2147483648), -2094i));

var<private> global4: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_mult_i32(-9146i, ~global0.b.b), _wgslsmith_div_i32(12159i >> (_wgslsmith_sub_u32(global1.a, u_input.c.x) % 32u), u_input.d.x & (global1.b.a >> (4294967295u % 32u))) << (12738u % 32u));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(u_input.c.x, global0.b, all(!select(vec4<bool>(global0.c, false, true, global1.c), !vec4<bool>(true, true, false, global0.c), !vec4<bool>(true, global0.c, false, true))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(853f - global0.d.x))), global1.d.x), _wgslsmith_f_op_f32(global1.d.x + global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1168f))), global1.d.x));
    var var_1 = Struct_3(1f == global1.d.x, Struct_1(countOneBits(27851i) ^ func_2().a, -2147483647i & global0.b.b), ~_wgslsmith_dot_vec3_i32(-u_input.b, u_input.b), Struct_1(var_0.b.a, firstTrailingBit(select(_wgslsmith_dot_vec3_i32(u_input.d.xyw, vec3<i32>(-12754i, 59950i, 0i)), func_2().a, true))));
    global3 = array<Struct_1, 18>();
    var_1 = Struct_3(any(vec2<bool>(true, true)) && !global1.c, Struct_1(min(-11408i, _wgslsmith_div_i32(-6144i, u_input.d.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.d.xw, -u_input.d.wy), max(_wgslsmith_mod_vec2_i32(u_input.b.xz, u_input.d.ww), u_input.d.zz | u_input.d.wx))), 5259i, Struct_1(i32(-1i) * -32501i, -u_input.b.x));
    let var_2 = vec3<bool>(true, true, true);
    return (u_input.c | ~u_input.a) << ((vec2<u32>(reverseBits(abs(global1.a)), ~(~1u)) | ~max(u_input.a, vec2<u32>(global0.a, global0.a))) % vec2<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    global0 = Struct_2(68553u, func_2(), ~arg_0 == (49597u | ~u_input.c.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 681f, -1528f, global1.d.x), vec4<f32>(-475f, global1.d.x, global1.d.x, -297f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-487f, 981f, global0.d.x, 1380f)), any(vec4<bool>(false, arg_1.x, false, global1.c))))))));
    global1 = Struct_2(u_input.a.x, global0.b, global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.d))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1919f, -665f, global0.d.x, global0.d.x)))));
    let var_0 = u_input.b.zy;
    global0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(func_3(), _wgslsmith_mod_vec2_u32(vec2<u32>(42691u, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(1u, 4694u), vec2<u32>(global0.a, 28494u)))), ~u_input.c), Struct_1(u_input.d.x & 2147483647i, -global0.b.a), !all(!vec4<bool>(true, true, global1.c, global1.c)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.d.x)), _wgslsmith_f_op_f32(min(global1.d.x, -1114f)))), 1765f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d.x - -2759f))), 773f, -1178f));
    var var_1 = func_2();
    return Struct_3(true, global0.b, max(30499i, global0.b.b), global3[_wgslsmith_index_u32(firstTrailingBit(global1.a), 18u)]);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0;
    global4 = global0.b.b;
    var var_1 = (countOneBits(arg_3.x) != -_wgslsmith_sub_i32(~global1.b.b, var_0.b.a)) == !(true | ((2147483647i == u_input.b.x) | true));
    let var_2 = arg_3;
    var var_3 = any(vec4<bool>(true, global0.c && true, var_0.a, !arg_1.x)) | (!func_1(1u, select(arg_1, vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, var_0.a))).a && arg_0.a);
    return Struct_2(global0.a, Struct_1(-abs(-7108i), _wgslsmith_dot_vec3_i32(~reverseBits(arg_3.yxx), reverseBits(vec3<i32>(global1.b.b, -2147483647i, var_0.d.b)) << (countOneBits(vec3<u32>(0u, 34256u, 63452u)) % vec3<u32>(32u)))), !(!(!all(vec3<bool>(true, true, global1.c)))), vec4<f32>(_wgslsmith_f_op_f32(-1108f * _wgslsmith_f_op_f32(-global1.d.x)), global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d.x))), 292f));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    global4 = u_input.d.x << (50566u % 32u);
    let var_0 = Struct_3(global1.c, global0.b, 1i >> (~_wgslsmith_div_u32(global0.a, 0u) % 32u), Struct_1(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.b.a << (55045u % 32u), abs(-1i)), ~(~40276i))));
    var var_1 = Struct_1(-1i, _wgslsmith_mod_i32(arg_1.b.b, 11305i << (countOneBits(arg_1.a) % 32u)));
    global4 = -9024i;
    global0 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global1.a, global1.a, 16069u), ~vec3<u32>(u_input.a.x, 73210u, 33249u)), vec3<u32>(0u, u_input.a.x, global0.a)), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(14814u, 0u), _wgslsmith_div_u32(global0.a, u_input.a.x))), global0.b, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, 4294967295u, 75496u), vec3<u32>(1u, u_input.a.x, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, u_input.a.x, arg_1.a), vec4<u32>(4482u, u_input.a.x, global0.a, 1u))) <= reverseBits(u_input.c.x), global0.d);
    return Struct_3(all(!(!vec4<bool>(global0.c, global0.c, global0.c, global1.c))) && !any(arg_0), Struct_1(select(_wgslsmith_mod_i32(-2147483647i, 1i) >> (global1.a % 32u), u_input.d.x, global0.c | false), u_input.d.x), var_0.d.a, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!vec4<bool>(true, all(!vec3<bool>(false, false, global0.c)), all(select(vec4<bool>(true, false, global0.c, global1.c), vec4<bool>(true, true, global0.c, false), vec4<bool>(true, false, global1.c, global0.c))), false), func_4(func_1(select(min(23823u, 326u), _wgslsmith_clamp_u32(u_input.c.x, 65495u, 40652u), any(vec3<bool>(false, false, global1.c))), select(vec2<bool>(global1.c, global0.c), vec2<bool>(global0.c, global1.c), vec2<bool>(false, global0.c))), select(vec2<bool>(true, true), select(vec2<bool>(global0.c, false), vec2<bool>(true, true), !vec2<bool>(global0.c, global1.c)), true), func_1(reverseBits(_wgslsmith_mult_u32(global0.a, 38414u)), vec2<bool>(select(true, global0.c, true), global1.c)).d, select(_wgslsmith_mult_vec4_i32(~u_input.d, abs(vec4<i32>(global1.b.b, global1.b.b, u_input.b.x, -6954i))), vec4<i32>(u_input.b.x, u_input.d.x, 0i, 21591i) ^ select(u_input.d, vec4<i32>(1i, global1.b.a, -18419i, -2147483647i), vec4<bool>(true, global1.c, global1.c, global0.c)), global0.c)));
    global2 = func_4(func_5(vec4<bool>(true, false, all(vec3<bool>(global0.c, global0.c, global0.c)), !func_5(vec4<bool>(global0.c, false, true, true), Struct_2(36976u, Struct_1(var_0.d.b, global1.b.a), var_0.a, global0.d)).a), func_4(Struct_3(true, global1.b, 1478i, func_2()), !(!vec2<bool>(true, global0.c)), func_1(~98443u, select(vec2<bool>(global1.c, var_0.a), vec2<bool>(var_0.a, global0.c), vec2<bool>(global1.c, false))).b, vec4<i32>(~(-2147483647i), global1.b.b, var_0.c, _wgslsmith_sub_i32(var_0.d.b, 43529i)))), vec2<bool>(global1.c, func_1(u_input.a.x, !vec2<bool>(true, global0.c)).a), func_4(Struct_3(all(vec2<bool>(false, false)) && any(vec2<bool>(true, false)), Struct_1(firstTrailingBit(global1.b.a), ~(-2147483647i)), _wgslsmith_add_i32(-global0.b.b, func_5(vec4<bool>(var_0.a, global1.c, true, global0.c), Struct_2(1u, Struct_1(23i, 6723i), var_0.a, global1.d)).b.a), func_2()), !select(!vec2<bool>(global1.c, false), !vec2<bool>(var_0.a, true), func_5(vec4<bool>(false, true, var_0.a, false), Struct_2(global0.a, Struct_1(2147483647i, 7814i), false, vec4<f32>(global0.d.x, 1361f, global0.d.x, global0.d.x))).a), Struct_1(-2910i, 1i), countOneBits(firstTrailingBit(u_input.d) | abs(u_input.d))).b, u_input.d).c;
    global0 = func_4(func_1(global1.a, vec2<bool>(func_4(func_1(0u, vec2<bool>(false, global0.c)), vec2<bool>(false, global0.c), global3[_wgslsmith_index_u32(u_input.c.x, 18u)], vec4<i32>(var_0.b.b, u_input.d.x, 2147483647i, 8852i)).c, global1.c)), vec2<bool>(global0.c, !var_0.a), func_1(firstTrailingBit(_wgslsmith_mult_u32(0u, u_input.a.x)) >> (min(global1.a, global1.a) % 32u), select(select(!vec2<bool>(global1.c, false), select(vec2<bool>(false, global0.c), vec2<bool>(var_0.a, false), vec2<bool>(global1.c, true)), select(global1.c, var_0.a, false)), vec2<bool>(false, all(vec4<bool>(var_0.a, false, true, true))), any(!vec3<bool>(global1.c, global1.c, var_0.a)))).d, vec4<i32>(func_4(Struct_3(-31378i < u_input.d.x, func_4(Struct_3(true, Struct_1(0i, global0.b.a), u_input.b.x, Struct_1(var_0.c, global1.b.b)), vec2<bool>(var_0.a, global1.c), global3[_wgslsmith_index_u32(66264u, 18u)], vec4<i32>(global0.b.b, 35720i, global0.b.a, var_0.c)).b, reverseBits(global1.b.a), func_4(Struct_3(global1.c, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global0.b.a, Struct_1(global1.b.b, global1.b.a)), vec2<bool>(true, global0.c), var_0.b, vec4<i32>(global0.b.b, global0.b.a, -1i, -35924i)).b), vec2<bool>(true, true), func_1(13451u, select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), vec2<bool>(false, true))).d, u_input.d).b.b, 2147483647i, 2147483647i, _wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_dot_vec4_i32(min(u_input.d, u_input.d), ~vec4<i32>(2764i, global1.b.a, var_0.c, var_0.d.a)))));
    var_0 = func_5(select(select(!vec4<bool>(true, true, false, global1.c), vec4<bool>(select(false, global1.c, var_0.a), any(vec2<bool>(var_0.a, var_0.a)), false, true), vec4<bool>(global1.c, global0.c && var_0.a, all(vec2<bool>(false, global1.c)), global0.c | false)), vec4<bool>(!all(vec2<bool>(false, var_0.a)), !any(vec4<bool>(true, global1.c, var_0.a, false)), all(vec2<bool>(true, false)), false), global1.c != !(global0.a > u_input.a.x)), Struct_2(53617u, func_4(Struct_3(false, func_1(global1.a, vec2<bool>(global1.c, true)).b, global1.b.a, Struct_1(var_0.c, global0.b.a)), !vec2<bool>(var_0.a, false), func_1(u_input.a.x, !vec2<bool>(global0.c, global1.c)).d, _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.a, var_0.d.a, 2147483647i, -39505i), u_input.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.a, u_input.d.x, 46827i, u_input.d.x), vec4<i32>(29025i, 1i, 43851i, global1.b.b), vec4<i32>(var_0.b.a, var_0.c, global1.b.a, global0.b.b)))).b, any(select(vec4<bool>(global1.c, true, false, global0.c), vec4<bool>(global1.c, var_0.a, true, global1.c), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d * global1.d))))));
    global0 = Struct_2(((~u_input.a.x ^ firstLeadingBit(global1.a)) << (~firstTrailingBit(51139u) % 32u)) << (80149u % 32u), func_4(func_1(min(global0.a, _wgslsmith_add_u32(10858u, u_input.c.x)), vec2<bool>(all(vec3<bool>(true, global0.c, true)), var_0.a)), !vec2<bool>(-2147483647i > var_0.c, var_0.a), global1.b, u_input.d).b, func_4(func_5(vec4<bool>(func_4(Struct_3(true, Struct_1(-1i, 44315i), 2147483647i, Struct_1(15567i, u_input.b.x)), vec2<bool>(true, var_0.a), Struct_1(1i, global1.b.b), u_input.d).c, false, global1.c, var_0.a), func_4(func_5(vec4<bool>(global0.c, global1.c, false, global1.c), Struct_2(u_input.a.x, var_0.d, global1.c, vec4<f32>(1000f, 1781f, -1000f, global1.d.x))), vec2<bool>(global0.c, true), Struct_1(var_0.b.a, global0.b.a), vec4<i32>(u_input.d.x, var_0.d.b, 4446i, 21001i) << (vec4<u32>(global1.a, global0.a, global1.a, global1.a) % vec4<u32>(32u)))), !vec2<bool>(true, !var_0.a), func_5(vec4<bool>(true, select(global0.c, global0.c, global1.c), global1.c, true), Struct_2(81842u, Struct_1(global1.b.a, -40111i), any(vec4<bool>(false, global0.c, global1.c, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-488f, -204f, -1639f, -864f) * vec4<f32>(1000f, global0.d.x, global1.d.x, -1409f)))).d, ~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.a, u_input.b.x, -2147483647i, -2147483647i), select(u_input.d, vec4<i32>(u_input.b.x, global1.b.b, var_0.c, u_input.d.x), vec4<bool>(var_0.a, false, var_0.a, false)))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d))))));
    var var_1 = func_1(~70493u | ~global1.a, select(select(!select(vec2<bool>(var_0.a, true), vec2<bool>(global1.c, global1.c), vec2<bool>(var_0.a, false)), !select(vec2<bool>(var_0.a, false), vec2<bool>(false, global1.c), global0.c), any(!vec2<bool>(false, global0.c))), !vec2<bool>(var_0.a, false), true));
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(global0.a, 4294967295u, global0.a) ^ abs(vec3<u32>(19626u, global1.a, global0.a))), abs(firstLeadingBit(abs(vec3<u32>(global0.a, global1.a, global0.a))))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 9788u, 63870u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, 14520u, 8082u), vec3<u32>(0u, 0u, 31719u)) % vec3<u32>(32u)), ~(~vec3<u32>(global1.a, 4294967295u, global1.a))), ~firstLeadingBit(min(vec3<u32>(31898u, global1.a, u_input.a.x), vec3<u32>(82693u, 34664u, 18799u)))), countOneBits(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, global0.a), firstLeadingBit(vec3<u32>(1u, global1.a, global1.a)), ~vec3<u32>(global1.a, u_input.c.x, global1.a)))));
    let var_3 = ~u_input.c ^ var_2.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~((firstLeadingBit(29726u) | u_input.c.x) ^ _wgslsmith_add_u32(global1.a, 4294967295u)), reverseBits(1u), u_input.a & u_input.c, _wgslsmith_mult_vec2_i32(-u_input.d.yx, u_input.b.zy));
}

