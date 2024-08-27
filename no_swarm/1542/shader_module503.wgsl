struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: f32;

var<private> global2: array<bool, 26> = array<bool, 26>(false, false, true, true, true, true, false, false, false, true, true, true, false, true, false, false, false, false, true, false, false, false, true, true, true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global0 = array<vec3<bool>, 31>();
    let var_0 = 418f;
    global1 = _wgslsmith_f_op_f32(1121f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_1 = -1175f;
    var var_2 = abs(max(u_input.c.zxy, min(_wgslsmith_mult_vec3_u32(reverseBits(u_input.c.zyw), ~u_input.b), vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.b.x), 44709u, ~u_input.b.x))));
    return firstTrailingBit(_wgslsmith_mod_vec4_i32(~(reverseBits(vec4<i32>(u_input.d.x, 1i, 15588i, 27863i)) & ~vec4<i32>(-21939i, u_input.d.x, arg_0.a, arg_0.b.x)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.d.x, u_input.d.x, -1i), vec4<i32>(u_input.d.x, u_input.d.x, -433i, 20642i)), vec4<i32>(-2147483647i, -2841i, 13825i, 41005i) | vec4<i32>(arg_0.a, arg_0.a, u_input.d.x, 18396i)), select(-vec4<i32>(u_input.a.x, arg_0.c, arg_0.a, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 0i, 13737i, 13901i), vec4<i32>(16292i, arg_0.c, u_input.d.x, u_input.a.x)), true))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-814f, 401f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1703f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1482f)), -971f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(571f)) * _wgslsmith_f_op_f32(123f * -599f)), 1433f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -590f), 1000f))), -361f);
    global2 = array<bool, 26>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-783f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    let var_1 = global0[_wgslsmith_index_u32(0u, 31u)];
    let var_2 = select(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(15821u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c & vec4<u32>(1u, firstLeadingBit(u_input.c.x), u_input.c.x, ~16652u), abs(~vec4<u32>(0u, 1u, u_input.c.x, 4294967295u))), 31u)]);
    return 246f;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-6939i, 0i, ~reverseBits(73753i), _wgslsmith_mult_i32(i32(-1i) * -5677i, -(~0i))), _wgslsmith_clamp_vec4_i32(~(-abs(vec4<i32>(arg_1, arg_1, 17581i, 60749i))), -((vec4<i32>(-44782i, 0i, 1i, 0i) >> (u_input.c % vec4<u32>(32u))) << (vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.c.x) % vec4<u32>(32u))), ~(~func_2(Struct_1(arg_1, u_input.a, arg_0.c.c)))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(0i, 20541i, -71103i, -5962i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d.b.x, 1i, -4158i, 0i), vec4<i32>(arg_0.c.a, arg_0.c.a, -21741i, arg_1))), vec4<i32>(28249i, 2147483647i, firstLeadingBit(arg_0.c.b.x), -arg_1) << (u_input.c % vec4<u32>(32u))));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(30949u, u_input.b.x, 4294967295u), ~vec3<u32>(u_input.c.x, u_input.c.x, 1u)), _wgslsmith_clamp_vec3_u32(~u_input.c.yyy, ~vec3<u32>(u_input.b.x, 4294967295u, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 1u))), firstLeadingBit(46650u), ~u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(25775u, firstLeadingBit(~121649u), 0u, 49215u), min(u_input.c, ~(~u_input.c))), vec4<u32>(~abs(u_input.b.x), 68366u, u_input.b.x, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.b, max(vec3<u32>(u_input.b.x, u_input.c.x, 0u), u_input.c.wxw)))));
    var var_2 = _wgslsmith_div_vec3_i32(arg_0.c.b, ~vec3<i32>(firstTrailingBit(u_input.a.x), 60935i, u_input.d.x));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(-129f, arg_0.e.x), _wgslsmith_f_op_f32(round(-141f)), _wgslsmith_f_op_f32(285f - -1427f), -2359f);
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(func_3(arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_2(371f, vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], false, true, global2[_wgslsmith_index_u32(33817u, 26u)]), Struct_1(1i, u_input.a, -5925i), Struct_1(u_input.a.x, u_input.a, -2147483647i), vec3<f32>(176f, -1185f, -895f)), u_input.d.x)))))));
    global0 = array<vec3<bool>, 31>();
    var var_0 = true;
    global0 = array<vec3<bool>, 31>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -747f))))), select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)] | false, true, true, global2[_wgslsmith_index_u32(15862u >> (u_input.c.x % 32u), 26u)]), vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, false, global2[_wgslsmith_index_u32(u_input.b.x, 26u)])), !any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 26u)])), true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), vec2<u32>(4809u, u_input.b.x)), 26u)]), vec4<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)], true, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], false, true, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(24878u, 38545u), 3993u), 26u)], false, true)), Struct_1(-15166i & u_input.a.x, u_input.a, max(max(-u_input.d.x, 4731i), u_input.d.x)), Struct_1(-1i, ~firstTrailingBit(u_input.a ^ vec3<i32>(u_input.d.x, u_input.a.x, 2147483647i)), _wgslsmith_add_i32(u_input.a.x, -(~2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1508f, _wgslsmith_f_op_f32(min(-861f, -562f)), -716f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1021f)) - _wgslsmith_f_op_f32(f32(-1f) * -1262f)), _wgslsmith_f_op_f32(round(-1284f)), _wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(938f * 113f)))));
    var var_2 = 1u;
    let var_3 = Struct_1(func_2(var_1.d).x, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -var_1.c.a, u_input.a.x), select(-vec3<i32>(var_1.d.c, u_input.d.x, 0i), var_1.c.b, true)), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(~u_input.a.x, -13373i, ~u_input.d.x))), 903i);
    let var_4 = Struct_1(u_input.d.x, _wgslsmith_mod_vec3_i32(-(~var_3.b) >> (u_input.b % vec3<u32>(32u)), (~vec3<i32>(-1i, var_1.c.b.x, var_1.d.c) | select(u_input.a, vec3<i32>(-2147483647i, -8470i, 30159i), var_1.b.zxy)) | select(firstTrailingBit(vec3<i32>(2147483647i, 1i, u_input.d.x)), ~var_1.c.b, !vec3<bool>(global2[_wgslsmith_index_u32(13855u, 26u)], global2[_wgslsmith_index_u32(27775u, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)]))), -56730i);
    var var_5 = (reverseBits(~select(vec3<i32>(1i, -2147483647i, 1i), var_3.b, var_1.b.ywx)) | _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(var_1.c.b), vec3<i32>(-7044i, 2147483647i, 2147483647i) | vec3<i32>(var_4.b.x, 2147483647i, 2147483647i)), -(~vec3<i32>(-2147483647i, var_4.c, var_3.b.x)))) >> (vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(50552u, u_input.b.x), ~10758u, _wgslsmith_mult_u32(4294967295u, u_input.c.x)), _wgslsmith_clamp_u32(~76260u, min(u_input.b.x, 1u) & u_input.b.x, ~reverseBits(4294967295u)), ~(~_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(38206u, 1u)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(0i | u_input.d.x, var_4.a | -66013i, var_5.x, _wgslsmith_mod_i32(var_1.c.b.x, var_3.c)) & _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -2108i, 20624i, 1i), vec4<i32>(var_3.a, 8045i, var_4.c, var_1.c.c)), ~vec4<i32>(47684i, -2147483647i, 2147483647i, var_4.c), ~vec4<i32>(31341i, var_1.c.a, 40546i, -1i))), ~firstLeadingBit(firstLeadingBit(u_input.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 28169u), vec3<u32>(15741u, u_input.c.x, 32640u)) % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.a)))));
}

