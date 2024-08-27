struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 23381u, 32706u);

var<private> global2: Struct_2 = Struct_2(true, Struct_1(vec4<i32>(2147483647i, 2147483647i, 0i, i32(-2147483648)), vec4<bool>(false, true, false, true), 598f, vec3<i32>(2147483647i, -67130i, -42907i), vec3<i32>(62948i, 3846i, i32(-2147483648))));

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec3<bool>(false, false, false), vec2<u32>(8234u, 48750u), vec3<bool>(true, false, false), vec4<f32>(-780f, 1000f, -166f, -1282f), 7767i), Struct_4(vec3<bool>(true, false, false), vec2<u32>(56327u, 1u), vec3<bool>(false, true, true), vec4<f32>(603f, -525f, 1067f, 942f), 3483i), Struct_4(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 21184u), vec3<bool>(false, true, true), vec4<f32>(-741f, 398f, -761f, -440f), 0i), Struct_4(vec3<bool>(false, false, true), vec2<u32>(27504u, 0u), vec3<bool>(true, false, false), vec4<f32>(829f, 1477f, -1045f, -1024f), 36285i), Struct_4(vec3<bool>(true, true, true), vec2<u32>(82831u, 7944u), vec3<bool>(true, false, false), vec4<f32>(535f, 1214f, -2263f, 958f), 44714i), Struct_4(vec3<bool>(true, true, false), vec2<u32>(49780u, 63963u), vec3<bool>(false, true, true), vec4<f32>(-1339f, 1261f, -2157f, 451f), -1i), Struct_4(vec3<bool>(false, true, true), vec2<u32>(22391u, 19138u), vec3<bool>(true, true, false), vec4<f32>(-121f, -571f, 964f, -1011f), 1i), Struct_4(vec3<bool>(true, false, false), vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, true), vec4<f32>(-172f, 521f, 1370f, 924f), 52935i));

