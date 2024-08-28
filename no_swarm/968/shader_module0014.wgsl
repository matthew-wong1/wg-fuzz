struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 16>;

var<private> global1: array<u32, 20> = array<u32, 20>(66057u, 37335u, 81702u, 44421u, 6161u, 4569u, 4294967295u, 4294967295u, 0u, 1u, 88616u, 30976u, 0u, 22045u, 18026u, 24149u, 1636u, 21465u, 0u, 26629u);

var<private> global2: Struct_1 = Struct_1(-1i, 0u, false);

var<private> global3: array<Struct_1, 12>;

var<private> global4: array<f32, 24> = array<f32, 24>(1358f, 259f, -1076f, 1320f, -695f, 389f, -1000f, -1161f, -437f, -1000f, 3018f, 1742f, -237f, 1374f, -743f, -689f, 852f, 501f, -571f, 731f, 1000f, 359f, 168f, -1000f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    global3 = array<Struct_1, 12>();
    var var_0 = Struct_1(-(~18876i), 37386u, true);
    var var_1 = abs(vec3<u32>(34439u, global2.b, _wgslsmith_mod_u32(firstLeadingBit(69258u), ~0u))) | firstTrailingBit(vec3<u32>(~global2.b, max(var_0.b, 4294967295u), _wgslsmith_mod_u32(arg_0.x, var_0.b) >> (66467u % 32u)));
    var var_2 = !vec4<bool>(!global2.c, !(!(var_0.b < 0u)), true, true);
    let var_3 = select(select(vec4<bool>(all(!var_2.xyx), global2.c, true, !global2.c), select(!select(vec4<bool>(global2.c, true, true, true), vec4<bool>(var_0.c, var_2.x, var_2.x, true), var_0.c), select(!vec4<bool>(true, false, var_2.x, var_0.c), !vec4<bool>(var_2.x, global2.c, true, global2.c), vec4<bool>(var_2.x, true, false, var_0.c)), var_2.x), any(vec4<bool>(global2.c || var_2.x, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.x > 67830u, 0u <= arg_0.x, global2.a < u_input.b.x), !(!global2.c)), select(select(vec4<bool>(var_0.c, true, var_2.x, var_2.x), !vec4<bool>(var_0.c, var_0.c, false, false), vec4<bool>(var_2.x, var_0.c, var_2.x, global2.c)), !vec4<bool>(true, var_0.c, var_2.x, var_2.x), vec4<bool>(var_0.b <= var_0.b, !var_0.c, true, false)), vec4<bool>(false, true, true, true)), !var_0.c);
    return vec3<bool>(any(!vec2<bool>(var_3.x, false & var_0.c)), any(select(!(!vec4<bool>(true, false, true, var_2.x)), var_3, select(vec4<bool>(global2.c, var_2.x, global2.c, false), !var_3, var_3))), false);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(vec3<bool>(global2.b < (_wgslsmith_clamp_u32(24453u, 4294967295u, global2.b) << (30986u % 32u)), any(func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.b, 17158u), vec2<u32>(4294967295u, arg_0.c)))), true), global3[_wgslsmith_index_u32(~4294967295u, 12u)], _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(max(u_input.b | vec2<i32>(u_input.b.x, 1i), u_input.b | vec2<i32>(u_input.b.x, 2147483647i)), (vec2<i32>(u_input.b.x, -21549i) << (vec2<u32>(44458u, global1[_wgslsmith_index_u32(14700u, 20u)]) % vec2<u32>(32u))) & vec2<i32>(9806i, global2.a)), _wgslsmith_mod_vec2_i32(-(~u_input.b), countOneBits(~vec2<i32>(-26122i, u_input.b.x)))), Struct_1(_wgslsmith_clamp_i32(arg_0.b, ~0i, -28003i ^ _wgslsmith_mod_i32(-24540i, arg_0.b)), reverseBits(1u), any(select(!vec4<bool>(true, true, arg_0.a, true), select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(global2.c, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), vec4<bool>(global2.c, true, false, arg_0.a)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: Struct_3) -> Struct_2 {
    global1 = array<u32, 20>();
    global2 = Struct_1(~(~((62249i >> (u_input.a % 32u)) ^ arg_2.b)), 48857u, min(u_input.b.x, arg_2.b) < arg_2.d);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(step(-1209f, -1631f)));
    var var_1 = Struct_4(func_2(Struct_5(any(vec4<bool>(true, false, arg_2.a, arg_2.a)) & (false || arg_2.a), firstLeadingBit(~11950i), 46194u, _wgslsmith_dot_vec4_i32(vec4<i32>(-36708i, -13242i, arg_2.b, u_input.b.x) | vec4<i32>(global2.a, u_input.b.x, -1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.a, global2.a, u_input.b.x, -78633i), vec4<i32>(10831i, -1i, 6112i, u_input.b.x)))), Struct_3(1000f)), 4294967295u);
    global2 = func_2(Struct_5(false | (global2.a >= 1i), -1i, 67337u, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, 0i), vec3<i32>(-2147483647i, global2.a, u_input.b.x)), var_1.a.c.x >> (7919u % 32u)) & (arg_2.b >> (4294967295u % 32u))), arg_3).b;
    return Struct_2(func_3(vec2<u32>(~global1[_wgslsmith_index_u32(21135u, 20u)] | 4370u, firstTrailingBit(38182u))), global3[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.b, u_input.b) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a, 25355i), vec2<i32>(var_1.a.d.a, arg_2.b), _wgslsmith_sub_vec2_i32(var_1.a.c, u_input.b)), u_input.b), var_1.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(select(select(vec2<bool>(false, global2.c), !vec2<bool>(global2.c, global2.c), vec2<bool>(global2.c, global2.c)), !vec2<bool>(true, global2.c), select(vec2<bool>(global2.c, false), select(vec2<bool>(global2.c, false), vec2<bool>(false, global2.c), global2.c), -952f != global4[_wgslsmith_index_u32(u_input.a, 24u)])), vec2<bool>(!any(vec2<bool>(global2.c, false)), false), vec2<bool>(false, true)), vec3<f32>(978f, global4[_wgslsmith_index_u32(select(countOneBits(global1[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_div_u32(~0u, ~83181u), all(vec4<bool>(global2.c, global2.c, true, true))), 24u)], -470f), Struct_5(global2.c, ~reverseBits(~(-16878i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 13008u, global1[_wgslsmith_index_u32(10405u, 20u)], u_input.a), firstTrailingBit(vec4<u32>(4294967295u, global2.b, 9248u, global2.b)) << (~vec4<u32>(global2.b, global1[_wgslsmith_index_u32(global2.b, 20u)], u_input.a, global2.b) % vec4<u32>(32u))), ~min(min(22471i, -75639i), global2.a)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b, 20u)], 24u)] * 508f) - global4[_wgslsmith_index_u32(u_input.a, 24u)])));
    let var_1 = !vec3<bool>(global2.c, !(!func_3(vec2<u32>(var_0.b.b, 4294967295u)).x), !all(vec2<bool>(var_0.a.x, false)));
    var var_2 = var_0.b.c;
    var var_3 = func_2(Struct_5(var_0.b.c, -33948i, reverseBits(11340u), ~_wgslsmith_clamp_i32(-var_0.c.x, ~u_input.b.x, -35029i | var_0.c.x)), Struct_3(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(50391u, var_0.d.b), vec2<u32>(0u, var_0.d.b)), 24u)]))).b;
    let var_4 = ~vec4<u32>(u_input.a & 14995u, var_0.b.b, var_0.b.b, ~reverseBits(_wgslsmith_clamp_u32(var_3.b, var_3.b, global2.b)));
    global3 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(abs(var_4.x), 24u)], max(var_4.zy, var_4.zw) | _wgslsmith_div_vec2_u32(select(vec2<u32>(0u, 4294967295u), var_4.zy | vec2<u32>(var_3.b, var_0.d.b), select(var_3.c, true, var_1.x)), vec2<u32>(~global1[_wgslsmith_index_u32(85768u, 20u)], _wgslsmith_dot_vec4_u32(var_4, var_4))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -983f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-255f, _wgslsmith_f_op_f32(f32(-1f) * -1657f))) * global4[_wgslsmith_index_u32(~1u >> (var_4.x % 32u), 24u)]), all(var_1))));
}

