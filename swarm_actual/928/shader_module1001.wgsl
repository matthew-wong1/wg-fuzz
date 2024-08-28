struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    var var_0 = vec4<u32>(~0u, 1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~47535u), countOneBits(4294967295u)), countOneBits(~_wgslsmith_mod_u32(54472u, 87518u))), 1u);
    global1 = array<Struct_1, 5>();
    let var_1 = Struct_1(arg_1.a);
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    return false & (~max(var_0.x, var_0.x) < var_0.x);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -826f);
    var var_1 = Struct_1(arg_1.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-885f, 494f, var_0))));
    global0 = array<Struct_1, 7>();
    var var_3 = 0i;
    return 1u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> bool {
    return !(!all(!vec4<bool>(true, false, arg_2.a, false)));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = Struct_1(arg_0);
    global1 = array<Struct_1, 5>();
    let var_1 = -_wgslsmith_sub_i32(u_input.a.x, abs(_wgslsmith_add_i32(u_input.a.x, abs(-31585i))));
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_div_f32(-493f, 1082f);
    return vec2<f32>(_wgslsmith_f_op_f32(-1053f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-1048f)))), 966f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_2(Struct_1(any(vec4<bool>(true, false, false, true))), Struct_1(true), -(~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1i))) && func_4(all(vec2<bool>(true, true)) || true, func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(9039u, 49762u, 0u), vec3<u32>(1u, 4294967295u, 14397u), vec3<u32>(1u, 1u, 4027u)), Struct_1(false)), Struct_1(false)), vec4<u32>(select(7978u, 35534u, func_4(true, ~1u, global1[_wgslsmith_index_u32(min(64133u, 1u), 5u)])), 51858u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13008u, 4294967295u, 24393u), vec4<u32>(64188u, 31081u, 4294967295u, 1u)), ~21509u), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 40637u, 4294967295u), vec4<u32>(10348u, 1u, 101034u, 80826u), vec4<u32>(0u, 30322u, 74304u, 23306u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 86809u, 16197u, 60366u), select(vec4<u32>(1u, 12159u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 96217u, 0u, 1u), vec4<bool>(true, true, true, false)))))));
    global0 = array<Struct_1, 7>();
    var var_1 = 19718i;
    var_1 = -1i;
    var var_2 = i32(-1i) * -10576i;
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 9781u;
    var_0 = global0[_wgslsmith_index_u32(0u, 7u)];
    var_0 = global1[_wgslsmith_index_u32(5692u, 5u)];
    var_1 = min(max(_wgslsmith_add_u32(3925u, 1u), 1u << (0u % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(0u, 67988u, 0u, 1u)), ~vec4<u32>(48176u, 1u, 1726u, 4294967295u), select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, true, var_0.a), true)), vec4<u32>(42643u, ~0u, _wgslsmith_div_u32(936u, 1u), _wgslsmith_add_u32(0u, 28787u))), ~0u));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(min(5366u, 45262u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 25959u), ~1u, ~4294967295u) & vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(func_3(~vec3<u32>(6658u, 58037u, 29572u), Struct_1(var_0.a)), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 7086u), ~1u), _wgslsmith_add_u32(1u, 0u), 0u))), 7u)];
    global1 = array<Struct_1, 5>();
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~4583u, countOneBits(max(~_wgslsmith_clamp_u32(81418u, 26720u, 42924u), 4294967295u)), 1237u >> (~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(58740u, 58161u), vec2<u32>(33784u, 11782u))) % 32u), abs(vec4<u32>(1u, 1u, 1u, 1u)), -132f);
}

