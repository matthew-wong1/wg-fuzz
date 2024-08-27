struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 0u, vec2<bool>(true, false), 1685f, vec3<i32>(1761i, 2010i, 2147483647i));

var<private> global1: array<vec3<i32>, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(~1u), ~_wgslsmith_add_u32(global0.a, ~0u)), vec2<u32>(1u, global0.b) >> (max(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4048u, 40477u), vec2<u32>(global0.b, global0.a)), vec2<u32>(57468u, 10843u) | vec2<u32>(global0.a, 1u)), countOneBits(firstLeadingBit(vec2<u32>(1u, 0u)))) % vec2<u32>(32u)));
    var var_1 = 1000f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)), global0.d));
    global1 = array<vec3<i32>, 3>();
    var var_2 = global0.e.x >> (_wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(var_0 >> (49977u % 32u), 24722u)), global0.b) % 32u);
    let var_3 = Struct_1(~48858u, max(global0.b, 59734u), select(!select(vec2<bool>(arg_3.x, arg_3.x), arg_3.zx, arg_0), select(select(select(vec2<bool>(arg_0, arg_2.x), vec2<bool>(arg_0, true), vec2<bool>(arg_3.x, true)), arg_3.zy, true), arg_3.xy, false), true), _wgslsmith_f_op_f32(-global0.d), vec3<i32>(-2147483647i, -2147483647i, -1i) & global1[_wgslsmith_index_u32(0u, 3u)]);
    return abs(22022u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = global0.b;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(26700u, func_3(true, vec4<i32>(-1i, 22194i, 51786i, 1i), select(vec4<bool>(false, false, global0.c.x, global0.c.x), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), true), !vec3<bool>(global0.c.x, global0.c.x, global0.c.x))), ~min(min(vec2<u32>(1u, 4294967295u), vec2<u32>(4614u, 0u)), vec2<u32>(global0.b, 1u))), 36728u, !global0.c, _wgslsmith_f_op_f32(ceil(1557f)), _wgslsmith_div_vec3_i32(global0.e, reverseBits(global1[_wgslsmith_index_u32(global0.b, 3u)] & (global1[_wgslsmith_index_u32(0u, 3u)] << (vec3<u32>(global0.a, global0.b, global0.b) % vec3<u32>(32u))))));
    global0 = Struct_1(global0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(min(global0.b, global0.a)), abs(1u)), ~vec2<u32>(0u, min(0u, 4294967295u))), global0.c, _wgslsmith_f_op_f32(-var_1.d), firstLeadingBit(firstTrailingBit(firstTrailingBit(reverseBits(vec3<i32>(global0.e.x, global0.e.x, 0i))))));
    var var_2 = Struct_1(_wgslsmith_sub_u32(~0u, reverseBits(max(~0u, global0.a << (global0.a % 32u)))), 4294967295u, vec2<bool>(true, any(select(!vec3<bool>(var_1.c.x, var_1.c.x, global0.c.x), select(vec3<bool>(true, global0.c.x, global0.c.x), vec3<bool>(global0.c.x, var_1.c.x, false), false), global0.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.d, -769f))))), 2734f)), var_1.e);
    global1 = array<vec3<i32>, 3>();
    return Struct_1(~(func_3(global0.d >= -788f, vec4<i32>(-1i, global0.e.x, -1i, arg_0), select(vec4<bool>(false, false, global0.c.x, var_2.c.x), vec4<bool>(true, global0.c.x, global0.c.x, var_1.c.x), vec4<bool>(var_2.c.x, var_2.c.x, false, true)), select(vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(var_1.c.x, false, false), true)) ^ (~1u & _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 0u, 11231u), vec3<u32>(global0.b, 0u, global0.b)))), ~1u, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(384f, -765f) * -1606f))) + var_1.d), ~(~var_1.e) ^ vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global0.e.x, var_1.e.x), 11067i), arg_0, ~(var_1.e.x | var_2.e.x)));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(~global0.a, global0.a, global0.c, global0.d, abs(-global0.e) ^ abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(26491u, 0u, global0.b), vec3<u32>(4294967295u, global0.a, global0.b)), abs(vec3<u32>(global0.b, 4294967295u, global0.a))), 3u)]));
    let var_1 = func_2(-(-1i | select(~u_input.a, i32(-1i) * -1i, any(vec3<bool>(global0.c.x, var_0.c.x, true)))));
    var_0 = Struct_1(0u, 1u, global0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.d + -124f), 1176f, 39575i == (-2147483647i >> (~var_0.b % 32u)))), vec3<i32>(u_input.b.x, 101i, -u_input.a));
    global1 = array<vec3<i32>, 3>();
    var var_2 = max(~(select(select(vec2<u32>(78223u, 4199u), vec2<u32>(16565u, var_1.a), vec2<bool>(var_1.c.x, true)), vec2<u32>(115950u, 55031u), func_2(-16565i).c.x) >> (~vec2<u32>(var_0.b, 1u) % vec2<u32>(32u))), select(~(~(~vec2<u32>(var_1.b, var_0.a))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.b, var_0.a), vec2<u32>(global0.b, 23284u) << (vec2<u32>(49233u, 4294967295u) % vec2<u32>(32u))), select(true & var_0.c.x, func_2(global0.e.x).c.x, true)));
    return ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b, global0.a), vec2<u32>(var_2.x, 63511u)), max(vec2<u32>(var_2.x, var_1.b), vec2<u32>(var_1.b, 0u))) >> (var_0.b % 32u), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 303f;
    let var_1 = abs(~global0.e.x);
    var var_2 = false;
    let var_3 = 19309u;
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1093f, _wgslsmith_f_op_f32(abs(507f)), var_0, _wgslsmith_f_op_f32(-global0.d))));
    var var_5 = 79406u;
    global0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~global0.b, ~_wgslsmith_sub_u32(34405u, global0.b), _wgslsmith_sub_u32(11605u, var_3)), global0.a), (global0.b ^ func_1()) | _wgslsmith_dot_vec2_u32(~(~vec2<u32>(81816u, 18118u)), max(vec2<u32>(4294967295u, 22739u), vec2<u32>(4294967295u, var_3)) << (vec2<u32>(1u, var_3) % vec2<u32>(32u))), !func_2(-1i).c, _wgslsmith_f_op_f32(round(global0.d)), _wgslsmith_clamp_vec3_i32(~(~(vec3<i32>(u_input.a, var_1, 2147483647i) & global0.e)), -global1[_wgslsmith_index_u32(~global0.b | global0.b, 3u)], reverseBits(countOneBits(~global0.e))));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.x), 187f)))));
    var_5 = ~var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(min(abs(var_3), _wgslsmith_mult_u32(var_3, 4595u))), global0.a >> ((50128u | var_3) % 32u), 21456u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 48566u, global0.a), vec3<u32>(var_3, 48868u, 31511u)), 4294967295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) - var_4.zwx), ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(var_3, var_3, var_3)) << (vec3<u32>(global0.b, var_3, global0.b) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a, var_3, 1u), vec3<u32>(global0.b, global0.b, var_3))), 4609i, 4294967295u);
}

