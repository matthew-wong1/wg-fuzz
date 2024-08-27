struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(-10893i, 2147483647i, 28931i), vec3<i32>(-55453i, -45182i, 21593i), vec3<i32>(-1i, 72235i, -34874i), vec3<i32>(0i, -1i, -1024i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(23913i, -25964i, 0i), vec3<i32>(i32(-2147483648), -17174i, 41860i), vec3<i32>(i32(-2147483648), -12351i, 0i), vec3<i32>(48523i, -42612i, 0i), vec3<i32>(0i, -31116i, i32(-2147483648)), vec3<i32>(20576i, -16920i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 39816i), vec3<i32>(-1i, 15608i, 0i), vec3<i32>(-1i, -17888i, -44439i), vec3<i32>(-5014i, 659i, 1i), vec3<i32>(6945i, -1i, -37436i), vec3<i32>(0i, 2147483647i, 17196i), vec3<i32>(45629i, -1i, 0i), vec3<i32>(35151i, 38985i, -1i), vec3<i32>(-47842i, -1i, -21454i), vec3<i32>(0i, 1i, 0i), vec3<i32>(0i, i32(-2147483648), 29031i), vec3<i32>(10470i, 0i, 0i), vec3<i32>(-6472i, 2147483647i, -52134i), vec3<i32>(-39243i, 4095i, 17563i), vec3<i32>(-1i, i32(-2147483648), 1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    let var_0 = arg_0;
    global1 = array<vec3<i32>, 27>();
    let var_1 = false;
    var var_2 = Struct_2(-min(vec2<i32>(0i, ~(-48914i)), vec2<i32>(~arg_1.a.x, i32(-1i) * -52127i)));
    let var_3 = countOneBits(vec4<u32>(~29546u, abs(arg_0.x), 1u, 1u >> (1u % 32u)));
    return 33758u;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, arg_0.x & 4294967295u, 46681u), arg_0);
    global1 = array<vec3<i32>, 27>();
    let var_1 = Struct_1(func_3(vec3<u32>(_wgslsmith_mult_u32(44836u, 88957u), 37374u, _wgslsmith_mod_u32(~arg_0.x, var_0.x)), Struct_2(vec2<i32>(6437i, u_input.a >> (11942u % 32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.x, -1521f)))))), i32(-1i) * -11990i), vec4<u32>(~max(_wgslsmith_mult_u32(arg_0.x, 1547u), select(42464u, arg_0.x, true)), var_0.x, ~(~arg_0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, var_0.x), var_0)), ~(~(vec2<u32>(arg_0.x, 0u) ^ vec2<u32>(var_0.x, var_0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1356f), _wgslsmith_f_op_f32(floor(arg_2.x))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -800f), arg_2.x, arg_2.x)))));
    global1 = array<vec3<i32>, 27>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(var_1.d.x, arg_2.x, var_1.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, -1000f, arg_2.x) + _wgslsmith_div_vec3_f32(var_1.d, vec3<f32>(1000f, arg_2.x, 1923f))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), vec3<bool>(false, true, false))));
    return _wgslsmith_f_op_f32(round(2323f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.x, -776f, false)) * -791f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1374f)), arg_2.x)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = u_input.b;
    global0 = ~(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(48425u, 1u, 39120u, 82689u), vec4<u32>(51651u, 4294967295u, 1u, 1u)), 4294967295u, func_2(vec3<u32>(0u, 4294967295u, 4294967295u), 2147483647i, vec2<f32>(arg_1, arg_1)))) & ~_wgslsmith_sub_u32(4258u, countOneBits(4294967295u));
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_1(arg_3, _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(22109u, 39335u), 56623u, arg_3, ~(~4294967295u)), abs(abs(~vec4<u32>(arg_3, 1u, 1u, arg_3)))), _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(arg_3, arg_3)), vec2<u32>(arg_3, firstTrailingBit(arg_3))) << (vec2<u32>(~arg_3, arg_3) % vec2<u32>(32u)), arg_2.zwy);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(max(select(var_0.b.x, arg_3, true), arg_3), 1u, _wgslsmith_mod_u32(arg_3, firstTrailingBit(4294967295u)), var_0.c.x), _wgslsmith_add_vec4_u32(select(var_0.b, max(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, arg_3, var_0.c.x, var_0.a), vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, arg_3)), var_0.b), true), ~var_0.b));
    global1 = array<vec3<i32>, 27>();
    return var_0.b.wyy;
}

fn func_5(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = ~109940u;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 817f, 218f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(397f, -1442f, 114f), vec3<f32>(-1000f, -150f, 853f), true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-985f, var_0.x, var_0.x) - vec3<f32>(-943f, -1677f, var_0.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-134f, -1000f, var_0.x)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-112f, -1142f, -1316f), vec3<f32>(var_0.x, 1003f, -1768f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), -1259f, -2743f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-895f, var_0.x, -476f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1040f + _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -765f, true))), _wgslsmith_f_op_f32(floor(154f)))), false));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(36183u, firstTrailingBit(arg_0.x) >> (~1u % 32u)), arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(95046u, 26860u, arg_0.x, arg_0.x)), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 6441u, 1u), vec4<u32>(13360u, 0u, arg_0.x, 1u), vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x))), abs(_wgslsmith_sub_u32(arg_0.x, ~arg_0.x)), 44168u & arg_0.x));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(487f)), _wgslsmith_f_op_f32(-var_0.x)))), ~vec2<u32>(_wgslsmith_div_u32(arg_0.x, 72394u | arg_0.x), ~arg_0.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b, 3848i), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-27582i, u_input.a), vec2<i32>(u_input.b, u_input.b)))), -vec2<i32>(u_input.b << (7346u % 32u), -u_input.a), ~_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, -1i), vec2<i32>(20791i, u_input.a), vec2<bool>(true, true)), -vec2<i32>(u_input.a, u_input.b))), _wgslsmith_div_u32(arg_0.x, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 27>();
    let var_0 = -1020f;
    global1 = array<vec3<i32>, 27>();
    global1 = array<vec3<i32>, 27>();
    global0 = 1u;
    global0 = 0u;
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~1u, abs(select(6807u, 24989u, true)), firstLeadingBit(1u)), vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = vec4<u32>(~59694u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(32609u, 0u), vec2<u32>(55132u, 0u)) | 1u), 1u, 1u) << (vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 21648u, 1u, 1u), vec4<u32>(1u, 7477u, 77684u, 47412u))), _wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_add_u32(firstTrailingBit(0u), 1u), 1u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = func_5(~func_4(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.b, -15840i)), -727f, -18062i, Struct_2(vec2<i32>(u_input.b, 1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 27813i, u_input.a) & vec4<i32>(-30813i, -4501i, -2147483647i, 21827i), vec4<i32>(9944i, 7682i, 2147483647i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(70283i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 9448i, u_input.b, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, var_0, 785f, 453f))), 1u));
}

