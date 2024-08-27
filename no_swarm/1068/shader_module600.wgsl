struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(173f, -1177f), vec2<f32>(-629f, -1000f), vec2<f32>(-765f, -243f), vec2<f32>(-630f, -415f), vec2<f32>(1213f, -771f), vec2<f32>(-232f, 1000f), vec2<f32>(-742f, -812f), vec2<f32>(-1225f, 1063f), vec2<f32>(-1333f, 457f), vec2<f32>(1749f, -776f), vec2<f32>(1639f, -1000f), vec2<f32>(-1688f, -516f), vec2<f32>(989f, -156f), vec2<f32>(-658f, 1000f), vec2<f32>(1255f, -1000f), vec2<f32>(-378f, -1713f), vec2<f32>(821f, 1255f), vec2<f32>(-1651f, 1600f), vec2<f32>(-315f, 166f), vec2<f32>(1781f, 1011f), vec2<f32>(-903f, -618f), vec2<f32>(208f, 877f), vec2<f32>(-1000f, -264f), vec2<f32>(-333f, 136f), vec2<f32>(2215f, 457f));

var<private> global1: vec3<f32>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: array<Struct_1, 17>;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = 236f;
    global0 = array<vec2<f32>, 25>();
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(-1i, -1i)), max(vec2<i32>(-1i, 9843i) << (~global4.wz % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-5276i, 19103i) | u_input.a.zx))), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, u_input.d, u_input.d, -28068i)), ~(-1i ^ u_input.b.x), u_input.a.x), -1337f, _wgslsmith_sub_i32(9947i >> (~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u), _wgslsmith_dot_vec2_i32(u_input.b.zz, -u_input.b.xz | abs(vec2<i32>(23330i, u_input.a.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, var_0)) - _wgslsmith_f_op_f32(-294f + var_1.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-599f, -109f)) - var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(686f * global1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-638f, -792f, false)))), 834f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(615f)), _wgslsmith_f_op_f32(round(-1474f)), 1216f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) + _wgslsmith_f_op_f32(f32(-1f) * -418f)), var_1.c)), false));
    global2 = !select(select(!select(vec4<bool>(false, global2.x, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, global2.x)), vec4<bool>(!global2.x, global2.x, global2.x, true), select(select(vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, global2.x, true, true)), !vec4<bool>(global2.x, false, global2.x, global2.x), select(vec4<bool>(global2.x, true, true, false), vec4<bool>(global2.x, global2.x, true, true), false))), vec4<bool>(true, !(!global2.x), global2.x, any(vec2<bool>(true, global2.x))), select(select(vec4<bool>(global2.x, global2.x, global2.x, true), !vec4<bool>(global2.x, false, global2.x, false), global2.x), !vec4<bool>(false, global2.x, true, global2.x), true));
    return u_input.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_2.x;
    var var_1 = u_input.c.x;
    let var_2 = vec3<u32>(_wgslsmith_div_u32(~global4.x, u_input.c.x), _wgslsmith_add_u32(global4.x | max(min(global4.x, 1u), 7163u), global4.x), max(~abs(u_input.c.x), 4294967295u));
    var var_3 = vec4<u32>(var_2.x, u_input.c.x, ~global4.x, _wgslsmith_add_u32(0u, ~(_wgslsmith_mod_u32(10605u, u_input.c.x) & max(4294967295u, var_2.x))));
    var var_4 = -656f;
    return _wgslsmith_mod_u32(3322u, 1u);
}

fn func_2() -> vec4<u32> {
    var var_0 = true & global2.x;
    let var_1 = vec2<bool>(!global2.x, true);
    var var_2 = !(!select(!vec4<bool>(false, false, global2.x, true), vec4<bool>(false, true, global2.x, u_input.c.x <= 4294967295u), vec4<bool>(true, true | var_1.x, !global2.x, !var_1.x)));
    var var_3 = func_4(-vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.xy), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, -3128i), firstLeadingBit(19870i))), func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-868f, global1.x, global1.x, global1.x))))))) - vec4<f32>(385f, -429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * _wgslsmith_f_op_f32(trunc(global1.x))), global1.x)));
    let var_4 = min(countOneBits(~(~29180u)), ~(~29186u));
    return ~vec4<u32>(~39660u, 80016u, 15757u, u_input.c.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = u_input.b.xy;
    var var_1 = global2.zx;
    global3 = array<Struct_1, 17>();
    var var_2 = min(~func_2(), vec4<u32>(~u_input.c.x >> (arg_0 % 32u), _wgslsmith_add_u32(~(~1u), abs(arg_0) ^ ~63081u), _wgslsmith_dot_vec2_u32(vec2<u32>(~36047u, u_input.c.x), _wgslsmith_div_vec2_u32(func_2().zy, _wgslsmith_add_vec2_u32(vec2<u32>(arg_1, u_input.c.x), vec2<u32>(0u, global4.x)))), arg_1));
    global2 = !select(vec4<bool>(any(!vec4<bool>(true, arg_2, arg_2, true)), true, select(arg_1, var_2.x, global2.x) == 15548u, true), !select(!vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, false, var_1.x), !arg_2), (var_0.x <= u_input.a.x) && all(select(global2.zw, vec2<bool>(true, var_1.x), false)));
    return arg_0;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> StorageBuffer {
    let var_0 = 34239u != select(arg_2.x & countOneBits(arg_0.x), abs(arg_0.x), global2.x);
    global0 = array<vec2<f32>, 25>();
    var var_1 = select(select(select(!select(global2.xzw, vec3<bool>(global2.x, false, false), vec3<bool>(var_0, var_0, var_0)), !vec3<bool>(var_0, false, false), !(global1.x == global1.x)), select(vec3<bool>(select(var_0, var_0, var_0), all(global2.zz), true), vec3<bool>(!global2.x, true, var_0), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)) <= global1.x), global2.xyy, select(global2.xzx, global2.yyw, select(global2.ywx, global2.xwy, false)));
    let var_2 = var_0;
    var var_3 = any(select(select(!select(vec4<bool>(false, true, var_1.x, var_0), vec4<bool>(var_1.x, true, false, false), false), select(!vec4<bool>(true, false, var_2, false), vec4<bool>(var_0, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, false, var_2)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0, var_2, var_2, false), vec4<bool>(var_1.x, false, var_1.x, false), true), vec4<bool>(true, var_1.x, var_0, true))), !select(vec4<bool>(true, true, true, true), !vec4<bool>(var_2, global2.x, global2.x, false), !vec4<bool>(var_0, var_1.x, true, global2.x)), vec4<bool>(true, true, !all(global2.xx), true)));
    return StorageBuffer(_wgslsmith_sub_i32(arg_3, countOneBits(~arg_3)), _wgslsmith_mod_i32(firstTrailingBit(u_input.a.x | arg_3), abs(arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec3<u32>(~(~_wgslsmith_mult_u32(global4.x, 32560u)), 112382u, 36785u), func_1(abs(18173u), ~global4.x, global2.x), abs(vec2<u32>(u_input.c.x, max(~4294967295u, u_input.c.x | 9438u))), -1i);
}

