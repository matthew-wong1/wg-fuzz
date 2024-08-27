struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 11>;

var<private> global2: vec3<f32> = vec3<f32>(1021f, 1188f, -784f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, _wgslsmith_sub_u32(u_input.a.x, 1u)), u_input.b), ~global0.c), max(u_input.b.x, 4294967295u) << (arg_0.x % 32u), firstLeadingBit(u_input.b.x), 4294967295u);
    global1 = array<vec4<i32>, 11>();
    var var_1 = ~4294967295u;
    global1 = array<vec4<i32>, 11>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1007f, 901f, global2.x) + vec3<f32>(-795f, 176f, 382f))))));
    return select(vec2<bool>(global0.a, !(!all(vec2<bool>(false, global0.a)))), !(!select(global0.d.wx, vec2<bool>(global0.a, global0.a), true)), global0.d.xy);
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, 37930i, 0i, 0i), global1[_wgslsmith_index_u32(2735u, 11u)]) << (~vec4<u32>(0u, ~67624u, 0u, ~u_input.a.x) % vec4<u32>(32u)), abs(countOneBits(select(min(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<i32>(-1i, 41824i, 31570i, global0.b.x), false))), vec4<i32>(select(-firstTrailingBit(global0.b.x), abs(select(0i, -13994i, false)), global0.a), ~0i, global0.b.x, global0.b.x | ~(1i | global0.b.x)));
    var_0 = (~_wgslsmith_sub_vec4_i32(select(vec4<i32>(global0.b.x, global0.b.x, -20686i, global0.b.x), global1[_wgslsmith_index_u32(48261u, 11u)], vec4<bool>(true, false, global0.a, false)), vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)) << (~vec4<u32>(~global0.c, ~1u, reverseBits(global0.c), ~global0.c) % vec4<u32>(32u))) << (vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.c), countOneBits(vec2<u32>(u_input.b.x, global0.c))), global0.c | _wgslsmith_clamp_u32(u_input.b.x >> (4294967295u % 32u), 41953u, global0.c), min(~(4294967295u << (u_input.b.x % 32u)), max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, global0.c, global0.c, global0.c), vec4<u32>(23572u, 0u, global0.c, 0u))))) % vec4<u32>(32u));
    var var_1 = func_3(~abs(min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), u_input.a), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(global0.c, 4294967295u, 17064u)))));
    var var_2 = Struct_2(Struct_1(all(global0.d), ~var_0.yx, abs(1u), global0.d), _wgslsmith_mult_u32(1u, 0u));
    var var_3 = Struct_1(true, abs(select(var_2.a.b, vec2<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i, var_2.a.b.x), _wgslsmith_add_i32(global0.b.x, var_0.x)), all(vec3<bool>(false, false, true)))), global0.c, global0.d);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) * _wgslsmith_f_op_f32(-global2.x)))), global2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(sign(global2.x))));
}

