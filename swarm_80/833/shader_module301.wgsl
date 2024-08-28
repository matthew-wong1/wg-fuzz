struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 23> = array<i32, 23>(-30606i, -41517i, 16137i, 1i, 1i, -49098i, 1i, -11726i, 46056i, -1i, 2147483647i, 1i, -3871i, -23815i, -3639i, -34863i, 1i, 35483i, i32(-2147483648), -42967i, i32(-2147483648), -46940i, 19241i);

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(9134u, Struct_1(53903u), Struct_1(4294967295u)), Struct_2(1u, Struct_1(39001u), Struct_1(52677u)), Struct_2(4294967295u, Struct_1(40065u), Struct_1(9142u)), Struct_2(552u, Struct_1(7248u), Struct_1(0u)), Struct_2(31854u, Struct_1(18880u), Struct_1(130563u)), Struct_2(13651u, Struct_1(39597u), Struct_1(28477u)), Struct_2(44108u, Struct_1(0u), Struct_1(8586u)), Struct_2(30299u, Struct_1(4294967295u), Struct_1(8722u)), Struct_2(53822u, Struct_1(44702u), Struct_1(4294967295u)), Struct_2(4294967295u, Struct_1(1u), Struct_1(1u)), Struct_2(1540u, Struct_1(53976u), Struct_1(0u)), Struct_2(0u, Struct_1(25123u), Struct_1(26405u)), Struct_2(0u, Struct_1(1u), Struct_1(37376u)), Struct_2(65827u, Struct_1(4294967295u), Struct_1(0u)), Struct_2(6907u, Struct_1(27013u), Struct_1(13203u)), Struct_2(4294967295u, Struct_1(4294967295u), Struct_1(29666u)), Struct_2(6923u, Struct_1(28774u), Struct_1(1u)), Struct_2(24357u, Struct_1(4294967295u), Struct_1(1u)), Struct_2(4294967295u, Struct_1(4294967295u), Struct_1(0u)), Struct_2(45972u, Struct_1(28247u), Struct_1(1u)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    global0 = Struct_2(27504u, Struct_1(global0.c.a), Struct_1(max(1u, u_input.b.x)));
    let var_0 = ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(~arg_2.a, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(arg_1.c.a, u_input.b.x)), 8499u, select(1u, u_input.b.x, false)), ~(~u_input.b), false), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(45101u, u_input.b.x), u_input.b.x), _wgslsmith_sub_u32(arg_2.a, _wgslsmith_clamp_u32(arg_1.a, u_input.b.x, arg_2.a)), arg_2.a, firstTrailingBit(arg_1.b.a << (4949u % 32u))));
    var var_1 = true;
    let var_2 = arg_2;
    let var_3 = 1u;
    return vec3<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * -415f), _wgslsmith_f_op_f32(step(243f, -2709f)))), true);
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = array<i32, 23>();
    let var_0 = global0.b;
    var var_1 = select(vec2<bool>(any(vec4<bool>(arg_0, arg_0, true, global2.x)), all(vec4<bool>(true, true, true, true))), vec2<bool>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, u_input.b.x, 34635u), vec3<u32>(u_input.b.x, var_0.a, 8981u)), 1u) != u_input.b.x, !(u_input.c.x >= global1[_wgslsmith_index_u32(countOneBits(53945u), 23u)])), !all(func_3(vec3<f32>(1255f, -1822f, -690f), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 20u)], global0.c)));
    var var_2 = Struct_2(5341u, global0.c, global0.b);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2213f))));
    return Struct_2(select(u_input.b.x, 4294967295u, func_3(vec3<f32>(673f, _wgslsmith_f_op_f32(1419f - -275f), _wgslsmith_f_op_f32(f32(-1f) * -995f)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(107078u, var_0.a) ^ 26497u, 20u)], var_2.c).x), Struct_1(~abs(~var_2.a)), Struct_1(var_2.b.a));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(true);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1506f)))))));
    global3 = array<Struct_2, 20>();
    global1 = array<i32, 23>();
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c, -countOneBits(vec3<i32>(-20236i, -2147483647i, -31700i))) >> ((0u & (_wgslsmith_clamp_u32(global0.b.a, 1u, u_input.b.x) ^ _wgslsmith_clamp_u32(u_input.b.x, 31959u, 1u))) % 32u), ~_wgslsmith_dot_vec3_i32(select(u_input.c, u_input.c, select(vec3<bool>(global2.x, false, true), vec3<bool>(false, true, true), vec3<bool>(global2.x, true, global2.x))), u_input.c), -select(countOneBits(u_input.c.x), 29204i, global2.x), global1[_wgslsmith_index_u32(0u, 23u)]);
    return global0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_1(4294967295u);
    let var_1 = Struct_1(firstLeadingBit(~0u));
    return !(!(!select(!vec2<bool>(global2.x, global2.x), !vec2<bool>(false, global2.x), global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-114f, 122f)))))));
    global2 = vec2<bool>(global2.x, !all(!(!vec2<bool>(false, global2.x))));
    global2 = func_4(Struct_1(_wgslsmith_mod_u32(~12610u, global0.b.a)), u_input.a, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(658f, 1770f, -1000f) - vec3<f32>(449f, 966f, -502f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 303f, 2349f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1055f, 220f, 216f), vec3<f32>(-252f, 308f, 251f), false)) + vec3<f32>(539f, 1000f, 677f)))));
    var var_1 = firstTrailingBit(_wgslsmith_clamp_i32(u_input.a.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-4740i, 2147483647i), _wgslsmith_mult_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, -30171i))), ~(~(-14696i))));
    let var_2 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(1050f, ~((vec4<i32>(57683i, u_input.c.x, -44636i, u_input.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, global0.b.a, 38084u, 20371u), vec4<u32>(u_input.b.x, u_input.b.x, global0.b.a, 4294967295u)) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))), select(u_input.c, u_input.c, !vec3<bool>(true, global2.x, true)) >> (~_wgslsmith_mult_vec3_u32(u_input.b.wzx, vec3<u32>(1u, global0.a, 3956u)) % vec3<u32>(32u)));
}

