struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = -399f;

var<private> global2: Struct_2 = Struct_2(false, 28815u);

var<private> global3: array<vec4<bool>, 20>;

var<private> global4: array<vec4<i32>, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec2<i32> {
    var var_0 = ~(vec2<u32>(max(~77446u, ~1u), _wgslsmith_sub_u32(global2.b, 24168u) << (reverseBits(42244u) % 32u)) ^ vec2<u32>(_wgslsmith_clamp_u32(arg_0, 48297u, arg_0) ^ 1u, global2.b));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))));
    global3 = array<vec4<bool>, 20>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(var_2.x, 791f, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, -193f, var_2.x)))))));
    return countOneBits(~u_input.a);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(~(vec3<i32>(u_input.a.x, global0.x, u_input.a.x) & (u_input.b.yww << (vec3<u32>(17400u, global2.b, global2.b) % vec3<u32>(32u)))) & u_input.c.yxx);
    let var_1 = any(!select(!(!vec2<bool>(global2.a, global2.a)), vec2<bool>(true, false), true));
    var var_2 = Struct_1(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a.xy, var_0.a.zz), _wgslsmith_add_vec2_i32(u_input.a, func_3(42275u)), max(u_input.d, u_input.c.wy)), _wgslsmith_div_vec4_u32(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b, 4294967295u, global2.b, global2.b), vec4<u32>(4294967295u, 4294967295u, 22231u, 0u))), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(82083u, 10246u), 53837u, _wgslsmith_mult_u32(34790u, global2.b), _wgslsmith_div_u32(3949u, global2.b)))), vec4<bool>(var_1, any(vec4<bool>(any(vec4<bool>(var_1, var_1, false, var_1)), any(vec2<bool>(var_1, var_1)), -2147483647i >= u_input.d.x, all(vec4<bool>(false, true, true, global2.a)))), select(true, _wgslsmith_clamp_i32(global0.x, global0.x, var_0.a.x) < max(1i, var_0.a.x), !var_1), (_wgslsmith_mult_i32(u_input.d.x, var_0.a.x) << (~global2.b % 32u)) < -11188i), vec4<u32>(_wgslsmith_mod_u32(0u, global2.b), 4294967295u, ~global2.b, global2.b));
    let var_3 = Struct_2(true, ~global2.b);
    global0 = -countOneBits(vec2<i32>(1363i, 1i));
    return Struct_2(abs(4294967295u) < var_2.b.x, ~(25837u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global2.b, var_2.d.x), _wgslsmith_mod_vec3_u32(var_2.d.xwx, var_2.d.zzx)) % 32u)));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    let var_1 = countOneBits(~countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, -1i, 2147483647i, -74340i), vec4<i32>(global0.x, -2147483647i, u_input.c.x, u_input.b.x)), u_input.c)));
    global2 = func_2();
    let var_2 = 1000f;
    global1 = _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1023f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2)) * _wgslsmith_f_op_f32(var_2 + 595f))) + -247f));
    return _wgslsmith_f_op_f32(round(-807f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) - -177f)) * -192f) + _wgslsmith_f_op_f32(func_1()));
    var var_1 = -7894i;
    let var_2 = Struct_4(true, global2.a || true, min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.b, 24272u, 15232u, global2.b), max(vec4<u32>(55303u, global2.b, global2.b, 31338u), vec4<u32>(42299u, global2.b, global2.b, global2.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.b, 1325u, 46989u), vec4<u32>(global2.b, 0u, global2.b, global2.b))) >> (max(select(vec4<u32>(1510u, global2.b, 37139u, 1u), vec4<u32>(global2.b, 0u, 4294967295u, global2.b), false), select(vec4<u32>(global2.b, 578u, global2.b, global2.b), vec4<u32>(11141u, global2.b, 6504u, 1u), false)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u ^ global2.b, global2.b, ~global2.b, ~1u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 1u), vec2<u32>(10188u, 64655u)), ~4294967295u, global2.b, global2.b))), Struct_1(countOneBits(_wgslsmith_add_vec2_i32(u_input.c.wy, -u_input.b.yz)), vec4<u32>(1u, ~global2.b, global2.b, global2.b), !select(global3[_wgslsmith_index_u32(~global2.b, 20u)], vec4<bool>(global2.a, true, true, global2.a), select(vec4<bool>(false, global2.a, global2.a, false), vec4<bool>(global2.a, global2.a, true, global2.a), global2.a)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b, 1u, 1u, 0u), reverseBits(vec4<u32>(14652u, 21321u, global2.b, global2.b))))), vec4<i32>(_wgslsmith_mod_i32(max(global0.x, i32(-1i) * -1i), u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(u_input.d.x, reverseBits(4603i), -u_input.c.x & global0.x), ~_wgslsmith_dot_vec3_i32(u_input.b.xyx & u_input.c.zwz, u_input.c.zyx | u_input.c.xxz)));
    let var_3 = -u_input.a ^ u_input.d;
    var var_4 = vec3<i32>(-var_3.x, 36861i, _wgslsmith_mod_i32(~60534i, u_input.b.x));
    global3 = array<vec4<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0, var_0, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(step(var_0, var_0))), min(global0.x, 81774i), var_0);
}

