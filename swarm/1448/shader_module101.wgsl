struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 29>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x * 520f), _wgslsmith_f_op_f32(-580f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-372f, arg_2.x)))), 298f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1476f, arg_2.x, arg_2.x) + vec3<f32>(arg_2.x, -516f, 902f)))) + _wgslsmith_f_op_vec3_f32(arg_2 + vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(max(arg_2.x, -598f)), _wgslsmith_f_op_f32(trunc(arg_2.x)))))));
    let var_1 = ~(~(-2147483647i));
    global1 = Struct_1(vec4<u32>(select(arg_1, 1u, global0.x), 45671u & reverseBits(select(91842u, 0u, true)), ~16020u, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, global1.a.x), ~u_input.a) & (u_input.a >> (~arg_1 % 32u))));
    global1 = Struct_1(~vec4<u32>(_wgslsmith_mult_u32(1u, u_input.a), arg_1, ~0u, global1.a.x) >> (vec4<u32>(~1u, ~16835u, arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1) >> (global1.a.zy % vec2<u32>(32u)), select(vec2<u32>(1u, 32099u), vec2<u32>(4294967295u, arg_1), global0.x))) % vec4<u32>(32u)));
    global0 = vec3<bool>(global0.x, true, global0.x);
    return _wgslsmith_clamp_vec3_i32(firstLeadingBit(-(~vec3<i32>(var_1, arg_0.x, 4530i))), vec3<i32>(-(~firstTrailingBit(-35021i)), 61458i, reverseBits(var_1)), vec3<i32>(firstLeadingBit(-_wgslsmith_div_i32(var_1, 15596i)), arg_3.x, abs(-(~(-22748i)))));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(32225u, 0u, global1.a.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, 24015u, u_input.a), global1.a, global1.a)));
    var var_1 = Struct_1(var_0.a);
    let var_2 = (min(vec3<i32>(-1i) * -vec3<i32>(u_input.b, 37650i, u_input.b), func_3(-vec2<i32>(u_input.b, u_input.b), 35539u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1301f, 917f, 1060f), vec3<f32>(-528f, -1068f, -1000f), global0.x)), vec2<i32>(-25078i, u_input.b))) & select(~(~vec3<i32>(u_input.b, u_input.b, 61737i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(71031i, 18083i, u_input.b), vec3<i32>(u_input.b, 1i, u_input.b)), vec3<bool>(all(vec2<bool>(false, true)), global0.x, select(false, false, true)))) >> ((_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.a.x, 4294967295u, 50924u), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.x, var_0.a.x, var_0.a.x), ~vec3<u32>(4294967295u, u_input.a, global1.a.x))) & reverseBits(var_0.a.zyz & ~global1.a.wwz)) % vec3<u32>(32u));
    let var_3 = ~abs(reverseBits(i32(-1i) * -var_2.x));
    var var_4 = global0.x;
    return _wgslsmith_mod_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(var_0.a.xx, ~vec2<u32>(var_1.a.x, var_1.a.x))), select(vec2<u32>(~reverseBits(var_0.a.x), global1.a.x | firstLeadingBit(u_input.a)), vec2<u32>(var_0.a.x, var_0.a.x), all(select(select(vec2<bool>(true, global0.x), global0.yy, global0.x), !vec2<bool>(global0.x, false), !global0.x))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: i32) -> vec2<bool> {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(~abs(1u), _wgslsmith_sub_u32(~arg_2.x, ~u_input.a), 52669u) & 27719u, ~(arg_1.x | _wgslsmith_div_u32(0u, ~global1.a.x)), u_input.a, 8668u);
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1.a.yx, vec2<u32>(arg_2.x, ~abs(arg_1.x))), arg_2.yz >> (vec2<u32>(1u, _wgslsmith_mod_u32(var_0.x, var_0.x)) % vec2<u32>(32u)));
    global0 = select(select(vec3<bool>(true, all(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x)), true), vec3<bool>(!all(vec3<bool>(true, global0.x, global0.x)), true, true), select(false, any(select(vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), false)), !global0.x)), vec3<bool>(global0.x, !select(false, global0.x, true), false), !vec3<bool>(0u >= global1.a.x, false, false));
    global2 = array<vec3<u32>, 29>();
    var var_2 = _wgslsmith_sub_vec4_i32(~(~(vec4<i32>(2147483647i, 1i, u_input.b, 1i) & vec4<i32>(arg_3, arg_3, -1i, 2147483647i)) << (min(firstTrailingBit(vec4<u32>(u_input.a, arg_2.x, 0u, 89751u)), arg_2) % vec4<u32>(32u))), vec4<i32>(1i, arg_3 >> ((u_input.a & _wgslsmith_sub_u32(u_input.a, 1u)) % 32u), arg_3, _wgslsmith_add_i32(~29300i, -18407i)));
    return !vec2<bool>(!(global0.x && true), !(!global0.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(405f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 518f), _wgslsmith_f_op_f32(1074f - 869f))))), func_2(), ~(~global1.a), arg_1);
    global2 = array<vec3<u32>, 29>();
    global2 = array<vec3<u32>, 29>();
    global0 = !(!arg_2);
    global2 = array<vec3<u32>, 29>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(~global1.a, vec4<u32>(select(func_1(vec2<u32>(global1.a.x, 40012u), u_input.b, vec3<bool>(global0.x, true, global0.x), 9528u), ~1u, true), global1.a.x, 4294967295u, 0u)));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_clamp_u32(countOneBits(1u), global1.a.x, var_0.a.x)) >> (~min(_wgslsmith_clamp_u32(u_input.a, 44249u, var_0.a.x), var_0.a.x) % 32u), countOneBits(reverseBits(71743u)));
    var var_2 = select(!global0.zy, !(!global0.yy), global0.yz);
    let var_3 = u_input.b;
    var_2 = vec2<bool>((_wgslsmith_f_op_f32(-640f - 1300f) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(428f))))) && all(global0.zx), global0.x);
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -var_3, -1i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(14889i, 2147483647i, u_input.b), vec3<i32>(-2147483647i, 33659i, var_3))), firstTrailingBit(u_input.b), ~u_input.b, _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(select(-845i, -2147483647i, var_2.x), 2147483647i, 15598i | u_input.b))) ^ vec4<i32>(~(~var_3 & ~var_3), -2147483647i, var_3, func_3(vec2<i32>(~u_input.b, var_3 ^ -25076i), ~42007u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(447f, -1634f, 953f) - vec3<f32>(289f, -1153f, 1123f)))), func_3(~vec2<i32>(-2147483647i, 0i), abs(18856u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, -1596f, 1000f)), firstLeadingBit(vec2<i32>(var_3, u_input.b))).yz).x);
    global1 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, 1u, 4294967295u));
}

