struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(83684u, 4294967295u), vec3<f32>(1156f, -708f, 1955f), Struct_1(1u, 43865u, vec3<f32>(889f, 1665f, -270f), -1303f), Struct_1(32926u, 4294967295u, vec3<f32>(1095f, 1272f, -288f), -143f));

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<u32>, 22>;

var<private> global3: array<Struct_2, 19>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = Struct_2(~reverseBits(global0.a), arg_1.c, arg_1, Struct_1(u_input.a.x, ~(~28267u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.wyw))), arg_1.c.x));
    var var_1 = arg_1;
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(~(~vec2<i32>(global1.x, -2147483647i)), vec2<i32>(-30767i, reverseBits(arg_2.x)), select(vec2<i32>(1i, 16933i), vec2<i32>(global1.x, u_input.b.x), vec2<bool>(true, true)))) >> (min(vec2<u32>(~_wgslsmith_mult_u32(u_input.c, 35797u), ~abs(1u)), vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    let var_3 = firstTrailingBit(-u_input.d.x ^ arg_2.x);
    let var_4 = ~var_2.x;
    return _wgslsmith_add_vec2_u32(global0.a, ~_wgslsmith_div_vec2_u32(~global0.a, countOneBits(var_0.a)) ^ (firstLeadingBit(u_input.a.zy | global0.a) & _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 11392u), vec2<u32>(u_input.c, global0.d.b))));
}

fn func_2() -> u32 {
    global1 = ~firstTrailingBit(u_input.b) | ~(-(vec3<i32>(u_input.d.x, 0i, -16842i) & -vec3<i32>(global1.x, 2147483647i, 21445i)));
    let var_0 = Struct_3(global0.c.c.x < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-851f * global0.c.c.x), global0.c.c.x)), abs(-(-global1.zx << (func_3(vec4<f32>(879f, -786f, global0.c.c.x, global0.b.x), Struct_1(u_input.c, 4294967295u, vec3<f32>(global0.b.x, global0.c.d, -234f), -195f), global1.zx) % vec2<u32>(32u)))));
    var var_1 = vec4<u32>(u_input.c, ~global0.c.a, abs(~countOneBits(firstTrailingBit(4387u))), u_input.c);
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, var_0.b.x), vec3<i32>(abs(-5075i), _wgslsmith_dot_vec2_i32(abs(-global1.zx), -vec2<i32>(-1i, u_input.d.x)), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), ~38520i, -18479i)), vec3<i32>(_wgslsmith_dot_vec2_i32(min(global1.zz, vec2<i32>(-43836i, -2875i)), vec2<i32>(-u_input.b.x, var_0.b.x)), -2147483647i, -3173i));
    let var_3 = ~13388u;
    return min(_wgslsmith_sub_u32(u_input.c, firstTrailingBit(global0.d.a)), global0.a.x);
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = firstLeadingBit(u_input.b);
    global3 = array<Struct_2, 19>();
    global1 = vec3<i32>(-1i) * -vec3<i32>(var_0.x, max(-global1.x, 1i), -21643i);
    global3 = array<Struct_2, 19>();
    var var_1 = !(!(_wgslsmith_f_op_f32(step(-316f, -1000f)) > 626f));
    return ~(~(~((vec4<u32>(arg_0.a, u_input.c, arg_0.b, arg_0.a) | vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 25681u)) << ((vec4<u32>(u_input.c, global0.d.b, 28118u, 1u) ^ vec4<u32>(u_input.c, arg_0.b, global0.d.b, 44208u)) % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: f32) -> u32 {
    global1 = abs(~(~vec3<i32>(6842i, global1.x, 2147483647i)));
    global0 = arg_0;
    let var_0 = _wgslsmith_mult_u32(abs(~(~4294967295u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, arg_2.x), arg_2.yy & global0.a) % 32u)), arg_2.x);
    let var_1 = any(vec3<bool>(!all(vec3<bool>(false, false, false)), (all(vec4<bool>(false, false, true, true)) && (0i == global1.x)) | true, true));
    var var_2 = func_4(Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(7685u, arg_0.c.b, 1u), vec3<u32>(arg_0.a.x, global0.c.a, 35550u), true), vec3<u32>(arg_2.x, _wgslsmith_mod_u32(0u, var_0), min(arg_0.d.a, 19977u))), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(538f, global0.d.c.x, global0.c.c.x)))), 454f));
    return _wgslsmith_div_u32(~arg_0.a.x, ~(15421u | arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.c, ~4294967295u), _wgslsmith_clamp_u32(4294967295u, global0.d.b, 41047u) & (u_input.a.x ^ u_input.a.x)) << (countOneBits(_wgslsmith_clamp_u32(func_1(Struct_2(u_input.a.yx, global0.c.c, Struct_1(4294967295u, 10206u, global0.d.c, 1000f), Struct_1(u_input.a.x, 30055u, global0.d.c, global0.c.d)), 397f, vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c), -758f), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 1u), global0.a), _wgslsmith_mult_u32(u_input.c, 1u))) % 32u), min(u_input.a.x, 29323u), ~func_3(vec4<f32>(819f, _wgslsmith_f_op_f32(global0.c.c.x - global0.c.c.x), global0.d.c.x, _wgslsmith_f_op_f32(exp2(global0.d.c.x))), global0.c, global1.xy).x), 19u)];
    global0 = Struct_2(~abs(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.d.a, 4294967295u), global0.a), firstLeadingBit(vec2<u32>(u_input.c, 12845u)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1723f), global0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f - 370f)))), var_0.c, Struct_1(~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(global0.c.a >> (var_0.c.a % 32u), 22u)], vec3<u32>(var_0.a.x, global0.a.x, 4294967295u)), 23802u, vec3<f32>(global0.b.x, global0.d.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(310f, 823f))))), _wgslsmith_f_op_f32(min(var_0.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(ceil(global0.d.c.x)))))));
    var var_1 = _wgslsmith_f_op_f32(-global0.d.c.x);
    var var_2 = vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-global0.d.d), var_0.c.c.x);
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -((vec4<i32>(global1.x, u_input.d.x, 2147483647i, global1.x) >> (vec4<u32>(global0.d.a, 20197u, 0u, var_0.c.b) % vec4<u32>(32u))) >> (vec4<u32>(global0.d.b, 1u, var_0.c.b, 1u) % vec4<u32>(32u))), -(~vec4<i32>(0i, -44359i, -2478i, -2147483647i) >> (~(~vec4<u32>(1u, 51799u, var_0.c.b, var_0.c.a)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(var_3, var_3 >> (~vec4<u32>(var_0.c.a, 17755u, global0.d.a, 27902u) % vec4<u32>(32u))));
}

