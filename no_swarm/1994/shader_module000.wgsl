struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
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

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(1i, Struct_2(2147483647i, vec4<i32>(39105i, 2147483647i, -75792i, -8011i), Struct_1(vec4<i32>(-1i, 63700i, -51886i, 0i), i32(-2147483648), 44596i, vec3<i32>(1i, -66060i, 21117i), false)), Struct_1(vec4<i32>(12286i, 1i, 48181i, -1i), -50212i, -19766i, vec3<i32>(2147483647i, i32(-2147483648), 54245i), true)), Struct_3(-1i, Struct_2(1i, vec4<i32>(-1i, -27552i, -1i, 1i), Struct_1(vec4<i32>(0i, 59932i, 14045i, 56593i), 3588i, 0i, vec3<i32>(-31741i, -41549i, 2147483647i), true)), Struct_1(vec4<i32>(-102607i, i32(-2147483648), 12256i, 31771i), -1i, 0i, vec3<i32>(-49496i, -11917i, -12072i), false)), Struct_3(-5360i, Struct_2(i32(-2147483648), vec4<i32>(-6641i, 12862i, -26839i, 1i), Struct_1(vec4<i32>(30780i, 0i, -1i, -2565i), 32149i, 1i, vec3<i32>(-1i, -53900i, 2147483647i), true)), Struct_1(vec4<i32>(1775i, i32(-2147483648), 2147483647i, 74168i), -60020i, i32(-2147483648), vec3<i32>(2147483647i, -8939i, -17651i), true)), Struct_3(5146i, Struct_2(21171i, vec4<i32>(1i, -11746i, 2147483647i, -29865i), Struct_1(vec4<i32>(-30483i, -24688i, -29568i, 4453i), 0i, 2147483647i, vec3<i32>(0i, 10461i, 42139i), true)), Struct_1(vec4<i32>(-19241i, -10521i, -1i, i32(-2147483648)), 16547i, 1i, vec3<i32>(30620i, -1i, -18214i), true)), Struct_3(2147483647i, Struct_2(2147483647i, vec4<i32>(0i, 1i, 37778i, 0i), Struct_1(vec4<i32>(i32(-2147483648), -31579i, -1839i, -31599i), 0i, -32164i, vec3<i32>(-36315i, -1i, 44395i), false)), Struct_1(vec4<i32>(2147483647i, -16764i, 1i, i32(-2147483648)), 1i, 8765i, vec3<i32>(22310i, -5843i, -9452i), true)), Struct_3(1i, Struct_2(1i, vec4<i32>(0i, -7633i, 11338i, -1i), Struct_1(vec4<i32>(-8627i, 1i, -1i, -7283i), 1i, -24717i, vec3<i32>(i32(-2147483648), 0i, 18282i), false)), Struct_1(vec4<i32>(i32(-2147483648), 1i, -71470i, -40087i), -8849i, 3875i, vec3<i32>(2147483647i, 14293i, 2147483647i), true)), Struct_3(16429i, Struct_2(i32(-2147483648), vec4<i32>(1i, i32(-2147483648), -1i, -1i), Struct_1(vec4<i32>(0i, 55411i, i32(-2147483648), i32(-2147483648)), 917i, -16856i, vec3<i32>(-25168i, 1i, 3808i), true)), Struct_1(vec4<i32>(27146i, -1i, -29414i, 58085i), -1i, -68102i, vec3<i32>(i32(-2147483648), -59600i, -36534i), false)), Struct_3(1i, Struct_2(i32(-2147483648), vec4<i32>(31077i, -37369i, 33415i, 32988i), Struct_1(vec4<i32>(108365i, 1i, -907i, -3406i), -1i, -4296i, vec3<i32>(1i, -32001i, 9396i), false)), Struct_1(vec4<i32>(0i, -57025i, 0i, 2147483647i), 23917i, 39483i, vec3<i32>(-2716i, 1i, -44920i), true)), Struct_3(-1i, Struct_2(i32(-2147483648), vec4<i32>(i32(-2147483648), 23678i, 2147483647i, 0i), Struct_1(vec4<i32>(0i, 10698i, 2023i, -1i), -1i, 44093i, vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), false)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 30154i, -1985i), 1i, 0i, vec3<i32>(-4608i, 34249i, 0i), true)), Struct_3(-11322i, Struct_2(-55989i, vec4<i32>(-23059i, 2147483647i, -7883i, 38647i), Struct_1(vec4<i32>(i32(-2147483648), 15717i, -4495i, 7524i), i32(-2147483648), i32(-2147483648), vec3<i32>(-1i, 0i, -1i), true)), Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i), i32(-2147483648), -18527i, vec3<i32>(4411i, -30298i, -1i), true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<Struct_3, 10>();
    let var_0 = u_input.a.x;
    var var_1 = ~((_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(0u, 7u, u_input.a.x, 56612u)) | 4294967295u) & (abs(var_0) & ~u_input.a.x));
    var var_2 = u_input.b.x;
    global0 = array<Struct_3, 10>();
    return select(select(vec3<bool>(any(!vec2<bool>(arg_0.e, true)), true | !arg_0.e, all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.e, arg_0.e, false), arg_0.e))), vec3<bool>(false, true, true), arg_0.e), !vec3<bool>(var_0 <= u_input.a.x, !arg_0.e, arg_0.e), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), var_0 <= var_0)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(arg_0.x & ~(-firstTrailingBit(u_input.b.x)), ~u_input.b, Struct_1(-arg_0, abs(firstTrailingBit(min(1i, u_input.b.x))), 0i, vec3<i32>((arg_0.x >> (1u % 32u)) ^ (arg_0.x | arg_0.x), -11385i, -firstTrailingBit(-13180i)), all(func_3(Struct_1(vec4<i32>(arg_0.x, u_input.b.x, u_input.b.x, 0i), 1i, u_input.b.x, vec3<i32>(arg_0.x, u_input.b.x, 2147483647i), true)))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-231f, 571f, -499f) + vec3<f32>(1054f, -1365f, -348f)) * vec3<f32>(-1267f, -630f, -1000f))))), vec3<f32>(284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1004f, 711f)))) * _wgslsmith_f_op_f32(-919f * _wgslsmith_f_op_f32(step(-873f, 2056f)))), _wgslsmith_f_op_f32(exp2(1f))));
    let var_2 = !select(!select(!vec4<bool>(true, var_0.c.e, true, var_0.c.e), vec4<bool>(false, true, var_0.c.e, var_0.c.e), select(vec4<bool>(false, false, var_0.c.e, false), vec4<bool>(false, var_0.c.e, var_0.c.e, var_0.c.e), var_0.c.e)), !(!vec4<bool>(var_0.c.e, true, false, var_0.c.e)), !select(vec4<bool>(var_0.c.e, var_0.c.e, var_0.c.e, var_0.c.e), select(vec4<bool>(false, true, var_0.c.e, true), vec4<bool>(var_0.c.e, false, true, var_0.c.e), false), vec4<bool>(true, var_0.c.e, var_0.c.e, false)));
    let var_3 = Struct_2(arg_0.x << (u_input.a.x % 32u), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 2147483647i, -1i, -1i) & u_input.b), vec4<i32>(_wgslsmith_add_i32(9054i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.d.x, u_input.b.x, 2147483647i), u_input.b.xzw), i32(-1i) * -1075i, _wgslsmith_add_i32(arg_0.x, arg_0.x))), arg_0), var_0.c);
    var var_4 = u_input.a.x;
    return Struct_1(var_0.b, ~var_3.b.x, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(firstLeadingBit(u_input.b), abs(vec4<i32>(var_0.a, arg_0.x, var_3.c.d.x, 0i))), vec4<i32>(select(52788i, -1i, false), -7326i, arg_0.x, var_3.b.x)), vec3<i32>(~_wgslsmith_mod_i32(-326i, var_0.b.x), max(_wgslsmith_div_i32(var_0.b.x, arg_0.x), u_input.b.x & 2147483647i), -2147483647i) << (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31969u, 39148u), u_input.a.ww), ~4294967295u), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.wx), firstLeadingBit(vec2<u32>(u_input.a.x, 1u))), ~u_input.a.x) % vec3<u32>(32u)), var_1.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 1f));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_5 {
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    var var_0 = func_2(u_input.b).a;
    global0 = array<Struct_3, 10>();
    var var_1 = -106f;
    return Struct_5(global0[_wgslsmith_index_u32(abs(4294967295u), 10u)], Struct_3(_wgslsmith_clamp_i32(~(~u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 17661i), u_input.b.yy), u_input.b.x), Struct_2(1i, firstLeadingBit(~vec4<i32>(var_0.x, -25110i, -2147483647i, 2147483647i)), Struct_1(vec4<i32>(u_input.b.x, 1i, var_0.x, var_0.x), ~arg_0.a.x, abs(arg_0.a.x), vec3<i32>(-1i, arg_0.c, var_0.x), true)), arg_0));
}

