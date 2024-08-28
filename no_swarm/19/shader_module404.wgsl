struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(18812i, 67568u, Struct_1(4294967295u, vec3<i32>(-1i, -1i, 0i), vec4<u32>(1u, 1u, 8523u, 4294967295u), vec4<i32>(-8700i, -51944i, i32(-2147483648), 23783i), vec2<i32>(2147483647i, 378i)), -36967i, Struct_1(96401u, vec3<i32>(-20231i, 2147483647i, -1876i), vec4<u32>(0u, 0u, 0u, 52760u), vec4<i32>(-44984i, i32(-2147483648), 1i, -1408i), vec2<i32>(2147483647i, 0i))));

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(3193i, 89514u, Struct_1(1u, vec3<i32>(23682i, -39279i, -26932i), vec4<u32>(0u, 21126u, 1u, 0u), vec4<i32>(2147483647i, 50357i, 2147483647i, -1i), vec2<i32>(-31215i, 1i)), i32(-2147483648), Struct_1(12592u, vec3<i32>(23028i, 4125i, 0i), vec4<u32>(1u, 1u, 0u, 0u), vec4<i32>(28810i, -39447i, 0i, -13198i), vec2<i32>(1i, 1i))), Struct_3(2147483647i, 22527u, Struct_1(86596u, vec3<i32>(2147483647i, 40466i, -20177i), vec4<u32>(1u, 14047u, 4294967295u, 2191u), vec4<i32>(0i, 43160i, 32179i, 0i), vec2<i32>(1i, -31567i)), -18652i, Struct_1(0u, vec3<i32>(2147483647i, 1i, 0i), vec4<u32>(35028u, 41557u, 1u, 1u), vec4<i32>(35777i, -1i, 1i, 1i), vec2<i32>(21290i, 0i))), Struct_3(i32(-2147483648), 11789u, Struct_1(9240u, vec3<i32>(-1i, 1i, i32(-2147483648)), vec4<u32>(47200u, 5099u, 147149u, 1u), vec4<i32>(i32(-2147483648), 11708i, 9250i, 2147483647i), vec2<i32>(0i, -51446i)), 1i, Struct_1(4294967295u, vec3<i32>(4400i, 1i, 1i), vec4<u32>(38983u, 1u, 11998u, 0u), vec4<i32>(1i, -18748i, -1044i, 0i), vec2<i32>(i32(-2147483648), 0i))));

var<private> global3: u32 = 4275u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_sub_u32(~26656u, reverseBits(arg_0.a));
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(65835u, arg_0.a >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(global1.c.yzy, u_input.a)), arg_0.c.zyz) << (select(u_input.a, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~global1.c.yxw, vec3<u32>(27262u, 5134u, 1u)), ~_wgslsmith_div_vec3_u32(u_input.a, arg_0.c.zxy)), true) % vec3<u32>(32u));
    var var_2 = vec2<u32>(global1.a, 1u);
    let var_3 = 289f;
    global0 = array<Struct_3, 1>();
    return arg_2.x;
}

