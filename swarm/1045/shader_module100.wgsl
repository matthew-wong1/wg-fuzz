struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 43998u;

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

var<private> global2: array<bool, 28>;

var<private> global3: Struct_2 = Struct_2(Struct_1(1u, vec2<f32>(-661f, 592f), false, vec2<u32>(4294967295u, 54004u), vec3<u32>(88041u, 1u, 1u)), Struct_1(104132u, vec2<f32>(134f, -511f), true, vec2<u32>(4294967295u, 3435u), vec3<u32>(16468u, 11808u, 26700u)));

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1u, vec2<f32>(236f, -1735f), false, vec2<u32>(45528u, 24484u), vec3<u32>(67306u, 14930u, 17864u)), Struct_1(69316u, vec2<f32>(-2315f, 1000f), true, vec2<u32>(43997u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(1u, vec2<f32>(-1225f, -1326f), true, vec2<u32>(51784u, 2340u), vec3<u32>(31116u, 0u, 23799u)), Struct_1(4294967295u, vec2<f32>(-816f, 680f), true, vec2<u32>(48747u, 1u), vec3<u32>(26364u, 32736u, 854u)), Struct_1(0u, vec2<f32>(1241f, -941f), true, vec2<u32>(26992u, 1u), vec3<u32>(50360u, 42686u, 1u)), Struct_1(0u, vec2<f32>(1606f, -1000f), false, vec2<u32>(0u, 4294967295u), vec3<u32>(1u, 1u, 1u)), Struct_1(46068u, vec2<f32>(1763f, -660f), true, vec2<u32>(4294967295u, 4294967295u), vec3<u32>(1u, 80700u, 96088u)), Struct_1(5330u, vec2<f32>(-605f, 134f), true, vec2<u32>(15378u, 42434u), vec3<u32>(0u, 16950u, 12220u)), Struct_1(13125u, vec2<f32>(1029f, -856f), true, vec2<u32>(27600u, 1u), vec3<u32>(76669u, 71539u, 0u)), Struct_1(57123u, vec2<f32>(121f, 210f), false, vec2<u32>(1624u, 1140u), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(2901u, vec2<f32>(-446f, 1000f), false, vec2<u32>(1u, 1u), vec3<u32>(36672u, 1u, 5218u)), Struct_1(4294967295u, vec2<f32>(-646f, 1188f), true, vec2<u32>(0u, 4294967295u), vec3<u32>(94946u, 71871u, 4294967295u)), Struct_1(4294967295u, vec2<f32>(-1208f, -537f), true, vec2<u32>(10950u, 1u), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(16984u, vec2<f32>(-463f, 1338f), false, vec2<u32>(17558u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(4294967295u, vec2<f32>(500f, -1005f), false, vec2<u32>(33560u, 0u), vec3<u32>(2487u, 6479u, 42529u)), Struct_1(45086u, vec2<f32>(2799f, 974f), true, vec2<u32>(4294967295u, 35613u), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(0u, vec2<f32>(415f, 1375f), true, vec2<u32>(1u, 0u), vec3<u32>(31681u, 4294967295u, 4294967295u)), Struct_1(1u, vec2<f32>(949f, -495f), false, vec2<u32>(4294967295u, 31221u), vec3<u32>(4294967295u, 15808u, 1u)), Struct_1(0u, vec2<f32>(245f, 1923f), false, vec2<u32>(42214u, 57312u), vec3<u32>(16771u, 4294967295u, 39331u)), Struct_1(807u, vec2<f32>(-797f, -2871f), true, vec2<u32>(4294967295u, 48692u), vec3<u32>(0u, 19623u, 93548u)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(max(u_input.c.x, abs(firstLeadingBit(0u))), 20u)], Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.b))), global2[_wgslsmith_index_u32(u_input.c.x, 28u)], select(~_wgslsmith_mult_vec2_u32(vec2<u32>(33033u, global3.a.a), vec2<u32>(1u, u_input.c.x)), vec2<u32>(u_input.c.x, 67866u) >> (~vec2<u32>(global3.a.e.x, global3.b.e.x) % vec2<u32>(32u)), global3.b.c), ~vec3<u32>(max(35840u, global3.a.a), 0u & global3.b.d.x, 0u)));
    return _wgslsmith_div_u32(var_0.b.d.x, 0u);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = global3.b.e;
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(global3.b.e.x, 20u)], Struct_1(firstTrailingBit(select(_wgslsmith_div_u32(var_0.x, u_input.c.x), ~var_0.x, !global2[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.b.b.x, -2124f))), global3.b.c, vec2<u32>(countOneBits(min(var_0.x, 0u)), _wgslsmith_mod_u32(22742u, 4294967295u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 0u, 76183u), global3.a.e, reverseBits(global3.b.e))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~global3.b.a, countOneBits(var_1.a.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(257f, arg_0.x), _wgslsmith_f_op_vec2_f32(arg_0 * var_1.a.b))), var_1.b.c, global3.a.e.xx, var_1.b.e), Struct_1(u_input.c.x, vec2<f32>(1464f, var_1.b.b.x), true, global3.b.d, ~vec3<u32>(35928u, u_input.c.x << (9524u % 32u), _wgslsmith_mod_u32(0u, 14209u))));
    var_1 = Struct_2(var_1.a, Struct_1(var_2.b.e.x | 1u, _wgslsmith_f_op_vec2_f32(step(var_2.a.b, global3.b.b)), false, var_1.b.d, abs(select(var_1.a.e >> (var_2.b.e % vec3<u32>(32u)), global3.b.e, false))));
    let var_3 = _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.a, 2147483647i), vec4<i32>(0i, -55914i, u_input.b, u_input.b)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.d.x, var_2.b.d.x, var_0.x, 4294967295u), vec4<u32>(0u, 101321u, 18963u, 1u)) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.b, u_input.b, 9268i, u_input.a))) & (_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a, 20528i, u_input.b, -2147483647i) << (vec4<u32>(8645u, var_1.a.e.x, var_0.x, global3.a.e.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, 11430i, u_input.b, u_input.a), vec4<i32>(1i, 2147483647i, u_input.b, 0i)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -7425i, 1i, u_input.b), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)))) << (~((vec4<u32>(0u, var_2.a.a, 353u, 21683u) & vec4<u32>(var_0.x, 55666u, 32698u, global3.b.d.x)) << ((vec4<u32>(4294967295u, var_0.x, 0u, 0u) | vec4<u32>(var_0.x, 29410u, global3.a.a, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_sub_u32(u_input.c.x, func_3());
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    global0 = ~func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, arg_0.c.a.b.x)))) | 0u;
    let var_0 = vec3<bool>(false, select(!(!select(arg_0.c.b, arg_0.c.b, arg_0.c.a.c)), false, 1065f > arg_0.c.a.b.x), arg_0.c.b);
    let var_1 = firstLeadingBit(u_input.b);
    global2 = array<bool, 28>();
    global0 = arg_0.c.a.d.x;
    return Struct_2(Struct_1(38409u, vec2<f32>(global3.a.b.x, 919f), var_0.x, ~(~vec2<u32>(1u, global3.b.d.x)) | ~u_input.c.xz, vec3<u32>(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 20547u, 4294967295u, 1u), vec4<u32>(arg_0.c.a.e.x, global3.b.a, 110029u, 57039u)), ~global3.a.d.x) >> (select(~vec3<u32>(u_input.c.x, arg_0.c.a.e.x, 1u), select(global3.a.e, u_input.c, true), select(vec3<bool>(false, var_0.x, false), var_0, var_0.x)) % vec3<u32>(32u))), Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b.b)), !any(vec2<bool>(arg_0.c.b, true)), _wgslsmith_add_vec2_u32(~(~u_input.c.xy), abs(u_input.c.xx) ^ vec2<u32>(arg_0.c.a.d.x, 83033u)), ~vec3<u32>(arg_0.c.a.a, arg_0.c.a.a, arg_0.c.a.d.x) << (abs(vec3<u32>(global3.b.d.x, u_input.c.x, 1u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_2(func_1(Struct_4(-arg_1.yzw, -_wgslsmith_mult_i32(arg_1.x, 65900i), Struct_3(arg_0.a, true, _wgslsmith_mod_vec3_i32(vec3<i32>(-19795i, arg_1.x, -2147483647i), arg_1.xzw)))).a, Struct_1(arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.b.x, arg_0.a.b.x)) + global3.a.b)), global2[_wgslsmith_index_u32(~(~1u), 28u)], u_input.c.yx, abs(arg_0.a.e >> ((vec3<u32>(0u, 2480u, arg_0.a.e.x) ^ u_input.c) % vec3<u32>(32u)))));
    global3 = Struct_2(Struct_1(~24283u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.b)) - vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(select(arg_0.a.b.x, 673f, true)))), true, select(vec2<u32>(u_input.c.x, ~4294967295u), abs(_wgslsmith_div_vec2_u32(arg_2.zy, vec2<u32>(u_input.c.x, 54872u))), any(vec4<bool>(arg_0.b.c, var_0.b.c, true, false))), ~var_0.b.e), global3.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(var_0.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(823f, global3.a.b.x)))), global3.b.b)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_f_op_f32(-1f))), all(!(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 28u)], var_0.a.c)))));
    var var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(global3.a.b));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !func_4(func_1(Struct_4(vec3<i32>(-22079i, 41273i, -12575i), u_input.a, Struct_3(Struct_1(global3.a.d.x, vec2<f32>(global3.a.b.x, 315f), false, vec2<u32>(global3.b.e.x, 119934u), vec3<u32>(39592u, u_input.c.x, global3.a.d.x)), global2[_wgslsmith_index_u32(4294967295u, 28u)], vec3<i32>(1i, -13224i, 21181i)))), vec4<i32>(u_input.a, u_input.a << (54901u % 32u), -u_input.b, 0i), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 14842u), vec4<u32>(u_input.c.x, global3.a.e.x, 4294967295u, 94512u))), true);
    var var_1 = !vec3<bool>(false, all(var_0.xy), false);
    global2 = array<bool, 28>();
    let var_2 = Struct_4(vec3<i32>(0i, _wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(_wgslsmith_sub_i32(-45522i, u_input.a), select(u_input.a, 42577i, true))), firstLeadingBit(~(i32(-1i) * -2621i))), max(-1i, -2147483647i), Struct_3(Struct_1(1u, global3.a.b, global3.a.c && var_0.x, vec2<u32>(1u, global3.b.d.x), _wgslsmith_div_vec3_u32(~u_input.c, vec3<u32>(global3.a.d.x, 16684u, global3.a.a))), false, abs(firstTrailingBit(vec3<i32>(u_input.a, -8550i, 63388i)))));
    global4 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(global3.a.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1353f, global3.a.b.x, var_2.c.a.b.x), vec3<f32>(global3.b.b.x, 1886f, -1838f), var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1338f, global3.a.b.x, global3.a.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.a.b.x, global3.b.b.x, 1062f), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.a.b.x, var_2.c.a.b.x, 650f), vec3<f32>(global3.b.b.x, -521f, global3.a.b.x)))))), -873f, -select(countOneBits(vec4<i32>(2147483647i, u_input.a, u_input.a, -2147483647i) & vec4<i32>(-41908i, -35568i, 26093i, 5541i)), vec4<i32>(u_input.a, 0i, 2147483647i, 14797i) & (vec4<i32>(4079i, 17301i, u_input.b, u_input.a) & vec4<i32>(-2147483647i, var_2.c.c.x, u_input.a, -24313i)), true));
}

