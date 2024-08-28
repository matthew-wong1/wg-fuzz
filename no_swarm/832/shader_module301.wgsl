struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(0u, -847f, vec3<u32>(11290u, 1u, 20385u)), Struct_2(71700u, 1146f, vec3<u32>(1u, 1u, 1768u)), Struct_2(4294967295u, 501f, vec3<u32>(12372u, 4294967295u, 0u)), Struct_2(4294967295u, -335f, vec3<u32>(1u, 1u, 0u)), Struct_2(118733u, -158f, vec3<u32>(0u, 60497u, 308u)), Struct_2(1u, -1066f, vec3<u32>(47208u, 55001u, 4319u)), Struct_2(1u, -1362f, vec3<u32>(98498u, 14093u, 31307u)), Struct_2(10292u, 499f, vec3<u32>(40732u, 4294967295u, 36000u)), Struct_2(53945u, -274f, vec3<u32>(9821u, 4294967295u, 11019u)), Struct_2(50762u, -630f, vec3<u32>(0u, 21221u, 0u)), Struct_2(1u, -1223f, vec3<u32>(5187u, 4294967295u, 21465u)), Struct_2(1843u, 748f, vec3<u32>(0u, 1u, 68531u)), Struct_2(66065u, 350f, vec3<u32>(38567u, 1u, 70937u)), Struct_2(19872u, 873f, vec3<u32>(0u, 0u, 0u)), Struct_2(0u, 789f, vec3<u32>(1u, 7030u, 1u)), Struct_2(68791u, -554f, vec3<u32>(0u, 1u, 0u)), Struct_2(4294967295u, -1040f, vec3<u32>(1u, 1u, 0u)), Struct_2(0u, 199f, vec3<u32>(52692u, 4294967295u, 5559u)), Struct_2(4176u, -423f, vec3<u32>(1u, 38408u, 11114u)), Struct_2(70638u, -1000f, vec3<u32>(17766u, 0u, 44729u)), Struct_2(0u, -747f, vec3<u32>(4294967295u, 74725u, 51844u)), Struct_2(1u, 735f, vec3<u32>(0u, 70221u, 0u)), Struct_2(23726u, 501f, vec3<u32>(104360u, 4294967295u, 24171u)), Struct_2(0u, 1000f, vec3<u32>(44471u, 4294967295u, 25169u)), Struct_2(1u, 138f, vec3<u32>(1u, 1u, 19311u)), Struct_2(4294967295u, -399f, vec3<u32>(37788u, 82365u, 49891u)));

var<private> global1: vec3<bool>;

var<private> global2: Struct_3;

var<private> global3: vec2<i32>;

