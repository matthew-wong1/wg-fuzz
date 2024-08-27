struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(2147483647i, -8967i, i32(-2147483648), 2147483647i, 28040i, 1i, 1i, -16877i, -51292i, -1i, -7118i, -11805i, -12167i, -83198i, 28924i, -10278i, -1i, 28442i, -40615i, -4290i, -1i, 20325i, -8807i, -15325i, i32(-2147483648), -1i, 3279i, 1i);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<i32>(-61015i, -28895i, -87008i)), Struct_1(vec3<i32>(24980i, -6768i, 4658i)), Struct_1(vec3<i32>(-24637i, -27335i, 7552i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -26948i)), Struct_1(vec3<i32>(-15595i, 2147483647i, 243i)), Struct_1(vec3<i32>(0i, 23498i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 9584i, -39979i)), Struct_1(vec3<i32>(2147483647i, 66367i, -1i)), Struct_1(vec3<i32>(0i, 5643i, -2536i)), Struct_1(vec3<i32>(1i, 26723i, 19394i)), Struct_1(vec3<i32>(0i, 0i, 2147483647i)), Struct_1(vec3<i32>(1i, -1i, -10218i)), Struct_1(vec3<i32>(21040i, 2147483647i, 47508i)), Struct_1(vec3<i32>(2147483647i, -19522i, i32(-2147483648))), Struct_1(vec3<i32>(37332i, 78938i, 7654i)), Struct_1(vec3<i32>(-1i, -1i, -14222i)), Struct_1(vec3<i32>(-22676i, -8298i, -12509i)), Struct_1(vec3<i32>(39647i, i32(-2147483648), 7126i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -5968i)), Struct_1(vec3<i32>(-1i, 12466i, i32(-2147483648))), Struct_1(vec3<i32>(69354i, 43814i, 2147483647i)), Struct_1(vec3<i32>(-14803i, -22066i, -18771i)), Struct_1(vec3<i32>(-9224i, 13065i, 2147483647i)), Struct_1(vec3<i32>(-49041i, 12887i, 20644i)), Struct_1(vec3<i32>(0i, 2147483647i, 7955i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(27612i, 2147483647i, 49551i)), Struct_1(vec3<i32>(7147i, -32284i, i32(-2147483648))));

var<private> global2: u32 = 0u;

var<private> global3: vec3<i32> = vec3<i32>(16632i, -43663i, -6202i);

var<private> global4: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global3 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(~global3.x), 30214i, -5187i), vec3<i32>(_wgslsmith_mult_i32(-1i, max(global0[_wgslsmith_index_u32(u_input.b, 28u)], global3.x)), (-2147483647i | global0[_wgslsmith_index_u32(0u, 28u)]) | _wgslsmith_div_i32(13956i, 7216i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, u_input.c, global0[_wgslsmith_index_u32(u_input.e, 28u)], -2147483647i), vec4<i32>(1i, -29808i, global0[_wgslsmith_index_u32(u_input.d, 28u)], 0i)), vec4<i32>(u_input.c, global3.x, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])))) >> (vec3<u32>(u_input.e, 4294967295u, u_input.d) % vec3<u32>(32u));
    let var_0 = ~vec3<i32>(-(~(u_input.c & -44758i)), ~1i, 2147483647i);
    global2 = abs(_wgslsmith_clamp_u32(u_input.e, 16840u, 9718u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = vec3<bool>(true, false, false);
    return abs(select(u_input.b, ~0u, false) ^ 4294967295u) ^ ~countOneBits(abs(firstTrailingBit(u_input.e)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(func_3(), 29u)]);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-681f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.x, 1469f))))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -530f) - -1808f) * arg_0.x), arg_0.x);
    global4 = 13648i;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1213f)), -1000f, _wgslsmith_f_op_f32(-995f * 1001f), _wgslsmith_f_op_f32(var_1.x * 1000f))), vec4<f32>(-197f, arg_0.x, -727f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(793f))))))));
    let var_2 = Struct_3(Struct_2(var_0.a), Struct_2(Struct_1(var_0.a.a)), select(!select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), !arg_1.x), !(!vec3<bool>(true, arg_1.x, false)), !(!vec3<bool>(arg_1.x, arg_1.x, true))), true);
    return firstLeadingBit(var_0.a.a.x | 1i);
}

