struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, i32(-2147483648), vec3<i32>(1i, i32(-2147483648), 2147483647i), 10821u), Struct_1(false, 0i, vec3<i32>(-34663i, 0i, -63014i), 53182u), Struct_1(false, 1i, vec3<i32>(1i, i32(-2147483648), 30744i), 49274u), Struct_1(false, i32(-2147483648), vec3<i32>(-18722i, 1i, i32(-2147483648)), 22685u), Struct_1(false, 33387i, vec3<i32>(-27896i, -25343i, 1i), 0u), Struct_1(true, -1i, vec3<i32>(37010i, i32(-2147483648), 18441i), 66985u), Struct_1(true, 1i, vec3<i32>(-60023i, 11093i, 53352i), 0u), Struct_1(false, -36346i, vec3<i32>(i32(-2147483648), 4944i, 0i), 68962u), Struct_1(true, i32(-2147483648), vec3<i32>(30783i, 1i, -18794i), 39813u), Struct_1(false, 1i, vec3<i32>(71512i, i32(-2147483648), 1i), 4294967295u), Struct_1(true, -1i, vec3<i32>(-40950i, 1i, 0i), 0u), Struct_1(true, 38277i, vec3<i32>(2147483647i, 20751i, -1i), 4294967295u), Struct_1(false, 36744i, vec3<i32>(i32(-2147483648), 11856i, 64678i), 12u), Struct_1(true, 1i, vec3<i32>(0i, -953i, 1i), 59281u), Struct_1(false, i32(-2147483648), vec3<i32>(86611i, 1256i, -59810i), 72493u), Struct_1(true, 0i, vec3<i32>(2147483647i, -14069i, -7677i), 41753u), Struct_1(false, i32(-2147483648), vec3<i32>(18025i, 75381i, -1i), 95958u), Struct_1(true, -1i, vec3<i32>(43616i, 0i, 36852i), 0u), Struct_1(false, i32(-2147483648), vec3<i32>(-1i, 2147483647i, -33757i), 1u), Struct_1(false, 1i, vec3<i32>(-1i, -1i, 1i), 1u), Struct_1(true, -27618i, vec3<i32>(i32(-2147483648), 16256i, 2147483647i), 4294967295u), Struct_1(true, -50442i, vec3<i32>(2147483647i, 2147483647i, -1i), 4294967295u), Struct_1(true, 26745i, vec3<i32>(0i, i32(-2147483648), 2147483647i), 0u), Struct_1(false, 43676i, vec3<i32>(1i, 32849i, 0i), 375u), Struct_1(false, -6209i, vec3<i32>(-29365i, i32(-2147483648), 3201i), 1u), Struct_1(true, -7975i, vec3<i32>(53375i, -9802i, -20005i), 12374u), Struct_1(true, -1i, vec3<i32>(2147483647i, -18310i, i32(-2147483648)), 49226u), Struct_1(true, 46670i, vec3<i32>(2147483647i, -24843i, 0i), 8111u), Struct_1(false, 18696i, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), 33780u));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.xxy;
    let var_1 = u_input.a.x >> ((1u << (global0.x % 32u)) % 32u);
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = ~vec2<u32>(~arg_3.d, ~arg_3.d << ((arg_3.d | arg_1.x) % 32u));
    var var_0 = func_1(vec4<f32>(-457f, 966f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(824f, 1071f))) * -1102f)), global3.d, arg_3);
    var var_1 = abs(vec2<u32>(~_wgslsmith_div_u32(arg_0.d, arg_3.d), 43080u)) << (u_input.b % vec2<u32>(32u));
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = func_1(vec4<f32>(-923f, -563f, 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-926f + arg_2)))), _wgslsmith_mult_u32(arg_1.x, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -147f, arg_2, 453f) + vec4<f32>(arg_2, 1000f, arg_2, -1338f)), 1937u, Struct_1(false, 2147483647i, u_input.a, arg_3.d)).d << (~1u % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~64160u), ~4294967295u), 25u)]).a;
    return global0.x;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(global3.a, 3198i, -global3.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(2554u, _wgslsmith_clamp_u32(1677u << (global0.x % 32u), u_input.c, 1u)), _wgslsmith_clamp_u32(func_3(Struct_1(false, 23083i, u_input.a, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, 0u), vec3<u32>(41611u, global3.d, global0.x)), -221f, Struct_1(true, -2147483647i, vec3<i32>(u_input.a.x, global3.c.x, 1i), 8825u)), u_input.b.x, 1u)));
    let var_1 = Struct_1(global3.a, 1i, _wgslsmith_div_vec3_i32(var_0.c, var_0.c), ~u_input.c);
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(16549u, 1u)), ~(u_input.b >> (u_input.b % vec2<u32>(32u)))) | vec2<u32>(firstLeadingBit(var_0.d), func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2397f, -934f, 1002f, -964f))), global3.d, func_1(vec4<f32>(1393f, -1025f, -745f, -1252f), global0.x, var_0)).d));
    let var_3 = _wgslsmith_add_vec2_i32(-(~(~vec2<i32>(var_0.c.x, -1i))) >> (min(vec2<u32>(~0u, _wgslsmith_div_u32(global3.d, var_1.d)), _wgslsmith_add_vec2_u32(min(u_input.b, vec2<u32>(0u, 0u)), ~var_2)) % vec2<u32>(32u)), u_input.a.yy);
    global1 = array<Struct_1, 25>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1043f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(247f, 272f) + -496f)), var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 29>();
    global3 = func_1(vec4<f32>(1512f, _wgslsmith_f_op_f32(trunc(-342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -189f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-823f)))), global0.x, global2[_wgslsmith_index_u32(1u, 29u)]);
    global2 = array<Struct_1, 29>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global0.x), 29u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1161f)) + _wgslsmith_f_op_f32(ceil(-545f))))) - _wgslsmith_f_op_f32(-326f * -1000f));
    var var_2 = func_1(vec4<f32>(var_1, _wgslsmith_f_op_f32(func_2()), 2242f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2821f, _wgslsmith_f_op_f32(min(var_1, 337f)))))), var_0.d, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1553f, var_1, -1109f, 752f))) + vec4<f32>(var_1, 111f, -820f, var_1)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, 1233f, 386f, var_1))))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(25832u, 0u, 4294967295u, 21814u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(91290u, global0.x, 1u, var_0.d), vec4<u32>(12548u, 10330u, global3.d, var_0.d))), Struct_1(select(true, all(vec4<bool>(global3.a, false, global3.a, false)), false), abs(var_0.c.x) & var_0.c.x, select(var_0.c, vec3<i32>(global3.b, 2147483647i, u_input.a.x), true) ^ ~global3.c, ~global3.d)));
    let var_3 = !vec2<bool>(func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2624f, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(243f, var_1, var_1, 235f) + vec4<f32>(var_1, 212f, var_1, var_1)))), 34778u, global1[_wgslsmith_index_u32(~29257u << (var_2.d % 32u), 25u)]).a, all(!(!vec3<bool>(true, true, global3.a))));
    let var_4 = abs(max(abs(firstLeadingBit(var_0.c.x)) | var_2.b, -_wgslsmith_sub_i32(~var_0.b, ~var_0.c.x)));
    let var_5 = !vec3<bool>(true, 1u != (1u & (var_0.d >> (78867u % 32u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(230f, reverseBits(u_input.b));
}

