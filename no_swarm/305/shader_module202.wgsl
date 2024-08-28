struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), 1855i, true, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> bool {
    global1 = global0.b.b;
    let var_0 = min(~_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(40518u, global0.c, global0.c, global0.c), vec4<u32>(1u, 4294967295u, 74690u, 18552u)), vec4<u32>(u_input.c, 11998u, 0u, firstLeadingBit(global0.c))), vec4<u32>(u_input.a, _wgslsmith_div_u32(global0.c, ~(~23475u)), 32415u, max(~global0.c, ~global0.c & _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 1u, 12006u), u_input.d))));
    global0 = Struct_3(global0.a, Struct_2(true, global0.b.c, global0.a), u_input.e.x, select(!select(global0.d, global1.a.zw, vec2<bool>(false, false)), vec2<bool>(!global1.a.x, u_input.c >= 4294967295u), vec2<bool>(select(true | global0.b.b.a.x, true, global0.d.x), !global1.c && true)), !select(select(select(global1.a.yz, vec2<bool>(global0.a.a.x, global1.a.x), global0.a.a.wz), vec2<bool>(true, true), global1.a.x), select(vec2<bool>(global1.c, global0.d.x), !vec2<bool>(true, global0.b.c.c), 5963i == u_input.b.x), select(select(vec2<bool>(false, true), global1.a.xy, vec2<bool>(false, global0.d.x)), !global0.b.b.a.yx, true)));
    var var_1 = -vec3<i32>(global1.b, global0.b.b.b, u_input.b.x);
    var var_2 = Struct_3(Struct_1(!select(global1.a, vec4<bool>(global1.c, false, global0.b.a, false), vec4<bool>(false, true, global0.a.a.x, global1.a.x)), select(var_1.x, _wgslsmith_mod_i32(~21241i, 16336i), !(global0.c >= u_input.e.x)), global1.a.x, -countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(50292i, 6261i), vec2<i32>(arg_0, global1.b)))), global0.b, _wgslsmith_mult_u32(4294967295u, ~(~(~global0.c))), vec2<bool>(true, true), global0.e);
    return !any(!var_2.a.a.xxz);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    global0 = Struct_3(Struct_1(arg_1, ~78543i, global0.a.c, arg_2), global0.b, 4294967295u, select(!arg_0.b.a.xx, arg_1.xx, vec2<bool>(false, true)), global1.a.ww);
    let var_0 = Struct_4(select(arg_0.c.c, global0.a.c, func_3(abs(u_input.b.x))));
    var var_1 = select(vec4<bool>(true, arg_0.b.a.x, var_0.a != any(!vec3<bool>(false, arg_0.b.a.x, true)), 4294967295u < (global0.c ^ global0.c)), select(!select(select(global1.a, global0.b.b.a, true), select(vec4<bool>(global1.c, true, true, false), vec4<bool>(true, false, false, arg_0.b.a.x), vec4<bool>(global0.a.a.x, true, global0.b.a, arg_1.x)), arg_0.c.a), global0.b.c.a, arg_1), global0.a.a);
    var var_2 = global0.b.c.d;
    global1 = global0.b.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-812f)) - _wgslsmith_f_op_f32(-531f + 1249f)))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(global1.a.x, Struct_1(vec4<bool>(false, global1.c, true, true), global1.b, true, -75279i), Struct_1(global0.b.b.a, u_input.b.x, global1.c, 0i)), vec4<bool>(global0.e.x, true, true, global1.c), u_input.b.x))), _wgslsmith_f_op_f32(312f * -1465f))), -839f));
    let var_1 = Struct_1(vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(abs(392f))) != var_0.x, any(!(!global1.a.ww)), func_3(u_input.b.x) & (1i < _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(1i, global1.b))), !any(global0.b.b.a.wx)), 1i, false, _wgslsmith_sub_i32(u_input.b.x, global0.a.b));
    var var_2 = 0i;
    var var_3 = global0.b.b;
    let var_4 = countOneBits(min(~u_input.d | _wgslsmith_mod_vec3_u32(select(u_input.d, vec3<u32>(23052u, 0u, 44257u), vec3<bool>(global0.a.a.x, false, true)), u_input.d), vec3<u32>(~(~4294967295u), 1u, (36201u & u_input.e.x) | ~0u)));
    return ~max(-48119i, global1.b) < 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_1(select(global0.b.b.a, vec4<bool>(true, any(global0.b.c.a.xy), any(vec2<bool>(true, global0.e.x)), func_1()), !(!vec4<bool>(true, true, global1.a.x, global0.d.x))), firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.b.c.d, global0.b.b.b, global1.d)), vec3<i32>(-31243i, global0.a.d, 1i) & vec3<i32>(global0.a.d, u_input.b.x, -35867i))), any(vec2<bool>(!global0.e.x, true)), -reverseBits(reverseBits(u_input.b.x))), global0.b, 4294967295u, vec2<bool>(false, false), select(!vec2<bool>(true, select(false, true, global0.a.c)), !global0.e, select(select(global0.a.a.xz, vec2<bool>(false, global1.c), global1.c), global1.a.wx, !global0.a.a.wx)));
    var var_0 = false;
    let var_1 = ~_wgslsmith_div_u32(~u_input.c, 0u);
    let var_2 = vec4<u32>(0u, _wgslsmith_add_u32(40135u ^ ~var_1, ~(~(21794u & u_input.d.x))), ~(~104003u), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, abs(var_1)), 1u));
    global0 = Struct_3(global0.b.b, Struct_2(true & any(!global1.a), Struct_1(!global0.a.a, global1.d, true, _wgslsmith_add_i32(i32(-1i) * -38346i, i32(-1i) * -8314i)), Struct_1(global0.b.b.a, _wgslsmith_div_i32(global1.b, u_input.b.x), true, -(~(-1i)))), var_1, !global0.a.a.yz, vec2<bool>(true, all(global1.a)));
    let var_3 = abs(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.d, u_input.b.x, global0.a.d), -27695i) >> ((~global0.c << (~9868u % 32u)) % 32u)) >> (var_2.x % 32u);
    global1 = Struct_1(vec4<bool>(true, true, all(global1.a.yy), global0.a.a.x), global0.a.b, false, ~max(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global0.a.b, global1.d)), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1707f - 426f) + -1019f)), 184f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2345f, _wgslsmith_f_op_f32(min(-2238f, 240f)), any(global0.b.b.a.xxx))) * _wgslsmith_f_op_f32(round(-1808f)))), -u_input.b, ~(~firstLeadingBit(vec2<u32>(u_input.a, 70880u)) | u_input.d.yx));
}

