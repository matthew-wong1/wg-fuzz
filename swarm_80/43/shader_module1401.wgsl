struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-12157i, -24962i, -17934i, 0i), vec4<i32>(15904i, 35627i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 29390i, -1i, -44755i), vec4<i32>(-1i, -1i, 1745i, -1i), vec4<i32>(1902i, 0i, 2147483647i, -20208i), vec4<i32>(0i, 10246i, 14435i, -4923i), vec4<i32>(10297i, -32526i, 2147483647i, 0i), vec4<i32>(2147483647i, 4626i, -18029i, 0i), vec4<i32>(14155i, 0i, 1i, -1i), vec4<i32>(2147483647i, 15797i, -31813i, 0i), vec4<i32>(-1i, 31587i, 39035i, -21857i), vec4<i32>(17760i, -25756i, i32(-2147483648), -13719i), vec4<i32>(2147483647i, -11307i, -14276i, -134i), vec4<i32>(2147483647i, -27631i, -9073i, 2147483647i), vec4<i32>(1i, 1i, -1i, -5040i), vec4<i32>(2147483647i, -18854i, -59030i, 2147483647i), vec4<i32>(-30029i, i32(-2147483648), i32(-2147483648), 27687i), vec4<i32>(44337i, 27051i, i32(-2147483648), 10435i), vec4<i32>(1i, i32(-2147483648), 10044i, 2147483647i), vec4<i32>(-1i, 1735i, i32(-2147483648), -1i));

var<private> global2: Struct_2 = Struct_2(vec4<i32>(-52771i, i32(-2147483648), -18572i, 2147483647i), vec4<bool>(false, false, true, true), -53740i, vec2<f32>(-1000f, -852f));

var<private> global3: u32 = 40582u;

var<private> global4: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(0i, 1i, -36912i, 2147483647i), vec4<i32>(53140i, -1i, i32(-2147483648), -49718i), vec4<i32>(1i, i32(-2147483648), -4122i, -20737i), vec4<i32>(1i, 1i, -1i, 1i), vec4<i32>(6133i, 2147483647i, -16874i, -1i), vec4<i32>(40758i, -28563i, -1i, -30645i), vec4<i32>(-1i, -38009i, -13743i, -11461i), vec4<i32>(i32(-2147483648), 1i, 19756i, -1i), vec4<i32>(938i, -17449i, 2147483647i, -21676i), vec4<i32>(-53758i, 12675i, 80450i, 1i), vec4<i32>(-1i, -34101i, 2147483647i, 1i), vec4<i32>(2610i, 37179i, 0i, 1i), vec4<i32>(18013i, 1i, i32(-2147483648), 1i), vec4<i32>(-1i, 2147483647i, 51006i, -66964i), vec4<i32>(1i, i32(-2147483648), 0i, 63991i), vec4<i32>(i32(-2147483648), -1i, -48755i, 28116i), vec4<i32>(0i, 1i, 1i, 48077i), vec4<i32>(i32(-2147483648), 8529i, 24998i, -14426i), vec4<i32>(-1i, i32(-2147483648), -1i, -37176i), vec4<i32>(-446i, -54149i, 2147483647i, -11998i), vec4<i32>(82650i, -14773i, -15198i, -19710i), vec4<i32>(1i, 16643i, 1i, 0i), vec4<i32>(12589i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(30402i, 22662i, -1i, 47466i), vec4<i32>(i32(-2147483648), -47137i, 2147483647i, -48942i), vec4<i32>(78211i, 167i, 12087i, 0i), vec4<i32>(23551i, 1i, -22917i, 2147483647i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = global2.a.zz >> (arg_0.xx % vec2<u32>(32u));
    global4 = array<vec4<i32>, 27>();
    let var_1 = global0.a;
    return StorageBuffer(vec3<u32>(11443u, 4294967295u, _wgslsmith_add_u32(u_input.e, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 18169u, 10869u), vec4<u32>(u_input.e, arg_0.x, u_input.e, 0u)), max(u_input.d.x, 0u)))), ~_wgslsmith_mod_u32(4294967295u, select(5046u, reverseBits(75339u), false)), _wgslsmith_clamp_vec3_u32(arg_0, abs(~arg_0), vec3<u32>(u_input.e, ~1u, arg_0.x & 1u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(41308u, ~arg_0.x, max(arg_0.x, 0u)), vec3<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.e, arg_0.x, 1u)), abs(0u))) % vec3<u32>(32u)), ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 27>();
    let var_0 = Struct_1(362f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, 934f) - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), -460f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, global0.a)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-891f, _wgslsmith_div_f32(var_0.a, global0.a), _wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1895f)))), vec4<f32>(var_0.a, -1095f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)), _wgslsmith_f_op_f32(floor(1399f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(sign(-968f)), global2.b.x)), _wgslsmith_f_op_f32(trunc(839f)))), 10092u > ~firstLeadingBit(u_input.d.x))));
    global2 = Struct_2(global1[_wgslsmith_index_u32(min(~reverseBits(u_input.e), u_input.e) & u_input.e, 20u)], !select(select(global2.b, !vec4<bool>(true, false, global2.b.x, global2.b.x), vec4<bool>(global2.b.x, true, true, true)), !vec4<bool>(global2.b.x, global2.b.x, false, false), global2.b), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(global2.a.wy, _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), global2.a.yw), ~vec2<i32>(u_input.b.x, global2.c))), u_input.b), var_1.zy);
    var var_3 = var_0;
    let x = u_input.a;
    s_output = func_1(~u_input.d << (max(vec3<u32>(1u, u_input.e & 0u, countOneBits(4294967295u)), ~(~u_input.d)) % vec3<u32>(32u)));
}