fn func_1() -> vec2<bool> {
    global3 = _wgslsmith_add_vec3_i32(max(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 10661i, 28990i)), vec3<i32>(u_input.a, global3.x, -75122i)) << (vec3<u32>(~u_input.e, min(u_input.e, u_input.e), ~u_input.e) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(92175u, 28u)], global3.x, -1i), vec3<i32>(func_2(vec3<f32>(-309f, -879f, 1357f), vec2<bool>(false, true)), global3.x, 1i))), _wgslsmith_div_vec3_i32(-abs(~vec3<i32>(global3.x, 1i, global3.x)), ~((vec3<i32>(2147483647i, 12242i, 2147483647i) << (vec3<u32>(u_input.e, u_input.b, u_input.d) % vec3<u32>(32u))) << (vec3<u32>(1u, u_input.e, u_input.e) % vec3<u32>(32u)))));
    global3 = (max(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 28u)], global3.x, u_input.c), -vec3<i32>(-2147483647i, u_input.a, global0[_wgslsmith_index_u32(0u, 28u)]), vec3<i32>(-27547i, -34595i, -1i) ^ vec3<i32>(-1i, u_input.a, 0i)), -(~vec3<i32>(global3.x, global3.x, 0i))) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, -4036i), vec3<i32>(global3.x, u_input.a, 2147483647i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, u_input.a, 0i), vec3<i32>(-1i, -1i, global3.x)), reverseBits(~vec3<i32>(u_input.a, u_input.c, 1i)))) >> ((~vec3<u32>(_wgslsmith_clamp_u32(32390u, 0u, u_input.e), ~26050u, _wgslsmith_mult_u32(1u, 4294967295u)) ^ (~vec3<u32>(u_input.b, u_input.d, 1u) ^ min(~vec3<u32>(8968u, u_input.b, u_input.b), ~vec3<u32>(0u, 135189u, 15598u)))) % vec3<u32>(32u));
    var var_0 = max(_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.d, 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 15528u, 91054u) << (vec3<u32>(1u, u_input.b, 1u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.e, 65650u))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 0u, u_input.d) & countOneBits(vec3<u32>(u_input.d, u_input.b, 889u)), vec3<u32>(4628u >> (u_input.e % 32u), ~u_input.e, abs(u_input.b)), vec3<u32>(~u_input.d, u_input.b << (u_input.e % 32u), 13084u ^ u_input.b)) % vec3<u32>(32u)), firstTrailingBit(~min(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(0u, u_input.e, 4294967295u))) >> (~(vec3<u32>(u_input.b, 88545u, u_input.b) | ~vec3<u32>(4294967295u, 44951u, u_input.d)) % vec3<u32>(32u)));
    global4 = _wgslsmith_add_i32(14256i, global3.x << (abs(4294967295u) % 32u));
    var var_1 = select(vec3<bool>(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), any(vec2<bool>(any(vec3<bool>(true, false, true)), true)), !(true | all(vec4<bool>(true, true, true, false)))), !vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), true, !any(vec3<bool>(true, true, false))), 1u >= _wgslsmith_clamp_u32(max(~u_input.e, ~1u), _wgslsmith_mod_u32(var_0.x, 0u) << (u_input.b % 32u), max(30681u, 49817u)));
    return select(select(var_1.xz, vec2<bool>(all(!vec2<bool>(var_1.x, var_1.x)), all(vec2<bool>(true, true))), var_1.zy), var_1.xz, select(select(!(!vec2<bool>(var_1.x, var_1.x)), select(var_1.yz, var_1.yz, vec2<bool>(var_1.x, var_1.x)), select(var_1.xz, var_1.yz, any(var_1.zx))), var_1.xy, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(-321f + 615f), _wgslsmith_f_op_f32(abs(1163f)), _wgslsmith_f_op_f32(f32(-1f) * -276f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1395f, -255f, 623f, 1102f) * vec4<f32>(204f, -871f, -1066f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1192f, 300f, -392f, 1101f), vec4<f32>(-520f, -1990f, -505f, 1200f), var_0))))), vec4<f32>(-299f, 915f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(124f, 299f) * -473f)), _wgslsmith_f_op_f32(step(-352f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

