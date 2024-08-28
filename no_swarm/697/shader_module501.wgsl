struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<f32, 10>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.a.c;
    global1 = array<f32, 10>();
    return ~arg_1.a.a;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<f32, 10>();
    let var_0 = Struct_3(1361f, Struct_2(Struct_1(1u, arg_0.b, arg_0.c, arg_0.d, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, arg_0.c.yy), -arg_0.c.x))), Struct_2(Struct_1(0u << (func_3(Struct_1(4294967295u, vec3<u32>(1u, arg_0.b.x, 39221u), vec3<i32>(75666i, -2147483647i, u_input.c), arg_0.d, 2147483647i), Struct_2(arg_0)) % 32u), ~reverseBits(arg_0.b), min(vec3<i32>(-30779i, -1i, u_input.a.x), vec3<i32>(94623i, 18789i, -25360i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1007f, arg_0.d.x) * vec2<f32>(-688f, global1[_wgslsmith_index_u32(arg_0.b.x, 10u)]))), -1i)), Struct_2(arg_0));
    var var_1 = var_0.d;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(round(arg_0.d.x)), Struct_2(arg_0), Struct_2(Struct_1(67279u, abs(vec3<u32>(67309u, var_1.a.a, 2482u)) << (var_1.a.b % vec3<u32>(32u)), vec3<i32>(var_0.b.a.c.x, firstLeadingBit(var_1.a.c.x), u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(43852u, 10u)], var_0.a))) * _wgslsmith_f_op_vec2_f32(arg_0.d + vec2<f32>(734f, 628f))), i32(-1i) * -17370i)), Struct_2(Struct_1(var_1.a.a, vec3<u32>(var_1.a.b.x >> (28412u % 32u), var_0.c.a.b.x, var_1.a.a), select(min(var_0.b.a.c, vec3<i32>(-2147483647i, var_0.c.a.c.x, -15941i)), vec3<i32>(63146i, u_input.c, var_1.a.c.x), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, var_1.a.d.x) + arg_0.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(216f, var_1.a.d.x) * vec2<f32>(-681f, -1000f))), -10055i)));
    var var_3 = vec2<u32>(abs(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.a, var_1.a.b.x), arg_0.b))), 1u);
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    global0 = array<f32, 27>();
    var var_0 = u_input.a.x;
    global0 = array<f32, 27>();
    let var_1 = true & (_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(672f * global1[_wgslsmith_index_u32(arg_2.x, 10u)])), 519f, any(vec4<bool>(false, true, true, true)) & true)) < -375f);
    let var_2 = arg_0;
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = arg_1.e;
    var var_1 = 48835u;
    var_0 = arg_1.c.x;
    var var_2 = func_5(func_4(func_2(arg_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1011f - -179f) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2, 10u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.d + arg_1.d))))), vec3<u32>(countOneBits(min(firstTrailingBit(arg_1.b.x), 14616u)), _wgslsmith_sub_u32(select(50524u, ~arg_1.a, false), _wgslsmith_clamp_u32(max(arg_1.a, 1u), arg_2, _wgslsmith_mod_u32(4294967295u, 1u))), arg_2));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~arg_2, 27u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_5(func_4(Struct_2(Struct_1(17003u, arg_1.b, vec3<i32>(-2147483647i, -2147483647i, 1866i), vec2<f32>(-178f, arg_1.d.x), arg_1.e)), 1328f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-191f, arg_1.d.x)), vec3<u32>(4294967295u, arg_2, arg_1.a)), 10u)])) + arg_1.d.x);
    return _wgslsmith_div_u32(arg_1.b.x, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_mult_u32(~(~1u), ~(func_1(1403f, Struct_1(0u, vec3<u32>(37905u, 17046u, 2678u), vec3<i32>(35558i, u_input.c, u_input.a.x), vec2<f32>(-1096f, 1000f), -2147483647i), 0u) | _wgslsmith_div_u32(80500u, 1u))));
    var var_1 = Struct_3(-1490f, func_2(Struct_1(~var_0, vec3<u32>(1u ^ var_0, _wgslsmith_div_u32(0u, 40877u), var_0), u_input.a.zzz, _wgslsmith_f_op_vec2_f32(-func_4(Struct_2(Struct_1(var_0, vec3<u32>(var_0, var_0, 0u), vec3<i32>(u_input.a.x, u_input.a.x, 10153i), vec2<f32>(-1453f, global0[_wgslsmith_index_u32(var_0, 27u)]), u_input.b.x)), 584f).a.d), u_input.b.x)), func_4(Struct_2(func_2(func_2(Struct_1(4294967295u, vec3<u32>(var_0, var_0, 8116u), vec3<i32>(1i, 6303i, -1i), vec2<f32>(-791f, global1[_wgslsmith_index_u32(var_0, 10u)]), u_input.b.x)).a).a), _wgslsmith_div_f32(602f, 1f)), func_4(Struct_2(Struct_1(min(var_0, var_0), func_2(Struct_1(var_0, vec3<u32>(var_0, var_0, 60424u), u_input.a.yxx, vec2<f32>(global1[_wgslsmith_index_u32(var_0, 10u)], global1[_wgslsmith_index_u32(var_0, 10u)]), 2147483647i)).a.b, func_2(Struct_1(var_0, vec3<u32>(1u, 79337u, var_0), u_input.a.zxx, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), u_input.b.x)).a.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(var_0, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), vec2<f32>(global1[_wgslsmith_index_u32(var_0, 10u)], global1[_wgslsmith_index_u32(32997u, 10u)]), true)), u_input.c)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 27u)] * _wgslsmith_f_op_f32(-176f * _wgslsmith_f_op_f32(select(150f, 753f, true))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -826f);
    let var_3 = 25375u;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(881f + var_2) * _wgslsmith_f_op_f32(-var_1.d.a.d.x)))));
    let var_5 = firstTrailingBit(var_3) <= _wgslsmith_sub_u32(33503u, var_1.c.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(var_3, _wgslsmith_sub_u32(var_0, var_1.d.a.b.x) | ~0u), countOneBits(select(var_1.c.a.b.yz, var_1.b.a.b.xx, vec2<bool>(var_5, false)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 3323u), vec2<u32>(20205u, var_0)) % vec2<u32>(32u))), (!var_5 && false) | true), _wgslsmith_clamp_vec3_u32(~(~(~var_1.c.a.b)), firstTrailingBit(var_1.d.a.b), vec3<u32>(func_4(func_2(var_1.d.a), _wgslsmith_f_op_f32(var_1.c.a.d.x - global0[_wgslsmith_index_u32(var_1.c.a.b.x, 27u)])).a.b.x, ~0u, 0u | (var_3 | var_3))), _wgslsmith_sub_u32(var_3, countOneBits(28760u)), ~firstTrailingBit(-_wgslsmith_clamp_i32(-2147483647i, 30560i, 1i)), var_1.c.a.c.x);
}

