struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<f32>, 20>;

var<private> global2: bool;

var<private> global3: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 23424u, 4294967295u, 4294967295u), vec4<u32>(0u, 19171u, 1u, 4294967295u), vec4<u32>(1u, 25652u, 98506u, 8372u), vec4<u32>(0u, 22492u, 1u, 7706u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(49208u, 4294967295u, 4294967295u, 4709u), vec4<u32>(326u, 12039u, 54935u, 16589u), vec4<u32>(10348u, 120477u, 13219u, 4294967295u), vec4<u32>(0u, 4294967295u, 38331u, 1u), vec4<u32>(54758u, 39989u, 56676u, 4294967295u), vec4<u32>(24294u, 0u, 611u, 0u), vec4<u32>(42292u, 3357u, 0u, 52734u), vec4<u32>(3477u, 4294967295u, 24168u, 35617u), vec4<u32>(0u, 10662u, 2372u, 75911u), vec4<u32>(7913u, 52412u, 10861u, 27942u), vec4<u32>(4294967295u, 9574u, 91373u, 1u), vec4<u32>(1u, 1u, 20351u, 0u), vec4<u32>(53527u, 19382u, 1361u, 28661u), vec4<u32>(4294967295u, 6858u, 55869u, 22614u), vec4<u32>(0u, 4294967295u, 31425u, 1210u), vec4<u32>(40263u, 0u, 35818u, 0u), vec4<u32>(33282u, 64334u, 0u, 1u), vec4<u32>(31136u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 87919u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(5917u, 38430u, 1u, 4294967295u), vec4<u32>(9091u, 4294967295u, 0u, 55322u), vec4<u32>(1u, 19009u, 0u, 94225u), vec4<u32>(62359u, 1u, 66433u, 0u));

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<bool>(true, true), Struct_1(vec3<u32>(6756u, 4294967295u, 30482u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec2<bool>(false, true), vec3<bool>(false, true, true))), Struct_2(vec2<bool>(true, false), Struct_1(vec3<u32>(0u, 23670u, 15574u), vec4<u32>(61217u, 4294967295u, 19364u, 0u), vec2<bool>(true, false), vec3<bool>(false, true, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec3<u32>(19504u, 0u, 67642u), vec4<u32>(1u, 4294967295u, 0u, 73236u), vec2<bool>(false, false), vec3<bool>(false, true, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec3<u32>(66719u, 4294967295u, 59553u), vec4<u32>(57056u, 1u, 2291u, 125342u), vec2<bool>(false, true), vec3<bool>(true, false, true))), Struct_2(vec2<bool>(true, false), Struct_1(vec3<u32>(96226u, 1u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 31945u), vec2<bool>(false, true), vec3<bool>(true, false, true))), Struct_2(vec2<bool>(true, true), Struct_1(vec3<u32>(10371u, 0u, 37957u), vec4<u32>(1u, 4488u, 40904u, 5230u), vec2<bool>(true, false), vec3<bool>(true, true, true))), Struct_2(vec2<bool>(false, false), Struct_1(vec3<u32>(80484u, 72353u, 0u), vec4<u32>(4294967295u, 17836u, 21936u, 1u), vec2<bool>(false, false), vec3<bool>(false, true, true))), Struct_2(vec2<bool>(false, true), Struct_1(vec3<u32>(110723u, 0u, 1u), vec4<u32>(107385u, 36496u, 71813u, 0u), vec2<bool>(true, true), vec3<bool>(true, true, true))), Struct_2(vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 34030u, 39399u), vec4<u32>(1u, 0u, 1u, 9279u), vec2<bool>(false, true), vec3<bool>(true, false, false))), Struct_2(vec2<bool>(false, false), Struct_1(vec3<u32>(1u, 35513u, 100121u), vec4<u32>(0u, 72927u, 21468u, 10015u), vec2<bool>(false, false), vec3<bool>(false, false, true))), Struct_2(vec2<bool>(true, true), Struct_1(vec3<u32>(36349u, 1u, 34487u), vec4<u32>(65001u, 40131u, 48898u, 0u), vec2<bool>(true, true), vec3<bool>(false, true, false))), Struct_2(vec2<bool>(true, false), Struct_1(vec3<u32>(4294967295u, 30714u, 25046u), vec4<u32>(0u, 1u, 7477u, 34741u), vec2<bool>(false, true), vec3<bool>(false, true, false))), Struct_2(vec2<bool>(false, true), Struct_1(vec3<u32>(104232u, 4294967295u, 0u), vec4<u32>(5790u, 4294967295u, 28040u, 4294967295u), vec2<bool>(true, false), vec3<bool>(true, true, true))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-626f)), -182f))), _wgslsmith_f_op_f32(trunc(-525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))), _wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-428f * 570f))))));
    let var_1 = reverseBits(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.e, _wgslsmith_sub_i32(-1i, u_input.e), _wgslsmith_div_i32(-48155i, u_input.c)), -abs(vec3<i32>(12995i, u_input.e, u_input.c)))));
    return 1i;
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    global2 = true;
    let var_0 = -1i;
    let var_1 = ~4294967295u;
    global1 = array<vec4<f32>, 20>();
    global4 = array<Struct_2, 13>();
    return vec2<bool>(all(!(!(!vec4<bool>(true, arg_3.c.x, global0.b.d.x, true)))), true);
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<bool>(true, false, true);
    return Struct_3(global0.b, global0.a.x, Struct_1(~vec3<u32>(_wgslsmith_mult_u32(u_input.b, global0.b.a.x), u_input.d.x ^ 0u, global0.b.a.x), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(34506u, 0u, 44695u, u_input.a), global3[_wgslsmith_index_u32(u_input.b, 29u)])), vec2<bool>(var_0.x, any(func_3(u_input.d.x, Struct_3(global0.b, global0.a.x, global0.b, vec4<f32>(-170f, -1106f, 149f, -144f), 44483u), -27882i, Struct_1(vec3<u32>(55858u, 1u, 1u), global0.b.b, vec2<bool>(var_0.x, global0.a.x), vec3<bool>(false, false, global0.a.x))))), var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3354f, -1571f, -781f, -635f) + vec4<f32>(-221f, -1200f, 1317f, -745f)))))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b.d.x == !any(global0.b.d);
    global2 = (func_1(_wgslsmith_sub_u32(u_input.b, ~u_input.d.x), vec2<u32>(_wgslsmith_dot_vec3_u32(global0.b.b.wxw, global0.b.a), global0.b.a.x & 4294967295u), ~global0.b.a.x) ^ (_wgslsmith_sub_i32(-16801i, 1i) | _wgslsmith_mod_i32(firstTrailingBit(u_input.e), 29205i))) > -1i;
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(var_0.d.yz));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec2<u32>(var_0.e, _wgslsmith_add_u32(18202u, 22367u))), _wgslsmith_div_i32(min(u_input.c, u_input.c), u_input.c), select(abs(firstTrailingBit(var_0.c.b.wx)), max(~u_input.d, vec2<u32>(1u, 0u)), global0.b.c));
}

