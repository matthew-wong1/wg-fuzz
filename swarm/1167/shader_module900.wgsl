struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: u32 = 48297u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = Struct_3(!(!(arg_0.b & arg_0.b) || !select(arg_0.b, arg_3.a, arg_0.b)), _wgslsmith_f_op_f32(arg_3.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(f32(-1f) * -447f))));
    let var_1 = vec3<bool>(var_0.a, arg_0.b, all(select(vec4<bool>(-447f < arg_2, arg_0.b, arg_3.a, arg_3.a && arg_3.a), select(select(vec4<bool>(arg_3.a, true, true, false), vec4<bool>(false, arg_0.b, arg_0.b, true), vec4<bool>(var_0.a, var_0.a, arg_0.b, true)), select(vec4<bool>(true, arg_3.a, false, true), vec4<bool>(arg_3.a, true, true, arg_3.a), true), global0.x < 352f), select(vec4<bool>(arg_3.a, false, true, false), select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(false, true, arg_3.a, var_0.a), arg_0.b), true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2008f, global0.x, arg_2, global0.x), vec4<f32>(arg_3.b, arg_3.b, arg_3.b, global0.x), vec4<bool>(arg_3.a, var_1.x, true, true)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(142f, global0.x, 308f, 128f), vec4<f32>(var_0.b, -1000f, var_0.b, -714f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-968f * arg_2), arg_2, 1000f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, global0.x, arg_3.b, arg_2)))))));
    var var_3 = arg_1;
    let var_4 = vec2<bool>(arg_0.b, false);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + arg_3.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_div_f32(arg_2, 707f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.xw)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1081f, arg_3.b), vec2<f32>(-792f, arg_3.b), var_1.yz))))));
}

fn func_2() -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, global0.x), vec2<f32>(global0.x, 1571f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1101f)) + vec2<f32>(global0.x, 647f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -2225f) + vec2<f32>(global0.x, global0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1418f, global0.x) + _wgslsmith_div_vec2_f32(vec2<f32>(1398f, global0.x), vec2<f32>(-1292f, 204f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1560f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.c, true, 57109u, u_input.e.yz, vec3<i32>(u_input.c, -1i, -1i)), u_input.d, -537f, Struct_3(true, -153f))), true)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1934f, -341f))))))));
    let var_0 = vec2<bool>(all(select(vec4<bool>(u_input.d.x == 27162u, true, true, false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))))), !(-2147483647i <= _wgslsmith_dot_vec2_i32(u_input.e.xz, u_input.e.xx)));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_sub_i32(~firstLeadingBit(-16086i), -select(u_input.c, -1i, false)), firstTrailingBit(2147483647i)), _wgslsmith_div_vec3_i32(u_input.e, ~(~u_input.e & ~u_input.e)));
    global2 = select(u_input.d.x, abs(51861u), true);
    let var_2 = 39284i & u_input.b;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 233f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(1208f, global0.x)))))))));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1079f, global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))));
    var var_0 = u_input.c;
    let var_1 = -_wgslsmith_mod_i32(u_input.e.x, ~u_input.c) >> (u_input.a % 32u);
    var var_2 = abs(select(~_wgslsmith_add_vec2_i32(u_input.e.yx, vec2<i32>(u_input.b, var_1)), -(~u_input.e.xy), true)) ^ countOneBits(abs(vec2<i32>(i32(-1i) * -39928i, u_input.e.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1656f));
    return _wgslsmith_clamp_u32(0u, u_input.a, u_input.d.x) != _wgslsmith_clamp_u32(~u_input.d.x, ~(~(~20011u)), _wgslsmith_clamp_u32(23140u, ~117173u, _wgslsmith_mult_u32(~u_input.d.x, 35572u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec2<bool>(false, false), vec2<bool>(true, true), func_1()), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.e.x < _wgslsmith_mult_i32(countOneBits(u_input.b), u_input.e.x));
    global2 = u_input.a;
    let var_1 = _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    let var_3 = 32850u;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(min(-179f, _wgslsmith_f_op_f32(global0.x - -367f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f) * _wgslsmith_f_op_f32(f32(-1f) * -611f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_2.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -447f))))));
    global2 = _wgslsmith_clamp_u32(54554u, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a >> (var_3 % 32u), var_1, _wgslsmith_sub_u32(var_3, 0u)), u_input.d.xxz)), select(50507u, _wgslsmith_div_u32(12665u, u_input.a), !var_0.x));
    let var_4 = Struct_1(-1i, var_0.x, ~min(var_1, _wgslsmith_add_u32(abs(47535u), var_3 >> (var_3 % 32u))), reverseBits(vec2<i32>(2147483647i, u_input.c)), vec3<i32>(_wgslsmith_mult_i32(reverseBits(1i), u_input.c), firstLeadingBit(firstLeadingBit(u_input.e.x)), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(((u_input.e | ~vec3<i32>(2147483647i, u_input.e.x, 11981i)) | vec3<i32>(var_4.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(15515i, -26478i, var_4.a), vec3<i32>(u_input.e.x, var_4.d.x, u_input.c)), ~2378i)) ^ (-firstLeadingBit(u_input.e) << (vec3<u32>(var_4.c & 0u, var_1, var_1) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2221f, var_2.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1429f, var_2.x), vec2<f32>(var_2.x, global0.x)))) - vec2<f32>(_wgslsmith_div_f32(1000f, 130f), _wgslsmith_f_op_f32(abs(global0.x))))));
}

