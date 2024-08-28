struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_3, 28>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_3, 10>;

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    global1 = array<Struct_3, 28>();
    global0 = !(!vec4<bool>(false, all(!global0.yzy), arg_2, true));
    var var_0 = any(vec4<bool>(!(!(false && arg_1.b)), global0.x, false, false));
    var var_1 = Struct_3(1u, Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(global4.x), min(0u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(2535u, 53195u), vec2<u32>(21280u, 4294967295u))), (vec3<u32>(global4.x, global4.x, 0u) << (vec3<u32>(arg_1.d.x, 0u, 1u) % vec3<u32>(32u))) ^ arg_1.d.zyx), 770f, arg_1.c, arg_1, _wgslsmith_mod_i32(0i, abs(u_input.c.x | u_input.c.x))), ~(_wgslsmith_div_u32(11127u, arg_1.c) & _wgslsmith_clamp_u32(arg_1.c, _wgslsmith_mod_u32(37400u, 4294967295u), 4294967295u >> (global4.x % 32u))), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(141u, global4.x, arg_1.d.x, arg_1.c), arg_1.d), arg_1.c), _wgslsmith_sub_u32(~_wgslsmith_div_u32(global4.x, 106175u), 23493u)));
    var var_2 = var_1.b.d.a.x >> (arg_1.c % 32u);
    return global0.yz;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1929f, 689f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 * 811f))));
    let var_2 = !vec2<bool>(!all(func_3(u_input.c.x, Struct_1(vec2<i32>(32199i, 29050i), global2.x, global4.x, vec4<u32>(global4.x, global4.x, 91700u, global4.x)), true)), true);
    var_0 = _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -476f)))))));
    var var_3 = arg_0;
    return func_3(~arg_1, Struct_1(-_wgslsmith_clamp_vec2_i32(u_input.c.yz, countOneBits(u_input.c.yz), firstLeadingBit(vec2<i32>(-2147483647i, arg_1))), false, ~(~global4.x | global4.x), firstTrailingBit(select(~vec4<u32>(47724u, 40297u, 48786u, global4.x), vec4<u32>(11285u, 4294967295u, global4.x, 251u) ^ vec4<u32>(0u, 23132u, global4.x, global4.x), any(var_2)))), select(all(!(!global0.yx)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(645f, arg_0)) + _wgslsmith_f_op_f32(-arg_0)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, -238f)), _wgslsmith_f_op_f32(arg_0 * -565f))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = vec2<bool>(1u == ~global4.x, global2.x);
    global3 = array<Struct_3, 10>();
    var var_1 = abs(~(~(~(vec3<u32>(0u, global4.x, global4.x) >> (vec3<u32>(17232u, 0u, 14040u) % vec3<u32>(32u))))));
    var_0 = func_3(arg_1.x, Struct_1(_wgslsmith_sub_vec2_i32(~u_input.c.yy & u_input.c.yx, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(1i, u_input.d), arg_1.yz), vec2<i32>(u_input.a, u_input.a))), global0.x, var_1.x, vec4<u32>(global4.x, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global4.x, 20762u, global4.x), vec4<u32>(global4.x, 12822u, global4.x, 66640u)), _wgslsmith_sub_u32(var_1.x, 5665u)) << (vec4<u32>(global4.x, var_1.x, global4.x, ~62972u) % vec4<u32>(32u))), true);
    var var_2 = vec3<bool>(true, !global0.x, select(true, (30703i == arg_1.x) && true, true) || arg_0.x);
    return Struct_3(var_1.x, Struct_2(1u, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2634f * -284f)))), 4294967295u, Struct_1(-abs(vec2<i32>(arg_1.x, u_input.b)), true, global4.x, _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 0u, global4.x, 0u), ~vec4<u32>(13958u, global4.x, 0u, 0u))), -(reverseBits(u_input.b) >> ((global4.x & 1u) % 32u))), 0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~global4.x, ~var_1.x), _wgslsmith_div_vec3_u32(~vec3<u32>(var_1.x, global4.x, global4.x), vec3<u32>(global4.x, global4.x, global4.x) & vec3<u32>(4294967295u, global4.x, 1182u))), 14698u));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = Struct_2(38649u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1000f) * arg_0) + arg_0))), countOneBits(_wgslsmith_dot_vec4_u32(arg_1.b.d.d, arg_1.b.d.d)), func_4(func_2(arg_1.b.b, -6149i, !func_2(-1726f, u_input.d, arg_1.b.d.b).x), (countOneBits(vec4<i32>(arg_1.b.d.a.x, arg_1.b.e, 1i, u_input.d)) >> (arg_1.b.d.d % vec4<u32>(32u))) >> (abs(arg_1.b.d.d) % vec4<u32>(32u))).b.d, u_input.c.x);
    return select(vec3<i32>(-min(-11402i, -1i >> (var_0.a % 32u)), 2147483647i, -_wgslsmith_sub_i32(u_input.b, 30536i)), ~(-u_input.c | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.e, u_input.d, -16693i), -vec3<i32>(arg_1.b.e, -2147483647i, 1i), -vec3<i32>(u_input.b, var_0.d.a.x, -19318i))), arg_1.b.d.a.x >= u_input.d);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_5(-1000f, func_4(select(!select(vec2<bool>(global0.x, false), vec2<bool>(false, true), global0.yz), func_2(_wgslsmith_div_f32(-501f, 2232f), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), global0.x), select(func_2(1421f, u_input.d, global2.x), vec2<bool>(global0.x, true), true)), ~vec4<i32>(u_input.c.x, u_input.d, -56571i, -1i) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(61012u, 48402u, global4.x, global4.x), vec4<u32>(global4.x, 1873u, global4.x, global4.x)), firstLeadingBit(12596u), ~10879u, _wgslsmith_clamp_u32(24193u, 4294967295u, global4.x)) % vec4<u32>(32u))));
    let var_1 = (-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-67523i, -2527i, 59836i, u_input.d), vec4<i32>(-2147483647i, var_0.x, var_0.x, 19631i)), 0i, 2147483647i & var_0.x, func_5(575f, Struct_3(global4.x, Struct_2(global4.x, -934f, 4294967295u, Struct_1(vec2<i32>(u_input.b, 0i), true, 1u, vec4<u32>(14266u, global4.x, 4294967295u, global4.x)), u_input.b), 1u, 0u)).x) << (vec4<u32>(select(global4.x, ~0u, true), 1u, ~_wgslsmith_add_u32(global4.x, global4.x), func_4(select(vec2<bool>(true, global2.x), global0.xz, global2.x), vec4<i32>(4112i, var_0.x, var_0.x, var_0.x)).a) % vec4<u32>(32u))) | (firstTrailingBit(vec4<i32>(-21844i, abs(u_input.b), func_5(1750f, global1[_wgslsmith_index_u32(global4.x, 28u)]).x, 2147483647i)) >> (vec4<u32>(~global4.x, func_4(func_2(834f, var_0.x, false), vec4<i32>(var_0.x, 0i, var_0.x, -2147483647i)).c, global4.x, 68536u) % vec4<u32>(32u)));
    var var_2 = ~global4.x;
    let var_3 = vec4<i32>(var_0.x, reverseBits((_wgslsmith_dot_vec3_i32(var_0, var_1.xyz) & var_0.x) | ~_wgslsmith_mult_i32(var_0.x, var_0.x)), var_0.x, max(var_1.x, abs(~(-1i))));
    global0 = !(!(!select(select(vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, true, true), true), vec4<bool>(global0.x, false, global2.x, false), true)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-586f, 815f, 307f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-339f, 1233f, global0.x)), -1638f, -677f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, 373f, 223f)))))), ~(~min(_wgslsmith_add_vec3_u32(vec3<u32>(75174u, global4.x, global4.x), vec3<u32>(13237u, 0u, global4.x)), vec3<u32>(global4.x, 47852u, 17124u))), ~((_wgslsmith_sub_u32(global4.x, global4.x) << (0u % 32u)) >> (4294967295u % 32u)), _wgslsmith_f_op_f32(-290f + 806f), abs(vec2<u32>(1u, func_4(vec2<bool>(true, global0.x), vec4<i32>(-8323i, 16409i, u_input.d, 2843i)).d | reverseBits(7395u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

