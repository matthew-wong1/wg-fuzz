struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-11784i, -1i, -30495i, 1i);

var<private> global1: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(329f, -942f, -1128f), vec3<f32>(-724f, -827f, 1608f), vec3<f32>(-1332f, 1000f, 214f), vec3<f32>(-557f, -1650f, 948f), vec3<f32>(-778f, -993f, -1088f), vec3<f32>(505f, -1319f, 304f), vec3<f32>(973f, 575f, -1145f), vec3<f32>(597f, 460f, -1101f), vec3<f32>(-1153f, -353f, 1559f), vec3<f32>(705f, 513f, -2382f), vec3<f32>(-348f, 750f, -177f), vec3<f32>(-2635f, 1000f, -1582f), vec3<f32>(-438f, -1000f, 1104f), vec3<f32>(-130f, 357f, -2075f), vec3<f32>(571f, -1000f, 727f), vec3<f32>(836f, -237f, -126f), vec3<f32>(855f, 1078f, -1000f), vec3<f32>(-753f, -1741f, 965f), vec3<f32>(-802f, -1403f, -229f), vec3<f32>(1154f, 1495f, -1050f), vec3<f32>(688f, 769f, -927f), vec3<f32>(577f, -2537f, 1062f));

var<private> global2: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> u32 {
    return 4294967295u;
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = ~(abs(~select(u_input.c, u_input.d, arg_0.x)) & select(0u, max(abs(u_input.c), _wgslsmith_add_u32(1u, u_input.c)), !any(vec3<bool>(arg_0.x, false, false))));
    global1 = array<vec3<f32>, 22>();
    var var_1 = global0.yzy;
    var var_2 = Struct_4(any(vec2<bool>(arg_0.x, arg_0.x)), firstLeadingBit(firstLeadingBit(abs(vec4<u32>(var_0, 4294967295u, u_input.d, 3189u))) >> (vec4<u32>(~4294967295u, 4073u, var_0, var_0) % vec4<u32>(32u))), -2147483647i, 1u, arg_0.zxx);
    let var_3 = Struct_2(762f, global0.xzy);
    return 31292i;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_1(vec3<u32>(min(~(~u_input.d), 7534u), ~func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -43326i, -1i, global0.x), vec4<i32>(arg_0, 16071i, -2147483647i, 19637i)), Struct_5(Struct_2(-302f, global0.wyw), vec3<bool>(true, true, false), global0.x, u_input.d)), 11676u), (min(firstLeadingBit(-25621i), ~2147483647i) >> (max(arg_1.x, 1u) % 32u)) >> (u_input.d % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, 625f, -1864f, -1240f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-355f, -933f, -533f, 1000f) * vec4<f32>(-657f, 680f, 1793f, 2796f))))), vec4<f32>(-299f, _wgslsmith_f_op_f32(ceil(1213f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(473f - -577f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2103f - 734f), 305f)))), arg_1.zzw);
    global2 = (any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true)) || all(vec3<bool>(true, true, true))) | !all(vec3<bool>(true, true, true));
    global2 = false;
    global1 = array<vec3<f32>, 22>();
    global0 = ~(-(vec4<i32>(arg_0, arg_0, _wgslsmith_mod_i32(-19411i, global0.x), global0.x) | vec4<i32>(func_3(vec4<bool>(true, true, true, true)), abs(-10324i), max(1i, -1i), u_input.b.x)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global0 = firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x | global0.x, _wgslsmith_sub_i32(global0.x, 0i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, global0.x, 2147483647i, global0.x), firstLeadingBit(vec4<i32>(13582i, -11204i, -45257i, u_input.a.x))), -36517i, -2147483647i), (vec4<i32>(-1i, global0.x, u_input.a.x, -25406i) | ~vec4<i32>(global0.x, 0i, -26292i, u_input.b.x)) & vec4<i32>(global0.x, 8456i, u_input.b.x, func_1(-1i, vec4<u32>(1u, 0u, 23459u, u_input.c)))));
    var var_0 = ~vec3<u32>(u_input.c, u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.c, u_input.c), firstTrailingBit(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1394f + -705f), _wgslsmith_f_op_f32(f32(-1f) * -128f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(955f, -193f), _wgslsmith_f_op_vec2_f32(vec2<f32>(934f, -266f) + vec2<f32>(var_1, var_1))))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(415f + var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, var_1))))), ~vec3<u32>(var_0.x ^ _wgslsmith_div_u32(4294967295u, var_0.x), 0u, ~(~41748u)));
}

