struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(2992i, true, vec4<f32>(-1753f, 1938f, -2383f, -555f), Struct_2(vec2<u32>(62289u, 0u)), Struct_3(Struct_1(false))), Struct_4(-275i, false, vec4<f32>(241f, -276f, -197f, -1274f), Struct_2(vec2<u32>(4294967295u, 2688u)), Struct_3(Struct_1(false))), Struct_4(2147483647i, true, vec4<f32>(1366f, -1555f, -1000f, 804f), Struct_2(vec2<u32>(6325u, 22081u)), Struct_3(Struct_1(false))), Struct_4(-42104i, false, vec4<f32>(1000f, -1054f, 671f, 249f), Struct_2(vec2<u32>(1u, 79171u)), Struct_3(Struct_1(false))));

var<private> global3: Struct_4;

var<private> global4: vec3<u32> = vec3<u32>(16883u, 0u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3) -> u32 {
    var var_0 = global3.d.a.x;
    global3 = Struct_4(~arg_0, (arg_0 <= _wgslsmith_dot_vec3_i32(-u_input.a.wzy, ~u_input.a.ywx)) | arg_2.a.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-309f, _wgslsmith_f_op_f32(trunc(1262f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(195f, -346f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x * -431f))))), global3.d, Struct_3(Struct_1(global3.d.a.x >= (u_input.b.x ^ 1u))));
    global0 = array<vec4<f32>, 24>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-323f, _wgslsmith_f_op_f32(step(global1.x, global3.c.x)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1217f) - global1.x)));
    return ~(~(~global3.d.a.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_sub_i32(~u_input.a.x, -u_input.a.x), arg_0.x, vec4<f32>(global1.x, _wgslsmith_div_f32(1224f, _wgslsmith_f_op_f32(min(-1024f, -1056f))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -717f)), -891f), global3.d, global3.e);
    var var_1 = Struct_3(Struct_1(global3.b));
    var var_2 = ~_wgslsmith_add_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(40685u, var_0.d.a.x, 1u, u_input.b.x), vec4<u32>(4294967295u, global3.d.a.x, 6483u, 79771u)) ^ ~vec4<u32>(global3.d.a.x, 11940u, global4.x, 1u)), select(vec4<u32>(func_3(global3.a, vec4<i32>(-12988i, u_input.a.x, u_input.a.x, -35498i), Struct_3(var_1.a)), var_0.d.a.x, _wgslsmith_add_u32(var_0.d.a.x, u_input.b.x), firstTrailingBit(50831u)), vec4<u32>(_wgslsmith_mult_u32(global4.x, arg_1.x), global3.d.a.x, ~arg_1.x, ~arg_1.x), all(vec2<bool>(arg_2.x, arg_0.x))));
    let var_3 = u_input.a << (vec4<u32>(1u, ~var_2.x, 4294967295u, ~(global4.x | 76916u)) % vec4<u32>(32u));
    global2 = array<Struct_4, 4>();
    return ~(arg_1 ^ firstLeadingBit(~(~vec3<u32>(u_input.b.x, 4294967295u, 4294967295u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    global4 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 1u) ^ _wgslsmith_mult_vec2_u32(global4.zx, global4.xx), ~(~vec2<u32>(global3.d.a.x, u_input.b.x)), ~vec2<u32>(u_input.b.x, global3.d.a.x)), ~vec2<u32>(1u, u_input.b.x)), 1u, select(~(~45409u), global4.x, false) & global3.d.a.x);
    global2 = array<Struct_4, 4>();
    let var_0 = arg_0;
    global4 = _wgslsmith_add_vec3_u32(~firstTrailingBit(_wgslsmith_mod_vec3_u32(func_2(vec2<bool>(arg_1, false), vec3<u32>(63257u, 0u, global3.d.a.x), vec3<bool>(true, arg_0.a, arg_1)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.d.a.x, u_input.b.x, global4.x), vec3<u32>(global3.d.a.x, 1u, global4.x), vec3<u32>(4294967295u, 4294967295u, global4.x)))), countOneBits(vec3<u32>(37635u, 1u, _wgslsmith_mult_u32(select(47141u, u_input.b.x, true), ~global3.d.a.x))));
    global2 = array<Struct_4, 4>();
    return vec2<u32>(7820u, global3.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(global4.x, select(4294967295u, 19817u, true)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(func_1(Struct_1(global3.b), global3.e.a.a), vec2<u32>(57029u, global3.d.a.x)), global3.d.a)));
    let var_1 = select(select(vec2<bool>(global3.e.a.a, true), vec2<bool>(!(true && global3.b), all(vec3<bool>(true, global3.e.a.a, true)) | true), select(select(!vec2<bool>(false, global3.e.a.a), !vec2<bool>(global3.b, false), vec2<bool>(true, global3.b)), vec2<bool>(any(vec2<bool>(global3.b, global3.e.a.a)), true), !select(vec2<bool>(global3.b, false), vec2<bool>(global3.e.a.a, false), vec2<bool>(global3.b, global3.e.a.a)))), !(!(!vec2<bool>(global3.e.a.a, global3.b))), vec2<bool>(true, global3.b));
    var var_2 = u_input.a.x;
    global1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.c.x, _wgslsmith_f_op_f32(sign(global1.x))), vec2<f32>(355f, global3.c.x), all(vec4<bool>(global3.e.a.a, global3.b, !var_1.x, any(select(var_1, vec2<bool>(true, global3.e.a.a), false))))));
    let var_3 = max(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, global3.a), true), vec2<i32>(global3.a, 15453i) << (global3.d.a % vec2<u32>(32u))), -countOneBits(u_input.a.zz), ~(-vec2<i32>(global3.a, -23093i))), ~firstTrailingBit(firstLeadingBit(u_input.a.yy)));
    let var_4 = ((~firstLeadingBit(u_input.a.x) & ~u_input.a.x) | -_wgslsmith_mod_i32(1i, -1i)) | min(var_3.x, min(_wgslsmith_div_i32(u_input.a.x, var_3.x), -1i) ^ global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<u32>(var_0.a.x, 5475u, 1u) | vec3<u32>(4294967295u, global3.d.a.x, u_input.b.x)) << (~countOneBits(vec3<u32>(var_0.a.x, 16146u, 0u)) % vec3<u32>(32u))), _wgslsmith_add_u32(~(~90763u), ~abs(~var_0.a.x)), select(abs(firstLeadingBit(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))), firstTrailingBit(firstLeadingBit(vec4<u32>(54171u, 44240u, global4.x, 31795u))), select(select(vec4<bool>(false, var_1.x, var_1.x, global3.e.a.a), vec4<bool>(false, true, global3.e.a.a, global3.e.a.a), true), vec4<bool>(global3.e.a.a, global3.e.a.a, global3.b, global3.e.a.a), any(vec2<bool>(global3.e.a.a, var_1.x)))) << (vec4<u32>(u_input.b.x, ~global3.d.a.x, firstLeadingBit(u_input.b.x ^ 53894u), global3.d.a.x) % vec4<u32>(32u)), ~(~(~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-global3.c));
}

