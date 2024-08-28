struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 4>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = -283f;
    var var_1 = ~vec3<u32>(select(u_input.b, 1u, global2.x), arg_0.x, ~20184u);
    global3 = array<Struct_2, 26>();
    let var_2 = countOneBits(u_input.a.yzx);
    global0 = -941f;
    return all(vec2<bool>(global2.x, false));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 37257u, ~_wgslsmith_add_u32(u_input.b << (u_input.c % 32u), ~15444u)), ~vec3<u32>(firstLeadingBit(0u), _wgslsmith_clamp_u32(29042u, u_input.c, min(u_input.c, 4294967295u)), 86879u));
    var var_1 = arg_2.d;
    var_1 = _wgslsmith_f_op_f32(-arg_2.d);
    let var_2 = -abs(1i);
    global2 = vec2<bool>(true, global2.x);
    return ~(~(u_input.b & ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, var_0.x, 13819u), vec4<u32>(4294967295u, u_input.c, 0u, u_input.b))));
}

fn func_5(arg_0: u32, arg_1: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1200f);
    let var_1 = ~(~firstLeadingBit(vec3<u32>(u_input.c, 0u, 33047u))) | vec3<u32>(countOneBits(max(u_input.b, _wgslsmith_add_u32(18989u, arg_0))), 0u, _wgslsmith_mult_u32(0u, 16602u >> (u_input.c % 32u)) & ~u_input.b);
    let var_2 = countOneBits(_wgslsmith_sub_vec2_i32(u_input.d.zw, u_input.d.ww >> (var_1.zy % vec2<u32>(32u))) & u_input.a.zz);
    let var_3 = !((abs(-1i) < _wgslsmith_sub_i32(var_2.x, -34717i)) | false);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -781f);
    return vec2<bool>(any(global1[_wgslsmith_index_u32(select(abs(func_4(false, u_input.a, Struct_3(u_input.d.xz, -1661f, -43552i, 1000f, vec2<f32>(496f, 210f)))), arg_1, false), 4u)]), var_3);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    global2 = select(select(func_5(func_4(func_3(vec4<u32>(45947u, 45262u, u_input.c, u_input.b)), vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x) & u_input.d, Struct_3(vec2<i32>(-12645i, u_input.d.x), 1078f, u_input.a.x, 826f, vec2<f32>(780f, 149f))), u_input.b), !(!(!global1[_wgslsmith_index_u32(u_input.b, 4u)])), all(!select(global1[_wgslsmith_index_u32(4685u, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)], global2.x))), select(global1[_wgslsmith_index_u32(u_input.b, 4u)], !(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c, 504u, 21431u), vec4<u32>(u_input.b, 75231u, u_input.c, 72301u)), 4u)]), func_5(4294967295u, ~(~3453u)).x), true);
    return global3[_wgslsmith_index_u32(58338u, 26u)];
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = countOneBits((~u_input.a.x >> (31323u % 32u)) ^ -21641i);
    var var_1 = arg_1.x;
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_div_f32(_wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(arg_1.x + -931f)), _wgslsmith_f_op_f32(-arg_2.a)));
    global1 = array<vec2<bool>, 4>();
    return Struct_3(countOneBits(abs(~(u_input.a.yy >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(f32(-1f) * -226f), -2147483647i, 267f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-914f, 1000f))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, ~u_input.c), firstLeadingBit(57486u ^ u_input.b), ~u_input.b ^ ~u_input.b) >> (u_input.c % 32u), 20928u, 1u);
    let var_1 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, arg_0) * vec2<f32>(-562f, _wgslsmith_f_op_f32(1000f * arg_0)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(1158f * -313f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0)), arg_0, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + _wgslsmith_div_f32(arg_0, -236f))))), func_2(-abs(u_input.a), true & global2.x));
    let var_2 = vec3<bool>(!global2.x, global2.x, !any(!select(vec3<bool>(false, false, global2.x), vec3<bool>(true, global2.x, true), true)));
    global2 = vec2<bool>(true, all(select(select(vec3<bool>(true, true, true), var_2, !var_2), vec3<bool>(all(var_2), global2.x, var_2.x), !var_2)));
    let var_3 = var_1;
    return -1i != -min(var_1.a.x, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(select(_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(u_input.c, u_input.b)), vec2<u32>(~u_input.c, select(58321u, u_input.c, global2.x)), countOneBits(~vec2<u32>(u_input.c, 1u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(68993u, 0u), vec2<u32>(u_input.b, u_input.c))), !(!(!global1[_wgslsmith_index_u32(75844u, 4u)]))));
    let var_1 = _wgslsmith_f_op_f32(181f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 297f))))));
    let var_2 = all(vec2<bool>(any(!(!global1[_wgslsmith_index_u32(u_input.b, 4u)])), func_1(1399f)));
    var var_3 = func_6(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -734f)), vec4<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(trunc(var_1))), -1614f, var_1, -1000f), func_2(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, -17154i, u_input.a.x), u_input.a), ~vec4<i32>(57352i, u_input.d.x, u_input.d.x, -1i)), -_wgslsmith_dot_vec2_i32(u_input.d.xw, vec2<i32>(-50147i, 50472i)), ~19307i, 1i), func_1(383f)));
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, -41942i, u_input.d.x, -2147483647i), ~u_input.a), u_input.a.x, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, max(var_3.a.x, u_input.a.x), 1i) ^ select(vec3<i32>(var_3.a.x, u_input.d.x, 1i), _wgslsmith_div_vec3_i32(u_input.a.wzx, vec3<i32>(33861i, u_input.a.x, var_3.c)), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, var_2), vec3<bool>(false, false, false))), abs(firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.a.yxz, vec3<i32>(-2147483647i, u_input.d.x, -20918i))))));
    let var_5 = Struct_2(-129f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

