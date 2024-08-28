struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = ~vec4<u32>(~37328u, global0.x, _wgslsmith_add_u32(global0.x, min(global0.x, arg_0.a.c.x)), global0.x) >> (~vec4<u32>(global0.x, global0.x, _wgslsmith_dot_vec3_u32(arg_0.a.c.yyy, vec3<u32>(arg_0.a.c.x, 1u, 31475u)), 0u) % vec4<u32>(32u));
    var var_1 = arg_0.b;
    var_1 = arg_0.b;
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))) - var_1.x), arg_0.a.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-592f, -219f, true)), _wgslsmith_f_op_f32(sign(-219f)), global1[_wgslsmith_index_u32(global0.x, 12u)])))), _wgslsmith_f_op_f32(-arg_0.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -579f), 2103f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), 1f), 982f));
    let var_2 = arg_0.a.e;
    return !vec3<bool>(!global1[_wgslsmith_index_u32(~select(0u, var_0.x, var_2.x), 12u)], var_2.x, false);
}

fn func_2() -> Struct_3 {
    return Struct_3(Struct_1(any(select(func_3(Struct_3(Struct_1(global1[_wgslsmith_index_u32(1u, 12u)], vec2<f32>(-606f, -470f), vec4<u32>(0u, global0.x, 0u, 65973u), vec3<f32>(-387f, -2265f, 862f), vec2<bool>(false, true)), vec4<f32>(-938f, 448f, 541f, 1147f)), vec3<i32>(24002i, 0i, -35201i)), !vec3<bool>(true, global1[_wgslsmith_index_u32(global0.x, 12u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(26018u, 12u)], global1[_wgslsmith_index_u32(global0.x, 12u)], global1[_wgslsmith_index_u32(global0.x, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(17766u, 12u)], global1[_wgslsmith_index_u32(global0.x, 12u)], false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -264f), -705f)), min(~select(vec4<u32>(global0.x, global0.x, 15085u, global0.x), vec4<u32>(47928u, 23088u, global0.x, 22222u), vec4<bool>(false, global1[_wgslsmith_index_u32(global0.x, 12u)], true, true)), ~vec4<u32>(1u, global0.x, 1u, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, -446f, 997f)) + vec3<f32>(-373f, 281f, 284f))), !(!vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 12u)], true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -681f, 1734f, -1580f), vec4<f32>(1403f, -269f, 1717f, 415f))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(-230f)), _wgslsmith_f_op_f32(f32(-1f) * -1692f), _wgslsmith_f_op_f32(abs(975f)), _wgslsmith_f_op_f32(select(-1138f, 768f, false)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-303f + 378f), _wgslsmith_f_op_f32(select(-111f, 683f, global1[_wgslsmith_index_u32(global0.x, 12u)])), _wgslsmith_f_op_f32(max(-479f, -955f)), _wgslsmith_f_op_f32(round(-407f))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> i32 {
    global1 = array<bool, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.wxw));
    let var_1 = 80196u;
    let var_2 = vec2<bool>(all(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 12u)], global1[_wgslsmith_index_u32(global0.x, 12u)], global1[_wgslsmith_index_u32(1213u, 12u)], global1[_wgslsmith_index_u32(arg_0.a.c.x, 12u)]), vec4<bool>(arg_0.a.e.x, false, true, true), global1[_wgslsmith_index_u32(0u, 12u)]), !select(vec4<bool>(false, true, true, arg_1), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(global0.x, 12u)]), global1[_wgslsmith_index_u32(53985u, 12u)]), vec4<bool>(true, select(true, true, global1[_wgslsmith_index_u32(32103u, 12u)]), func_3(arg_0, vec3<i32>(u_input.a.x, -2147483647i, 1i)).x, false))), true || (false != select(func_3(arg_0, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)).x, arg_1, true)));
    global0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, global0.x >> (4294967295u % 32u)), vec3<u32>(16395u, 1771u, ~62641u)), min(global0.x, 34962u), var_1, global0.x) << (vec4<u32>(_wgslsmith_clamp_u32(54308u << (1u % 32u), 4294967295u << (_wgslsmith_add_u32(var_1, global0.x) % 32u), var_1), _wgslsmith_add_u32(arg_0.a.c.x, 1u), ~(~(~35382u)), arg_0.a.c.x) % vec4<u32>(32u));
    return 2147483647i;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    var var_0 = arg_2;
    let var_1 = Struct_4(vec3<i32>(arg_2.a.x, func_4(func_2(), countOneBits(arg_3.a.c.x) <= ~0u), -25022i));
    let var_2 = func_2().a;
    var var_3 = var_2;
    let var_4 = -vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(1i), firstLeadingBit(_wgslsmith_clamp_i32(1i, 0i, -28085i))), 0i);
    return 29338u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 12>();
    let var_0 = 0u;
    global0 = max(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 95076u, var_0, var_0), select(vec4<u32>(var_0, var_0, 1u, var_0), vec4<u32>(global0.x, global0.x, global0.x, global0.x), false)) & vec4<u32>(~var_0 | var_0, func_1(vec4<bool>(true, global1[_wgslsmith_index_u32(74297u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), false, Struct_4(vec3<i32>(48739i, 1571i, -3101i)), Struct_3(Struct_1(global1[_wgslsmith_index_u32(58997u, 12u)], vec2<f32>(448f, 2315f), vec4<u32>(4294967295u, 63541u, 0u, 1u), vec3<f32>(-1441f, 484f, -596f), vec2<bool>(global1[_wgslsmith_index_u32(77838u, 12u)], global1[_wgslsmith_index_u32(25366u, 12u)])), vec4<f32>(-1334f, 845f, -403f, -1000f))) << (~1u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0.x, 93392u), firstLeadingBit(global0.zyz)), 0u), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.wz, vec2<u32>(4294967295u, 0u << (1u % 32u))), abs(var_0), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0, 4294967295u), _wgslsmith_div_u32(global0.x, var_0), min(var_0, var_0)), ~_wgslsmith_mod_u32(var_0, 1u), var_0), 69901u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-110f)));
    global1 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(-u_input.a.x) & -41957i, 2147483647i, u_input.a.x, -_wgslsmith_dot_vec2_i32(~u_input.a, -u_input.a)), vec4<i32>(~reverseBits(u_input.a.x & 20115i), u_input.a.x, -abs(~u_input.a.x), ~(~(u_input.a.x << (var_0 % 32u)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, u_input.a.x, -31482i), ~vec3<i32>(-1i, ~u_input.a.x, u_input.a.x)), abs(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-790f * _wgslsmith_f_op_f32(-1000f + 568f)), _wgslsmith_f_op_f32(846f + _wgslsmith_f_op_f32(f32(-1f) * -562f))))));
}

