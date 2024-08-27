struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 20>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_3;

var<private> global4: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec2<i32> {
    global1 = array<vec4<f32>, 20>();
    let var_0 = -5106i;
    global3 = Struct_3(select(select(true, true, false), any(select(vec3<bool>(false, global3.a, global3.a), vec3<bool>(global3.a, true, global3.a), global3.a)), true));
    global3 = Struct_3(false);
    global3 = Struct_3(all(select(select(!vec3<bool>(false, false, global3.a), select(vec3<bool>(true, false, false), vec3<bool>(true, global3.a, global3.a), false), vec3<bool>(true, global3.a, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), !vec3<bool>(global3.a, true, global3.a)), _wgslsmith_mod_i32(-1i, global2.x) > (u_input.c.x | -13979i))));
    return u_input.c.zx;
}

fn func_3() -> vec2<f32> {
    global1 = array<vec4<f32>, 20>();
    global3 = Struct_3(true);
    global2 = -vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, -5192i, u_input.b), u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, global2.x, -u_input.a.x, _wgslsmith_sub_i32(-1i, -25539i))), 21587i, -firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, 0i, global2.x)));
    let var_0 = _wgslsmith_f_op_f32(-803f + 2415f);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-845f, var_0)), var_0));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), var_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, 433f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-931f, var_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(394f, var_0), vec2<f32>(var_0, 1454f)))))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_i32((func_2(-10193i, vec2<f32>(arg_0.a.a.x, -1103f), vec4<u32>(42534u, u_input.d.x, u_input.d.x, 2462u), u_input.d) << (~vec2<u32>(arg_1.a.e, 71544u) % vec2<u32>(32u))) << (vec2<u32>(16739u, arg_0.b.a.e) % vec2<u32>(32u)), -(-arg_1.a.d.xz ^ vec2<i32>(33264i, u_input.b))) >> (firstLeadingBit(abs(u_input.d.zy)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_2 = arg_0.b;
    var var_3 = -vec2<i32>(2147483647i, u_input.a.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1343f));
    return arg_1.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(func_2(29550i >> (arg_2.e % 32u), arg_2.a.yz, vec4<u32>(arg_0.x, 68119u, arg_1.c.a.e, 16582u) >> (u_input.d % vec4<u32>(32u)), ~vec4<u32>(19612u, 64448u, arg_2.b, 0u)).x, -1i), vec2<i32>(_wgslsmith_mult_i32(arg_1.c.a.d.x, _wgslsmith_add_i32(arg_2.d.x, -2147483647i)), i32(-1i) * -1i)), 2147483647i, 28509i, u_input.a.x);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(abs(arg_2.d.x), var_0.x ^ 1i) | -57033i), _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, arg_1.c.a.d.x) & arg_1.c.a.d.x, i32(-1i) * -(i32(-1i) * -6764i)));
    var var_2 = _wgslsmith_mult_i32(0i, var_0.x);
    return vec4<i32>(-33169i, var_0.x, ~u_input.b, arg_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-2301f)), 1f))));
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(2147483647i, 3573i, global2.x, -16158i), vec4<i32>(-34269i, global2.x, -62188i, global2.x)), -vec4<i32>(8293i, u_input.b, 21981i, -40966i), ~vec4<i32>(global2.x, u_input.c.x, u_input.b, 55976i)), func_4(vec2<u32>(49282u, u_input.d.x), Struct_4(vec3<bool>(true, false, global3.a), true, Struct_2(Struct_1(vec3<f32>(1063f, -1755f, -1345f), u_input.d.x, true, vec3<i32>(global2.x, 2147483647i, -2147483647i), 0u), true)), func_1(Struct_5(Struct_1(vec3<f32>(1294f, 1000f, 1016f), u_input.d.x, true, global2.zxw, u_input.d.x), Struct_2(Struct_1(vec3<f32>(-1274f, 454f, 933f), 28454u, false, global2.wxx, u_input.d.x), global3.a), vec4<i32>(0i, global2.x, -1i, global2.x)), Struct_2(Struct_1(vec3<f32>(1491f, 2427f, -1676f), 22886u, global3.a, u_input.c, 50900u), false), global3.a))), ~(-(global2.x | -2147483647i)), u_input.b, ~firstLeadingBit(_wgslsmith_div_i32(-33018i, global2.x)));
    var var_1 = Struct_4(vec3<bool>(any(select(select(vec2<bool>(false, global3.a), vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, true)), vec2<bool>(global3.a, global3.a), false)), _wgslsmith_sub_u32(min(u_input.d.x, 11667u), ~4294967295u) == ~23557u, global3.a), all(select(!vec2<bool>(global3.a, false), vec2<bool>(global3.a, true), vec2<bool>(global3.a, false))) || true, Struct_2(Struct_1(func_1(Struct_5(Struct_1(vec3<f32>(146f, 512f, -140f), u_input.d.x, global3.a, vec3<i32>(u_input.c.x, u_input.b, global2.x), 5874u), Struct_2(Struct_1(vec3<f32>(-711f, 115f, -786f), u_input.d.x, true, var_0.xxw, u_input.d.x), false), vec4<i32>(var_0.x, 2842i, 1i, -1i)), Struct_2(Struct_1(vec3<f32>(1000f, -671f, -789f), u_input.d.x, global3.a, vec3<i32>(17584i, 11230i, var_0.x), u_input.d.x), global3.a), global3.a).a, 79382u, any(!vec2<bool>(false, global3.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.yzy, global2.zxz), var_0.zyw | u_input.a, u_input.a ^ global2.zww), u_input.d.x), false));
    let var_2 = vec3<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, -20167i, 0i, -1i) ^ vec4<i32>(-23926i, 2147483647i, 9572i, u_input.b), ~vec4<i32>(0i, var_0.x, var_1.c.a.d.x, var_0.x)), reverseBits(var_0.x >> (u_input.d.x % 32u)), min(var_0.x, 1i));
    var var_3 = Struct_4(var_1.a, !global3.a, var_1.c);
    global1 = array<vec4<f32>, 20>();
    let var_4 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(169f - var_1.c.a.a.x), var_3.c.a.a.x)))), -1000f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1540f, var_3.c.a.a.x)), var_3.c.a.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1836i, u_input.b), vec3<i32>(var_0.x, var_3.c.a.d.x, 1i), vec3<i32>(u_input.a.x, 15838i, var_0.x)) >> (u_input.d.yxx % vec3<u32>(32u))) | reverseBits(var_1.c.a.d), ((func_1(Struct_5(var_1.c.a, Struct_2(var_1.c.a, var_1.a.x), vec4<i32>(var_1.c.a.d.x, -41743i, u_input.b, var_2.x)), Struct_2(var_1.c.a, false), var_1.a.x).e & ~4294967295u) & _wgslsmith_add_u32(1u, 1u)) | ~abs(_wgslsmith_add_u32(4294967295u, var_1.c.a.e)));
}

