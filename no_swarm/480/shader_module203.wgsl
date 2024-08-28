struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(11155u, 37922u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 41289u), vec2<u32>(3625u, 4294967295u), vec2<u32>(96401u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(15351u, 14016u), vec2<u32>(1u, 63281u), vec2<u32>(32878u, 1u), vec2<u32>(50817u, 4294967295u), vec2<u32>(69234u, 0u), vec2<u32>(59792u, 53139u), vec2<u32>(45281u, 17549u), vec2<u32>(18345u, 15541u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 42012u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 52061u), vec2<u32>(4294967295u, 0u), vec2<u32>(58251u, 0u), vec2<u32>(20469u, 43432u), vec2<u32>(10832u, 0u), vec2<u32>(12927u, 29241u), vec2<u32>(28080u, 4081u));

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(Struct_1(false, 2147483647i), Struct_1(true, 1i), vec4<bool>(true, true, false, true)), 4294967295u), Struct_3(Struct_2(Struct_1(true, 1i), Struct_1(false, 1i), vec4<bool>(false, true, true, false)), 4294967295u), Struct_3(Struct_2(Struct_1(true, -1i), Struct_1(false, -1i), vec4<bool>(true, true, false, true)), 30482u));

var<private> global3: Struct_4;

var<private> global4: array<i32, 7>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> u32 {
    global3 = Struct_4(Struct_2(Struct_1(arg_1.a.a.a, -_wgslsmith_div_i32(-37425i, global4[_wgslsmith_index_u32(34567u, 7u)])), Struct_1(any(select(global0.a.c.xzy, vec3<bool>(arg_1.a.b.a, arg_0.x, global0.b), global3.a.c.yyy)), ~(~global3.e.x)), !vec4<bool>(global3.a.a.a, global3.c < global0.c, all(global0.a.c), global3.a.b.a)), true, _wgslsmith_div_f32(global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -276f))))), _wgslsmith_mult_u32(435u & ~(~arg_1.b), ~(~global3.d | _wgslsmith_clamp_u32(39076u, 1u, global3.d))), -global0.e);
    var var_0 = global0.a.b;
    global1 = array<vec2<u32>, 24>();
    let var_1 = vec4<f32>(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2103f, 540f, select(false, false, true)))), _wgslsmith_f_op_f32(ceil(-3440f)), global0.c);
    let var_2 = vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-859f - global0.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(105f - global0.c)))) <= 1538f, arg_0.x, var_0.a);
    return global0.d ^ u_input.a;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global4 = array<i32, 7>();
    var var_0 = false;
    global4 = array<i32, 7>();
    var var_1 = _wgslsmith_sub_u32(~77056u, 7263u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c, global3.c) * _wgslsmith_f_op_f32(-global0.c))) + -1428f), 1422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c))))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(reverseBits(~vec3<u32>(u_input.a, global3.d, global0.d)), vec3<u32>(reverseBits(4294967295u), func_3(global3.a.c.yx, Struct_3(Struct_2(Struct_1(false, arg_0.x), Struct_1(global0.a.c.x, arg_0.x), global3.a.c), 4294967295u), 16934u, 5157u), u_input.a)), abs(vec3<u32>(18135u ^ u_input.a, global3.d, 1u))), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0.d), vec3<u32>(49786u, global0.d, 4294967295u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_3, 3>();
    let var_0 = global2[_wgslsmith_index_u32(abs(~func_2(~(-vec4<i32>(1i, global4[_wgslsmith_index_u32(u_input.a, 7u)], 1i, global4[_wgslsmith_index_u32(4294967295u, 7u)])))), 3u)];
    global2 = array<Struct_3, 3>();
    var var_1 = Struct_4(Struct_2(global3.a.a, global0.a.a, global3.a.c), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(49562u, 3520u, 24439u), vec3<u32>(global0.d, 4294967295u, 1u)), ~vec3<u32>(50624u, global3.d, 0u)) > global0.d, 1058f, ~17895u, firstLeadingBit(select(arg_0.xz, arg_0.zz >> (global1[_wgslsmith_index_u32(~4294967295u, 24u)] % vec2<u32>(32u)), select(select(var_0.a.c.yy, vec2<bool>(global3.a.b.a, var_0.a.b.a), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_2 = Struct_3(global0.a, ~4294967295u);
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 24>();
    let var_0 = all(global0.a.c.yx);
    global2 = array<Struct_3, 3>();
    var var_1 = func_1(~(-vec3<i32>(-16498i, global0.a.b.b, -2147483647i) ^ (vec3<i32>(15339i, 0i, global3.e.x) & vec3<i32>(-1i, -28343i, global0.a.a.b))) & select(vec3<i32>(global4[_wgslsmith_index_u32(~0u, 7u)], global0.e.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(-21886i, -16714i, 26048i), vec3<i32>(44072i, global4[_wgslsmith_index_u32(59790u, 7u)], global4[_wgslsmith_index_u32(u_input.a, 7u)])), global3.a.c.zzz), _wgslsmith_f_op_vec4_f32(vec4<f32>(-185f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1258f))), -653f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c - global3.c), -1009f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c, global3.c, 350f, -1846f) * vec4<f32>(global0.c, global3.c, 1309f, global3.c))))), 1922f);
    var var_2 = global3.a;
    var var_3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, abs(var_1.b), var_1.b, min(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, global0.d, 9074u)), ~vec3<u32>(1u, 1u, 0u), abs(vec3<u32>(26079u, global3.d, 4294967295u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, 1u), func_3(vec2<bool>(false, var_1.a), global2[_wgslsmith_index_u32(u_input.a, 3u)], 16151u, u_input.a), global3.d | 23859u), vec3<u32>(_wgslsmith_div_u32(global3.d, global0.d), global0.d << (global3.d % 32u), 66179u))));
}

