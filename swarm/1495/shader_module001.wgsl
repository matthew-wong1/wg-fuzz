struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(21861i, 2147483647i), vec2<i32>(-582i, 1i), vec2<i32>(-47169i, -18349i), vec2<i32>(61465i, -49889i), vec2<i32>(22753i, 3128i), vec2<i32>(7625i, 0i), vec2<i32>(8800i, 41167i), vec2<i32>(0i, 0i), vec2<i32>(51281i, 47280i));

var<private> global1: vec3<i32>;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_3(vec3<u32>(1u, 2439u, 4294967295u)), -1i, 1u, vec3<u32>(25350u, 32904u, 10271u)), Struct_4(Struct_3(vec3<u32>(31070u, 25090u, 25740u)), 0i, 23010u, vec3<u32>(0u, 68315u, 0u)), Struct_4(Struct_3(vec3<u32>(1u, 3207u, 45962u)), i32(-2147483648), 4294967295u, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(Struct_3(vec3<u32>(0u, 46742u, 31175u)), 0i, 16349u, vec3<u32>(28113u, 78469u, 1u)), Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 80694u)), -35823i, 33291u, vec3<u32>(1u, 44218u, 43233u)), Struct_4(Struct_3(vec3<u32>(1u, 4294967295u, 0u)), 30114i, 4294967295u, vec3<u32>(1u, 0u, 59916u)), Struct_4(Struct_3(vec3<u32>(8707u, 73569u, 32454u)), -16229i, 0u, vec3<u32>(0u, 1u, 101610u)), Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 74500u)), 2147483647i, 0u, vec3<u32>(61524u, 0u, 24392u)), Struct_4(Struct_3(vec3<u32>(9096u, 0u, 0u)), i32(-2147483648), 0u, vec3<u32>(58377u, 26275u, 47138u)), Struct_4(Struct_3(vec3<u32>(0u, 50115u, 4294967295u)), -21770i, 42621u, vec3<u32>(9549u, 19563u, 1u)), Struct_4(Struct_3(vec3<u32>(57663u, 1u, 67993u)), -17826i, 26595u, vec3<u32>(39364u, 30411u, 0u)), Struct_4(Struct_3(vec3<u32>(4294967295u, 27951u, 1u)), -62437i, 0u, vec3<u32>(4294967295u, 0u, 1u)), Struct_4(Struct_3(vec3<u32>(0u, 1u, 4294967295u)), -1i, 2411u, vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_4(Struct_3(vec3<u32>(88472u, 5239u, 32603u)), -23495i, 41986u, vec3<u32>(2031u, 8569u, 40659u)));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(vec3<u32>(~_wgslsmith_clamp_u32(~1u, u_input.a.x << (93783u % 32u), 1u), 55546u, _wgslsmith_mult_u32(global4.a.c << (1u % 32u), global4.a.c)));
    let var_1 = _wgslsmith_f_op_f32(round(global2.x));
    global1 = u_input.b.zyz;
    let var_2 = var_0;
    var var_3 = global4.a;
    return Struct_2(Struct_1(631f, _wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(global1.x, -34760i)), 20500u, global4.a.d && all(vec4<bool>(global4.a.d, global4.a.d, global4.a.d, false))));
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = Struct_3(u_input.e.wwz);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f))) + _wgslsmith_f_op_f32(f32(-1f) * -2016f)));
    let var_2 = func_2();
    var var_3 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2540f, 1332f)))) + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.a.a)), _wgslsmith_f_op_f32(-global2.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global4.a.a)), var_2.a.a)), -1458f), global4.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(global2.x)), -1179f))), var_0.a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global2.yx, vec2<f32>(1000f, global2.x), vec2<bool>(var_2.a.d, var_2.a.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -834f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1460f, global4.a.a)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -701f), vec2<f32>(global4.a.a, 759f)), true))))));
    let var_4 = firstTrailingBit(62267u) | (u_input.a.x >> (~var_0.a.x % 32u));
    return firstLeadingBit(_wgslsmith_div_u32(global4.a.c, ~(~var_3.b.c)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<i32>) -> StorageBuffer {
    global3 = array<Struct_4, 14>();
    var var_0 = select(max(~u_input.e.wx, _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, 8535u)), u_input.e.zx, min(u_input.e.xz, vec2<u32>(u_input.e.x, u_input.a.x))) | countOneBits(max(u_input.e.yy, u_input.a))), vec2<u32>(~u_input.a.x, 1u), !global4.a.d);
    global4 = func_2();
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.wxz + _wgslsmith_f_op_vec3_f32(-global2.xww)))))), Struct_1(global2.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global4.a.c, func_3(global4.a.a, -17325i)), 9u)] & arg_2.wx, _wgslsmith_sub_u32(~40923u, 1u), any(arg_0)), global2.xxy, u_input.a.x, global2.xy);
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(~u_input.b, -u_input.b), abs(u_input.b));
    return StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global4.a.a, _wgslsmith_f_op_f32(-557f - _wgslsmith_f_op_f32(max(449f, global2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-359f, _wgslsmith_f_op_f32(var_1.a.x - global4.a.a)), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(-global4.a.a), var_1.c.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<bool>(!(!global4.a.d), select(any(vec4<bool>(false, false, true, true)) || false, true, !(global4.a.d & global4.a.d)), global4.a.d, global4.a.d), _wgslsmith_dot_vec2_i32(vec2<i32>(~(~global1.x), 1i), _wgslsmith_div_vec2_i32(u_input.b.xz, global0[_wgslsmith_index_u32(max(u_input.d, global4.a.c), 9u)])), firstLeadingBit(u_input.b));
}