fn func_1(arg_0: Struct_5) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2())));
    let var_0 = arg_0.d.a.a;
    global0 = arg_0.d.a.a;
    global0 = Struct_1((i32(-1i) * -58254i) <= _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global0.b.x, -45948i, global0.b.x, arg_0.a.b.x)), global1[_wgslsmith_index_u32(arg_0.a.c, 11u)]), select(var_0.b, arg_0.d.b.b, false), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.b.c, 56098u, u_input.a.x) << (u_input.a % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(38396u, 4294967295u, var_0.c), vec3<u32>(u_input.b.x, global0.c, arg_0.d.a.a.c))) >> (vec3<u32>(firstLeadingBit(var_0.c), max(arg_0.a.c, 0u), 1u) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(reverseBits(u_input.a), vec3<u32>(90186u, 4294967295u, 5913u))), arg_0.d.a.a.d);
    let var_1 = Struct_5(Struct_1(var_0.a & (max(12527u, 26417u) > arg_0.d.b.c), abs(select(global0.b, ~global0.b, !vec2<bool>(var_0.d.x, var_0.d.x))), ~global0.c << (global0.c % 32u), vec4<bool>(true, any(arg_0.a.d.xxx) | !var_0.a, func_3(vec3<u32>(0u, global0.c, global0.c)).x, !var_0.d.x)), arg_0.b, any(vec2<bool>(true, _wgslsmith_mod_i32(global0.b.x, -1i) > -46972i)), Struct_3(Struct_2(Struct_1(any(vec3<bool>(true, true, false)), ~arg_0.d.b.b, u_input.a.x, vec4<bool>(true, false, true, true)), global0.c), Struct_1(all(!vec2<bool>(var_0.d.x, var_0.a)), arg_0.a.b, reverseBits(4294967295u), vec4<bool>(80697u >= arg_0.d.a.b, !arg_0.d.b.a, true, any(var_0.d.wyz)))));
    return Struct_3(var_1.d.a, Struct_1(true, vec2<i32>(-1i) * -max(vec2<i32>(2147483647i, global0.b.x), vec2<i32>(12489i, -17954i)), var_0.c, !select(var_0.d, select(global0.d, arg_0.a.d, true), vec4<bool>(true, true, false, false))));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: i32) -> vec3<f32> {
    let var_0 = 293f;
    global1 = array<vec4<i32>, 11>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(f32(-1f) * -853f), -1928f)));
    global1 = array<vec4<i32>, 11>();
    var var_1 = all(vec2<bool>(arg_1.c, false));
    return _wgslsmith_f_op_vec3_f32(arg_1.b.wxx * arg_1.b.xzy);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = func_1(Struct_5(func_1(Struct_5(Struct_1(true, vec2<i32>(2147483647i, global0.b.x), global0.c, vec4<bool>(global0.a, global0.d.x, false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1084f, arg_3.x, arg_2, global2.x) * vec4<f32>(868f, arg_3.x, arg_3.x, -1560f)), !global0.d.x, func_1(Struct_5(Struct_1(global0.a, global0.b, u_input.b.x, vec4<bool>(true, global0.d.x, global0.d.x, global0.a)), vec4<f32>(-595f, global2.x, 606f, arg_3.x), global0.d.x, Struct_3(Struct_2(Struct_1(false, vec2<i32>(-1i, -480i), global0.c, vec4<bool>(true, false, false, true)), u_input.a.x), Struct_1(global0.a, arg_0, global0.c, global0.d)))))).a.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -875f, -847f) * vec4<f32>(-1317f, 433f, 773f, -1049f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-936f, 2119f, 532f, 286f)))))), true, func_1(Struct_5(Struct_1(global0.a, global0.b, 41654u, global0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_3.x, 1537f, arg_2) + vec4<f32>(-1000f, global2.x, arg_2, arg_1.x)), global0.a, func_1(Struct_5(Struct_1(global0.a, global0.b, 0u, global0.d), vec4<f32>(arg_2, 1535f, arg_3.x, -1350f), true, Struct_3(Struct_2(Struct_1(true, arg_0, u_input.a.x, vec4<bool>(false, true, global0.a, false)), 22122u), Struct_1(global0.d.x, vec2<i32>(global0.b.x, 2147483647i), global0.c, vec4<bool>(global0.a, global0.a, true, global0.d.x))))))))).a;
    global0 = var_0.a;
    let var_1 = ~4294967295u;
    return Struct_3(Struct_2(func_1(Struct_5(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1230f, -162f, arg_1.x) - vec4<f32>(arg_1.x, arg_2, -916f, arg_3.x)), all(global0.d), Struct_3(var_0, var_0.a))).b, _wgslsmith_mod_u32(~4294967295u, ~var_0.b)), func_1(Struct_5(func_1(Struct_5(var_0.a, vec4<f32>(175f, 2449f, -1649f, arg_2), var_0.a.d.x, Struct_3(Struct_2(var_0.a, 148u), Struct_1(var_0.a.d.x, arg_0, 41070u, vec4<bool>(true, false, true, true))))).a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -1200f, 754f, arg_1.x)), !all(var_0.a.d.zzw), func_1(Struct_5(Struct_1(false, var_0.a.b, 1u, var_0.a.d), vec4<f32>(arg_1.x, -685f, 735f, 2054f), global0.a, Struct_3(Struct_2(var_0.a, var_1), var_0.a))))).a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(countOneBits(global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4((global0.c != 79471u) || !global0.d.x, Struct_5(Struct_1(false, global0.b, global0.c, vec4<bool>(global0.a, global0.d.x, global0.d.x, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, 879f, -467f), vec4<f32>(global2.x, 1260f, -1055f, 1825f), global0.d)), !global0.d.x, func_1(Struct_5(Struct_1(true, global0.b, u_input.b.x, global0.d), vec4<f32>(1023f, global2.x, global2.x, global2.x), false, Struct_3(Struct_2(Struct_1(global0.a, global0.b, u_input.b.x, global0.d), 4294967295u), Struct_1(global0.d.x, vec2<i32>(-1i, 104242i), 30331u, vec4<bool>(global0.a, true, global0.a, false)))))), abs(_wgslsmith_sub_vec2_i32(global0.b, global0.b)), global0.b.x))), global2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.xy)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2()).yx)))));
    let var_1 = Struct_4(1u, func_1(Struct_5(Struct_1(var_0.a.a.a && false, vec2<i32>(2147483647i, global0.b.x), 4294967295u, !global0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-555f, global2.x, global2.x, global2.x) + vec4<f32>(global2.x, 533f, -190f, -347f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1564f, global2.x, -469f, global2.x))), true, func_5(select(vec2<i32>(global0.b.x, 1i), vec2<i32>(global0.b.x, var_0.b.b.x), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 2020f, -697f)), _wgslsmith_f_op_f32(-global2.x), global2.yy))).a.a, func_3(select(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(var_0.a.a.c, global0.c, global0.c)), ~vec3<u32>(0u, global0.c, var_0.a.b), false) << (u_input.a % vec3<u32>(32u))));
    let var_2 = firstLeadingBit(~_wgslsmith_mult_vec3_i32(-vec3<i32>(6704i, var_0.a.a.b.x, global0.b.x), ~vec3<i32>(-24181i, global0.b.x, var_0.a.a.b.x)));
    var var_3 = Struct_5(var_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1300f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(1498f - 697f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-445f)), global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_vec3_f32(func_4(var_1.c.x, Struct_5(Struct_1(true, vec2<i32>(var_2.x, 230i), 46324u, vec4<bool>(false, false, var_1.c.x, var_1.c.x)), vec4<f32>(global2.x, -1069f, 2058f, global2.x), true, Struct_3(Struct_2(var_1.b, u_input.b.x), Struct_1(global0.a, var_2.xz, 1u, var_1.b.d))), vec2<i32>(1i, -2147483647i), var_0.a.a.b.x)).x)), !vec4<bool>(var_1.c.x, true, var_1.c.x, var_0.b.d.x))), global0.a, func_1(Struct_5(func_1(Struct_5(var_0.b, vec4<f32>(global2.x, -440f, -110f, global2.x), true, Struct_3(var_0.a, var_0.a.a))).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-876f, global2.x, global2.x, -1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.x, global2.x, 530f) * vec4<f32>(global2.x, global2.x, global2.x, -1000f))), all(func_1(Struct_5(var_1.b, vec4<f32>(global2.x, global2.x, 393f, global2.x), false, Struct_3(var_0.a, var_1.b))).a.a.d.xz), Struct_3(func_5(var_0.b.b, vec3<f32>(global2.x, -353f, global2.x), global2.x, global2.yx).a, var_1.b))));
    global0 = Struct_1(var_1.c.x, var_0.a.a.b, func_1(Struct_5(var_3.d.a.a, var_3.b, !(var_0.b.b.x > var_3.d.b.b.x), var_3.d)).b.c, !select(vec4<bool>(var_2.x == var_3.d.a.a.b.x, var_0.a.a.a, true, true), select(!vec4<bool>(var_1.c.x, true, false, var_0.b.d.x), func_1(Struct_5(Struct_1(global0.d.x, vec2<i32>(-2147483647i, 14071i), 75624u, vec4<bool>(true, var_3.c, var_1.b.d.x, var_0.a.a.a)), vec4<f32>(global2.x, var_3.b.x, -1000f, global2.x), var_0.a.a.d.x, Struct_3(Struct_2(var_3.a, global0.c), Struct_1(false, vec2<i32>(var_3.a.b.x, -1i), var_0.b.c, global0.d)))).a.a.d, select(var_3.d.a.a.d, var_1.b.d, vec4<bool>(false, var_0.b.d.x, var_3.a.d.x, var_3.d.b.a))), all(func_5(vec2<i32>(33724i, var_3.d.a.a.b.x), var_3.b.zzy, var_3.b.x, var_3.b.xx).a.a.d.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~31385u), var_3.b.x, var_1.b.b.x ^ _wgslsmith_dot_vec3_i32(var_2, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-17224i, 2147483647i, 0i)), select(var_2, vec3<i32>(-2147483647i, -2147483647i, var_3.a.b.x), vec3<bool>(false, true, false)))), var_1.b.b, global1[_wgslsmith_index_u32(max(var_0.b.c, ~_wgslsmith_sub_u32(global0.c, ~1u)), 11u)]);
}

