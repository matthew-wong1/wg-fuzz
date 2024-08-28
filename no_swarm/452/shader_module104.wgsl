struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<vec2<bool>, 8>;

var<private> global3: vec4<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> u32 {
    global2 = array<vec2<bool>, 8>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f + _wgslsmith_f_op_f32(select(1f, global0.a.x, true)))), 2076f);
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(global1.c.a, ~vec2<u32>(~12086u, ~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(774f * 752f), var_0.x, _wgslsmith_f_op_f32(var_0.x + -303f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, -545f, -957f)))));
    var var_2 = 23430u;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.a))), vec2<f32>(global0.c.b.x, -241f), vec2<bool>(219f > global1.c.b.x, true))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.b.xx)))), _wgslsmith_f_op_vec2_f32(-global1.a));
    return ~abs(u_input.a.x);
}

fn func_2() -> vec2<u32> {
    let var_0 = max(global1.c.a, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(func_3(u_input.b.wy, 0u, global0.b, Struct_3(global1.a.x, global1.c, -16546i, 42278u)), _wgslsmith_mult_u32(0u, 8739u)), ~(u_input.c >> (global1.c.a.x % 32u)), 0u), 4294967295u));
    global3 = -_wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(~global0.b), firstTrailingBit(max(global0.d, 0i)), global3.x, abs(min(global0.d, 41931i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(global1.b, 47138i, 2147483647i, -8829i), vec4<i32>(-global3.x, ~global1.d, min(global1.d, -24024i), _wgslsmith_mult_i32(u_input.d, u_input.d))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), global1.a.x, _wgslsmith_f_op_f32(-global0.a.x), 256f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, global0.a.x, 355f, global1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, global1.a.x, 1000f, 237f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, -729f, 1426f, -1000f)))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.c.b.x), _wgslsmith_f_op_f32(-global1.a.x), -1016f, _wgslsmith_f_op_f32(global0.a.x - global1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global1.a.x)), global0.c.b.x, _wgslsmith_f_op_f32(abs(global0.c.b.x)), -123f)))));
    var var_2 = Struct_1(~_wgslsmith_mod_vec2_u32((var_0 ^ vec2<u32>(1u, global0.c.a.x)) & vec2<u32>(42253u, var_0.x), vec2<u32>(var_0.x | u_input.a.x, ~u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.b - vec3<f32>(1000f, global0.c.b.x, -1398f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.c.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(974f, var_1.x, var_1.x) * global1.c.b)))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, 711f) - global0.c.b.zx), var_2.b.xx))))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(29994i, global1.b, 25632i, global3.x)), ~vec4<i32>(global1.b, -1i, u_input.b.x, -1i)) | _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 7739i, global1.b, -13779i), u_input.b), u_input.b), _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(~global1.d, ~global0.d, u_input.e, select(0i, global3.x, false)))), Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(45880u, 1u), global1.c.a), vec3<f32>(_wgslsmith_f_op_f32(abs(837f)), 1f, -250f)), global0.b >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a.xzx, select(vec3<u32>(31912u, u_input.c, u_input.a.x), vec3<u32>(u_input.a.x, 3966u, 0u), vec3<bool>(false, false, false))), var_0.x) % 32u), var_0.x);
    return firstTrailingBit(global0.c.a);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_1(func_2(), global1.c.b);
    var var_1 = select(select(vec2<bool>(arg_0, true), select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(global1.e), ~47312u), 8u)], global2[_wgslsmith_index_u32(global0.c.a.x, 8u)], !(1i < global1.d)), global2[_wgslsmith_index_u32(global0.e, 8u)]), !select(select(vec2<bool>(arg_0, false), !vec2<bool>(true, arg_0), global3.x >= u_input.b.x), global2[_wgslsmith_index_u32(countOneBits(70999u), 8u)], any(!global2[_wgslsmith_index_u32(u_input.c, 8u)])), select(vec2<bool>(!all(global2[_wgslsmith_index_u32(global1.c.a.x, 8u)]), arg_0 | arg_0), select(global2[_wgslsmith_index_u32(44299u, 8u)], !global2[_wgslsmith_index_u32(39005u, 8u)], true), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1746f, global0.a.x, 580f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, global1.c.b.x, global1.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 430f, -779f))))));
    var var_3 = vec4<u32>(var_0.a.x, reverseBits(~(~global1.c.a.x) >> (84385u % 32u)), _wgslsmith_add_u32(countOneBits(_wgslsmith_add_u32(68655u, u_input.a.x) << (var_0.a.x % 32u)), 4294967295u), ~_wgslsmith_sub_u32(~(0u | var_0.a.x), abs(0u)));
    return u_input.b;
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(global0.a, global1.a)))), vec2<f32>(global1.a.x, -490f))))), 28143i, global0.c, 2147483647i, 1u);
    global3 = ~vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(min(-1i, 1i), _wgslsmith_mod_i32(24183i, global0.d))), 0i, u_input.d & ((-2147483647i ^ global0.d) << (~38938u % 32u)), -global1.b);
    global2 = array<vec2<bool>, 8>();
    let var_0 = vec4<i32>(~(~_wgslsmith_dot_vec3_i32(-vec3<i32>(global3.x, global3.x, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.d, 970i, -18286i), global3.zww))), -_wgslsmith_mod_i32(u_input.b.x, 1161i), ~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(min(23421i, global3.x), global0.d | arg_0.x), _wgslsmith_sub_vec2_i32(u_input.b.wx, max(vec2<i32>(-1i, -1460i), arg_0.yy))) ^ ~global3.x);
    let var_1 = global1.a;
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) + 1161f)), func_4(_wgslsmith_add_vec4_i32(-u_input.b, func_1(false, global1.a.x, global3.x)) & ~u_input.b), countOneBits(-23747i), _wgslsmith_mult_u32(1u, global0.c.a.x) >> (30035u % 32u));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_4((vec4<i32>(1i, global0.b, 0i, global0.d) | vec4<i32>(-2147483647i, global3.x, global1.d, var_0.c)) ^ vec4<i32>(-9211i, global1.d, global0.d, global0.d)).b.xx * var_0.b.b.zx), u_input.b.x, Struct_1(~min(~global1.c.a, vec2<u32>(global0.c.a.x, 1274u)), var_0.b.b), var_0.c, 5620u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), var_0.b.b.x, -1202f, _wgslsmith_f_op_f32(f32(-1f) * -1449f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a * vec2<f32>(-1410f, var_0.a))));
    var var_3 = u_input.c;
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1908f, -1000f) * vec2<f32>(var_1.x, global1.c.b.x))) * global0.c.b.xx)) * global0.c.b.yy);
    var var_4 = vec2<bool>(!(!(!all(vec3<bool>(true, false, false)))), any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, true), false)));
    var var_5 = global3.wz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, -var_5.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.b.yy)), _wgslsmith_sub_vec3_u32(vec3<u32>(~67572u, firstLeadingBit(4294967295u), 1u), vec3<u32>(~u_input.a.x, _wgslsmith_add_u32(var_0.b.a.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), u_input.a))) << (firstTrailingBit(~min(vec3<u32>(u_input.a.x, global0.c.a.x, 4294967295u), u_input.a.ywz)) % vec3<u32>(32u)));
}

