struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1000f, 731f, 434f), vec3<f32>(1224f, -1195f, -538f), vec3<f32>(174f, -116f, -427f), vec3<f32>(1000f, -145f, -511f), vec3<f32>(634f, -1554f, 382f), vec3<f32>(-1305f, 1218f, 374f), vec3<f32>(-1000f, 550f, 1292f), vec3<f32>(-1359f, 773f, 169f), vec3<f32>(-167f, -865f, 262f), vec3<f32>(207f, 1870f, -1134f), vec3<f32>(-629f, 1711f, -330f));

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(4294967295u, 38869u, 0u), vec3<u32>(0u, 47642u, 8278u), vec3<u32>(78388u, 1u, 62339u), vec3<u32>(4294967295u, 31013u, 81265u), vec3<u32>(32240u, 4294967295u, 7240u), vec3<u32>(12372u, 1u, 4294967295u), vec3<u32>(5471u, 88670u, 19001u), vec3<u32>(0u, 76420u, 4294967295u), vec3<u32>(56709u, 45240u, 4294967295u), vec3<u32>(12387u, 17468u, 1u), vec3<u32>(4294967295u, 16901u, 4294967295u), vec3<u32>(0u, 4294967295u, 965u), vec3<u32>(64105u, 4294967295u, 993u), vec3<u32>(0u, 52137u, 37747u), vec3<u32>(0u, 63509u, 0u), vec3<u32>(17308u, 4294967295u, 59375u), vec3<u32>(4294967295u, 89547u, 0u), vec3<u32>(80183u, 1u, 10087u), vec3<u32>(0u, 91068u, 4294967295u), vec3<u32>(23451u, 59907u, 4294967295u), vec3<u32>(1u, 1u, 20738u), vec3<u32>(85810u, 23345u, 0u), vec3<u32>(7070u, 1u, 28909u), vec3<u32>(0u, 23363u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 8182u, 116434u));

var<private> global2: array<i32, 17> = array<i32, 17>(36194i, -35112i, 2147483647i, 17130i, 0i, 2147483647i, 0i, 9355i, 0i, 3977i, 29036i, i32(-2147483648), -1i, 2147483647i, 3261i, 50243i, -1i);

var<private> global3: u32;

var<private> global4: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(4294967295u, 9543u, -6990i, 1i), Struct_2(1u, 13302u, -33380i, 2147483647i), Struct_2(1u, 3593u, -3493i, 7708i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_sub_vec3_u32(min(~vec3<u32>(4294967295u, ~u_input.c, _wgslsmith_clamp_u32(4294967295u, u_input.c, 4263u)), ~(~(~global1[_wgslsmith_index_u32(u_input.c, 26u)]))), global1[_wgslsmith_index_u32(u_input.b, 26u)]);
    var_0 = global1[_wgslsmith_index_u32(26288u, 26u)] << (global1[_wgslsmith_index_u32(~(firstTrailingBit(min(var_0.x, var_0.x)) & 27414u), 26u)] % vec3<u32>(32u));
    global3 = min(_wgslsmith_mult_u32(reverseBits(var_0.x), ~(var_0.x << (u_input.b % 32u)) >> (var_0.x % 32u)), 4294967295u);
    let var_1 = Struct_2(_wgslsmith_clamp_u32(34521u, reverseBits(_wgslsmith_sub_u32(var_0.x, var_0.x)) ^ u_input.c, _wgslsmith_div_u32(var_0.x, select(u_input.b, _wgslsmith_div_u32(21468u, 1u), false))), _wgslsmith_mod_u32(14753u, 73171u), -30139i, countOneBits(-58402i));
    var var_2 = _wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(30671u, 33221u), abs(var_0.x)), vec2<u32>(0u, var_0.x) >> (select(vec2<u32>(u_input.c, 311u), var_0.zx, false) % vec2<u32>(32u))), min(~var_0.zy, ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(38721u, var_0.x), vec2<u32>(var_0.x, var_1.a)))));
    return _wgslsmith_div_i32(_wgslsmith_add_i32(-abs(13128i), -21861i & _wgslsmith_mod_i32(var_1.d, var_1.d)), -global2[_wgslsmith_index_u32(var_0.x, 17u)]);
}