var<private> global4: i32 = -1918i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    global1 = ~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global1.x, global1.x, u_input.c.x, 95163u)), vec4<u32>(67680u, _wgslsmith_sub_u32(85417u, 1u), u_input.c.x, 0u)) << (abs(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1.x, 63249u, global1.x), vec4<u32>(global1.x, 20202u, 1u, u_input.c.x)))) % vec4<u32>(32u));
    global4 = global2.b.a.x;
    let var_0 = !(!global2.b.b.zzx);
    let var_1 = global2.b.a;
    let var_2 = Struct_1(max(vec4<i32>(2147483647i, select(-5743i, arg_1.x, global2.b.b.x), _wgslsmith_mult_i32(global2.b.d.x, var_1.x), var_1.x) << (vec4<u32>(arg_0 ^ global1.x, 28815u, _wgslsmith_sub_u32(4294967295u, global1.x), u_input.c.x) % vec4<u32>(32u)), vec4<i32>(global2.b.e.x, var_1.x, arg_1.x, firstLeadingBit(_wgslsmith_add_i32(global2.b.a.x, global2.b.e.x)))), vec4<bool>(!(!all(vec3<bool>(var_0.x, global2.a, false))), !(832u < u_input.c.x), var_0.x, false), -566f, -(~_wgslsmith_mult_vec3_i32(arg_1, select(vec3<i32>(arg_1.x, 8027i, arg_1.x), var_1.yzz, global2.b.b.x))), vec3<i32>(11593i, u_input.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a.x)));
    return _wgslsmith_f_op_f32(global2.b.c - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-654f)) * _wgslsmith_f_op_f32(global2.b.c * var_2.c))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_4(vec3<bool>(all(arg_0.yz), true, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.b.c, global2.b.c))) <= global2.b.c), ~(~global1.yy), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1256f + global2.b.c), _wgslsmith_f_op_f32(func_3(22945u, global2.b.a.xwy, 1949f, vec2<f32>(global2.b.c, -363f))), 551f, 630f)))), select(u_input.a.x, ~1i & _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, global2.b.e.x, u_input.b, -1i)), abs(vec4<i32>(u_input.a.x, 23588i, 0i, u_input.a.x))), any(arg_2) || all(!vec2<bool>(arg_0.x, arg_0.x))));
    var var_1 = _wgslsmith_f_op_f32(floor(var_0.d.x));
    var var_2 = true;
    var var_3 = Struct_3(2094f, vec2<u32>(4015u, u_input.c.x), var_0.d.x, !select(vec3<bool>(true, true, true), vec3<bool>(true, global2.b.b.x, global2.a), !(!vec3<bool>(global2.a, false, arg_1.x))), select(select(~vec4<u32>(u_input.c.x, global1.x, var_0.b.x, global1.x), _wgslsmith_add_vec4_u32(abs(vec4<u32>(global1.x, 93679u, 1u, arg_3)), vec4<u32>(global1.x, 27679u, u_input.c.x, 24911u)), false), vec4<u32>(19729u, _wgslsmith_mult_u32(86770u, 0u), 1u, ~global1.x >> (~64774u % 32u)), all(arg_2)));
    global1 = (vec4<u32>(65051u, ~var_0.b.x, var_3.e.x, ~global1.x) ^ ~var_3.e) << (vec4<u32>(var_3.b.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.c.x), 48982u), ~(arg_3 << (0u % 32u))), countOneBits(~1u), min(4294967295u ^ ~var_0.b.x, ~(~1u))) % vec4<u32>(32u));
    return vec4<bool>(!(!(true & all(global2.b.b.xx))), !((i32(-1i) * -53427i) <= _wgslsmith_clamp_i32(-46200i, var_0.e, var_0.e)) || !arg_1.x, all(vec2<bool>(true, true)), !(any(vec2<bool>(true, var_3.d.x)) && false));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = global2.b.b;
    global3 = array<Struct_4, 8>();
    global4 = 1i;
    var_0 = func_2(select(arg_0.ywx, select(vec3<bool>(!global2.b.b.x, var_0.x, arg_0.x), vec3<bool>(true, all(arg_0.zw), global1.x >= 4294967295u), _wgslsmith_f_op_f32(trunc(global2.b.c)) < global2.b.c), false), var_0.zzz, select(global2.b.b, vec4<bool>(!arg_0.x, true, arg_0.x, any(vec2<bool>(false, true))), arg_0), 1u);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c))));
    return select(min(global2.b.e.x, reverseBits(0i)), u_input.a.x, global2.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 8>();
    var var_0 = 0i;
    var_0 = func_1(select(select(vec4<bool>(global2.a, !global2.b.b.x, !global2.b.b.x, false), !(!vec4<bool>(global2.b.b.x, true, global2.b.b.x, false)), true), global2.b.b, select(vec4<bool>(global2.b.b.x, global2.b.b.x | global2.a, all(global2.b.b.xyz), true), global2.b.b, global2.a || true)));
    var var_1 = global2.b.a;
    var var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, ~1u), vec2<u32>(firstLeadingBit(4294967295u), global1.x)), u_input.c);
    var_0 = -var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.c, ~firstTrailingBit(vec2<u32>(global1.x, 33392u))), vec2<u32>(firstTrailingBit(u_input.c.x) | global1.x, ~global1.x | 43787u)), ~((_wgslsmith_mult_vec4_u32(vec4<u32>(6349u, 79060u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 76863u, global1.x, u_input.c.x)) & ~vec4<u32>(4294967295u, u_input.c.x, 1u, 51003u)) << (vec4<u32>(~global1.x, u_input.c.x ^ 29085u, firstTrailingBit(u_input.c.x), u_input.c.x) % vec4<u32>(32u))), ~(~global1.x) ^ (~firstLeadingBit(u_input.c.x) << (~global1.x % 32u)));
}

