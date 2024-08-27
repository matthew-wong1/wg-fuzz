struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: f32 = 326f;

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 62553u, 1u), vec3<u32>(0u, 1u, 48675u), vec3<u32>(24403u, 0u, 4294967295u), vec3<u32>(52364u, 20093u, 1u), vec3<u32>(4820u, 2688u, 1u), vec3<u32>(0u, 35898u, 4294967295u), vec3<u32>(21104u, 50485u, 4294967295u), vec3<u32>(0u, 0u, 53074u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 41805u, 0u));

var<private> global3: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-1484f, 1000f, 1287f, 724f), vec4<f32>(-435f, -232f, 438f, -714f), vec4<f32>(1823f, -896f, 331f, -1345f), vec4<f32>(821f, 1791f, -355f, 944f), vec4<f32>(1000f, -435f, -1418f, -455f), vec4<f32>(594f, 1508f, -594f, -478f), vec4<f32>(102f, 1439f, -320f, -288f), vec4<f32>(-2244f, 780f, -411f, 962f), vec4<f32>(754f, 255f, -936f, 158f), vec4<f32>(-480f, 390f, -1694f, -1923f), vec4<f32>(-2296f, -781f, -2039f, 2291f), vec4<f32>(-569f, 994f, -598f, 1005f), vec4<f32>(-366f, 261f, 632f, 1000f), vec4<f32>(1474f, 839f, -643f, -2083f), vec4<f32>(1189f, -1483f, 544f, 961f), vec4<f32>(-667f, -2956f, 567f, 1000f), vec4<f32>(-832f, -1048f, -444f, -738f), vec4<f32>(405f, 1564f, 246f, 181f), vec4<f32>(-1218f, -1493f, 948f, -1259f), vec4<f32>(-1000f, -2149f, 766f, 1005f), vec4<f32>(725f, 279f, -1926f, 1000f), vec4<f32>(-488f, -886f, 2391f, -1000f));

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec2<u32> {
    let var_0 = reverseBits(_wgslsmith_sub_vec3_i32(u_input.a.xyz, -vec3<i32>(6690i | arg_0.x, select(arg_0.x, u_input.a.x, false), 42583i)));
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(1u, 1u, u_input.c, 19357u)), firstLeadingBit(~select(vec4<u32>(2960u, u_input.c, 4294967295u, 4294967295u), vec4<u32>(4294967295u, u_input.e, 46721u, u_input.c), vec4<bool>(true, true, true, true)))));
    global4 = array<Struct_1, 26>();
    global0 = array<Struct_1, 7>();
    let var_2 = global3[_wgslsmith_index_u32(countOneBits(var_1.x), 22u)];
    return ~(~firstLeadingBit(vec2<u32>(0u, 1u)) << (_wgslsmith_mod_vec2_u32(~(var_1.wz >> (vec2<u32>(16465u, 4294967295u) % vec2<u32>(32u))), var_1.zw) % vec2<u32>(32u)));
}

fn func_2() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~9003u), 10u)];
    var var_1 = countOneBits(32467u);
    let var_2 = vec2<bool>(true, true);
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~abs(~var_0.x), ~1u), func_3(firstTrailingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, -13878i), reverseBits(u_input.b.zz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, -687f, 1000f, -1346f)), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(19641u, 22u)] - global3[_wgslsmith_index_u32(45593u, 22u)]))) * global3[_wgslsmith_index_u32(var_0.x, 22u)]))), 26u)];
    var_0 = ~(_wgslsmith_mult_vec3_u32(~global2[_wgslsmith_index_u32(35695u, 10u)] >> (reverseBits(vec3<u32>(var_0.x, 4294967295u, 51598u)) % vec3<u32>(32u)), vec3<u32>(func_3(vec2<i32>(u_input.a.x, u_input.b.x), global3[_wgslsmith_index_u32(var_0.x, 22u)]).x, 10432u, var_3.a)) & vec3<u32>(1u, ~(var_0.x & 7086u), u_input.e >> (firstTrailingBit(var_3.a) % 32u)));
    return _wgslsmith_dot_vec2_i32(~max(u_input.b.yz << (vec2<u32>(var_3.a, u_input.e) % vec2<u32>(32u)), vec2<i32>(2147483647i, u_input.d)), u_input.a.zw) < -u_input.a.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> bool {
    global4 = array<Struct_1, 26>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f));
    let var_0 = vec2<bool>(func_2() | !select(all(vec4<bool>(true, false, false, false)), true, any(vec2<bool>(true, true))), func_2());
    global2 = array<vec3<u32>, 10>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_1(~(_wgslsmith_clamp_u32(abs(1u), firstLeadingBit(1u), abs(0u)) & ~4294967295u), arg_1.b, vec2<bool>(true, true), !arg_1.d);
    let var_1 = !(!select(vec4<bool>(all(vec3<bool>(false, arg_0, arg_0)), all(vec2<bool>(false, var_0.d)), true, arg_1.c.x), vec4<bool>(true, any(vec3<bool>(false, var_0.c.x, arg_0)), !arg_0, true), any(!vec4<bool>(false, arg_0, true, arg_1.d))));
    var var_2 = var_0.a | 27666u;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.a), vec2<u32>(51309u, 4294967295u)), ~vec2<u32>(30834u, arg_2)), vec2<u32>(_wgslsmith_mult_u32(var_0.a, arg_2), ~4294967295u), reverseBits(~vec2<u32>(4948u, 64168u))), select(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(24756u, 4294967295u), vec2<u32>(15130u, 0u))), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(arg_1.a, u_input.e)), vec2<u32>(96173u, 66946u)), !vec2<bool>(arg_1.c.x, false))), _wgslsmith_div_f32(var_0.b, 1288f), !select(!(!vec2<bool>(arg_0, false)), vec2<bool>(select(false, var_1.x, false), arg_1.c.x), select(0u != arg_1.a, true, !var_1.x)), select(!(_wgslsmith_f_op_f32(max(var_0.b, 1541f)) != _wgslsmith_div_f32(var_0.b, -486f)), arg_1.c.x, var_0.d));
    var var_4 = any(vec4<bool>(all(vec2<bool>(17361i > u_input.b.x, !arg_0)), false, true, arg_1.c.x));
    return select(select(vec3<bool>(true, var_0.d, all(!var_0.c)), !select(vec3<bool>(true, var_1.x, true), !var_1.yxx, var_1.x), arg_0), var_1.zyy, !(!vec3<bool>(true, var_3.b != arg_1.b, all(vec4<bool>(false, var_0.d, arg_0, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 10>();
    let var_0 = select(func_4(func_1(~vec2<i32>(u_input.b.x, u_input.b.x), u_input.e), Struct_1(0u, -238f, !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 913u, 37986u), ~vec3<u32>(1u, u_input.e, u_input.c)))), vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false)) || true), false);
    let var_1 = 2147483647i;
    var var_2 = var_1;
    var var_3 = !(!func_4(all(vec4<bool>(true, false, var_0.x, false)), Struct_1(_wgslsmith_div_u32(u_input.e, u_input.e), -294f, func_4(true, global0[_wgslsmith_index_u32(4175u, 7u)], 20564u).zz, func_4(var_0.x, global0[_wgslsmith_index_u32(39836u, 7u)], u_input.e).x), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(countOneBits(vec4<u32>(u_input.c, 2978u, 52009u, u_input.c)) ^ ~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(33375u, 4294967295u, 1u, u_input.c)), vec4<u32>(10207u, u_input.c, u_input.c, ~u_input.c))), vec2<i32>(u_input.a.x, 9045i));
}

