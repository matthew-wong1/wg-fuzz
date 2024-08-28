struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(0u, 0u, 0u, 12699u, 0u, 1u, 91897u, 4294967295u, 0u, 4294967295u, 1u, 5024u, 131u, 1u, 19838u, 1u, 0u, 0u, 4294967295u, 1u, 4294967295u, 18417u, 4294967295u, 29265u, 1u, 29160u, 23144u, 13653u, 19240u, 1u, 1u, 0u);

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<i32>(1i, -12369i), vec4<i32>(i32(-2147483648), -81793i, 58114i, 1i), vec2<i32>(2147483647i, 33287i), vec2<u32>(0u, 35392u), -1i), Struct_1(vec2<i32>(12611i, 29476i), vec4<i32>(-16879i, 16652i, 2147483647i, 1i), vec2<i32>(-4965i, 1i), vec2<u32>(1u, 66911u), 20323i), Struct_1(vec2<i32>(-25835i, 19557i), vec4<i32>(18263i, 23462i, -1i, 2147483647i), vec2<i32>(32443i, 0i), vec2<u32>(0u, 4294967295u), i32(-2147483648)), Struct_1(vec2<i32>(-17365i, 38175i), vec4<i32>(-1i, i32(-2147483648), 28475i, 42524i), vec2<i32>(0i, -1i), vec2<u32>(2408u, 4294967295u), 1i), Struct_1(vec2<i32>(i32(-2147483648), -30570i), vec4<i32>(38576i, 4545i, -1344i, i32(-2147483648)), vec2<i32>(2147483647i, 49276i), vec2<u32>(0u, 7798u), i32(-2147483648)), Struct_1(vec2<i32>(965i, 0i), vec4<i32>(i32(-2147483648), -1314i, 56995i, 49293i), vec2<i32>(8069i, 1i), vec2<u32>(34619u, 45657u), 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), 22649i), vec4<i32>(-1i, -1i, -1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<u32>(1u, 0u), -934i));

var<private> global2: array<Struct_2, 13>;

var<private> global3: vec2<i32> = vec2<i32>(-1i, 405i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = arg_0.b.xwx;
    let var_1 = vec3<bool>(true, true, !(any(vec3<bool>(true, true, true)) & true));
    global2 = array<Struct_2, 13>();
    var var_2 = any(vec4<bool>(!var_1.x, !(_wgslsmith_div_i32(2147483647i, -2147483647i) >= (arg_0.c.x | -52364i)), true, all(vec3<bool>(true, var_1.x, all(vec3<bool>(var_1.x, false, true))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) * -137f);
    return global2[_wgslsmith_index_u32(abs(4294967295u), 13u)];
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = array<Struct_1, 7>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~(global0[_wgslsmith_index_u32(~0u, 32u)] & 4294967295u), abs(global0[_wgslsmith_index_u32(0u, 32u)])), firstLeadingBit(4294967295u << (arg_0.c % 32u)), arg_0.c), 13u)];
    let var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(global3.x, global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b.x, -1i, arg_0.a.e, global3.x), min(arg_0.a.b, vec4<i32>(5408i, u_input.b, global3.x, 2147483647i)))), (_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.a.b.zwz, var_0.a.b.wxz), vec3<i32>(2147483647i, arg_0.a.a.x, arg_0.a.b.x), vec3<i32>(arg_0.a.c.x, -2147483647i, arg_0.a.a.x) | var_0.a.b.xwy) | arg_0.a.b.yxw) << (_wgslsmith_mult_vec3_u32(select(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 32u)], u_input.c.x, var_0.a.d.x), ~vec3<u32>(1u, var_0.c, 22865u), vec3<bool>(arg_0.d.x, false, false)), abs(~vec3<u32>(arg_0.c, 0u, arg_0.a.d.x))) % vec3<u32>(32u)));
    global1 = array<Struct_1, 7>();
    var var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.e, firstLeadingBit(-u_input.a.x), -(i32(-1i) * -2147483647i), -2147483647i), vec4<i32>(~(2147483647i & var_0.a.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.e, var_0.a.e, var_0.a.b.x), var_0.a.b.zyw), u_input.a.x, _wgslsmith_add_i32(47045i, var_0.a.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-880f * arg_0.b.x), arg_0.b.x)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>) -> bool {
    global0 = array<u32, 32>();
    var var_0 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(196f, 1319f)) * _wgslsmith_f_op_f32(func_3(func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 7u)], u_input.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1023f)), -1048f)))));
    var_0 = -1271f;
    var var_1 = func_2(global1[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(~(~(u_input.c.x ^ 0u)), 32u)], ~(~13836u)), 7u)], 1i).a;
    var var_2 = 43434u ^ min(u_input.c.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, 13773u, 1u), vec4<u32>(70291u, global0[_wgslsmith_index_u32(var_1.d.x, 32u)], 25281u, u_input.c.x) ^ vec4<u32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 4294967295u, 18371u)));
    return 1u > abs(~var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(~(~(~u_input.c.x)), 7u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2525f, 1320f, 867f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1121f, 987f, 826f), vec3<f32>(-188f, 624f, -1000f))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(561f, -1453f, 1078f), vec3<f32>(-1301f, -1789f, -1076f))))), reverseBits(_wgslsmith_div_u32(4294967295u, ~countOneBits(4294967295u))), !select(vec3<bool>(true, select(true, true, false), func_1(true, vec4<bool>(false, false, true, true), vec3<i32>(u_input.a.x, 24027i, global3.x))), vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true), vec3<bool>(false, true, u_input.c.x > 77249u)));
    global0 = array<u32, 32>();
    var var_1 = 29348u != ~var_0.a.d.x;
    var var_2 = select(vec2<i32>(u_input.b, var_0.a.e), ~u_input.a, any(var_0.d)) & (_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, u_input.b), min(vec2<i32>(u_input.a.x, var_0.a.a.x), var_0.a.a)), -var_0.a.a ^ -vec2<i32>(-2147483647i, 50391i), _wgslsmith_sub_vec2_i32(-vec2<i32>(0i, u_input.a.x), ~var_0.a.c)) << ((vec2<u32>(u_input.c.x, select(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], var_0.a.d.x, var_0.d.x)) << (vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_1 = all(var_0.d.xz);
    var var_3 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(291f)))));
}

