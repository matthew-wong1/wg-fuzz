struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(74203u, false, true, 13767i), true, vec4<i32>(0i, 1i, -7291i, -43191i), Struct_1(48335u, true, false, i32(-2147483648)), vec3<u32>(1u, 0u, 0u)), Struct_2(Struct_1(0u, true, true, 2147483647i), false, vec4<i32>(-39033i, 17107i, -19215i, -701i), Struct_1(1u, false, true, i32(-2147483648)), vec3<u32>(96524u, 5977u, 0u)));

var<private> global2: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(i32(-2147483648), -22643i, -1i), vec3<i32>(5396i, -40144i, i32(-2147483648)), vec3<i32>(-49920i, 1i, 41305i), vec3<i32>(2147483647i, -22788i, -39442i), vec3<i32>(i32(-2147483648), 5896i, 1i), vec3<i32>(i32(-2147483648), -14507i, 79836i), vec3<i32>(i32(-2147483648), 29978i, 36857i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-20292i, 0i, 46240i), vec3<i32>(-21989i, i32(-2147483648), 0i), vec3<i32>(-49833i, 38414i, -42782i), vec3<i32>(2147483647i, -1i, -52335i), vec3<i32>(2147483647i, -14152i, 1i), vec3<i32>(-1i, 59865i, 0i), vec3<i32>(0i, 44454i, 1i), vec3<i32>(i32(-2147483648), 19429i, 0i), vec3<i32>(1i, 1i, -15864i), vec3<i32>(-29130i, i32(-2147483648), 1566i), vec3<i32>(-5083i, 2147483647i, 10646i), vec3<i32>(-52464i, 11496i, i32(-2147483648)), vec3<i32>(-1i, 23305i, 11574i), vec3<i32>(-49646i, -41001i, 0i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 1i, -48139i), vec3<i32>(0i, i32(-2147483648), -17036i), vec3<i32>(-36415i, 61453i, 2147483647i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(0i, -27341i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -31160i), vec3<i32>(-1i, -20621i, -56505i));

var<private> global3: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(1u, 45270u), vec2<u32>(44744u, 1u), vec2<u32>(58296u, 4294967295u), vec2<u32>(16733u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 23966u), vec2<u32>(52325u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(39872u, 21812u), vec2<u32>(18452u, 1u), vec2<u32>(1u, 1u), vec2<u32>(48659u, 0u), vec2<u32>(4756u, 38272u), vec2<u32>(35630u, 3678u));

var<private> global4: array<i32, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    global2 = array<vec3<i32>, 31>();
    let var_0 = -global4[_wgslsmith_index_u32(~(~min(~u_input.e, u_input.e ^ 50795u)), 26u)];
    var var_1 = ~(~u_input.c);
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32((u_input.e & var_1.x) << ((u_input.e >> (0u % 32u)) % 32u), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.b.x), ~68041u, ~var_1.x)), 2u)];
    var_1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(select(~21695u, var_1.x | 0u, var_2.b && true), var_2.a.a, _wgslsmith_add_u32(~25060u, var_1.x), u_input.e), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_2.e.x, u_input.b.x, 32930u, 41342u)), ~vec4<u32>(54628u, var_1.x, 46309u, var_2.a.a)), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(0u, 16872u, u_input.c.x, var_1.x)), vec4<u32>(4294967295u >> (0u % 32u), ~12653u, _wgslsmith_add_u32(var_2.a.a, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_2.e.x, var_2.d.a, var_2.a.a), u_input.c))), u_input.c);
    return vec3<bool>(all(select(!vec2<bool>(false, var_2.b), !vec2<bool>(var_2.a.c, false), var_2.d.c)) && true, all(vec4<bool>(var_2.b, var_2.d.b, true, all(!vec2<bool>(var_2.d.b, true)))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = arg_1;
    var var_1 = arg_0.a;
    let var_2 = !all(vec4<bool>(_wgslsmith_dot_vec2_i32(arg_2, arg_2) != (arg_2.x >> (0u % 32u)), all(vec2<bool>(var_0.c, arg_1.b)) && true, all(!vec3<bool>(arg_0.c, arg_1.c, arg_0.b)), var_0.b));
    var_1 = _wgslsmith_add_u32(0u, (select(_wgslsmith_div_u32(0u, 4294967295u), select(u_input.b.x, 0u, arg_1.c), true) >> (arg_3.x % 32u)) | arg_3.x);
    let var_3 = vec4<u32>(~1u, ~(countOneBits(abs(arg_1.a)) | arg_1.a), 55289u, ~(~_wgslsmith_sub_u32(1u, 1u)));
    return abs(~vec2<u32>(arg_0.a, arg_0.a));
}

fn func_2() -> Struct_2 {
    global3 = array<vec2<u32>, 15>();
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.c.xy, vec2<u32>(37102u, u_input.e));
    var_1 = ~func_4(Struct_1(7963u, all(vec4<bool>(false, false, false, false)) && true, true, 0i), Struct_1(~min(u_input.c.x, 1287u), false, true, ~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(2147483647i, -1i, u_input.d.x, -42544i))), u_input.d.xw << ((~vec2<u32>(var_1.x, 1u) | vec2<u32>(8862u, u_input.c.x)) % vec2<u32>(32u)), select(_wgslsmith_clamp_vec3_u32(u_input.c.zzw, u_input.c.wyw, vec3<u32>(127005u, 21035u, 105639u) >> (vec3<u32>(u_input.c.x, 26733u, 4294967295u) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(26155u, 0u, 4201u), vec3<u32>(u_input.e, 0u, u_input.c.x)), !func_3()));
    var var_2 = Struct_1(var_1.x, select(any(vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true)), 0i > (-global4[_wgslsmith_index_u32(u_input.e, 26u)] << (~var_1.x % 32u)), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), true, -25117i);
    return global0[_wgslsmith_index_u32(~0u, 23u)];
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = 1u;
    let var_1 = func_2();
    var var_2 = min(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(83837u, 26u)], 0i) & -1i, 1601i), reverseBits(-1i));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-290f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1463f))))));
    var var_4 = (func_4(var_1.a, var_1.a, ~vec2<i32>(-28697i, u_input.d.x), func_2().e) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_1.d.a, 1u)), vec2<u32>(select(u_input.c.x, 0u, true), _wgslsmith_mod_u32(0u, u_input.c.x))) % vec2<u32>(32u))) | ~vec2<u32>(var_1.e.x, _wgslsmith_mod_u32(var_0, arg_0.a));
    return var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c) < ~0u, any(vec2<bool>(false, true & (u_input.a > global4[_wgslsmith_index_u32(34001u, 26u)]))), u_input.c.x < 1u);
    global4 = array<i32, 26>();
    let var_1 = 1i;
    global0 = array<Struct_2, 23>();
    global1 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(57487u, _wgslsmith_dot_vec3_u32(u_input.c.zww, u_input.c.zwy) << (~u_input.e % 32u), 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.e, 47890u), ~7911u, _wgslsmith_div_u32(1u, 1u)), vec3<u32>(countOneBits(4294967295u), ~u_input.c.x, ~0u)), u_input.c.yxy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f * -1676f) - -761f), func_1(Struct_1(u_input.e, var_0.x, var_0.x, global4[_wgslsmith_index_u32(u_input.b.x, 26u)]))))), _wgslsmith_clamp_vec4_i32(~u_input.d, ~(vec4<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 26u)], -1i, var_1, -20830i) ^ -vec4<i32>(42266i, 0i, 0i, var_1)), ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_1, u_input.d.x, u_input.a), u_input.d), vec4<i32>(-1i, -20315i, var_1, var_1))));
}

