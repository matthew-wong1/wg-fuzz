struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 27> = array<f32, 27>(-683f, 229f, 670f, -1779f, 507f, -1484f, -1071f, -920f, 659f, -643f, -1290f, 932f, 352f, -613f, -143f, 249f, -202f, -675f, 514f, -260f, -1757f, -474f, -1000f, -1273f, 1058f, -776f, 552f);

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    global1 = array<f32, 27>();
    global0 = arg_0.a;
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    var var_0 = 0i;
    return 1314f;
}

fn func_2() -> f32 {
    global1 = array<f32, 27>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global2.x, 226f, 407f, vec4<i32>(-33015i, u_input.a, -1i, 1i), global0.e)), Struct_3(global1[_wgslsmith_index_u32(global0.a, 27u)], 2147483647i), Struct_4(vec2<u32>(88084u, global0.a), Struct_2(Struct_1(global2.x, global0.c, global0.c, global0.d, global0.e)), 241f, vec4<i32>(u_input.a, 15015i, -2147483647i, global0.e.x), 50568u))))), _wgslsmith_div_f32(-1281f, _wgslsmith_f_op_f32(sign(-1978f)))))), global0.e.x);
    var var_1 = Struct_1(max(1u, 4294967295u), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-2110f + _wgslsmith_f_op_f32(-1000f * 1467f)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(min(select(vec4<i32>(u_input.a, 1i, -13035i, global0.e.x), global0.d, vec4<bool>(true, false, true, true)), global0.d), ~(vec4<i32>(u_input.a, -49547i, -2147483647i, u_input.a) & global0.d)), ~(-global0.d)), vec3<i32>(var_0.b, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-4653i, global0.e.x), ~u_input.a)), ~abs(var_0.b)));
    var var_2 = Struct_4(select(firstLeadingBit(~(~vec2<u32>(4294967295u, 1u))), firstLeadingBit(~vec2<u32>(2365u, global2.x)), (any(vec3<bool>(true, true, true)) | false) & select(select(false, true, false), 0u >= global2.x, true)), Struct_2(Struct_1(_wgslsmith_mult_u32(~1u, 64984u ^ global2.x), _wgslsmith_f_op_f32(f32(-1f) * -696f), -1281f, _wgslsmith_clamp_vec4_i32(select(global0.d, var_1.d, true), ~global0.d, ~vec4<i32>(-1i, -2147483647i, 0i, u_input.a)), -max(vec3<i32>(35025i, -2147483647i, global0.e.x), vec3<i32>(-9927i, global0.e.x, global0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), countOneBits(firstTrailingBit(~_wgslsmith_mod_vec4_i32(var_1.d, global0.d))), firstTrailingBit(_wgslsmith_mult_u32(18585u, var_1.a)) | 0u);
    var var_3 = var_2.d.x;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-879f, 990f))))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: f32) -> f32 {
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    let var_0 = Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f * _wgslsmith_div_f32(-440f, 529f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))), _wgslsmith_f_op_f32(func_2()), vec4<i32>(~u_input.a ^ (-6764i & global0.d.x), _wgslsmith_sub_i32(15962i, global0.e.x), _wgslsmith_clamp_i32(-13009i, -2147483647i, 2147483647i), u_input.a), abs(~vec3<i32>(-2147483647i, 1i, global0.d.x))));
    global0 = var_0.a;
    var var_1 = var_0;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-786f * -1302f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, global1[_wgslsmith_index_u32(var_0.a.a, 27u)]))) * _wgslsmith_f_op_f32(-789f * _wgslsmith_f_op_f32(arg_1.x + 543f))) - _wgslsmith_f_op_f32(f32(-1f) * -258f))));
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = vec3<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a, 27u)] * _wgslsmith_f_op_f32(389f + 691f))), 857f);
    global2 = ~reverseBits(vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(32351u, u_input.b, 1u)), 65941u));
    global1 = array<f32, 27>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, arg_0, 277f, global0.c))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 886f, global1[_wgslsmith_index_u32(1u, 27u)], global0.c), vec4<f32>(-165f, var_0, var_1.x, 614f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(632f, -245f, -1159f, -973f) * vec4<f32>(-1464f, -277f, -444f, arg_0)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(402f, 457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0)), global1[_wgslsmith_index_u32(max(global2.x & 4294967295u, ~global0.a), 27u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_0, 987f, var_0), vec4<f32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(1u, 27u)], -587f)))));
    return Struct_1(0u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.xy, var_2.xz, true)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-512f, -568f), var_1.xx))), var_1.yx, var_2.x)))), -188f, global0.d, ~(vec3<i32>(u_input.a, -42720i, _wgslsmith_mult_i32(global0.e.x, global0.e.x)) >> (~select(vec3<u32>(global0.a, global2.x, 32762u), vec3<u32>(1207u, global0.a, u_input.b), vec3<bool>(true, true, true)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e.x;
    let var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1186f - -890f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<f32>(758f, -598f), global1[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b, 27u)], -1000f)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(0u), ~global0.a), 27u)]))));
    var var_2 = Struct_3(global0.b, var_1.d.x);
    let var_3 = u_input.b & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(global2.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(var_1.a, 6152u), vec2<u32>(var_1.a, global2.x))), ~21215u);
    let var_4 = var_1.d;
    var var_5 = Struct_2(func_4(508f));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(18960u, _wgslsmith_add_u32(global2.x & 0u, _wgslsmith_add_u32(global2.x, 1u))), _wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(~0u, firstTrailingBit(global2.x))), _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.a, var_3, 33036u), var_3))), -1229f);
}

