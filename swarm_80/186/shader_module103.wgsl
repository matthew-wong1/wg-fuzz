struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_4,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(0u, 41957u), vec2<u32>(35261u, 16262u), vec2<u32>(6717u, 0u), vec2<u32>(23570u, 26506u), vec2<u32>(0u, 0u), vec2<u32>(17664u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(67239u, 79826u), vec2<u32>(1u, 10762u), vec2<u32>(1u, 70100u), vec2<u32>(0u, 3630u), vec2<u32>(39655u, 36492u), vec2<u32>(32386u, 0u), vec2<u32>(19064u, 1u), vec2<u32>(4294967295u, 1941u), vec2<u32>(1u, 4294967295u), vec2<u32>(19655u, 49943u), vec2<u32>(4294967295u, 78888u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 74577u), vec2<u32>(1u, 45703u), vec2<u32>(56756u, 9609u), vec2<u32>(47676u, 31602u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 34024u), vec2<u32>(21963u, 4294967295u), vec2<u32>(27186u, 10124u));

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_5, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<i32> {
    global2 = vec4<u32>(firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(13776u, u_input.b.x))), ~abs(min(64197u, global2.x)), u_input.b.x, ~(~(~35778u))) ^ ~select(vec4<u32>(~5952u, global2.x, 49163u, ~global2.x), vec4<u32>(global2.x, u_input.b.x, u_input.b.x, 36798u) | ~vec4<u32>(2009u, 1u, u_input.b.x, 0u), !global1.x == true);
    let var_0 = 2147483647i;
    var var_1 = Struct_3(vec4<u32>(7192u, select(~1u, global2.x, true), firstLeadingBit(_wgslsmith_mod_u32(global2.x >> (global2.x % 32u), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], vec2<u32>(7412u, global2.x)))), 0u));
    global2 = var_1.a;
    var_1 = Struct_3(reverseBits(vec4<u32>(countOneBits(~7527u), ~4294967295u, u_input.b.x ^ var_1.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), var_1.a.zy))));
    return _wgslsmith_clamp_vec3_i32(select(abs(vec3<i32>(0i, u_input.d.x, 0i)) & select(select(u_input.a.yyw, u_input.c, global1.wxy), ~u_input.a.www, any(vec3<bool>(arg_1, global1.x, global1.x))), u_input.a.xzx, arg_1), _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.a.www, u_input.a.wxx), vec3<i32>(arg_0, 23389i ^ var_0, -1i)), _wgslsmith_sub_vec3_i32(u_input.a.yzw, firstLeadingBit(min(_wgslsmith_mod_vec3_i32(u_input.a.zwx, vec3<i32>(19846i, -2147483647i, var_0)), u_input.a.wyy))));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(vec2<u32>(1u, 0u), ~u_input.b, Struct_1(~_wgslsmith_dot_vec4_i32(u_input.a << (vec4<u32>(u_input.b.x, global2.x, global2.x, 21060u) % vec4<u32>(32u)), ~u_input.a)), Struct_1(u_input.c.x));
    let var_1 = abs(_wgslsmith_clamp_i32(-var_0.c.a | 2147483647i, 1i, -11204i));
    var var_2 = var_0.b.x;
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1264f)) + _wgslsmith_f_op_f32(f32(-1f) * -606f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_3(76406i | firstTrailingBit(53575i ^ var_1), true));
    let var_4 = global2.xyz;
    return global3[_wgslsmith_index_u32(var_0.a.x, 5u)];
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_5(Struct_3(arg_0.a.a), (~global2.wzx | vec3<u32>(1u, 4294967295u, u_input.b.x)) ^ ~(~max(vec3<u32>(u_input.b.x, arg_0.a.a.x, global2.x), vec3<u32>(11573u, 1u, u_input.b.x))), func_2().c, u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-762f, 2121f, arg_2.c.a.x, 1153f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.a.x, arg_0.c.a.x, -696f, -606f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a.x, -719f, 148f, 1361f) * vec4<f32>(383f, 287f, var_0.c.a.x, 139f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(297f, -1027f, _wgslsmith_f_op_f32(638f - 1166f), -846f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.a.x, arg_2.c.a.x, arg_0.c.a.x, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(965f, -533f, -953f, var_0.c.a.x), vec4<f32>(var_0.c.a.x, 1000f, -1000f, arg_0.c.a.x)))), !arg_1)) + vec4<f32>(_wgslsmith_f_op_f32(-691f - _wgslsmith_f_op_f32(floor(func_2().c.a.x))), var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a.x * -2467f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(651f))))));
    global0 = array<vec2<u32>, 27>();
    var var_2 = vec3<i32>(arg_2.d.x, ~(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(69430i, 34204i, 42708i, u_input.c.x)), -vec4<i32>(0i, var_0.d.x, arg_0.d.x, 13580i))), min(var_0.c.b.x, 4806i));
    global3 = array<Struct_5, 5>();
    return select(select(vec4<bool>(all(!vec4<bool>(arg_1, arg_1, true, global1.x)), true, all(vec2<bool>(false, global1.x)), arg_1), select(vec4<bool>(false, true, !arg_1, -985f >= var_0.c.a.x), select(!vec4<bool>(false, true, arg_1, false), select(vec4<bool>(true, global1.x, false, arg_1), vec4<bool>(arg_1, false, arg_1, false), false), true), vec4<bool>(arg_0.a.a.x != 57099u, true, all(global1.wy), all(global1.wx))), !(!vec4<bool>(false, arg_1, arg_1, false))), select(vec4<bool>(true, any(vec2<bool>(global1.x, global1.x)), global1.x, true), vec4<bool>(false, arg_1, !any(vec3<bool>(arg_1, false, arg_1)), !(!arg_1)), global1.x && !arg_1), all(global1.yz));
}

fn func_1() -> f32 {
    global0 = array<vec2<u32>, 27>();
    global1 = func_4(func_2(), true, func_2(), _wgslsmith_mod_vec2_i32(vec2<i32>(57414i, _wgslsmith_sub_i32(-38507i, 1i)), u_input.d | vec2<i32>(u_input.a.x, -1i)));
    var var_0 = -101f;
    global2 = ~vec4<u32>(26549u | func_2().b.x, min(_wgslsmith_sub_u32(~14109u, 31092u), ~146669u), 0u, firstLeadingBit(84931u));
    var var_1 = -2147483647i;
    return _wgslsmith_f_op_f32(-371f - 1006f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 27>();
    var var_0 = Struct_1(~_wgslsmith_add_i32(u_input.c.x, i32(-1i) * -4306i));
    global0 = array<vec2<u32>, 27>();
    var var_1 = global1.x;
    let var_2 = _wgslsmith_sub_i32(-2147483647i, u_input.d.x);
    let var_3 = !(!(!select(!vec2<bool>(true, global1.x), global1.xy, vec2<bool>(global1.x, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(func_1()), -1848f, _wgslsmith_f_op_f32(-792f * -692f)));
}

