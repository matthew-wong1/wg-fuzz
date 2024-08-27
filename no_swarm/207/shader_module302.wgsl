struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(-354i), Struct_1(i32(-2147483648)), Struct_1(-16079i), Struct_1(11555i), Struct_1(13328i), Struct_1(-22963i), Struct_1(-41069i), Struct_1(i32(-2147483648)), Struct_1(30888i), Struct_1(-18837i), Struct_1(1i), Struct_1(0i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(23821i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(13670i), Struct_1(18755i), Struct_1(2147483647i), Struct_1(12741i), Struct_1(2147483647i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), 507f, false))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), 1536f, false)) * _wgslsmith_f_op_f32(step(-275f, _wgslsmith_f_op_f32(exp2(1f)))));
    global1 = array<Struct_1, 24>();
    var_0 = -289f;
    let var_1 = global0.x;
    let var_2 = true && (true & !any(vec4<bool>(true, true, true, true)));
    return global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global0.x, 1u))), ~(~(global0.x << (global0.x % 32u)))), 24u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_2 {
    global1 = array<Struct_1, 24>();
    let var_0 = Struct_2(~(~_wgslsmith_clamp_u32(~arg_1.b.a, arg_1.b.a << (7784u % 32u), 55803u ^ global0.x)));
    global0 = select(~(~(~vec2<u32>(0u, 1u))) ^ (vec2<u32>(arg_2.b.a, ~67150u) ^ vec2<u32>(1u, 4294967295u)), vec2<u32>(min(8792u | u_input.d, min(1304u, 0u)), arg_1.b.a ^ _wgslsmith_div_u32(~global0.x, _wgslsmith_clamp_u32(arg_2.b.a, global0.x, global0.x))), select(!(arg_1.b.a != global0.x), all(vec2<bool>(any(vec4<bool>(false, true, false, false)), arg_3.x <= -672f)), true));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f - 598f)), _wgslsmith_f_op_f32(max(arg_2.e, _wgslsmith_f_op_f32(ceil(130f)))));
    let var_2 = var_1 != -324f;
    return Struct_2(arg_2.b.a);
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_3 {
    global0 = vec2<u32>(1u, firstTrailingBit(~4294967295u));
    global1 = array<Struct_1, 24>();
    var var_0 = global1[_wgslsmith_index_u32(22492u | u_input.d, 24u)];
    var var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(50959u, ~abs(arg_2.a)), min(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, u_input.d), vec2<u32>(16589u, arg_2.a)), abs(~vec2<u32>(global0.x, 43255u))));
    var var_2 = func_4(func_2(), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-538f, -561f))), arg_2, global1[_wgslsmith_index_u32(var_1.x, 24u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(708f, 1010f, -456f)), vec3<f32>(589f, 1040f, 2108f), arg_0)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1164f, -1449f, -1502f)))))), _wgslsmith_f_op_f32(-503f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-584f, 875f)))))), Struct_3(-1659f, arg_2, func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1946f, 363f, 384f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1097f, -1000f, 989f), _wgslsmith_f_op_vec3_f32(vec3<f32>(776f, -407f, -842f) - vec3<f32>(505f, 1002f, 2157f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2094f * 704f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(524f)) * _wgslsmith_f_op_f32(f32(-1f) * -1298f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-245f)), 1f, _wgslsmith_f_op_f32(floor(623f)), 346f))));
    return Struct_3(1000f, Struct_2(~var_1.x), global1[_wgslsmith_index_u32(arg_2.a, 24u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, 431f, 483f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f - 118f)))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = vec3<i32>(-u_input.b, i32(-1i) * -51269i, -(-(i32(-1i) * -2147483647i) << (firstTrailingBit(u_input.d & global0.x) % 32u)));
    let var_1 = abs(_wgslsmith_dot_vec2_i32((var_0.zz & (vec2<i32>(var_0.x, u_input.b) | vec2<i32>(-33193i, u_input.b))) << (~countOneBits(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), vec2<i32>(~(-33683i), _wgslsmith_dot_vec4_i32(~vec4<i32>(23582i, var_0.x, u_input.b, var_0.x), -vec4<i32>(u_input.b, 1i, u_input.b, -45870i)))));
    var var_2 = arg_0;
    global1 = array<Struct_1, 24>();
    let var_3 = func_5(arg_0, !select(!(!vec3<bool>(arg_0, true, false)), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, true), false), !vec3<bool>(true, arg_0, true), select(true, arg_0, true)), any(vec2<bool>(true, true))), func_4(func_2(), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-988f, -699f)), 1000f)), Struct_2(global0.x ^ u_input.d), Struct_1(~(-24722i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1086f, -1000f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(820f, -637f, 1608f), vec3<f32>(-1000f, -671f, 135f)))), -507f), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-240f - -2730f))), Struct_2(_wgslsmith_mod_u32(4865u, u_input.c)), global1[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-405f, -508f, 1525f), vec3<f32>(-227f, -326f, -1554f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 999f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1231f, 1195f, 508f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1564f, -231f, 772f, 729f) + vec4<f32>(562f, 447f, 1247f, 739f))))))));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-915f, 1000f))), _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.d.x))))), func_4(Struct_1(~(~var_0.x)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-332f))), Struct_2(var_3.b.a), global1[_wgslsmith_index_u32(~select(4294967295u, global0.x, arg_0), 24u)], func_5(true, vec3<bool>(true, true, true), var_3.b).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1896f)))), func_5(false, select(!vec3<bool>(arg_0, arg_0, false), !vec3<bool>(arg_0, arg_0, arg_0), select(true, true, false)), Struct_2(_wgslsmith_mod_u32(10774u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(297f, -1298f, var_3.a, var_3.d.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, var_3.e, -822f, var_3.d.x)))))), func_2(), _wgslsmith_f_op_vec3_f32(trunc(func_5((var_3.c.a > -48606i) || false, !select(vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, true)), func_4(Struct_1(10140i), var_3, Struct_3(var_3.e, Struct_2(47978u), var_3.c, var_3.d, 1240f), vec4<f32>(var_3.d.x, -1000f, -442f, var_3.e))).d)), 122f);
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_1.c;
    global1 = array<Struct_1, 24>();
    let var_1 = select(!select(vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), vec2<bool>(true, !any(vec2<bool>(true, false)) | true), true);
    let var_2 = arg_1;
    var var_3 = !(!var_1);
    return func_1(!(u_input.b >= (arg_0 & (arg_2.a & arg_2.a)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-169f + _wgslsmith_f_op_f32(sign(119f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1075f, -1294f, true)) * -1000f), _wgslsmith_f_op_f32(max(343f, _wgslsmith_f_op_f32(558f * 159f)))), _wgslsmith_f_op_f32(-1649f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -182f)))));
    var var_1 = func_6(abs(_wgslsmith_add_i32(u_input.b, max(u_input.b, u_input.b) ^ -28979i)), func_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(30339i, u_input.b), vec2<i32>(u_input.b, 2147483647i)) < min(2147483647i, u_input.b)), global1[_wgslsmith_index_u32(u_input.c, 24u)]);
    global0 = vec2<u32>(firstLeadingBit(~(~0u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, var_1.a, var_1.a, u_input.d)) & vec4<u32>(~4294967295u, _wgslsmith_div_u32(26061u, var_1.a), 1u, _wgslsmith_clamp_u32(global0.x, 0u, global0.x)), ~vec4<u32>(1u, 1u, ~global0.x, 40325u)));
    global1 = array<Struct_1, 24>();
    let var_2 = func_1(!(true && (true == (var_0.x < var_0.x)))).b;
    let var_3 = !(!vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), !all(vec2<bool>(false, false)), false, ~var_2.a > (var_2.a ^ 11510u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f)), func_1(!var_3.x).a)), vec4<u32>(var_2.a, 12926u, 0u, var_2.a));
}

