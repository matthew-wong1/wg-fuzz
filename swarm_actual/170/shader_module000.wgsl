struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1329f;

var<private> global1: Struct_2;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec4<u32>;

var<private> global4: array<f32, 19> = array<f32, 19>(301f, 1023f, -461f, -455f, 1510f, -177f, -1023f, 600f, -1799f, -3396f, -1000f, 526f, -2378f, 1000f, -1460f, -907f, -1000f, 982f, -1442f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 19u)] + _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(47782u, 19u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47480u, 72913u, u_input.a.x, global1.d.x), vec4<u32>(global3.x, global1.d.x, 34483u, 4294967295u)), 19u)])) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 284f), vec2<f32>(global1.b, global4[_wgslsmith_index_u32(global1.d.x, 19u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 620f) + vec2<f32>(global1.b, global4[_wgslsmith_index_u32(global1.d.x, 19u)])) * _wgslsmith_f_op_vec2_f32(-arg_0)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(1619f + -1140f)))));
    global3 = vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(global3.x, ~select(global3.x, 1u, global2.x)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(4294967295u, 58773u))), 1u), global1.d.x);
    let var_1 = vec4<bool>(global2.x, u_input.a.x == firstTrailingBit(~_wgslsmith_div_u32(u_input.a.x, global1.d.x)), select(any(!(!vec4<bool>(true, global2.x, false, false))), any(vec2<bool>(true, !global2.x)), true), global2.x);
    global3 = ~reverseBits(~vec4<u32>(~4294967295u, global3.x, countOneBits(1u), countOneBits(15868u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(177f, 539f)));
    return firstLeadingBit(firstLeadingBit(min(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(global1.d.x, u_input.a.x), reverseBits(global1.d.x)), vec3<u32>(u_input.a.x, 32859u, 23585u))));
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(global4[_wgslsmith_index_u32(global3.x, 19u)], global1.b, global1.c, ~firstTrailingBit(firstTrailingBit(func_3(vec2<f32>(global4[_wgslsmith_index_u32(global1.d.x, 19u)], global1.b)))));
    let var_0 = all(select(select(global2.xz, select(vec2<bool>(true, false), vec2<bool>(true, global2.x), !global2.x), true), select(vec2<bool>(true, true), select(!global2.zx, global2.zx, vec2<bool>(global2.x, global2.x)), true), select(vec2<bool>(global2.x, any(vec4<bool>(true, global2.x, false, global2.x))), select(!vec2<bool>(true, global2.x), global2.xz, global2.xy), any(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, false, false), global2.x)))));
    var var_1 = _wgslsmith_mod_i32(global1.c, u_input.b);
    var var_2 = global3.zx;
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-652f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(758f)))), ((global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.x, global1.d.x), 19u)] != global1.a) && (_wgslsmith_f_op_f32(sign(493f)) != global1.b)) | all(!global2.xx));
    return Struct_1(!(!global2.x), false);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    var var_0 = global2.zz;
    var_0 = select(select(select(!(!global2.yx), global2.zz, vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(false, all(select(vec2<bool>(true, false), global2.zy, vec2<bool>(arg_0.a, global2.x)))), global2.x), global2.zz, global2.yx);
    let var_1 = _wgslsmith_add_u32(62756u, u_input.a.x) >= ~0u;
    var var_2 = !select(select(vec4<bool>(false, 192f <= global4[_wgslsmith_index_u32(global3.x, 19u)], true, global1.b > global4[_wgslsmith_index_u32(67138u, 19u)]), !(!vec4<bool>(arg_0.b, true, false, var_1)), -25695i <= global1.c), !vec4<bool>(global3.x >= 0u, arg_0.a, any(global2.zz), 1i == u_input.b), true);
    var_0 = var_2.yx;
    return _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -978f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2871f)) * _wgslsmith_div_f32(arg_1.x, -260f)))))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1266f + -959f), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(global1.d.x, 19u)], _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-840f, arg_1.a) - vec2<f32>(-196f, -779f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(113f - arg_1.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1118f)))), i32(-1i) * -min(u_input.b, 0i), (~vec3<u32>(4294967295u, u_input.a.x, 73951u) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 61882u), ~arg_1.d)) | reverseBits(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(27411u, 19u)], global1.a)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-827f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(max(arg_1.a, -2581f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + arg_1.a) * _wgslsmith_f_op_f32(-arg_1.b))))) * 683f);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~4523u), 19u)] * -587f), arg_1.a, 1f, -1247f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(39464u, 19u)], global4[_wgslsmith_index_u32(global1.d.x, 19u)], 689f, arg_1.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, 1766f, 810f, 670f), vec4<f32>(-1000f, 1193f, var_0, global1.b)), vec4<f32>(-412f, -1867f, global4[_wgslsmith_index_u32(global1.d.x, 19u)], global1.a)))));
    let var_2 = arg_1;
    global2 = vec3<bool>(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u ^ global3.x, 1u, _wgslsmith_dot_vec3_u32(var_2.d, vec3<u32>(28258u, 16278u, arg_1.d.x))), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(global4[_wgslsmith_index_u32(1u, 19u)], -643f)))) != abs(_wgslsmith_mod_u32(arg_1.d.x & 0u, ~u_input.a.x)), true);
    return _wgslsmith_mod_u32(func_3(var_1.zw).x, firstTrailingBit(~firstLeadingBit(_wgslsmith_mult_u32(global3.x, arg_0))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = -min(-min(vec4<i32>(u_input.b, u_input.b, global1.c, 2147483647i), vec4<i32>(u_input.b, u_input.b, 12297i, 41498i)), -abs(vec4<i32>(u_input.b, 0i, 0i, u_input.b))) & ~max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(35640i, 40528i), vec2<i32>(1i, u_input.b)), 10113i, -34635i, _wgslsmith_sub_i32(-32348i, 13512i)), _wgslsmith_div_vec4_i32(vec4<i32>(-33192i, global1.c, 2147483647i, global1.c), vec4<i32>(-1i, u_input.b, -12118i, u_input.b)) ^ countOneBits(vec4<i32>(u_input.b, global1.c, -1i, 4057i)));
    let var_1 = ~select(_wgslsmith_add_u32(10299u & arg_3.x, ~arg_3.x) >> (_wgslsmith_mult_u32(max(4294967295u, 0u), 4862u << (global3.x % 32u)) % 32u), u_input.a.x, !all(select(vec4<bool>(global2.x, arg_0.x, global2.x, global2.x), vec4<bool>(false, arg_0.x, false, arg_0.x), arg_0.x)));
    var var_2 = var_0.x;
    global3 = arg_3;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 + arg_1)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_1.x), arg_1, true))), select(all(select(global2.zx, vec2<bool>(arg_0.x, false), vec2<bool>(global2.x, global2.x))), false, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(global2.x, false), arg_1)) + _wgslsmith_f_op_f32(361f + 707f)) - arg_1.x)));
    return var_3;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a | vec2<u32>(1u >> (0u % 32u), _wgslsmith_div_u32(4294967295u, 86487u)), ~(~_wgslsmith_sub_vec2_u32(u_input.a, global3.yz))));
    let var_1 = _wgslsmith_add_vec2_i32(-abs(vec2<i32>(25782i, u_input.b)), vec2<i32>(_wgslsmith_clamp_i32(-21944i, 57561i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global1.c, -2147483647i), vec3<i32>(u_input.b, u_input.b, 0i))) & _wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), -vec2<i32>(-1i, u_input.b))) >> (~vec2<u32>(abs(_wgslsmith_div_u32(4294967295u, var_0)), 4294967295u) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-226f, 1105f), _wgslsmith_div_f32(604f, 1756f), -117f, _wgslsmith_f_op_f32(-746f + global1.b)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f * global1.a)) + _wgslsmith_f_op_f32(round(arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - -1986f) + _wgslsmith_f_op_f32(global1.b + 1402f))), _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a.x, 61017u), 19u)])), -1804f), arg_1.a));
    let var_3 = min(_wgslsmith_add_u32(1u, global3.x), global3.x);
    let var_4 = select(!(!select(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(global2.x, true, global2.x, arg_1.b), vec4<bool>(false, false, global2.x, global2.x)), select(vec4<bool>(arg_1.b, false, true, arg_1.a), vec4<bool>(true, arg_0, false, global2.x), false), !vec4<bool>(true, global2.x, false, false))), select(select(!select(vec4<bool>(global2.x, arg_0, global2.x, true), vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(select(vec4<bool>(arg_0, arg_0, false, arg_1.a), vec4<bool>(false, true, global2.x, true), vec4<bool>(global2.x, false, arg_1.b, false)), vec4<bool>(false, false, global2.x, arg_1.a), global2.x && arg_0), vec4<bool>(true, !global2.x, global2.x, arg_1.a && global2.x)), vec4<bool>(all(!vec3<bool>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(global1.a * global4[_wgslsmith_index_u32(9459u, 19u)]) != _wgslsmith_div_f32(411f, 574f), arg_0, true), select(vec4<bool>(-2147483647i > var_1.x, any(global2.yy), !arg_1.a, select(global2.x, true, global2.x)), vec4<bool>(arg_0 && global2.x, arg_1.b, true, all(global2.yy)), true)), true);
    return StorageBuffer(u_input.a, -abs((vec4<i32>(-2147483647i, var_1.x, u_input.b, 1i) ^ vec4<i32>(global1.c, -1i, var_1.x, global1.c)) | -vec4<i32>(-75038i, var_1.x, 46712i, 32131i)), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstTrailingBit(~var_0), var_0), 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 19>();
    let x = u_input.a;
    s_output = func_6(true, Struct_1(all(global2.xy) && all(vec3<bool>(global2.x, false, false)), global3.x >= 1u), func_5(vec3<bool>(!(global4[_wgslsmith_index_u32(4294967295u, 19u)] <= global1.b), func_1(u_input.a.x, Struct_2(global1.a, global1.a, global1.c, vec3<u32>(global1.d.x, 1u, 28841u)), Struct_1(global2.x, false)) > 12430u, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2081f, global4[_wgslsmith_index_u32(4294967295u, 19u)]))), -1000f, vec4<u32>(abs(u_input.a.x), select(0u, 4294967295u, true), _wgslsmith_mod_u32(global3.x, _wgslsmith_add_u32(global3.x, 50854u)), min(23807u, 46534u))));
}