fn func_3(arg_0: bool) -> u32 {
    global2 = array<Struct_3, 3>();
    var var_0 = vec4<bool>(arg_0, true, arg_0, all(vec4<bool>(arg_0 | arg_0, !(arg_0 || arg_0), !(arg_0 && arg_0), arg_0)));
    let var_1 = Struct_1(~global1.a, global1.b, global1.c, firstLeadingBit(abs(vec4<i32>(countOneBits(global1.d.x), -2147483647i, -global1.d.x, _wgslsmith_div_i32(global1.b.x, global1.e.x)))), abs(~(~(-vec2<i32>(global1.e.x, global1.e.x)))));
    var var_2 = ~(~12259u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-503f)), -408f)), _wgslsmith_f_op_f32(f32(-1f) * -1204f), 650f, _wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1000f - 197f), 2001f, _wgslsmith_f_op_f32(2045f + 1586f), 1102f)))));
    return 0u;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = max(global1.d, _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.b.zx, arg_1.e), -1i, abs(arg_1.b.x), ~(-15271i)), vec4<i32>(global1.d.x, arg_1.b.x, global1.e.x, ~6275i), vec4<i32>(arg_1.e.x, arg_1.e.x, arg_1.e.x, 34951i ^ global1.d.x)), vec4<i32>(firstLeadingBit(global1.d.x) ^ _wgslsmith_dot_vec2_i32(global1.b.zx, vec2<i32>(arg_1.d.x, arg_1.e.x)), abs(_wgslsmith_mod_i32(0i, global1.e.x)), firstLeadingBit(i32(-1i) * -10127i), abs(54970i))));
    global0 = array<Struct_3, 1>();
    global1 = Struct_1(arg_2 << (_wgslsmith_clamp_u32(~(~1u), ~0u, 4294967295u) % 32u), global1.d.wwy, _wgslsmith_mod_vec4_u32(countOneBits(global1.c), global1.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -(global1.d & vec4<i32>(arg_1.d.x, -3312i, var_0.x, -1i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0, abs(vec4<i32>(var_0.x, global1.b.x, -1i, var_0.x)), vec4<i32>(global1.b.x, -1i, 1i, -37064i)), var_0)), var_0.ww);
    var var_1 = Struct_2(var_0);
    var var_2 = global1.c;
    return arg_1;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_1(1u, global1.b, vec4<u32>(4294967295u, global1.c.x, u_input.a.x, u_input.a.x), global1.d, vec2<i32>(global1.e.x, -42133i)), global1.b.x, vec3<f32>(211f, 1264f, 600f), Struct_2(vec4<i32>(global1.b.x, global1.d.x, global1.e.x, 0i))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f), 243f)), 1703f), Struct_1(countOneBits(global1.a) ^ max(global1.c.x, 546u), firstTrailingBit(global1.b), ~(global1.c | (vec4<u32>(global1.a, 4294967295u, global1.c.x, 89249u) >> (global1.c % vec4<u32>(32u)))), firstTrailingBit(vec4<i32>(-2147483647i, -1i, -28979i, global1.b.x) >> (min(global1.c, vec4<u32>(0u, u_input.c, 1u, u_input.b)) % vec4<u32>(32u))), global1.b.zy), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, func_3(global1.c.x <= u_input.a.x)), (firstLeadingBit(global1.a) << (~4294967295u % 32u)) & 15571u));
    let var_1 = Struct_2(var_0.d);
    let var_2 = false;
    global2 = array<Struct_3, 3>();
    global2 = array<Struct_3, 3>();
    return global2[_wgslsmith_index_u32(0u, 3u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_3(1i, min(~u_input.c, func_4(arg_2, Struct_1(1u, vec3<i32>(global1.b.x, arg_1.a.x, 27048i), arg_0.e.c, vec4<i32>(-2147483647i, 1i, global1.d.x, -21901i), vec2<i32>(arg_1.a.x, global1.e.x)), 1u).a | select(arg_0.b, arg_0.e.c.x, false)) | _wgslsmith_sub_u32(~0u, ~_wgslsmith_div_u32(global1.c.x, 24463u)), Struct_1(_wgslsmith_add_u32(global1.a, _wgslsmith_dot_vec4_u32(global1.c, vec4<u32>(92495u, 17206u, global1.a, u_input.c))), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-33120i, -1i, -42115i), vec3<i32>(-18612i, arg_0.c.b.x, -18068i))), func_1().e.c, global1.d, max(-min(vec2<i32>(arg_0.c.e.x, -496i), global1.d.zw), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a, -1i), ~vec2<i32>(global1.b.x, -12278i)))), -11414i, func_4(_wgslsmith_div_vec3_f32(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, 1458f, 731f))), Struct_1(~func_1().c.a, abs(_wgslsmith_mod_vec3_i32(arg_0.c.d.zwy, vec3<i32>(arg_0.c.e.x, arg_1.a.x, arg_0.e.d.x))), vec4<u32>(~u_input.a.x, arg_0.b, u_input.b, ~u_input.c), arg_1.a, arg_0.c.e), countOneBits(24073u)));
    global2 = array<Struct_3, 3>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    let var_1 = global0[_wgslsmith_index_u32(4067u, 1u)];
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), vec3<bool>(!(global1.d.x <= global1.d.x), false, true));
    let var_1 = _wgslsmith_f_op_f32(func_5(func_1(), Struct_2(~global1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-462f - _wgslsmith_f_op_f32(800f * -871f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + 166f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1803f))))))));
    global3 = _wgslsmith_mod_u32(u_input.a.x, max(~28399u, 11599u ^ global1.a) << (1u % 32u));
    var var_2 = !(true && var_0.x);
    var var_3 = Struct_3(select(max(28022i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global1.e, vec2<i32>(global1.e.x, 27491i)), _wgslsmith_mult_vec2_i32(global1.b.yz, global1.b.yy))), -global1.b.x, !any(vec3<bool>(true, var_0.x, var_0.x))), global1.a, func_1().c, max(~4154i, func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, var_1, var_1))), func_4(vec3<f32>(2137f, var_1, var_1), Struct_1(6573u, vec3<i32>(-25009i, global1.b.x, -1i), vec4<u32>(4294967295u, 4294967295u, 1u, global1.c.x), vec4<i32>(-2147483647i, global1.d.x, global1.e.x, global1.d.x), global1.d.wy), 47873u), func_3(true)).d.x) | -global1.b.x, Struct_1(max(66645u, firstLeadingBit(global1.a) & ~1u), global1.d.xzy, vec4<u32>(4294967295u, ~global1.a, _wgslsmith_mod_u32(0u, 1u), _wgslsmith_dot_vec2_u32(global1.c.xw, vec2<u32>(global1.c.x, 33625u))) & _wgslsmith_div_vec4_u32(global1.c, vec4<u32>(11503u, 4294967295u, 13144u, 44412u)), ~vec4<i32>(global1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, -24743i, 1i, 26756i), global1.d), func_4(vec3<f32>(var_1, -966f, 1280f), Struct_1(4294967295u, vec3<i32>(-1i, -27052i, global1.b.x), vec4<u32>(50364u, 4294967295u, u_input.a.x, 0u), global1.d, vec2<i32>(global1.d.x, 2147483647i)), u_input.a.x).b.x, _wgslsmith_mod_i32(-28816i, global1.e.x)), ~(-_wgslsmith_mod_vec2_i32(global1.d.xx, vec2<i32>(global1.b.x, global1.b.x)))));
    var var_4 = !(!var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x);
}