fn func_2(arg_0: bool) -> bool {
    global3 = _wgslsmith_mult_u32(u_input.b, u_input.c);
    var var_0 = true;
    var var_1 = Struct_3(Struct_2(~0u, 13047u, ~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.c | 1u, 17u)], ~0i), -25577i | ~(u_input.a | 0i)));
    var var_2 = Struct_4(Struct_1(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(all(vec3<bool>(arg_0, arg_0, false)), select(false, arg_0, arg_0), select(arg_0, false, arg_0)), any(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0)))), vec2<i32>(max(abs(global2[_wgslsmith_index_u32(~u_input.b, 17u)]), -(~var_1.a.c)), func_3()));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-870f)) + _wgslsmith_div_f32(-1020f, 1142f)), -1044f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1265f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1301f), -1031f), 1281f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1062f, _wgslsmith_f_op_f32(step(1413f, -364f)))) * _wgslsmith_f_op_f32(abs(469f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(476f, _wgslsmith_f_op_f32(ceil(736f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(353f, -748f), _wgslsmith_f_op_f32(max(-1000f, 155f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> f32 {
    global2 = array<i32, 17>();
    global2 = array<i32, 17>();
    var var_0 = ~(~min(vec2<u32>(11471u, 53751u), vec2<u32>(arg_1.a, 4294967295u) >> (vec2<u32>(arg_1.a, 0u) % vec2<u32>(32u))) ^ abs(vec2<u32>(arg_0, u_input.b) << (~vec2<u32>(54698u, u_input.b) % vec2<u32>(32u))));
    var var_1 = Struct_1(select(select(vec3<bool>(false, true, true), vec3<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), !func_2(true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f - _wgslsmith_f_op_f32(select(-308f, 676f, var_1.a.x))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_3(global4[_wgslsmith_index_u32(~arg_3.x, 3u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(428f * -661f), arg_0)) * arg_0), arg_0, func_2(arg_2.a.x))) + 2515f);
    var var_2 = Struct_2(56373u, arg_1.x, _wgslsmith_add_i32(-2147483647i, -1i), -var_0.a.d);
    let var_3 = -abs(vec2<i32>(-1i) * -vec2<i32>(var_2.c, -21236i));
    global4 = array<Struct_2, 3>();
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f - -424f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f - -789f) * _wgslsmith_f_op_f32(sign(1024f))), -2419f <= _wgslsmith_f_op_f32(func_1(u_input.b, Struct_2(u_input.c, u_input.c, u_input.a, 16108i), u_input.a)))), _wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.b, u_input.c, 0u, 1u)) | ~(~vec4<u32>(u_input.c, 17549u, 1u, u_input.b)), vec4<u32>(_wgslsmith_div_u32(~100425u, 120234u), ~4294967295u, abs(select(65579u, 96574u, false)), ~u_input.c ^ u_input.c)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 55070u < _wgslsmith_dot_vec3_u32(vec3<u32>(26729u, u_input.b, 52948u), vec3<u32>(98530u, 1u, u_input.c)))), vec2<u32>(18000u, 37905u));
    global3 = u_input.b;
    var var_1 = _wgslsmith_clamp_u32(6964u, u_input.b, select(_wgslsmith_clamp_u32(1u, u_input.b, 0u), select(6565u, reverseBits(16477u), !var_0), all(vec4<bool>(false, false, var_0, var_0)) || (false & var_0)) & (~abs(u_input.c) ^ ~u_input.c));
    global0 = array<vec3<f32>, 11>();
    var var_2 = max(~global1[_wgslsmith_index_u32(select(u_input.b | abs(u_input.b), u_input.b, true), 26u)], max(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.c, 30435u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, _wgslsmith_div_u32(4294967295u, u_input.b)), global1[_wgslsmith_index_u32(u_input.c, 26u)], ~vec3<u32>(31098u, 28724u, 47542u))));
    global3 = u_input.b;
    let var_3 = Struct_1(!vec3<bool>(true, true, var_0));
    let var_4 = Struct_3(Struct_2(max(u_input.c, ~1u), select(~(~100602u), ~var_2.x, false), -1i, u_input.a));
    let var_5 = ~_wgslsmith_mod_u32(~(~u_input.b), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 19340u), var_2.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_2.x, countOneBits(var_5)), 17u)], ~(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 26359i, u_input.a), vec3<i32>(17073i, 1i, var_4.a.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1f, -232f)), 687f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-201f - 2969f))))));
}

