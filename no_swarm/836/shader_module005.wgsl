struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 52816u, 43394u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec3<u32>(37815u, _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(24928u, u_input.b.x), global1.x, abs(global1.x)), firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(27675u, global1.x), global1.x, _wgslsmith_mult_u32(global1.x, 30501u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(~u_input.c), global1.x), u_input.b.zz));
    global1 = _wgslsmith_mult_vec4_u32(~select(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global1.x, 0u, 0u, 4294967295u)), vec4<u32>(global1.x, 38395u, 1u, var_0.x)), select(vec4<u32>(global1.x, 70702u, 1u, 0u) << (vec4<u32>(u_input.c, 26125u, var_0.x, 13425u) % vec4<u32>(32u)), vec4<u32>(64588u, 65462u, 1u, var_0.x), false), (34470i >= arg_1) && any(vec4<bool>(true, false, true, true))), vec4<u32>(19688u, ~1u, u_input.b.x, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 22207u, 4294967295u, 60906u)), vec4<u32>(min(u_input.b.x, global1.x), _wgslsmith_sub_u32(24323u, 1u), 1u, 1u))));
    var var_1 = Struct_1(vec4<u32>(firstLeadingBit(100335u), ~0u << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global1.wwz, vec3<u32>(1u, var_0.x, u_input.c)), 0u | var_0.x, 4294967295u) % 32u), global1.x, _wgslsmith_clamp_u32(var_0.x, select(u_input.b.x, global1.x, false), firstLeadingBit(4294967295u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0)))));
    var var_3 = Struct_1(reverseBits(~(~max(var_1.a, var_1.a))));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, _wgslsmith_clamp_i32(u_input.a, u_input.d, 2147483647i), -679i)) ^ -vec3<i32>(min(-15982i, -8158i), 1i, u_input.a), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(38773i, 16461i, u_input.a, 24873i), vec4<i32>(u_input.d, 39115i, -63740i, -54956i)), _wgslsmith_clamp_i32(-54309i, -1i, 1i), abs(-44377i)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 0i, u_input.d), vec3<i32>(-35920i, u_input.a, -15680i)), vec3<i32>(20962i, u_input.d, u_input.d) ^ vec3<i32>(31906i, -1988i, -1i)))), ~vec3<i32>(u_input.a, u_input.d, ~_wgslsmith_clamp_i32(u_input.a, u_input.d, u_input.a)));
    var var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 447f, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, -1340f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-100f, 583f, arg_0), vec3<f32>(arg_0, -1326f, arg_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1179f) * vec3<f32>(-635f, -1000f, -273f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(847f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * _wgslsmith_f_op_f32(139f + arg_0)))));
    var var_3 = var_0.xy;
    var var_4 = ~abs(var_0.zy);
    return _wgslsmith_div_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, global1.x), countOneBits(~u_input.c)), global1.x);
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = firstLeadingBit(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-313f, 0i, u_input.a, vec4<f32>(-680f, -1151f, -140f, -594f)))), abs(~vec3<u32>(global1.x, global1.x, 0u))) ^ _wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(u_input.c, ~u_input.c)));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1637f, -1130f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(300f * 1000f), _wgslsmith_f_op_f32(trunc(-480f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1000f * 1542f), -1i, countOneBits(-2147483647i), vec4<f32>(442f, 1299f, 1168f, 1545f))))))));
    var var_1 = 459f;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-809f, 331f), vec2<f32>(-305f, -455f), arg_0.zy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1264f, 584f), vec2<f32>(-1000f, -738f)) - vec2<f32>(1118f, 1146f)))))));
    let var_3 = Struct_1(~(~vec4<u32>(0u, global1.x, 3807u, 4294967295u) ^ firstLeadingBit(vec4<u32>(83343u, 1u, global1.x, var_0))) & _wgslsmith_sub_vec4_u32(abs(vec4<u32>(48589u, global1.x, 1u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 2027u, 11933u, global1.x), vec4<u32>(25243u, var_0, 0u, 1u)) ^ (vec4<u32>(1874u, global1.x, u_input.c, var_0) & vec4<u32>(30862u, 4294967295u, 4294967295u, 56372u))));
    return vec4<u32>(_wgslsmith_sub_u32(~firstTrailingBit(var_3.a.x) << (~_wgslsmith_dot_vec3_u32(u_input.b, var_3.a.xww) % 32u), 1u), u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(28203u, _wgslsmith_mod_u32(1u, 56162u), ~var_0), ~(var_3.a.zyw << (vec3<u32>(u_input.c, var_3.a.x, 1u) % vec3<u32>(32u)))), vec3<u32>(var_0, var_0 >> ((var_3.a.x | 1u) % 32u), ~(~global1.x))), ~_wgslsmith_mod_u32(countOneBits(~11354u), _wgslsmith_dot_vec4_u32(~vec4<u32>(68273u, global1.x, u_input.c, var_0), vec4<u32>(var_3.a.x, global1.x, 16059u, var_0) & vec4<u32>(528u, 13862u, 65529u, 1u))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-823f, -198f)))) + _wgslsmith_f_op_f32(ceil(-1838f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(759f + -237f), _wgslsmith_f_op_f32(func_3(-308f, u_input.d, u_input.d, vec4<f32>(751f, 279f, 1552f, -721f)))))))));
    let var_0 = Struct_1(vec4<u32>(~49319u, arg_1.a.x, global1.x, _wgslsmith_sub_u32(4294967295u, ~(1u >> (0u % 32u)))));
    var var_1 = Struct_2(Struct_1(vec4<u32>(~_wgslsmith_mult_u32(var_0.a.x, 4294967295u), 0u, arg_2.x, _wgslsmith_sub_u32(~47283u, abs(arg_2.x)))), _wgslsmith_f_op_f32(sign(-1141f)), _wgslsmith_dot_vec2_u32(arg_2.yx, ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.x, var_0.a.x, var_0.a.x), vec4<u32>(arg_1.a.x, 29869u, 69686u, global1.x)), arg_1.a.x >> (1u % 32u))), select(select(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), select(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, false), false), !vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(false, false, arg_0), vec3<bool>(false, false, true), vec3<bool>(arg_0, arg_0, false))), !select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true), false)), vec3<bool>(false, _wgslsmith_f_op_f32(trunc(1000f)) >= _wgslsmith_f_op_f32(ceil(-1011f)), any(select(vec2<bool>(false, false), vec2<bool>(true, arg_0), false))), !all(!vec4<bool>(arg_0, arg_0, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -590f));
    var var_2 = _wgslsmith_f_op_f32(-var_1.e);
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(-2147483647i, -13709i, u_input.d, u_input.d)) << (vec4<u32>(1u, var_1.c, arg_1.a.x, arg_2.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-60757i, u_input.d, 1i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.d, u_input.d, -2147483647i), vec4<i32>(1i, -1i, 31998i, u_input.a))), select(!vec4<bool>(true, false, arg_0, arg_0), !vec4<bool>(false, true, false, arg_0), vec4<bool>(false, var_1.d.x, true, var_1.d.x))), _wgslsmith_sub_vec4_i32(~reverseBits(vec4<i32>(u_input.d, u_input.a, -18233i, 2053i)), reverseBits(~vec4<i32>(u_input.d, u_input.a, 2147483647i, u_input.a)))), ~u_input.a);
    return Struct_1(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, 410u, 0u, 35264u), vec4<u32>(0u, 1u, arg_1.a.x, global1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 2613u, var_1.c, global1.x), vec4<u32>(var_1.c, 92484u, 43106u, 37756u)))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.c, u_input.c), select(vec4<u32>(u_input.b.x, var_1.a.a.x, u_input.c, var_0.a.x), vec4<u32>(40515u, 22589u, 12945u, u_input.c), false)), ~select(var_0.a, vec4<u32>(28321u, 0u, var_0.a.x, arg_2.x), vec4<bool>(false, arg_0, false, false)), !(-309f == var_1.b))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = 33742u;
    var var_1 = func_5(true, Struct_1(_wgslsmith_mult_vec4_u32(firstLeadingBit(func_2(arg_1.ywy)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 0u, var_0), var_0 & u_input.c, func_4(arg_0.x, vec3<u32>(global1.x, var_0, 0u)), var_0))), ~u_input.b | global1.xxx);
    let var_2 = !arg_1;
    let var_3 = Struct_1(min(~(~var_1.a), ~var_1.a) >> (var_1.a % vec4<u32>(32u)));
    var var_4 = u_input.a;
    return ~30241u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1297f, -772f) * -309f)) * -1228f) + -957f);
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global1.x, 13509u, 0u, 4294967295u) & (vec4<u32>(global1.x, 1u, 1u, global1.x) << (vec4<u32>(1u, u_input.c, 4294967295u, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(~(u_input.b.x >> (0u % 32u)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-769f, 341f, -733f, -718f)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.xwy, vec3<u32>(global1.x, u_input.b.x, 1u)), global1.wxx))));
    global1 = abs(var_0.a);
    var var_1 = !select(vec3<bool>(false, true, _wgslsmith_f_op_f32(400f - -1510f) != _wgslsmith_f_op_f32(ceil(1366f))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), vec3<bool>(true, true, all(vec2<bool>(false, false))));
    var var_2 = Struct_2(func_5(all(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), var_1.x), !vec3<bool>(var_1.x, false, var_1.x))), func_5(false, func_5(var_1.x, func_5(false, Struct_1(vec4<u32>(u_input.b.x, 1u, global1.x, 40422u)), global1.xzw), vec3<u32>(global1.x, global1.x, global1.x)), ~global1.wzw), ~vec3<u32>(4294967295u, var_0.a.x & 50844u, var_0.a.x ^ global1.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-217f))))), 49833i, u_input.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(504f, 237f, -1223f, -1160f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, 1637f, -523f, 878f))), _wgslsmith_div_vec4_f32(vec4<f32>(-573f, -345f, 330f, -447f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(842f, 757f, 490f, -838f))))))), min(global1.x, var_0.a.x), vec3<bool>(!var_1.x, var_1.x, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-904f * 1644f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f))) * 313f));
    global1 = abs(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, var_2.c, 43305u, var_2.c), var_0.a), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~var_2.a.a, vec4<u32>(global1.x, var_2.a.a.x, 0u, global1.x) ^ var_0.a), ~firstLeadingBit(var_0.a))));
    let var_3 = vec4<u32>(var_2.a.a.x, 5421u & ~var_2.c, ~u_input.c, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~global1.x, 3535u, 4294967295u, func_5(var_1.x, Struct_1(max(vec4<u32>(44970u, global1.x, 0u, var_2.c), var_3)), func_2(var_2.d).wxy).a.x), vec4<u32>(u_input.c ^ ~u_input.c, global1.x, global1.x, _wgslsmith_div_u32(global1.x, ~func_4(var_2.b, global1.xwz))));
}

