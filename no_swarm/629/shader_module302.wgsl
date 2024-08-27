struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32> = vec3<f32>(257f, 406f, 450f);

var<private> global2: vec3<f32> = vec3<f32>(873f, 1000f, 546f);

var<private> global3: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 121749u, 54270u), vec3<u32>(56752u, 0u, 19005u), vec3<u32>(0u, 49647u, 1u), vec3<u32>(1u, 14292u, 1117u), vec3<u32>(0u, 18461u, 86354u), vec3<u32>(23500u, 6808u, 35123u), vec3<u32>(1u, 74854u, 19343u), vec3<u32>(0u, 7272u, 0u), vec3<u32>(10828u, 1u, 11075u), vec3<u32>(0u, 79752u, 0u), vec3<u32>(64916u, 1u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 35048u, 44842u), vec3<u32>(43373u, 0u, 1u), vec3<u32>(0u, 0u, 19019u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 49142u, 23114u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(41030u, 1u, 1u), vec3<u32>(96783u, 1u, 30325u), vec3<u32>(10016u, 1u, 43063u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(2711u, 24934u), countOneBits(vec2<u32>(u_input.c.x, 4294967295u))), u_input.c.x, 28972u, global0.c), vec4<u32>(_wgslsmith_mod_u32(select(0u, 0u, false) ^ abs(global0.d.a.x), reverseBits(25899u)), _wgslsmith_sub_u32(firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(0u, ~0u, _wgslsmith_add_u32(2991u, arg_2.b.x))), global0.d.c.x, 1u));
    global3 = array<vec3<u32>, 21>();
    global3 = array<vec3<u32>, 21>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)), vec3<u32>(~(_wgslsmith_mod_u32(global0.b.c.x, 46073u) | 88979u), var_0.x, 1u), select(select(arg_0.c, vec4<i32>(arg_0.c.x, 1i, arg_1.c.x, 10282i), vec4<bool>(true, false, true, false)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_0.c.x), arg_2.c, arg_2.c), -(~arg_2.c), any(vec2<bool>(false, true))) | ~(-vec4<i32>(12113i, arg_2.c.x, -9440i, 14022i)));
    return _wgslsmith_mod_i32(-24155i | arg_0.c.x, 2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> vec2<i32> {
    global2 = arg_2.d.yxz;
    let var_0 = Struct_1(~(firstTrailingBit(vec3<u32>(arg_2.a.x, 36733u, 0u)) << (~vec3<u32>(0u, 89712u, arg_2.c.x) % vec3<u32>(32u))) >> (vec3<u32>(arg_0.a.x, ~_wgslsmith_dot_vec3_u32(u_input.c.zxy, u_input.c.zww), ~(~global0.d.a.x)) % vec3<u32>(32u)), max(i32(-1i) * -global0.d.b, -abs(arg_2.b)), ~(vec3<u32>(_wgslsmith_div_u32(1u, 1u), u_input.d, 41366u) | max(vec3<u32>(u_input.c.x, arg_0.c.x, arg_1.b.x), ~global0.d.c)), vec4<f32>(global2.x, global1.x, 337f, _wgslsmith_f_op_f32(-arg_0.d.x)), arg_2.e);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global2.x), arg_0, _wgslsmith_sub_u32(arg_2.c.x, 35564u), global0.b, _wgslsmith_f_op_f32(-global2.x));
    let var_2 = all(select(!vec2<bool>(global0.d.e.x, arg_2.e.x), select(var_1.b.e.yz, !(!global0.d.e.xx), vec2<bool>(true, true)), var_0.e.xx));
    global1 = arg_0.d.zzw;
    return ~firstTrailingBit(arg_1.c.wz);
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = ~func_4(global0.d, Struct_3(-673f, global3[_wgslsmith_index_u32(1u, 21u)], vec4<i32>(_wgslsmith_sub_i32(global0.b.b, global0.d.b), _wgslsmith_mult_i32(-14168i, global0.b.b), ~global0.d.b, -44641i)), Struct_1(u_input.c.yzx, _wgslsmith_sub_i32(~(-1i), func_3(Struct_3(217f, global0.d.c, vec4<i32>(-1i, global0.d.b, global0.d.b, global0.b.b)), Struct_3(global0.a, global0.d.a, vec4<i32>(global0.d.b, -23455i, global0.d.b, 10335i)), Struct_3(global1.x, vec3<u32>(u_input.a.x, global0.c, 0u), vec4<i32>(global0.d.b, global0.b.b, global0.b.b, global0.d.b)))), global3[_wgslsmith_index_u32(global0.c, 21u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d.d * vec4<f32>(-1807f, global1.x, global0.a, global1.x)) - vec4<f32>(1037f, 212f, global2.x, arg_1)), global0.b.e));
    var_0 = vec2<i32>(-1i) * -vec2<i32>(~18384i, global0.d.b);
    global3 = array<vec3<u32>, 21>();
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f)), global0.d, ~(~min(u_input.d, u_input.c.x)) ^ ~reverseBits(global0.d.a.x ^ u_input.c.x), Struct_1(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60985u, 4294967295u, global0.d.c.x, 77238u), u_input.c) & 4294967295u, 21u)], global0.d.b, vec3<u32>(u_input.a.x, global0.d.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(global0.b.a.zz, vec2<u32>(4294967295u, global0.d.a.x)) ^ ~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.d.x, global0.d.d.x, arg_1, -443f), vec4<f32>(1172f, arg_1, -504f, 2859f))) + _wgslsmith_f_op_vec4_f32(global0.d.d * global0.b.d))), global0.d.e), -1787f);
    var var_1 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0.x, 0i), -global0.d.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.b, ~1i), vec2<i32>(1i, abs(var_0.x)), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.x, var_0.x), -vec2<i32>(4531i, 2147483647i)))));
    return global0.b.c.x;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_1 {
    global3 = array<vec3<u32>, 21>();
    global3 = array<vec3<u32>, 21>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(global2.x, -1673f)), global0.d, firstLeadingBit(_wgslsmith_add_u32(global0.d.c.x, select(~arg_0, firstLeadingBit(u_input.d), global1.x == global1.x))), global0.b, global0.e);
    var var_1 = global0.d;
    return Struct_1(var_0.d.a, -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d.b, var_1.b, var_1.b, global0.d.b), vec4<i32>(arg_2.x, 2147483647i, global0.b.b, arg_1.x), arg_2), select(arg_2, vec4<i32>(2147483647i, arg_2.x, -4853i, 39015i), vec4<bool>(var_0.b.e.x, var_1.e.x, var_0.b.e.x, global0.d.e.x))), _wgslsmith_clamp_i32(arg_1.x, 24099i << (1u % 32u), -2147483647i)), ~max(select(vec3<u32>(0u, var_0.d.c.x, arg_0), global3[_wgslsmith_index_u32(var_1.a.x, 21u)], true), _wgslsmith_div_vec3_u32(vec3<u32>(16113u, 4294967295u, 0u), var_0.d.a) >> (vec3<u32>(33210u, 37744u, u_input.c.x) % vec3<u32>(32u))), var_1.d, var_1.e);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_3 {
    var var_0 = global1.x;
    global3 = array<vec3<u32>, 21>();
    var var_1 = arg_3;
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(-369f + arg_2.x))) - _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d.x))))), arg_0, 3373u, func_5(_wgslsmith_clamp_u32(arg_0.c.x, ~func_2(arg_0.e.x, 1180f), arg_1.x), -(~vec4<i32>(arg_3, arg_0.b, 1i, 1i) >> (reverseBits(vec4<u32>(1u, global0.d.a.x, u_input.a.x, arg_1.x)) % vec4<u32>(32u))), -vec4<i32>(2147483647i, ~global0.d.b, -1i, firstLeadingBit(18760i))), _wgslsmith_f_op_f32(global1.x - -1227f));
    global3 = array<vec3<u32>, 21>();
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1813f, _wgslsmith_f_op_f32(-global2.x)))), countOneBits(vec3<u32>(~1u, arg_1.x, global0.c)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(max(2147483647i, global0.d.b), 2147483647i, ~28792i), ~(i32(-1i) * -1i)), arg_0.b, countOneBits(_wgslsmith_clamp_i32(-1i, 29208i, arg_3) | -arg_0.b), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    let var_1 = ~firstLeadingBit(select(vec3<u32>(13427u, _wgslsmith_mult_u32(global0.d.c.x, u_input.a.x), global0.d.a.x & 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(14400u, global0.d.c.x, 18805u), u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 124532u, 48108u), global3[_wgslsmith_index_u32(u_input.c.x, 21u)])), !vec3<bool>(global0.d.e.x, false, global0.d.e.x)));
    var var_2 = abs(global0.d.b);
    global1 = _wgslsmith_f_op_vec3_f32(ceil(global0.b.d.xxy));
    var var_3 = func_1(global0.b, ~u_input.c, global0.d.d, global0.b.b);
    var_2 = -var_3.c.x;
    var_3 = Struct_3(global0.b.d.x, _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(var_1.x, global0.d.c.x), ~u_input.a.x, _wgslsmith_div_u32(6726u, ~24838u)), var_1), -firstLeadingBit(-vec4<i32>(global0.b.b, -1i, var_3.c.x, 24032i) | -var_3.c));
    let var_4 = vec4<f32>(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.d.x, -1054f, true)))), -736f, global0.d.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(428f, var_3.a))) * 180f) - _wgslsmith_div_f32(global1.x, 337f)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -838f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 49708i, -(vec2<i32>(1i, global0.b.b) | min(firstLeadingBit(vec2<i32>(global0.d.b, var_3.c.x)), ~vec2<i32>(-2147483647i, 3751i))));
}

