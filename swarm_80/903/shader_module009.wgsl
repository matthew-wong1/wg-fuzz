struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<f32, 3>;

var<private> global3: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(51181u, 3u)] * -188f) + global0.a.d) != _wgslsmith_f_op_f32(-1989f * arg_2);
    var var_1 = Struct_3(vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(arg_0.a | arg_0.a, ~arg_0.a), _wgslsmith_add_u32(53931u, _wgslsmith_sub_u32(global0.a.c.x, 9894u))));
    var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-784f, _wgslsmith_f_op_f32(select(arg_2, global0.a.b, false))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-423f + global0.a.b), _wgslsmith_div_f32(-336f, -799f)));
    var_1 = Struct_3(_wgslsmith_mult_vec3_u32(var_1.a, ~vec3<u32>(75562u, arg_0.a.x ^ 1u, 0u)));
    return 6506i;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1400f, global2[_wgslsmith_index_u32(35479u, 3u)], global0.a.d), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.b, global0.a.b, global0.a.b), vec3<f32>(2268f, -840f, global2[_wgslsmith_index_u32(71792u, 3u)])))) * vec3<f32>(global0.a.b, -309f, _wgslsmith_div_f32(792f, global0.a.d)))));
    var var_1 = _wgslsmith_div_i32(global3.x, i32(-1i) * -global0.a.a);
    global2 = array<f32, 3>();
    var var_2 = global0.a.e;
    let var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~firstLeadingBit(global3.yww) >> (vec3<u32>(~global0.a.c.x, _wgslsmith_clamp_u32(global0.a.c.x, 4294967295u, 4794u), 0u) % vec3<u32>(32u)), vec3<i32>(-1i, countOneBits(~u_input.a), func_3(Struct_3(vec3<u32>(1u, global0.a.c.x, global0.a.c.x)), false, -1164f))), global3.zww);
    return Struct_3(vec3<u32>(0u, ~global0.a.c.x, reverseBits(global0.a.c.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = 0u;
    global0 = Struct_2(Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(global0.c), arg_2.c, arg_2.c), _wgslsmith_f_op_f32(step(447f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(33202u, 3u)], -2256f))), vec2<u32>(4294967295u, firstLeadingBit(25034u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(363f)), _wgslsmith_f_op_f32(min(1317f, -1302f))))), !(!(!vec3<bool>(global1.x, global1.x, false)))), vec4<bool>(true, any(select(vec4<bool>(global0.a.e.x, true, global1.x, false), arg_2.b, true)), true, true), firstTrailingBit(min(1i, arg_2.c)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1406f + global2[_wgslsmith_index_u32(19609u, 3u)]), _wgslsmith_f_op_f32(-arg_2.a.d), arg_0)) + 669f))), _wgslsmith_div_f32(arg_2.a.d, -188f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b + _wgslsmith_f_op_f32(arg_2.a.b - -1000f)) + arg_2.a.b) * _wgslsmith_f_op_f32(min(-440f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, global0.a.d, global1.x))))))));
    global2 = array<f32, 3>();
    return Struct_1(_wgslsmith_div_i32(7077i, -55595i << (var_0.a.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(364f, global0.a.b, arg_2.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(6599u, 3u)])))) * _wgslsmith_f_op_f32(366f + _wgslsmith_f_op_f32(var_2.x * global2[_wgslsmith_index_u32(~var_1, 3u)]))), arg_2.a.c ^ vec2<u32>(~(~var_1), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.c.x, arg_2.a.c.x), vec2<u32>(4294967295u, 1u))), _wgslsmith_f_op_f32(1611f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))))), !global0.b.wxy);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> vec3<u32> {
    let var_0 = func_4(arg_1, func_2(), Struct_2(global0.a, !global0.b, -7429i));
    var var_1 = var_0.c.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1447f)) - -467f));
    var var_3 = vec2<u32>(_wgslsmith_div_u32(24356u, firstLeadingBit(~global0.a.c.x | ~4294967295u)), func_4(true, Struct_3(_wgslsmith_sub_vec3_u32(max(arg_0, arg_0), ~arg_0)), Struct_2(global0.a, global0.b, ~(~(-1i)))).c.x);
    let var_4 = select(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(arg_0.x, 46385u), ~var_3.x, ~var_3.x, ~4294967295u) & (abs(vec4<u32>(arg_0.x, arg_0.x, var_3.x, 13899u)) << ((vec4<u32>(var_3.x, 12693u, 10079u, 619u) << (vec4<u32>(1u, var_0.c.x, var_3.x, var_0.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)))), vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(arg_0.x, (var_0.c.x << (123170u % 32u)) ^ var_3.x, var_3.x), 0u, _wgslsmith_sub_u32(var_3.x, 4294967295u)), !(!vec4<bool>(arg_1, any(vec3<bool>(global1.x, global0.b.x, false)), var_0.e.x, !var_0.e.x)));
    return ~(min(arg_0, select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.c.x, 40182u, var_4.x), var_4.xxz, vec3<u32>(82176u, 27109u, var_0.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_4.x, 0u), arg_0, vec3<u32>(4294967295u, 1u, global0.a.c.x)), false)) | firstTrailingBit(_wgslsmith_mult_vec3_u32(var_4.wzz, reverseBits(var_4.xxx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(vec3<u32>(~(~4294967295u), global0.a.c.x, 1u), all(vec2<bool>(true & global1.x, global0.b.x))));
    let var_1 = Struct_3(vec3<u32>(0u, global0.a.c.x, global0.a.c.x));
    let var_2 = func_4(!(!(!(!global1.x))), func_2(), Struct_2(Struct_1(u_input.a, -380f, firstTrailingBit(vec2<u32>(1u, var_1.a.x)) << ((vec2<u32>(32338u, 0u) << (vec2<u32>(var_0.a.x, 38151u) % vec2<u32>(32u))) % vec2<u32>(32u)), -946f, global0.b.yxx), !select(vec4<bool>(false, global0.b.x, true, global1.x), select(global0.b, global0.b, true), !global0.b.x), 45404i));
    let var_3 = max(_wgslsmith_sub_vec3_i32(global3.wyy, vec3<i32>(i32(-1i) * -22370i, u_input.b.x, -17797i)), global3.xyw);
    var var_4 = 2147483647i;
    var_0 = var_1;
    let var_5 = Struct_3(vec3<u32>(func_4(any(global0.b.wy), func_2(), Struct_2(var_2, global0.b, global0.a.a)).c.x, 931u, _wgslsmith_sub_u32(~var_0.a.x, var_2.c.x)) | countOneBits(_wgslsmith_mod_vec3_u32(var_0.a, ~vec3<u32>(var_1.a.x, 55698u, 24577u))));
    global3 = vec4<i32>(min(-reverseBits(func_3(Struct_3(vec3<u32>(global0.a.c.x, var_0.a.x, 1u)), global1.x, 710f)), func_4(true | global0.a.e.x, Struct_3(firstTrailingBit(vec3<u32>(var_0.a.x, 0u, 758u))), Struct_2(Struct_1(24846i, 2093f, vec2<u32>(global0.a.c.x, var_0.a.x), global2[_wgslsmith_index_u32(global0.a.c.x, 3u)], var_2.e), select(global0.b, global0.b, true), -36052i)).a), global3.x, global0.c, -2147483647i >> (firstLeadingBit(countOneBits(var_5.a.x) & global0.a.c.x) % 32u));
    var var_6 = Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -770f), vec2<u32>(_wgslsmith_mult_u32(var_2.c.x, abs(4229u)), 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1191f, global2[_wgslsmith_index_u32(4294967295u, 3u)])), global2[_wgslsmith_index_u32(var_5.a.x, 3u)])), vec3<bool>(global0.a.e.x, global3.x < var_3.x, var_2.e.x)), !global0.b, ~_wgslsmith_add_i32(func_3(var_5, true, var_2.d), _wgslsmith_mod_i32(global3.x ^ var_3.x, ~var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(540f, var_6.a.d, -1000f, 305f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-723f, 314f, global0.a.b, var_6.a.d), vec4<f32>(var_6.a.b, 708f, global0.a.b, -443f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-864f, var_2.b, var_2.d, global2[_wgslsmith_index_u32(var_2.c.x, 3u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 3u)], 431f, global0.a.b, global2[_wgslsmith_index_u32(var_6.a.c.x, 3u)]) - vec4<f32>(-1000f, 339f, var_6.a.d, var_2.d)))) * vec4<f32>(_wgslsmith_div_f32(var_2.b, global2[_wgslsmith_index_u32(var_6.a.c.x, 3u)]), _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(max(1360f, -410f)), _wgslsmith_f_op_f32(trunc(112f))))));
}