var<private> global4: Struct_4;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    var var_0 = select(select(!vec3<bool>(global1.x == true, any(vec4<bool>(false, true, true, true)), true), select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_2, arg_0, true), !arg_2), select(!vec3<bool>(false, false, global2.a.x), vec3<bool>(global2.a.x, global2.a.x, global1.x), vec3<bool>(false, arg_2, false)), select(select(vec3<bool>(global2.a.x, global1.x, global2.a.x), vec3<bool>(false, true, false), vec3<bool>(arg_2, arg_2, arg_0)), vec3<bool>(arg_2, arg_0, global2.a.x), vec3<bool>(arg_2, global2.a.x, arg_0))), false), vec3<bool>(false, !all(select(vec3<bool>(arg_0, false, false), vec3<bool>(true, false, global2.a.x), vec3<bool>(arg_0, global1.x, arg_2))), arg_2 | global1.x), vec3<bool>(arg_1.x <= _wgslsmith_f_op_f32(-arg_1.x), !global1.x, false));
    global3 = vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(select(~abs(global4.b), vec3<i32>(u_input.a, _wgslsmith_mult_i32(30746i, u_input.a), -1i), vec3<bool>(var_0.x, false, global4.a.a != global4.a.a)), vec3<i32>(i32(-1i) * -u_input.b, ~(u_input.b >> (global4.a.c.x % 32u)), ~min(global3.x, global3.x))));
    global2 = Struct_3(vec2<bool>(arg_2, false), Struct_2(global4.a.a, -1000f, countOneBits(~global2.b.c)), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(global4.a.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, arg_1.x, -1269f) - global2.d), vec3<f32>(322f, 241f, 1340f))))))));
    global0 = array<Struct_2, 26>();
    var_0 = !vec3<bool>(!any(vec2<bool>(true, false)), all(!vec2<bool>(false, arg_2)), !var_0.x);
    return u_input.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<Struct_2, 26>();
    global3 = global4.b.zx;
    let var_0 = u_input.c.x;
    let var_1 = ~min(-global4.b.x << (0u % 32u), 11410i);
    global3 = ~vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global3.x), global4.b.zy)), 2147483647i) ^ -(~vec2<i32>(global4.b.x, global4.b.x));
    return select(-_wgslsmith_mult_vec3_i32(global4.b, ~global4.b), vec3<i32>(countOneBits(u_input.a), i32(-1i) * -1i, func_3(arg_1.d.x, vec4<f32>(-519f, -674f, -1357f, 964f), false) | var_1) & global4.b, select(arg_1.c.wzy, arg_1.c.yyw, all(vec2<bool>(any(vec2<bool>(true, global2.a.x)), false))));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_4(Struct_2(0u, 101f, global4.a.c), func_2(vec2<u32>(~(~0u), ~(27754u | global4.a.c.x)), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(356f, global2.d.x, 231f))), global4.a.c.xy >> ((global4.a.c.xx >> (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u)), !vec4<bool>(false, false, global2.a.x, false), vec2<bool>(global1.x, true), ~(u_input.a & 51058i))));
    let var_1 = Struct_3(global2.a, var_0.a, vec2<f32>(412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b.b, global4.a.b))) * _wgslsmith_f_op_f32(round(global2.c.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c.x, -1500f, global2.d.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.c.x, -1977f, 1397f))), all(vec4<bool>(global1.x, true, false, global1.x))))), _wgslsmith_f_op_vec3_f32(global2.d + _wgslsmith_f_op_vec3_f32(-global2.d)))));
    let var_2 = 17334u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.d))))), u_input.c, select(select(vec4<bool>(false, global1.x || true, global1.x, any(vec2<bool>(global2.a.x, true))), vec4<bool>(global2.a.x == global1.x, true, global2.a.x, false), all(!global2.a)), !select(vec4<bool>(var_1.a.x, global1.x, true, false), !vec4<bool>(global1.x, true, global2.a.x, false), !vec4<bool>(false, false, false, global2.a.x)), var_1.a.x), select(var_1.a, global2.a, !global2.a.x), reverseBits(-12380i));
    var_0 = Struct_4(Struct_2(var_3.b.x, 1000f, ~global4.a.c), _wgslsmith_div_vec3_i32(vec3<i32>(-(~2147483647i), var_0.b.x, 30421i), ~var_0.b << (vec3<u32>(countOneBits(36700u), firstLeadingBit(4294967295u), ~0u) % vec3<u32>(32u))));
    return Struct_4(global0[_wgslsmith_index_u32(4294967295u, 26u)], vec3<i32>(var_3.e, -68531i, global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1();
    let var_0 = global4.a.b;
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(-abs(vec4<i32>(-21054i, u_input.b, global4.b.x, global3.x)), -(~vec4<i32>(66568i, u_input.a, global4.b.x, -14052i)), global1.x), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, 52232i, global4.b.x, -1i), -vec4<i32>(u_input.a, global3.x, global3.x, global4.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -1i, 32763i, -1i), vec4<i32>(u_input.a, global3.x, -9520i, 24741i))), select(vec4<i32>(global4.b.x, global4.b.x, global3.x, global4.b.x), -vec4<i32>(0i, global3.x, -1i, 52248i), global2.a.x & true) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.b.a, 1u, u_input.c.x), vec4<u32>(global2.b.c.x, global2.b.c.x, 39220u, u_input.c.x)) % vec4<u32>(32u))), -(vec4<i32>(global3.x, -global4.b.x, 1i, global4.b.x) | max(-vec4<i32>(u_input.b, global4.b.x, 428i, u_input.b), firstLeadingBit(vec4<i32>(-1i, global3.x, -22945i, global4.b.x)))));
    let var_2 = u_input.c.x >> (4294967295u % 32u);
    global3 = max(global4.b.zy, -vec2<i32>(firstLeadingBit(-global3.x), 34911i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~vec3<u32>(func_1().a.a, 1u >> (var_2 % 32u), 39708u), vec3<u32>(u_input.c.x, ~u_input.c.x, ~(~global4.a.a))), vec4<i32>(1i, func_2(~abs(u_input.c), Struct_1(vec3<f32>(-755f, 889f, global4.a.b), ~global4.a.c.xz, select(vec4<bool>(false, global1.x, true, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false), global1.x), !vec2<bool>(global2.a.x, true), global4.b.x)).x, _wgslsmith_mod_i32(global3.x, ~global3.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(~6573i, global4.b.x), func_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-572f, 869f, 651f, global2.c.x) + vec4<f32>(global2.d.x, global4.a.b, global2.b.b, 753f)), true))));
}