fn func_1() -> vec2<bool> {
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    var var_0 = func_4(func_2(u_input.b), 1f);
    let var_1 = global0[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_add_u32(~min(_wgslsmith_add_u32(u_input.a.x, 738u), 0u), abs(firstLeadingBit(~18221u)))), 10u)];
    return !vec2<bool>(var_1.c.e, (var_0.b.c.c & _wgslsmith_sub_i32(var_0.a.b.b.x, var_1.c.b)) >= _wgslsmith_div_i32(func_2(vec4<i32>(var_0.a.a, -1i, 2147483647i, 43012i)).a.x, ~82278i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    var var_0 = u_input.b.xz;
    var var_1 = var_0.x;
    var var_2 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, true), select(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, all(func_1()), true), true), true);
    var var_3 = Struct_3(62867i, func_4(Struct_1(u_input.b, -_wgslsmith_mod_i32(0i, 1i), var_0.x, u_input.b.xyy, (var_2.x || false) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 1596f), -515f)))).b.b, func_4(func_2(vec4<i32>(var_0.x, 1i, var_0.x >> (u_input.a.x % 32u), var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -846f)))).a.c);
    global0 = array<Struct_3, 10>();
    var_1 = -min(_wgslsmith_mod_i32(reverseBits(33192i), 14417i ^ var_3.c.d.x), var_3.b.b.x) | ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.d.x ^ var_3.b.c.a.x);
}

