struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global1: f32 = 2333f;

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 4294967295u, 20205u, 56097u), vec4<u32>(28482u, 10000u, 1u, 4524u), vec4<u32>(0u, 0u, 1u, 83174u), vec4<u32>(44420u, 38374u, 0u, 4294967295u), vec4<u32>(45911u, 23382u, 0u, 1u), vec4<u32>(90345u, 14468u, 39998u, 65224u), vec4<u32>(4294967295u, 64928u, 62740u, 4294967295u), vec4<u32>(46486u, 1u, 1u, 20678u), vec4<u32>(0u, 1u, 49845u, 0u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 1u, 19773u, 4294967295u), vec4<u32>(17539u, 0u, 15521u, 0u), vec4<u32>(46409u, 4294967295u, 3850u, 4294967295u), vec4<u32>(1u, 5217u, 32171u, 1u), vec4<u32>(1u, 4294967295u, 1u, 51687u), vec4<u32>(26950u, 1u, 23842u, 83141u), vec4<u32>(9993u, 17661u, 1u, 0u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(4294967295u, 32944u, 4294967295u, 38960u), vec4<u32>(1u, 41301u, 43221u, 4055u), vec4<u32>(7972u, 18983u, 1u, 4294967295u), vec4<u32>(49145u, 4294967295u, 1u, 13454u), vec4<u32>(0u, 57275u, 8986u, 0u), vec4<u32>(0u, 10371u, 0u, 4294967295u), vec4<u32>(15284u, 61558u, 82885u, 0u), vec4<u32>(42183u, 4294967295u, 1u, 27381u), vec4<u32>(1263u, 48147u, 2935u, 0u), vec4<u32>(41761u, 89091u, 1u, 82825u), vec4<u32>(8516u, 0u, 1u, 0u));

var<private> global3: array<f32, 5> = array<f32, 5>(1000f, 1841f, -1000f, -818f, -103f);

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global1 = -947f;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -719f))))) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(u_input.e.x & u_input.b), 5u)]));
}

fn func_2() -> vec3<f32> {
    global4 = vec3<f32>(664f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.e.x, 5u)], -442f)), 1285f)));
    var var_0 = select(all(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, false, true))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(387f, -222f) * _wgslsmith_f_op_f32(-262f + global4.x)) * _wgslsmith_f_op_f32(max(548f, _wgslsmith_f_op_f32(f32(-1f) * -1344f)))) != _wgslsmith_f_op_f32(f32(-1f) * -303f));
    let var_1 = global0[_wgslsmith_index_u32(4193u, 18u)];
    global3 = array<f32, 5>();
    global1 = 1617f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2247f, _wgslsmith_f_op_f32(714f - _wgslsmith_div_f32(-1000f, global3[_wgslsmith_index_u32(u_input.c, 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -2634f, -1000f) - vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 5u)], -499f, -566f)), vec3<f32>(-102f, global4.x, global3[_wgslsmith_index_u32(u_input.b, 5u)]), !vec3<bool>(false, var_1.a, var_1.a)))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.x, countOneBits(24083u), max(0u >> (arg_2.a % 32u), firstLeadingBit(30244u))), vec3<u32>(_wgslsmith_add_u32(arg_2.a, ~1u), arg_3.x, 0u));
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(func_2()));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-min(vec3<i32>(0i, -26727i, 0i), vec3<i32>(3421i, 31967i, 42917i)), ~abs(vec3<i32>(25248i, -52487i, -1i))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 34408i, 3271i, 2662i) >> (global2[_wgslsmith_index_u32(1u, 29u)] % vec4<u32>(32u))), ~(i32(-1i) * -1i))), 1i);
    let var_2 = !any(select(!arg_0.zz, select(arg_0.yx, !vec2<bool>(arg_0.x, false), arg_0.x), !vec2<bool>(false, arg_0.x)));
    let var_3 = false;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true)), true, u_input.a == (u_input.d << (1u % 32u))), _wgslsmith_f_op_vec2_f32(-global4.yz), Struct_2(_wgslsmith_clamp_u32(~(~u_input.d), 1u, 20493u)), u_input.e.yw);
    global2 = array<vec4<u32>, 29>();
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, 1i), select(vec2<i32>(~7702i, -17567i), select(vec2<i32>(-1i, 2147483647i), select(vec2<i32>(-52966i, 26644i), vec2<i32>(1160i, -1i), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<i32>(_wgslsmith_mult_i32(-4415i, -(i32(-1i) * -1i)), -2147483647i));
    global0 = array<Struct_1, 18>();
    var var_2 = !(!select(true, select(false, true, true), var_1.x < 0i)) | true;
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 12178u), u_input.e.xx, vec2<u32>(u_input.e.x, 0u)), vec2<u32>(u_input.a, u_input.e.x | 1u)) & var_0.a, var_0.a);
    var var_4 = -var_1.x >> (var_0.a % 32u);
    var var_5 = Struct_2(~u_input.c);
    let var_6 = _wgslsmith_div_i32(~var_1.x << (~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 3700u, 1u, var_3), vec4<u32>(80760u, 0u, var_5.a, u_input.e.x)) | 1u) % 32u), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_1.x | var_1.x, 0i << (var_3 % 32u)) >> (0u % 32u), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3, min(firstTrailingBit(abs(1u)), ~(~1u))), var_6, global4.zy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, global4.x, -248f, 1653f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2001f, global4.x, global4.x, -579f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-252f, global3[_wgslsmith_index_u32(var_0.a, 5u)], 1316f, global4.x) * vec4<f32>(1274f, 758f, 141f, -1488f)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-792f)), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(23474u, 5u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_3, 5u)] + -1920f), _wgslsmith_f_op_f32(max(-1465f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.e.x, 5u)] + global4.x))))));
}

