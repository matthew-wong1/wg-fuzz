struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, false, false), vec2<bool>(true, true), Struct_2(true), 45688u);

var<private> global1: Struct_2 = Struct_2(false);

var<private> global2: Struct_3 = Struct_3(vec3<bool>(true, true, false), vec2<bool>(false, false), Struct_2(true), 36063u);

var<private> global3: array<vec2<f32>, 18>;

var<private> global4: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = global2.c.a | select(!(true & (global2.a.x & false)), !global1.a, true);
    let var_1 = vec3<bool>(global4.x, true, true);
    var var_2 = ~(~(~(~arg_1.a)) ^ _wgslsmith_mod_vec2_u32(arg_1.c.zz, ~(vec2<u32>(0u, 29323u) ^ arg_1.c.xz)));
    global3 = array<vec2<f32>, 18>();
    return Struct_3(global0.a, !global0.b, Struct_2(global1.a), global2.d);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_4(reverseBits(_wgslsmith_mult_vec2_u32(~(vec2<u32>(u_input.a, global0.d) << (vec2<u32>(0u, global2.d) % vec2<u32>(32u))), ~vec2<u32>(u_input.a, 13576u) ^ (vec2<u32>(global0.d, 60959u) ^ vec2<u32>(0u, u_input.a)))), abs(min(abs(22615i), u_input.b)), firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 29024u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.d, global0.d, 1u), vec3<u32>(global2.d, global2.d, 33211u), vec3<u32>(0u, global0.d, 24654u)))));
    var var_1 = vec3<i32>(~var_0.b, 16143i, u_input.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-804f * _wgslsmith_f_op_f32(ceil(1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-533f, -1025f) + _wgslsmith_f_op_f32(f32(-1f) * -1197f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2604f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-504f + 643f), _wgslsmith_f_op_f32(min(-321f, -651f)))))));
    var var_3 = func_2(75420i, Struct_4(reverseBits(~firstLeadingBit(var_0.c.zz)), 1i, max(var_0.c, firstLeadingBit(var_0.c))), select(global0.d != _wgslsmith_add_u32(~1u, 0u), true, true));
    global4 = !select(select(!vec4<bool>(false, true, var_3.a.x, global1.a), vec4<bool>(any(vec2<bool>(global4.x, global0.b.x)), !global2.a.x, true, all(global0.a)), any(!global2.b)), !(!vec4<bool>(true, global2.a.x, false, global1.a)), !(!(!vec4<bool>(false, true, global1.a, global1.a))));
    return vec3<u32>(countOneBits(u_input.a), ~(~func_2(~u_input.b, Struct_4(vec2<u32>(115492u, 0u), 41691i, var_0.c), all(vec4<bool>(global1.a, global0.b.x, true, false))).d), ~1u);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = true;
    let var_1 = Struct_2(global0.a.x);
    global2 = func_2(u_input.b, Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_2) & arg_0.yx, _wgslsmith_mult_vec2_u32(arg_0.xz, vec2<u32>(1u, global2.d))) ^ select(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.d, 6657u), vec2<u32>(0u, 5609u)), arg_0.xx, true), max(arg_1.b, -5413i), vec3<u32>(_wgslsmith_add_u32(2380u, global2.d), ~39813u, ~3931u) << (vec3<u32>(4294967295u, _wgslsmith_sub_u32(arg_1.c, arg_0.x), abs(global0.d)) % vec3<u32>(32u))), true);
    let var_2 = func_3();
    global4 = select(!vec4<bool>(global4.x, var_1.a, true, !any(global4.yzw)), !(!(!select(vec4<bool>(false, var_1.a, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, global0.c.a, global0.b.x, true)))), !(!select(vec4<bool>(global4.x, global2.c.a, global1.a, global4.x), select(vec4<bool>(global2.b.x, false, true, false), vec4<bool>(true, global4.x, false, global2.b.x), var_1.a), vec4<bool>(var_1.a, true, global2.b.x, global4.x))));
    return !(!(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, -2147483647i, arg_1.b), firstLeadingBit(vec3<i32>(12047i, u_input.b, arg_1.b))) >= u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = any(select(vec4<bool>(!(global2.c.a | global0.b.x), true & global4.x, true, _wgslsmith_mod_i32(1i, u_input.b) == u_input.b), !vec4<bool>(true, func_1(vec3<u32>(global0.d, var_0, u_input.a), Struct_1(vec2<f32>(475f, 1867f), 0i, 0u), u_input.a, 1096f), global2.c.a, false), !(!select(vec4<bool>(global1.a, true, false, global2.c.a), vec4<bool>(false, false, true, true), global2.a.x))));
    var var_2 = func_2(countOneBits(_wgslsmith_mod_i32(firstTrailingBit(1i), _wgslsmith_add_i32(u_input.b, -2147483647i))), Struct_4(~(~vec2<u32>(1u, 63129u)) ^ min(~vec2<u32>(global0.d, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(global2.d, var_0), vec2<u32>(1u, global2.d))), -_wgslsmith_mult_i32(u_input.b, firstTrailingBit(u_input.b)), vec3<u32>(select(global0.d, 8988u, false) & global2.d, ~global0.d | ~global0.d, (0u | global2.d) >> (760u % 32u))), all(!vec3<bool>(false, global2.a.x, true)));
    let var_3 = ~vec4<u32>(var_0, global2.d, global0.d, ~abs(firstLeadingBit(var_0)));
    global4 = !vec4<bool>((u_input.b < u_input.b) | any(!global4.xyy), func_2(u_input.b, Struct_4(vec2<u32>(var_0, 19091u) | vec2<u32>(1u, 1u), min(u_input.b, 8927i), ~var_3.zyx), true).b.x, -744f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -736f))), true);
    let var_4 = _wgslsmith_f_op_f32(min(1000f, -1612f));
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, var_4) + -621f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4 * 338f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(-702f)), 1919f), vec2<f32>(var_4, var_4), !global4.x))), 1i, 1u);
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(67124u, 38419u, var_3.x), var_3.wyw), var_0));
}

