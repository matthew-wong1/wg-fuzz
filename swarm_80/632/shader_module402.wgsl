struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(4294967295u, 20084u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 42694u), vec2<u32>(1u, 89555u), vec2<u32>(4294967295u, 36172u), vec2<u32>(39709u, 1u), vec2<u32>(50747u, 34203u), vec2<u32>(870u, 4294967295u), vec2<u32>(1u, 30470u), vec2<u32>(69360u, 29434u), vec2<u32>(34667u, 4294967295u), vec2<u32>(32023u, 4790u), vec2<u32>(82106u, 105105u), vec2<u32>(1285u, 4294967295u), vec2<u32>(26963u, 1u), vec2<u32>(96560u, 0u), vec2<u32>(43756u, 73364u), vec2<u32>(2824u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(34754u, 0u), vec2<u32>(20207u, 4294967295u), vec2<u32>(2203u, 30744u), vec2<u32>(4294967295u, 26617u), vec2<u32>(76035u, 71181u), vec2<u32>(39132u, 4294967295u), vec2<u32>(12168u, 99766u), vec2<u32>(81137u, 62282u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u));

var<private> global1: array<u32, 26>;

var<private> global2: u32 = 42808u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    global1 = array<u32, 26>();
    global1 = array<u32, 26>();
    var var_0 = -_wgslsmith_mod_vec2_i32((_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(36768i, 1i)) >> (reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) % vec2<u32>(32u))) | vec2<i32>(select(2147483647i, 18244i, true), _wgslsmith_mod_i32(15742i, -442i)), vec2<i32>(1i, 1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(183f, -1890f, any(vec2<bool>(arg_1, arg_1))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(642f - 2100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(573f, 1020f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1594f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1175f - -429f), -364f)))));
    var var_2 = Struct_5(Struct_3(Struct_1(1152f), Struct_1(_wgslsmith_f_op_f32(1556f - _wgslsmith_f_op_f32(var_1.x + -381f)))));
    return _wgslsmith_f_op_f32(281f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_2.a.a.a, arg_1)))) - var_2.a.b.a));
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(290f - _wgslsmith_f_op_f32(-770f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3008f - -798f) * 821f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-434f * -1025f) + _wgslsmith_f_op_f32(round(155f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1046f)))))), _wgslsmith_f_op_f32(-1000f + -541f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), any(vec2<bool>(arg_1, arg_1)))), var_0.x));
    global0 = array<vec2<u32>, 32>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -124f, _wgslsmith_f_op_f32(-var_0.x), 715f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-511f, -789f, var_0.x, -1171f), vec4<f32>(492f, -2127f, 296f, 2157f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_0.x, 506f, -1027f), vec4<f32>(-339f, -1471f, 2471f, -646f))), !(!vec4<bool>(arg_1, arg_1, arg_1, arg_1))))));
    let var_3 = _wgslsmith_f_op_f32(max(162f, var_1));
    return Struct_3(Struct_1(var_3), Struct_1(var_0.x));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_1) -> Struct_1 {
    global1 = array<u32, 26>();
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    var var_0 = global1[_wgslsmith_index_u32(~max(~6122u, 23523u), 26u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(647f))), _wgslsmith_f_op_f32(abs(arg_0.a.a))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, 1386f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(584f, arg_2.a.b.a)))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)));
}

fn func_1() -> u32 {
    let var_0 = func_4(func_2(Struct_4(~abs(4294967295u)), select(true, true, _wgslsmith_f_op_f32(round(-296f)) >= -427f)), _wgslsmith_add_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(-21503i, -42812i), -52169i), -vec2<i32>(i32(-1i) * -93259i, 0i)), Struct_5(func_2(Struct_4(u_input.a.x), -2147483647i > _wgslsmith_clamp_i32(1i, 15625i, 86573i))), Struct_1(-1000f));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 309f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + 726f);
    var var_2 = all(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    var_2 = false;
    let var_3 = Struct_5(Struct_3(var_0, Struct_1(_wgslsmith_f_op_f32(-var_0.a))));
    return firstTrailingBit(firstLeadingBit(_wgslsmith_mult_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)] << (u_input.a.x % 32u), 26u)], u_input.a.x), 26u)], 26u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.x;
    let var_0 = select(global1[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 26u)], ~24212u, all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    global2 = func_1();
    var var_2 = ~firstTrailingBit(select(vec4<i32>(1i, i32(-1i) * -1i, -24928i, 53894i), select(firstLeadingBit(vec4<i32>(19854i, -1i, -17789i, -1i)), vec4<i32>(-10260i, 21925i, 32986i, -2147483647i), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))));
    var_2 = _wgslsmith_div_vec4_i32(~(vec4<i32>(-1314i, 2147483647i, var_2.x, var_2.x) << (~u_input.a % vec4<u32>(32u))), abs(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(var_2.x, 1562i, 2147483647i, var_2.x)), -vec4<i32>(2147483647i, 0i, var_2.x, var_2.x)))) << (vec4<u32>(u_input.a.x, ~4294967295u >> (var_0 % 32u), var_0, ~(4294967295u >> (0u % 32u)) & ~var_0) % vec4<u32>(32u));
    let var_3 = countOneBits(-var_2.xwz);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -30458i, -74533i, var_3.x), vec4<i32>(var_3.x, var_3.x, -2147483647i, -2147483647i)), var_3.x ^ var_2.x, -var_2.x, _wgslsmith_sub_i32(2147483647i, 32944i)), select(firstTrailingBit(vec4<i32>(var_2.x, 2147483647i, -1i, -1i)), vec4<i32>(var_3.x, 8307i, 1i, 1879i) | vec4<i32>(-28410i, 41740i, var_2.x, 57583i), all(vec2<bool>(false, false)))), ~global1[_wgslsmith_index_u32(u_input.a.x, 26u)], vec3<u32>(abs(~var_0), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(17392u, 26u)], abs(u_input.a.x)), 1u), min(~global0[_wgslsmith_index_u32(var_0, 32u)], reverseBits(select(~u_input.a.wz, ~vec2<u32>(global1[_wgslsmith_index_u32(var_0, 26u)], 4294967295u), vec2<bool>(true, true)))), ~(~(u_input.a.xyx ^ u_input.a.ywy)) | u_input.a.wwx);
}

