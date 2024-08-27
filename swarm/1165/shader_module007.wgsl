struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(1054f, 1450f), vec4<i32>(i32(-2147483648), -24824i, 31076i, -9682i)), Struct_1(vec2<f32>(411f, -1017f), vec4<i32>(0i, 6978i, -12143i, -15803i)), Struct_1(vec2<f32>(-1000f, -1507f), vec4<i32>(2147483647i, -1i, 2147483647i, 40457i)), Struct_1(vec2<f32>(-1000f, -2060f), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 23514i)), Struct_1(vec2<f32>(-787f, 572f), vec4<i32>(1i, 2147483647i, -34759i, -29332i)), Struct_1(vec2<f32>(747f, 323f), vec4<i32>(19782i, 122508i, 0i, 1i)), Struct_1(vec2<f32>(1201f, 443f), vec4<i32>(36378i, 33928i, -12086i, -44262i)), Struct_1(vec2<f32>(-1281f, -783f), vec4<i32>(76573i, 2147483647i, 61319i, 56647i)), Struct_1(vec2<f32>(-587f, 620f), vec4<i32>(-53990i, i32(-2147483648), 2147483647i, -1i)), Struct_1(vec2<f32>(954f, 266f), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(vec2<f32>(-822f, 969f), vec4<i32>(2147483647i, -9054i, -1i, -59786i)), Struct_1(vec2<f32>(1000f, -969f), vec4<i32>(13088i, -1i, -2353i, -40052i)), Struct_1(vec2<f32>(967f, -1307f), vec4<i32>(-32413i, -54296i, i32(-2147483648), 0i)), Struct_1(vec2<f32>(1155f, 364f), vec4<i32>(i32(-2147483648), -16039i, -1i, -37666i)), Struct_1(vec2<f32>(-380f, 1075f), vec4<i32>(23527i, -95754i, 14014i, 0i)), Struct_1(vec2<f32>(1221f, 220f), vec4<i32>(1i, 0i, 2178i, -22456i)), Struct_1(vec2<f32>(-2220f, 798f), vec4<i32>(5183i, -19313i, 0i, 36620i)));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = arg_0.b.x;
    var var_1 = max(vec4<i32>(var_0, -var_0, -2147483647i, var_0), arg_0.b);
    let var_2 = vec4<u32>(~1u, ~(~firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 42999u))), u_input.b, u_input.a);
    return ~(min(var_2.x, var_2.x) & _wgslsmith_mult_u32(~20351u, _wgslsmith_div_u32(10330u, abs(var_2.x))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = global1.b;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2435f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x + global1.a.x), -985f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1251f + global1.a.x), _wgslsmith_div_f32(global1.a.x, global1.a.x)))), global1.b);
    let var_2 = var_1.b.x << (func_1(global0[_wgslsmith_index_u32(arg_0.x, 17u)], false) % 32u);
    var var_3 = ~(~(~min(u_input.c, 95670u) ^ 4294967295u));
    let var_4 = var_1;
    return _wgslsmith_clamp_u32(firstLeadingBit(74324u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 7590u), arg_0.xx), _wgslsmith_mult_u32(arg_0.x, ~(arg_0.x << (arg_0.x % 32u))));
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    global1 = Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-global1.a.x)), ~(-vec4<i32>(i32(-1i) * -19362i, -14967i, -2147483647i, _wgslsmith_mult_i32(47803i, global1.b.x))));
    let var_0 = global1.b.x;
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a, 17u)];
    global0 = array<Struct_1, 17>();
    let var_2 = vec2<u32>(u_input.c, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 1u), vec3<u32>(1u, u_input.a, u_input.b)), func_3(countOneBits(vec3<u32>(0u, u_input.c, u_input.c)))) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 50296u, u_input.c), countOneBits(vec4<u32>(34730u, u_input.c, 11649u, 0u)))) % 32u));
    return vec4<i32>(countOneBits(~2162i) << ((_wgslsmith_mod_u32(17281u, u_input.a) & 4294967295u) % 32u), -(~(i32(-1i) * -19631i)), global1.b.x, ~2147483647i) << (~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2.x, var_2.x, 16255u), vec4<u32>(4294967295u, 0u, 14462u, 1u)), ~countOneBits(vec4<u32>(1u, 0u, var_2.x, 85728u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(0u | ~func_1(Struct_1(global1.a, vec4<i32>(global1.b.x, global1.b.x, global1.b.x, -2147483647i)), true)), 17u)];
    var var_1 = false;
    var var_2 = 0i;
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(func_2(vec2<f32>(_wgslsmith_f_op_f32(round(-131f)), -1737f)), abs(vec4<i32>(-50100i, -11299i, global1.b.x, var_0.b.x)) ^ -(~vec4<i32>(1i, global1.b.x, global1.b.x, -1i))), vec4<i32>(i32(-1i) * -17485i, var_0.b.x, -20134i, 0i));
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(445f)), _wgslsmith_f_op_f32(1695f + 2542f)), ~(vec4<i32>(_wgslsmith_mult_i32(var_3.x, var_0.b.x), _wgslsmith_sub_i32(global1.b.x, -2147483647i), _wgslsmith_mult_i32(-32672i, var_0.b.x), ~var_3.x) & max(-var_0.b, vec4<i32>(var_0.b.x, 3329i, global1.b.x, global1.b.x))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a.x, -984f)))))) + global1.a), -var_0.b);
    let var_4 = (var_3.x | global1.b.x) << (_wgslsmith_clamp_u32(~(~0u) & ~(4294967295u | u_input.a), select(u_input.c, min(_wgslsmith_mod_u32(u_input.a, 0u), ~0u), true || (38001u >= u_input.a)), ~(~(~u_input.b))) % 32u);
    var var_5 = Struct_1(_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1145f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -1995f)))), vec4<i32>(global1.b.x, 1i, -14452i, _wgslsmith_clamp_i32(abs(var_0.b.x), 31132i, var_0.b.x ^ firstLeadingBit(var_3.x))));
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -760f)), _wgslsmith_f_op_f32(global1.a.x - var_5.a.x), -1681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-620f, var_0.a.x)))))), max(4294967295u, 41650u), 702f);
}

