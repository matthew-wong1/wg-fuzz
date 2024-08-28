struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(2382f, -1265f, 1324f, 1000f), vec4<f32>(425f, -1474f, 1261f, 121f), vec4<f32>(-1000f, -273f, -1095f, -969f), vec4<f32>(654f, 142f, 150f, -441f), vec4<f32>(-991f, -525f, 174f, 423f), vec4<f32>(-1754f, -443f, 519f, 1748f));

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<f32>(1855f, -240f)), Struct_1(vec2<f32>(1618f, 1244f)), Struct_1(vec2<f32>(523f, -606f)), Struct_1(vec2<f32>(-917f, -972f)), Struct_1(vec2<f32>(-1131f, -716f)), Struct_1(vec2<f32>(-680f, -661f)));

var<private> global3: Struct_1;

var<private> global4: array<i32, 22> = array<i32, 22>(0i, -69497i, 0i, 0i, 1i, 0i, i32(-2147483648), -43282i, -12945i, -64163i, 2147483647i, 0i, -1i, 7928i, 2147483647i, 1i, 33156i, -13515i, 1i, 42452i, 2147483647i, 57028i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(~(~max(_wgslsmith_div_u32(arg_0, 4294967295u), firstLeadingBit(arg_0)) ^ abs(select(~0u, 4294967295u, true))), 6u)];
    let var_0 = 278f;
    global1 = array<vec4<f32>, 6>();
    let var_1 = global2[_wgslsmith_index_u32(71339u, 6u)];
    global0 = array<f32, 7>();
    return global2[_wgslsmith_index_u32(~1999u, 6u)];
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global2 = array<Struct_1, 6>();
    global0 = array<f32, 7>();
    let var_0 = firstTrailingBit(4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_3.a)));
    let var_2 = -_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(arg_1.c, arg_1.c)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_1.d), vec2<i32>(-6238i, 65650i))), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(var_0, 22u)], 2147483647i), vec2<i32>(-2762i, arg_1.c))), ~vec2<i32>(arg_1.c & 2147483647i, -1i));
    return arg_0;
}

fn func_1() -> Struct_2 {
    global3 = global2[_wgslsmith_index_u32(func_3(4294967295u ^ u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global0[_wgslsmith_index_u32(24476u, 7u)]))), !vec3<bool>(false, all(vec3<bool>(true, true, false)), true), _wgslsmith_add_i32(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(min(69162u, u_input.a.x), 22u)], global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24692u, 4294967295u, u_input.a.x), 22u)]), (global4[_wgslsmith_index_u32(21309u, 22u)] ^ -36712i) | 1i), ~(-16175i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_div_f32(global3.a.x, global3.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(216f, global0[_wgslsmith_index_u32(4294967295u, 7u)], -1144f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(115f, global0[_wgslsmith_index_u32(1u, 7u)], -504f), vec3<f32>(1036f, 796f, global3.a.x), true)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.a.x, 2722f, global3.a.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], -918f, global0[_wgslsmith_index_u32(u_input.b, 7u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 7u)], 178f, global0[_wgslsmith_index_u32(0u, 7u)]))))), func_2(50492u)), 6u)];
    let var_0 = Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(~max(1u, u_input.a.x), 7u)], _wgslsmith_f_op_f32(select(-1373f, _wgslsmith_f_op_f32(round(-610f)), all(vec2<bool>(false, false))))));
    global4 = array<i32, 22>();
    var var_1 = Struct_1(global3.a);
    let var_2 = func_2(4294967295u);
    return Struct_2(Struct_1(vec2<f32>(-1000f, var_0.a.x)), select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 22u)] == 1i, any(vec4<bool>(false, true, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(true, false, false, true)), all(vec2<bool>(true, false)), false)), select(vec3<bool>(u_input.b == u_input.b, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec3<bool>(false, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false), any(vec2<bool>(false, false))))), ~abs(global4[_wgslsmith_index_u32(11963u, 22u)]), global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(u_input.b | 1u, min(102370u, 1u))), 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -45204i;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 7u)];
    global2 = array<Struct_1, 6>();
    let var_2 = func_1();
    var var_3 = ~u_input.a;
    let var_4 = ~0u == var_3.x;
    var var_5 = vec2<i32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, ~(~40230u)), vec2<u32>(40409u, firstTrailingBit(_wgslsmith_mod_u32(var_3.x, u_input.a.x)))), 22u)], global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(~var_3.x, var_3.x), 45669u), 22u)]);
    let var_6 = func_2(u_input.b);
    let var_7 = ~firstTrailingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_2.d, var_2.d, 9309i)), vec3<i32>(-1i, -15768i, -34185i) << (vec3<u32>(var_7, 52616u, var_3.x) % vec3<u32>(32u)))));
}

