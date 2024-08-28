struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 286f;

var<private> global1: array<Struct_2, 27>;

var<private> global2: array<f32, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_5(arg_0);
    global2 = array<f32, 9>();
    global0 = global2[_wgslsmith_index_u32(var_0.a, 9u)];
    global1 = array<Struct_2, 27>();
    global2 = array<f32, 9>();
    return vec2<bool>(false | (true || select(true, u_input.d.x == u_input.d.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(abs(var_0.a), 9u)], _wgslsmith_div_f32(-2186f, -187f), global2[_wgslsmith_index_u32(4294967295u, 9u)] >= global2[_wgslsmith_index_u32(33275u, 9u)]))) == 825f);
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~57530u, 27u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(min(491f, global2[_wgslsmith_index_u32(var_0.a.x, 9u)]))))), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, -22372i), abs(vec4<i32>(-2147483647i, u_input.d.x, 8487i, -28370i)))), 43327u, select(!select(vec2<bool>(true, arg_0.x), arg_0.wz, func_3(60489u, vec4<i32>(7953i, u_input.d.x, u_input.d.x, 30799i))), func_3(~u_input.a, vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(2147483647i, u_input.d.x, 13898i, u_input.d.x)), ~u_input.d.x, abs(u_input.d.x))), !vec2<bool>(arg_0.x, any(vec2<bool>(arg_0.x, true)))), 258f);
    var var_2 = ~var_0.a.zyw;
    let var_3 = var_1.c;
    var var_4 = var_0.a.yw;
    return !select(vec4<bool>(any(arg_0) | any(arg_0), (u_input.d.x >> (var_2.x % 32u)) != (i32(-1i) * -41125i), true, any(select(vec3<bool>(var_1.d.x, arg_0.x, var_1.d.x), vec3<bool>(false, false, true), false))), !vec4<bool>(!arg_0.x, var_1.d.x, any(vec3<bool>(false, arg_0.x, arg_0.x)), false), !arg_0);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    let var_0 = Struct_4(select(!func_2(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), select(func_2(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(false, false)))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(select(true, false, true), true, false, func_3(50993u, vec4<i32>(1i, 73659i, arg_1, arg_0.x)).x), vec4<bool>(true, false, any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true))))), Struct_1(_wgslsmith_f_op_f32(max(-471f, _wgslsmith_f_op_f32(f32(-1f) * -796f))), u_input.d.x, firstLeadingBit(7841u), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 9u)]) * _wgslsmith_f_op_f32(ceil(-924f))), 2021f))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(852i, (u_input.d.x & u_input.d.x) & (i32(-1i) * -2147483647i)), i32(-1i) * -var_0.b.b), ~(-1i));
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let var_2 = vec2<bool>(var_0.b.d.x && (0u <= (~var_0.b.c >> (4294967295u % 32u))), var_0.b.e == 425f);
    return -382f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1089f;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 9u)] - -198f)))) * _wgslsmith_f_op_f32(func_1(countOneBits(vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)) << (vec3<u32>(1u, 98831u, 45595u) % vec3<u32>(32u)), ~(-9131i)))) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(17670u, 9u)]));
    global0 = -847f;
    let var_1 = Struct_2(_wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(u_input.a, u_input.c, 4294967295u, u_input.b)), ~(~vec4<u32>(0u, 4294967295u, u_input.c, 4294967295u))) << (max(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(61626u, u_input.e.x, u_input.b), countOneBits(51969u), ~u_input.b), vec4<u32>(select(u_input.a, 1u, true), ~u_input.a, 19601u, _wgslsmith_div_u32(u_input.c, u_input.e.x))) % vec4<u32>(32u)));
    let var_2 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_2, _wgslsmith_clamp_i32(-28101i, -1i, var_2)), _wgslsmith_mod_i32(u_input.d.x, -14813i) >> ((1u | var_1.a.x) % 32u), ~_wgslsmith_div_i32(2147483647i, var_2)), -vec3<i32>(var_2, -2147483647i >> (1u % 32u), -u_input.d.x)), -min(vec4<i32>(var_2, -314i, var_2, u_input.d.x), ~vec4<i32>(var_2, 2481i, var_2, u_input.d.x)) | vec4<i32>(-reverseBits(20516i), select(-64010i, abs(var_2), -744f != global2[_wgslsmith_index_u32(u_input.e.x, 9u)]), _wgslsmith_add_i32(~59058i, 40072i), 1i), firstLeadingBit(var_1.a.zzx));
}

