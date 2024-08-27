struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(i32(-2147483648), 2147483647i, -5493i), vec3<i32>(-83434i, 1i, 1i), vec3<i32>(-12759i, -16734i, -44639i), vec3<i32>(20528i, 3683i, 28794i), vec3<i32>(1i, -177i, i32(-2147483648)), vec3<i32>(29208i, 2147483647i, 3608i), vec3<i32>(-10133i, 21935i, 4650i), vec3<i32>(0i, -57665i, -1i), vec3<i32>(45305i, 0i, -12027i), vec3<i32>(-34141i, -5985i, i32(-2147483648)), vec3<i32>(-34662i, -23086i, -19333i), vec3<i32>(0i, -1i, -4671i), vec3<i32>(i32(-2147483648), 1i, -32040i), vec3<i32>(-1i, 0i, 22934i), vec3<i32>(-12387i, 53386i, 0i), vec3<i32>(17357i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 4273i, 1i), vec3<i32>(2147483647i, 24232i, 0i), vec3<i32>(i32(-2147483648), 61867i, 0i), vec3<i32>(5380i, 0i, -25336i), vec3<i32>(44226i, -9878i, 9708i), vec3<i32>(14156i, -21038i, 26750i), vec3<i32>(-1i, 15621i, -5679i), vec3<i32>(1i, 0i, -51280i), vec3<i32>(24401i, 1i, 29221i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(-4194i, 10456i, 2147483647i), vec3<i32>(1i, 2147483647i, 5317i), vec3<i32>(23053i, -17966i, 26589i), vec3<i32>(1i, i32(-2147483648), -8095i), vec3<i32>(-1i, 11215i, -1i), vec3<i32>(2147483647i, -76657i, i32(-2147483648)));

var<private> global3: f32 = 114f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> bool {
    global2 = array<vec3<i32>, 32>();
    let var_0 = select(select(vec4<bool>(any(vec2<bool>(true, true)), false, arg_2, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), select(!(!vec4<bool>(false, false, arg_2, arg_2)), select(vec4<bool>(arg_2, arg_2, true, arg_2), select(vec4<bool>(false, arg_2, true, true), vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(arg_2, false, false, arg_2)), !arg_2), !(!vec4<bool>(arg_2, arg_2, arg_2, true))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(arg_2, arg_2, true, arg_2), arg_2))), !(!vec4<bool>(!arg_2, arg_3 <= u_input.d, true, arg_2)), !(!all(!vec4<bool>(false, arg_2, arg_2, arg_2))));
    global3 = 844f;
    var var_1 = Struct_2(vec3<i32>(u_input.a.x, 0i, abs(arg_0.x | _wgslsmith_dot_vec2_i32(vec2<i32>(-17404i, 0i), vec2<i32>(u_input.b, -6324i)))), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(min(arg_1.a, 4294967295u)), _wgslsmith_div_u32(~29553u, arg_3)), ~u_input.d << (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a, 7260u), vec2<u32>(1u, arg_3) ^ vec2<u32>(30093u, 1u)) % 32u), _wgslsmith_mod_u32(~4294967295u, ~0u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 0u), ~vec2<u32>(u_input.d, 1u)) % 32u), (~arg_3 >> (u_input.d % 32u)) & (arg_3 & max(4294967295u, arg_1.a))));
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 40263u, 0u, min(_wgslsmith_div_u32(4294967295u, arg_3), _wgslsmith_add_u32(arg_1.a, arg_1.a))), vec4<u32>(firstLeadingBit(~33979u), ~(6405u >> (arg_1.a % 32u)), 4294967295u, u_input.d));
    return select(false, false, arg_2);
}

fn func_2() -> f32 {
    var var_0 = Struct_3(~(~(~(0u << (u_input.d % 32u)))));
    global2 = array<vec3<i32>, 32>();
    let var_1 = all(vec3<bool>(reverseBits(_wgslsmith_clamp_u32(var_0.a, u_input.d, u_input.d)) > var_0.a, !((u_input.c.x | u_input.b) >= ~3268i), any(vec3<bool>(select(true, true, false), all(vec3<bool>(true, true, true)), func_3(vec3<i32>(u_input.a.x, u_input.b, -12818i), Struct_3(73311u), false, var_0.a)))));
    let var_2 = -627f;
    global0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(22534u & var_0.a, 5813u), var_0.a, u_input.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2 + var_2)))), _wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(var_2 + -270f)))));
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_2()), 100f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f * -835f))), _wgslsmith_div_f32(1895f, -142f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1296f * 379f)))));
    let var_1 = Struct_3(firstLeadingBit(~1u));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(-2147483647i, -1i), -8105i, _wgslsmith_sub_i32(-1i, ~_wgslsmith_clamp_i32(-1i, u_input.c.x, -10914i)), 1i);
    let var_3 = vec3<bool>(false, ((~1u << (_wgslsmith_mod_u32(u_input.d, var_1.a) % 32u)) >> (~_wgslsmith_div_u32(u_input.d, var_1.a) % 32u)) < (39681u >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a, u_input.d), ~vec2<u32>(var_1.a, 4294967295u)) % 32u)), arg_0.x);
    global2 = array<vec3<i32>, 32>();
    return !select(vec4<bool>(var_3.x, true, arg_0.x, (-2147483647i > u_input.c.x) && var_3.x), !(!(!vec4<bool>(false, var_3.x, false, true))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec4<bool>(true, u_input.d <= 4294967295u, true, true), !(!func_1(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true));
    var var_1 = ~firstLeadingBit(vec2<u32>(max(u_input.d, 4294967295u), countOneBits(~u_input.d)));
    let var_2 = 366f;
    let var_3 = Struct_2(vec3<i32>(u_input.a.x, 13386i, ~u_input.c.x), max(~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 54024u, u_input.d, u_input.d), vec4<u32>(1u, 0u, 0u, u_input.d), vec4<u32>(u_input.d, 4294967295u, 68783u, 74108u)), vec4<u32>(40156u, u_input.d, var_1.x, var_1.x)), vec4<u32>(1u, 39530u, 31941u, u_input.d)));
    let var_4 = _wgslsmith_sub_i32((~_wgslsmith_div_i32(u_input.c.x, 1i) ^ (var_3.a.x >> (~var_3.b.x % 32u))) ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(countOneBits(-2426i), var_3.a.x & 40049i), -u_input.b), 2147483647i);
    let var_5 = var_3.a.x;
    global0 = _wgslsmith_div_u32(~(~1u), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, 663f), vec2<f32>(var_2, var_2)))) + vec2<f32>(-1817f, _wgslsmith_f_op_f32(floor(var_2)))))));
}

