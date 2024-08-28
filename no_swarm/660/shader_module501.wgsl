struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, 83354u, vec4<u32>(28178u, 15203u, 33359u, 0u)), Struct_1(false, 62529u, vec4<u32>(0u, 27791u, 1u, 22303u)), Struct_1(false, 1u, vec4<u32>(45632u, 1u, 1u, 0u)), Struct_1(false, 36103u, vec4<u32>(4294967295u, 46872u, 13610u, 3208u)), Struct_1(false, 4294967295u, vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_1(true, 4294967295u, vec4<u32>(48652u, 0u, 6978u, 42719u)), Struct_1(false, 4294967295u, vec4<u32>(4294967295u, 71792u, 1u, 0u)), Struct_1(true, 4294967295u, vec4<u32>(1u, 55263u, 55045u, 1u)), Struct_1(false, 0u, vec4<u32>(0u, 4494u, 47768u, 1951u)), Struct_1(true, 35901u, vec4<u32>(2566u, 0u, 80199u, 55335u)), Struct_1(false, 43761u, vec4<u32>(59548u, 4294967295u, 27698u, 0u)), Struct_1(true, 1u, vec4<u32>(1u, 37502u, 0u, 5034u)), Struct_1(false, 1u, vec4<u32>(5370u, 4294967295u, 1u, 72498u)), Struct_1(true, 1u, vec4<u32>(1u, 64843u, 34109u, 26400u)), Struct_1(false, 1u, vec4<u32>(0u, 4294967295u, 70226u, 11501u)), Struct_1(false, 4294967295u, vec4<u32>(30437u, 0u, 2920u, 4873u)), Struct_1(true, 104159u, vec4<u32>(0u, 50054u, 0u, 4294967295u)), Struct_1(true, 50162u, vec4<u32>(111470u, 0u, 54103u, 34526u)), Struct_1(false, 0u, vec4<u32>(5043u, 1u, 4294967295u, 4294967295u)), Struct_1(true, 4294967295u, vec4<u32>(60999u, 18193u, 13993u, 264u)), Struct_1(false, 24911u, vec4<u32>(37129u, 0u, 7989u, 14164u)), Struct_1(true, 493u, vec4<u32>(26181u, 4294967295u, 0u, 4034u)), Struct_1(true, 4294967295u, vec4<u32>(0u, 0u, 0u, 12544u)), Struct_1(true, 45152u, vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), Struct_1(false, 75990u, vec4<u32>(4294967295u, 61161u, 3446u, 1u)), Struct_1(true, 41140u, vec4<u32>(1u, 44681u, 0u, 19556u)), Struct_1(false, 1u, vec4<u32>(28011u, 28436u, 16480u, 23236u)), Struct_1(false, 4294967295u, vec4<u32>(1u, 19192u, 1u, 15482u)), Struct_1(false, 20369u, vec4<u32>(131561u, 0u, 0u, 4294967295u)), Struct_1(false, 0u, vec4<u32>(42028u, 32544u, 1u, 10334u)), Struct_1(false, 24938u, vec4<u32>(48231u, 1u, 4609u, 0u)), Struct_1(false, 4294967295u, vec4<u32>(1u, 0u, 48050u, 1u)));

