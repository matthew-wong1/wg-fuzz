struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(4294967295u, -1056f, 97161u, vec4<f32>(-1537f, 1024f, -683f, 726f), vec4<f32>(-1166f, 1313f, -352f, -788f));

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    global1 = Struct_1(select(1u, global2.a, arg_0.x), global1.d.x, _wgslsmith_sub_u32(4294967295u, 0u), vec4<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b * arg_1.b.x)) + 780f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-133f)), _wgslsmith_f_op_f32(trunc(global4.e.x)))), _wgslsmith_f_op_f32(arg_1.b.x + -1424f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 348f, arg_1.b.x, arg_1.b.x)))))));
    return -2421f;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<bool> {
    global2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~global4.c, 87916u & _wgslsmith_clamp_u32(6634u, global1.a, global4.c), _wgslsmith_sub_u32(26282u, _wgslsmith_mult_u32(0u, 68042u)), ~(~global1.c)), firstTrailingBit(firstLeadingBit(min(u_input.b, u_input.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(global4.d.x - 1173f))))))), global2.c, arg_3.b, vec4<f32>(_wgslsmith_f_op_f32(-2194f + global4.d.x), global2.b, -3013f, arg_3.b.x));
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(~global2.a, ~global4.a, global2.c), _wgslsmith_mod_vec3_u32(vec3<u32>(39360u, global2.a, 4294967295u), vec3<u32>(50810u, global2.c, 68078u)) & ~vec3<u32>(0u, global1.c, global1.c)), _wgslsmith_f_op_f32(max(-342f, 1210f)), _wgslsmith_sub_u32(1u, global2.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d - arg_3.b) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.d.x, 1829f, global2.b, 605f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, 1000f, -2755f, 821f)))))), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.b.x, 963f, global4.e.x, global2.b))) * arg_3.b))) + vec4<f32>(702f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1182f)))), _wgslsmith_f_op_f32(-298f + 122f), -1560f)));
    global1 = Struct_1(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1440f, -697f))), 1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-163f * -1840f))), -433f, 923f, global2.b), vec4<f32>(-1018f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)))), -1131f, global2.e.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(max(227f, global4.d.x))), _wgslsmith_div_f32(-923f, _wgslsmith_f_op_f32(min(491f, 3047f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)))), var_0.d.x < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b - -1333f), -1540f, true)))));
    let var_2 = true;
    return !vec4<bool>(any(select(arg_2.zwy, select(vec3<bool>(arg_1, true, false), arg_3.a.wzy, arg_3.a.x), vec3<bool>(true, var_2, arg_2.x))), global2.c <= _wgslsmith_mod_u32(global4.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, global4.c), u_input.b.xx)), max(u_input.c.x, firstLeadingBit(1i)) < abs(u_input.d), arg_3.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_1(1u, global2.e.x, _wgslsmith_mult_u32(min(~64118u, 0u), ~global1.a), _wgslsmith_f_op_vec4_f32(-global1.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1503f, _wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, true, false), Struct_2(vec4<bool>(true, true, false, true), global1.e))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(2117f, global2.b))))));
    let var_1 = Struct_2(func_3(vec4<i32>(arg_0.x, 1i, reverseBits(_wgslsmith_div_i32(-1i, arg_0.x)), ~2147483647i), !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, 458f <= global1.e.x, true, any(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, global2.d.x, arg_2, 154f) * vec4<f32>(global2.d.x, global2.d.x, global1.b, arg_2)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - vec4<f32>(global2.b, global2.d.x, var_0.e.x, global2.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(378f, global2.d.x, 2076f, var_0.d.x), var_0.d)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(-1000f, 1547f, 1386f, global2.d.x)) * _wgslsmith_f_op_vec4_f32(var_0.d - global2.e))))));
    global1 = var_0;
    let var_2 = u_input.b.xw;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(global1.e.wxx));
    return vec3<bool>(true, select(var_1.a.x, var_1.a.x, any(select(!vec2<bool>(true, var_1.a.x), func_3(u_input.c, true, var_1.a, Struct_2(vec4<bool>(true, var_1.a.x, false, var_1.a.x), global1.d)).xw, !var_1.a.x))), all(vec3<bool>(var_1.a.x, true, false)) || all(func_3(-u_input.c, true, !vec4<bool>(false, true, var_1.a.x, var_1.a.x), Struct_2(vec4<bool>(var_1.a.x, var_1.a.x, false, true), vec4<f32>(-1000f, 597f, var_3.x, var_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(vec4<bool>(true, true, true != all(vec3<bool>(false, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))), any(func_1(vec3<i32>(_wgslsmith_mult_i32(-59969i, u_input.c.x), _wgslsmith_div_i32(u_input.c.x, -1i), u_input.d ^ u_input.c.x), u_input.b.x, _wgslsmith_f_op_f32(1177f - global1.e.x), _wgslsmith_dot_vec3_i32(u_input.c.zwx >> (u_input.b.xyw % vec3<u32>(32u)), u_input.c.xzx))), !(_wgslsmith_add_u32(4294967295u, u_input.a) >= ~_wgslsmith_dot_vec2_u32(u_input.b.ww, u_input.b.zz)));
    global3 = _wgslsmith_f_op_f32(-global2.b);
    global3 = 308f;
    let var_1 = Struct_2(vec4<bool>(true, func_1(u_input.c.xyx, u_input.a, _wgslsmith_f_op_f32(func_2(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, false), true), Struct_2(vec4<bool>(var_0.x, true, var_0.x, false), global1.d))), firstTrailingBit(u_input.c.x)).x, var_0.x, var_0.x), global1.e);
    global1 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-502f - global1.e.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.e.x), _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(global1.d.x * var_1.b.x))))), global4.c ^ min(global1.c, countOneBits(global4.a)), vec4<f32>(_wgslsmith_div_f32(global4.e.x, _wgslsmith_f_op_f32(max(global2.e.x, _wgslsmith_f_op_f32(172f + 817f)))), 1023f, -229f, var_1.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, -294f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-972f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * var_1.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_div_f32(-430f, _wgslsmith_f_op_f32(global2.d.x * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) * 226f), -1961f)));
    global2 = Struct_1(0u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(276f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b)) + _wgslsmith_f_op_f32(abs(-460f))), true)), _wgslsmith_f_op_f32(min(-1000f, 910f)))), ~global4.a ^ ~firstLeadingBit(~u_input.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global2.e)) - _wgslsmith_f_op_vec4_f32(-global2.e))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, global4.d.x, 1718f, -279f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, -1455f, 1000f, global1.e.x) + var_1.b)))), !(false | var_0.x))), global1.e);
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mult_u32(78019u, 1u) >> (min(46635u, global2.c) % 32u)), 0u), _wgslsmith_div_u32(~(~0u) << (u_input.b.x % 32u), 86995u), global4.a);
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, abs(u_input.d), _wgslsmith_add_i32(~u_input.d, _wgslsmith_mult_i32(~(-u_input.d), _wgslsmith_clamp_i32(u_input.c.x, -9644i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)))), var_2);
}

