struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(48536u, 5281u, 80985u), vec3<u32>(1u, 1264u, 13695u), vec3<u32>(4294967295u, 4294967295u, 61260u), vec3<u32>(84858u, 0u, 5638u), vec3<u32>(19485u, 0u, 100221u), vec3<u32>(4294967295u, 4294967295u, 76142u), vec3<u32>(4294967295u, 2551u, 0u), vec3<u32>(39475u, 1u, 79318u), vec3<u32>(23976u, 0u, 63905u), vec3<u32>(43706u, 0u, 0u), vec3<u32>(32044u, 46700u, 4294967295u), vec3<u32>(225u, 37163u, 7919u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 21865u, 0u), vec3<u32>(1u, 72240u, 0u), vec3<u32>(4294967295u, 4294967295u, 20601u), vec3<u32>(4294967295u, 4294967295u, 5243u), vec3<u32>(9038u, 4294967295u, 50754u), vec3<u32>(65080u, 56185u, 1u), vec3<u32>(0u, 4294967295u, 23235u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 0u, 18820u), vec3<u32>(52353u, 9031u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 41159u), vec3<u32>(4294967295u, 99419u, 4294967295u), vec3<u32>(38632u, 4294967295u, 3562u), vec3<u32>(0u, 4294967295u, 2023u), vec3<u32>(26909u, 1u, 4294967295u));

var<private> global1: array<vec3<bool>, 9>;

var<private> global2: Struct_4 = Struct_4(vec3<f32>(-1254f, -1807f, 718f), -40033i, Struct_3(945i, 14789i));

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<i32> {
    global3 = global2.c;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-341f)))), _wgslsmith_div_f32(-823f, 356f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2116f) * _wgslsmith_f_op_f32(-global2.a.x))));
    var var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(global3.b, -_wgslsmith_mult_i32(global2.c.a, global3.b))), firstLeadingBit(~(-global2.b)) & 44534i, global3.a);
    let var_2 = Struct_1(false, firstTrailingBit(_wgslsmith_mod_i32(1i, 1i)), var_1.zx << (firstLeadingBit(firstTrailingBit(vec2<u32>(u_input.a, 0u) & vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.xxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1153f, 412f, 1000f) - var_0.www))))), ~global2.c.a, Struct_3(~var_1.x, 30795i));
    return -(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.c, select(var_2.c, var_1.zy, var_2.a)), firstTrailingBit(var_2.c)) & ~var_2.c);
}

fn func_2() -> vec4<u32> {
    var var_0 = vec2<u32>(u_input.a, ~u_input.a) & min(vec2<u32>(68976u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 6021u, u_input.a, u_input.a), vec4<u32>(4294967295u, 53196u, 16206u, u_input.a), false), vec4<u32>(4294967295u, 30625u, 4294967295u, u_input.a))), select(firstTrailingBit(abs(vec2<u32>(u_input.a, 0u))), vec2<u32>(u_input.a, 3680u), true));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(110f)), 1693f, -934f, -1000f);
    let var_2 = Struct_4(vec3<f32>(661f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, -1738f), _wgslsmith_f_op_f32(-global2.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1262f, var_1.x)))), i32(-1i) * -31089i, global2.c);
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(global3.a, var_2.b), 43189i) <= _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_2.b, -31170i), 48470i), 0i, firstTrailingBit(~func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.x))) + _wgslsmith_f_op_f32(ceil(var_1.x)))), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~1u), 9u)], countOneBits(vec4<u32>(u_input.a, 0u, 42242u, var_0.x)), Struct_1(false, 1i, vec2<i32>(~firstTrailingBit(global2.c.a), _wgslsmith_clamp_i32(~global3.a, var_2.b, -23614i >> (u_input.a % 32u)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1060f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(246f)), _wgslsmith_f_op_f32(abs(411f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1231f)))), 1f));
    return max(abs(var_3.d), _wgslsmith_clamp_vec4_u32(select(~var_3.d, countOneBits(vec4<u32>(96404u, u_input.a, 1u, 1u)), vec4<bool>(var_3.a.a, false, false, true)), var_3.d, vec4<u32>(0u << (var_3.d.x % 32u), ~var_3.d.x, 4294967295u, 22977u)) | vec4<u32>(116u, _wgslsmith_mod_u32(var_3.d.x, var_0.x << (1u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.x, u_input.a), var_3.d.yz) & _wgslsmith_mod_u32(1u, u_input.a), max(1u, ~0u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~0u, ~(1u & u_input.a), ~u_input.a, u_input.a), func_2());
    let var_1 = arg_0;
    global1 = array<vec3<bool>, 9>();
    var var_2 = func_2().x != _wgslsmith_mult_u32(var_0.x, firstTrailingBit(select(_wgslsmith_dot_vec3_u32(arg_1.d.zxw, global0[_wgslsmith_index_u32(var_0.x, 29u)]), func_2().x, true)));
    let var_3 = arg_1.d.x;
    return arg_1.a;
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<u32>, 29>();
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(2290f, -1474f, global2.a.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, 198f), global2.a))), global3.b & (~global2.b << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)), Struct_3(24814i, -countOneBits(global2.b))), Struct_2(Struct_1(true && all(global1[_wgslsmith_index_u32(0u, 9u)]), global2.c.a, ~vec2<i32>(38776i, 0i) ^ vec2<i32>(global2.b, global3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) - _wgslsmith_f_op_f32(floor(-1477f))) + _wgslsmith_f_op_f32(f32(-1f) * -800f)), select(vec3<bool>(0u >= u_input.a, true, true), !global1[_wgslsmith_index_u32(51511u, 9u)], true), ~(vec4<u32>(22232u, 38728u, u_input.a, 9017u) | func_2()), Struct_1(true, ~(~global2.c.b), vec2<i32>(reverseBits(global2.c.a), _wgslsmith_mod_i32(global2.c.a, global2.c.b)))), vec4<i32>(abs(2147483647i), ~global3.a, 2098i, -(~global2.c.a)), ~40244i | global2.c.b);
    global0 = array<vec3<u32>, 29>();
    let var_1 = global2.c;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 29>();
    global3 = global2.c;
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-1256f * global2.a.x), -990f)) - _wgslsmith_f_op_vec3_f32(-global2.a)), global3.a, Struct_3(global3.a, -21881i));
    let var_0 = Struct_2(func_1(), global2.a.x, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(~abs(u_input.a), ~1u << (~u_input.a % 32u))), 9u)], vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(10763u, u_input.a) << (_wgslsmith_mult_u32(1u, 54288u) % 32u), u_input.a, u_input.a << (u_input.a % 32u)), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(89506u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), 83574u, u_input.a), Struct_1(true || (true | all(global1[_wgslsmith_index_u32(u_input.a, 9u)])), (firstTrailingBit(global2.c.b) ^ global2.c.a) | 19797i, vec2<i32>(0i, 5648i)));
    let var_1 = var_0.c.yx;
    global1 = array<vec3<bool>, 9>();
    var var_2 = max(func_2().x, _wgslsmith_add_u32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, ~firstLeadingBit(_wgslsmith_div_u32(var_0.d.x | u_input.a, var_0.d.x)), var_0.d.yy, ~u_input.a);
}