var<private> global1: array<Struct_2, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_2, 26>();
    global0 = array<Struct_1, 32>();
    let var_0 = ~countOneBits(vec2<i32>(~countOneBits(-4660i), abs(countOneBits(1i))));
    let var_1 = Struct_2(arg_1);
    let var_2 = global1[_wgslsmith_index_u32(u_input.d.x, 26u)];
    return _wgslsmith_dot_vec2_i32(var_0, var_0);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec3<i32> {
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(min(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, arg_0.x, arg_1.x), min(arg_0.x, arg_1.x)), _wgslsmith_clamp_u32(u_input.c.x, u_input.d.x, firstTrailingBit(arg_1.x))), 0u, ~47013u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(83111u, 60252u, 4294967295u, 75962u)), select(vec4<u32>(u_input.b, arg_0.x, u_input.d.x, 0u), u_input.c, vec4<bool>(false, true, true, true))) % 32u), 1u));
    var var_1 = 1i;
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(arg_1.x, _wgslsmith_add_u32(u_input.d.x, arg_1.x)), _wgslsmith_dot_vec3_u32(u_input.c.zyw, vec3<u32>(countOneBits(arg_1.x), ~var_0, arg_1.x))), 32u)]);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(881f, 1686f, -992f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) - vec3<f32>(-600f, arg_2.x, 420f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, 180f, arg_2.x))))));
    return vec3<i32>(-26874i, ~reverseBits(i32(-1i) * -2147483647i), 1i);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<i32>(-(~2147483647i), -26591i, _wgslsmith_add_i32(_wgslsmith_mult_i32(~15793i, 1i), func_2(true, arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -1442f, arg_2))), arg_0.a)));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_1.x, 1u, 4294967295u), vec3<u32>(arg_3, ~56843u, arg_3 | arg_0.a.b)), arg_0.a.c.yxy), vec3<u32>(5880u, countOneBits(_wgslsmith_mult_u32(57366u, _wgslsmith_clamp_u32(arg_3, u_input.c.x, arg_0.a.b))), 26081u));
    var_0 = ~abs(countOneBits(vec3<i32>(var_0.x, 1i, 1i)) << (vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_1.x), vec2<u32>(0u, arg_1.x)), arg_1.x) % vec3<u32>(32u)));
    let var_2 = Struct_1(false, _wgslsmith_div_u32(arg_0.a.b, var_1.x), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.c.xw, vec2<u32>(1u, 1u)) >> (~abs(u_input.c.x) % 32u), arg_0.a.b, ~(~arg_1.x | var_1.x), countOneBits(arg_3)));
    var_0 = max(~countOneBits(-func_3(arg_0.a.c.wx, vec2<u32>(4294967295u, arg_1.x), vec2<f32>(1636f, 348f))), ~(vec3<i32>(var_0.x, i32(-1i) * -2952i, -2147483647i) & -vec3<i32>(-59166i, var_0.x, var_0.x)));
    return arg_0.a;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_3.a, arg_3.b, ~func_1(Struct_2(global0[_wgslsmith_index_u32(arg_3.b << (arg_3.c.x % 32u), 32u)]), u_input.c, _wgslsmith_f_op_f32(-978f - _wgslsmith_f_op_f32(f32(-1f) * -363f)), _wgslsmith_clamp_u32(~0u, ~u_input.a.x, min(u_input.d.x, 4294967295u))).c);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1345f))))), _wgslsmith_f_op_f32(step(-189f, 508f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-838f * 704f), _wgslsmith_f_op_f32(min(747f, 1939f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f - -322f))))));
    let var_2 = global1[_wgslsmith_index_u32(0u, 26u)];
    global0 = array<Struct_1, 32>();
    var var_3 = vec3<i32>(-1i, ~select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -13085i), vec2<i32>(2147483647i, arg_2.x) >> (vec2<u32>(u_input.d.x, 37025u) % vec2<u32>(32u))), arg_2.x, arg_3.a), select(arg_2.x, -(i32(-1i) * -62059i), arg_3.a) << (select(_wgslsmith_sub_u32(u_input.d.x, arg_1), ~reverseBits(u_input.a.x), false) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f * -183f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-1i);
    let var_1 = ~(vec4<i32>(-1i) * -(~vec4<i32>(var_0, var_0, var_0, -68592i)));
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, u_input.a.x, var_1.zzz, func_1(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.c, -1651f, u_input.b))) + -1627f) + 1f)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 596f)))) - -434f);
    var var_3 = vec2<bool>(false, all(!vec4<bool>(all(vec3<bool>(true, true, false)), true, u_input.c.x <= u_input.d.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-491f)), -740f))))));
}

