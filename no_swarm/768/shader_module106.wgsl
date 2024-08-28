struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -18986i, -21003i), vec3<i32>(0i, -37051i, 0i), vec3<i32>(0i, 4877i, -15622i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -410i, 57840i), vec3<i32>(-12627i, -13459i, 41752i), vec3<i32>(13768i, 0i, 2147483647i), vec3<i32>(2147483647i, 25429i, 0i), vec3<i32>(1i, 0i, 2538i), vec3<i32>(32629i, -17781i, 16069i), vec3<i32>(i32(-2147483648), 1i, 13066i), vec3<i32>(-8320i, -1i, 2641i), vec3<i32>(-2069i, -1i, 0i), vec3<i32>(29502i, i32(-2147483648), -5508i), vec3<i32>(62367i, 18346i, -7870i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(-11585i, -30121i, 13076i), vec3<i32>(2147483647i, 5088i, -47871i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(3366i, -16783i, 6437i), vec3<i32>(23337i, -28967i, 2147483647i));

var<private> global2: vec4<i32>;

var<private> global3: array<vec3<f32>, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    var var_0 = Struct_1(arg_0.x, vec4<bool>(all(vec3<bool>(true, true, arg_1.a)), _wgslsmith_f_op_f32(-arg_2.b.a.a) > arg_2.b.a.a, all(!vec2<bool>(arg_1.a, true)), true));
    let var_1 = reverseBits(vec3<i32>(u_input.a, ~0i, -2147483647i));
    var var_2 = var_0.b.x;
    let var_3 = arg_1.b;
    return any(arg_2.b.a.b.wyy);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> vec2<u32> {
    global0 = array<Struct_1, 6>();
    global3 = array<vec3<f32>, 20>();
    let var_0 = u_input.c.x;
    return ~(~u_input.c.wy) >> (~u_input.c.zw % vec2<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~(0u >> ((_wgslsmith_div_u32(4294967295u, u_input.c.x) << (arg_1 % 32u)) % 32u)), 6u)];
    global3 = array<vec3<f32>, 20>();
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 0i), min(~u_input.b.yz << (~vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), u_input.b.yx)), vec2<i32>(arg_0, -(arg_0 ^ u_input.a)) << (~func_4(firstLeadingBit(-2147483647i), _wgslsmith_f_op_f32(-591f - -394f), func_3(vec2<f32>(var_0.a, var_0.a), Struct_3(false, vec2<u32>(0u, 4294967295u), Struct_2(Struct_1(594f, var_0.b))), Struct_4(13389i, Struct_2(Struct_1(var_0.a, vec4<bool>(var_0.b.x, false, var_0.b.x, true))), vec2<bool>(arg_2.x, arg_2.x), var_0.b))) % vec2<u32>(32u)));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(23114u, 6u)]);
    let var_3 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(abs(u_input.c.x), 1u));
    return _wgslsmith_mult_vec3_u32(select(~u_input.c.ywy, ~u_input.c.wzy, !var_2.a.b.xwz), vec3<u32>(arg_1 & min(func_4(1i, var_0.a, var_2.a.b.x).x, 1u), 24566u, 1u));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 6>();
    let var_0 = true;
    var var_1 = firstLeadingBit(global1[_wgslsmith_index_u32(arg_1.x, 24u)]);
    var var_2 = vec3<u32>(8995u, 0u << (arg_1.x % 32u), ~arg_1.x);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))))), select(select(vec4<bool>(true, arg_3.x, false, arg_3.x), !arg_0, false && var_0), arg_0, arg_3)));
    return global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mult_u32(1u >> (max(arg_1.x, u_input.c.x) % 32u), _wgslsmith_div_u32(u_input.c.x, 1u))), 6u)];
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    global1 = array<vec3<i32>, 24>();
    global3 = array<vec3<f32>, 20>();
    var var_0 = true;
    global3 = array<vec3<f32>, 20>();
    let var_1 = func_5(arg_1.b, reverseBits(func_2(arg_0.a, _wgslsmith_add_u32(u_input.c.x, u_input.c.x), vec3<bool>(false, arg_0.d.x, false))) | ~vec3<u32>(0u, 0u, u_input.c.x), _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(arg_1.a + -1000f)), !vec4<bool>(!select(true, arg_1.b.x, false), true, arg_0.d.x || all(vec4<bool>(false, arg_1.b.x, arg_0.b.a.b.x, arg_1.b.x)), true));
    return Struct_3(false, ~(~func_4(-37533i, -949f, var_1.b.x)) | select(u_input.c.zx, ~u_input.c.yy, var_1.b.wy), arg_0.b);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: i32) -> vec4<i32> {
    var var_0 = vec2<i32>(~u_input.a, -11404i);
    var var_1 = arg_0.c;
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(arg_2.b.x), ~u_input.c.x, _wgslsmith_mult_u32(arg_1.x, 38855u)) | ~arg_2.b.x, _wgslsmith_clamp_u32(~71689u, arg_1.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(17766u, 1u, 0u, u_input.c.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, arg_2.b.x), ~u_input.c.zw), vec2<u32>(~arg_1.x, arg_2.b.x))), vec3<u32>(func_1(Struct_4(-20103i, arg_0.c, var_1.a.b.zy, vec4<bool>(arg_0.a, arg_0.c.a.b.x, true, arg_2.c.a.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(43276u, arg_2.b.x, arg_0.b.x, 1u), vec4<u32>(arg_2.b.x, 9303u, arg_0.b.x, arg_2.b.x)), u_input.c), 6u)]).b.x, firstTrailingBit(1u & arg_2.b.x), 1u), ~(~(~(~u_input.c.wxy))));
    var var_3 = func_1(Struct_4(u_input.a, Struct_2(func_1(Struct_4(arg_3, Struct_2(Struct_1(arg_0.c.a.a, vec4<bool>(arg_2.c.a.b.x, arg_2.c.a.b.x, arg_0.a, arg_0.c.a.b.x))), var_1.a.b.zw, arg_0.c.a.b), var_1.a).c.a), vec2<bool>(func_5(vec4<bool>(true, arg_0.c.a.b.x, false, false), ~u_input.c.wxz, _wgslsmith_f_op_f32(1418f + arg_0.c.a.a), var_1.a.b).b.x, arg_2.a != var_1.a.b.x), vec4<bool>(arg_2.c.a.b.x, var_1.a.b.x, arg_0.a, false)), arg_2.c.a).c;
    var_3 = Struct_2(Struct_1(func_5(func_1(Struct_4(-2147483647i, Struct_2(var_1.a), vec2<bool>(true, var_3.a.b.x), var_3.a.b), func_5(arg_2.c.a.b, vec3<u32>(arg_0.b.x, 40783u, var_2.x), var_3.a.a, var_3.a.b)).c.a.b, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, arg_2.b.x, 42353u), u_input.c.zyx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)), !(!arg_0.c.a.b)).a, !arg_2.c.a.b));
    return vec4<i32>(-2147483647i, global2.x, ~_wgslsmith_mult_i32(u_input.b.x, reverseBits(2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-select(u_input.b.xx, vec2<i32>(var_0.x, global2.x), arg_0.c.a.b.x), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_0.x, -45139i), u_input.b.yx)), -u_input.b.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, -1i, 7947i, -1i), vec4<i32>(global2.x, 3598i, global2.x, global2.x), vec4<i32>(u_input.a, 1i, 0i, u_input.b.x)) << (u_input.c % vec4<u32>(32u)), ~(vec4<i32>(-1i, 1i, -2147483647i, 52995i) << (u_input.c % vec4<u32>(32u)))), func_6(func_1(Struct_4(global2.x, Struct_2(Struct_1(1130f, vec4<bool>(false, true, false, true))), vec2<bool>(false, true), vec4<bool>(false, true, true, false)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 6u)]), u_input.c.xx >> (reverseBits(u_input.c.yx) % vec2<u32>(32u)), Struct_3(func_1(Struct_4(u_input.a, Struct_2(Struct_1(572f, vec4<bool>(true, false, false, true))), vec2<bool>(false, false), vec4<bool>(false, true, true, false)), global0[_wgslsmith_index_u32(4294967295u, 6u)]).a, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 44150u), vec2<u32>(u_input.c.x, 4294967295u)), func_1(Struct_4(u_input.a, Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec2<bool>(true, false), vec4<bool>(true, true, true, false)), Struct_1(-1000f, vec4<bool>(false, false, true, true))).c), 1i)));
    global3 = array<vec3<f32>, 20>();
    global2 = ~vec4<i32>(global2.x, global2.x, 32525i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(-14834i, 1i, 78842i, 42449i) & vec4<i32>(u_input.b.x, u_input.a, 2147483647i, 19618i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, -6702i, u_input.b.x, -24549i), vec4<i32>(-1i, global2.x, 48315i, 22403i))));
    let var_0 = vec2<u32>(reverseBits(u_input.c.x), u_input.c.x);
    let var_1 = 622f;
    var var_2 = any(select(!vec3<bool>(any(vec3<bool>(true, true, true)), true, false), !(!func_5(vec4<bool>(true, true, true, true), vec3<u32>(40906u, 37823u, var_0.x), -1721f, vec4<bool>(true, false, true, false)).b.zyz), func_5(vec4<bool>(true, u_input.c.x != u_input.c.x, true, all(vec2<bool>(false, true))), ~(~u_input.c.yxz), 1151f, !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)).b.x));
    let var_3 = select(!select(func_1(Struct_4(-1242i, Struct_2(Struct_1(-577f, vec4<bool>(false, false, false, false))), vec2<bool>(true, false), vec4<bool>(false, true, false, false)), Struct_1(608f, vec4<bool>(true, false, false, false))).c.a.b, vec4<bool>(64752u != u_input.c.x, true, true, true), true), !vec4<bool>(false, all(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true)), false), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(622f, -804f)), _wgslsmith_f_op_f32(select(var_1, 2837f, var_3.x)), var_1, _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1492f, var_1, -604f, var_1)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-256f, -1436f, 2178f, var_1)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-805f, var_1, -1211f, -134f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, -126f, var_1, var_1)))))))), ~(-global2.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1f * var_1), var_1), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-730f, 2140f), vec2<f32>(var_1, 1706f), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, 678f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(var_1 + var_1)))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f)) * _wgslsmith_f_op_f32(func_1(Struct_4(-38866i, Struct_2(global0[_wgslsmith_index_u32(var_0.x, 6u)]), vec2<bool>(var_3.x, false), var_3), Struct_1(-578f, var_3)).c.a.a + _wgslsmith_f_op_f32(-var_1)))));
}

