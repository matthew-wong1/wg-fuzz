struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(i32(-2147483648), 2147483647i, 56688i), vec3<i32>(-40869i, -3456i, 11027i), vec3<i32>(1199i, 1i, i32(-2147483648)), vec3<i32>(0i, -7385i, -56305i), vec3<i32>(20546i, 1i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(5297i, -8307i, 1135i), vec3<i32>(18100i, -33355i, 1i), vec3<i32>(0i, 24159i, 2147483647i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(-51052i, 39322i, 0i), vec3<i32>(25117i, 1i, -26137i), vec3<i32>(12134i, 8986i, -10533i), vec3<i32>(13326i, 2147483647i, 2147483647i));

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: Struct_2 = Struct_2(557f, vec2<bool>(true, true), Struct_1(vec2<i32>(1i, 37808i), -106f, 82189u, 433f));

var<private> global3: vec3<u32> = vec3<u32>(1u, 47028u, 40556u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * arg_2.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + arg_2.d) + -726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.x, 567f, arg_3.x)))))), 263f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.d, global2.a, arg_1.x, 220f)))))));
    var var_1 = arg_2;
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d, _wgslsmith_f_op_f32(sign(602f)), _wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(294f + _wgslsmith_f_op_f32(sign(1438f))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + arg_2.d);
    return (-2147483647i | firstLeadingBit(u_input.a)) & (5177i << (1u % 32u));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = -_wgslsmith_sub_i32(-func_3(~vec4<i32>(-1i, -2147483647i, -22576i, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, global2.a, global2.a) - vec3<f32>(global2.a, global2.c.d, global2.a)), global2.c, select(vec3<bool>(global2.b.x, false, global2.b.x), global1[_wgslsmith_index_u32(45259u, 8u)], false)), _wgslsmith_dot_vec3_i32(-(global0[_wgslsmith_index_u32(34810u, 14u)] >> (vec3<u32>(global3.x, 0u, 4294967295u) % vec3<u32>(32u))), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_1, 35668i), global0[_wgslsmith_index_u32(u_input.d, 14u)]))));
    let var_1 = _wgslsmith_sub_u32(92784u, ~abs(abs(arg_2)));
    global0 = array<vec3<i32>, 14>();
    var var_2 = ~0u;
    var var_3 = i32(-1i) * -2147483647i;
    return global2.c.d;
}

fn func_1() -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-491f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * 212f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b * global2.c.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(sign(-165f)), global2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-309f * global2.c.b), _wgslsmith_f_op_f32(max(global2.a, global2.a))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(true, 2147483647i, global3.x)), global2.c.d))))), _wgslsmith_div_f32(global2.c.d, global2.c.d));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a - global2.c.d), _wgslsmith_f_op_f32(abs(1459f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, global2.c.d)))))), global2.b, global2.c);
    let var_1 = !vec4<bool>(true, global2.b.x, all(vec4<bool>(global2.b.x, global2.b.x, true, global2.b.x)) | (all(vec3<bool>(global2.b.x, true, global2.b.x)) && false), any(!global1[_wgslsmith_index_u32(40301u << (0u % 32u), 8u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-880f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1109f - var_0.x)), var_0.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1662f, global2.c.d, var_1.x))))), !vec2<bool>(~1u != global3.x, true), global2.c);
    return _wgslsmith_mod_u32(~37934u << (~_wgslsmith_mod_u32(global3.x, countOneBits(4294967295u)) % 32u), 6481u);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = -_wgslsmith_mod_i32(min(global2.c.a.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c.a.x, 36885i), vec2<i32>(-38923i, -49616i))), ~min(_wgslsmith_add_i32(-2147483647i, u_input.a), arg_2.c.a.x));
    var var_1 = arg_2.c;
    global0 = array<vec3<i32>, 14>();
    global2 = Struct_2(_wgslsmith_f_op_f32(round(-226f)), vec2<bool>(!arg_2.b.x, arg_2.b.x), global2.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, 2043f, _wgslsmith_f_op_f32(var_1.b * arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, 379f, arg_1, var_1.b) + vec4<f32>(var_1.d, -501f, 777f, arg_1)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.c.b, 168f, -760f, -767f), vec4<f32>(global2.a, -376f, global2.a, var_1.b))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(827f, arg_1, global2.c.b, var_1.d) * vec4<f32>(var_1.b, -1000f, 727f, -566f)))))));
    return !select(select(select(vec4<bool>(arg_2.b.x, false, true, true), !vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.b.x), select(vec4<bool>(arg_2.b.x, true, true, arg_2.b.x), vec4<bool>(false, true, false, true), true)), vec4<bool>(false, true, global2.a <= 1100f, false), select(select(vec4<bool>(true, true, arg_2.b.x, false), vec4<bool>(arg_2.b.x, true, true, global2.b.x), global2.b.x), select(vec4<bool>(global2.b.x, arg_2.b.x, true, global2.b.x), vec4<bool>(arg_2.b.x, true, global2.b.x, global2.b.x), arg_2.b.x), arg_2.b.x)), vec4<bool>(arg_2.b.x, true, 2147483647i >= ~var_1.a.x, any(!global2.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_4(vec4<u32>(21263u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, u_input.b), global3.yy) | func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), firstLeadingBit(global3.zx)), func_1() ^ max(57039u, global2.c.c)), -185f, Struct_2(_wgslsmith_f_op_f32(max(-432f, _wgslsmith_div_f32(global2.c.d, -1000f))), select(select(global2.b, global2.b, global2.b.x), vec2<bool>(global2.b.x, false), global2.b.x), Struct_1(_wgslsmith_sub_vec2_i32(global2.c.a, global2.c.a), _wgslsmith_div_f32(global2.c.d, -492f), 0u, _wgslsmith_f_op_f32(global2.a + 144f))));
    let var_1 = 45620i;
    var var_2 = global2.c;
    let var_3 = global2.c;
    let var_4 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b), vec2<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec2_u32(global3.zz, global3.xx)), 4294967295u) ^ _wgslsmith_add_vec2_u32(global3.xx, global3.yx), _wgslsmith_add_vec4_u32(vec4<u32>(0u, global2.c.c, ~(~u_input.b), ~max(0u, 1u)), abs((vec4<u32>(global3.x, var_2.c, 33565u, 63247u) & vec4<u32>(u_input.c, global2.c.c, global2.c.c, 52234u)) & ~vec4<u32>(var_2.c, var_4.c, var_3.c, global3.x))), ~367u);
}

