struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(16415u, 120302u), vec2<u32>(8775u, 0u), vec2<u32>(0u, 31108u), vec2<u32>(4294967295u, 0u), vec2<u32>(4166u, 41003u), vec2<u32>(57121u, 4294967295u), vec2<u32>(0u, 2820u), vec2<u32>(72611u, 0u), vec2<u32>(27417u, 0u), vec2<u32>(18400u, 5389u), vec2<u32>(1u, 4294967295u), vec2<u32>(7113u, 19552u), vec2<u32>(4294967295u, 1u), vec2<u32>(45786u, 0u), vec2<u32>(0u, 38385u), vec2<u32>(40762u, 58876u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 6637u), vec2<u32>(0u, 36474u), vec2<u32>(7900u, 5222u), vec2<u32>(59567u, 12939u), vec2<u32>(1u, 1u));

var<private> global3: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-815f, 864f), vec2<f32>(131f, 1974f), vec2<f32>(-1002f, -594f), vec2<f32>(-253f, 558f), vec2<f32>(-632f, 1840f), vec2<f32>(383f, 623f), vec2<f32>(1000f, 943f), vec2<f32>(-319f, -1000f), vec2<f32>(707f, 1035f), vec2<f32>(-206f, 143f), vec2<f32>(-336f, 435f), vec2<f32>(-1788f, -840f), vec2<f32>(-1451f, -583f), vec2<f32>(-978f, 1029f), vec2<f32>(300f, 276f), vec2<f32>(-621f, -1536f), vec2<f32>(-188f, 435f), vec2<f32>(-2252f, -573f), vec2<f32>(-515f, 1392f), vec2<f32>(-139f, -1000f), vec2<f32>(-1132f, -1989f), vec2<f32>(-652f, -1553f), vec2<f32>(637f, -1000f), vec2<f32>(723f, 258f), vec2<f32>(-1447f, -925f), vec2<f32>(668f, 492f), vec2<f32>(-594f, -1267f), vec2<f32>(1000f, 122f), vec2<f32>(-1131f, 589f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<i32> {
    global2 = array<vec2<u32>, 25>();
    var var_0 = -(~vec2<i32>(firstTrailingBit(2147483647i), -3219i) >> (global2[_wgslsmith_index_u32(reverseBits(~0u), 25u)] % vec2<u32>(32u)));
    global0 = array<Struct_1, 29>();
    let var_1 = u_input.a;
    var var_2 = -vec3<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_0.x, 2147483647i, var_0.x)), vec3<i32>(-1i) * -vec3<i32>(0i, -1i, var_0.x)), _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.x, var_0.x, var_0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 3027i, var_0.x), vec3<i32>(var_0.x, var_0.x, -15438i), vec3<i32>(-2147483647i, var_0.x, 56524i)))), -reverseBits(-var_0.x));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(~min(var_2.x, var_2.x), var_2.x), -(~(~var_2.x)), _wgslsmith_clamp_i32(var_2.x, ~var_2.x, ~(15355i | var_0.x))), vec4<i32>(var_0.x, -(var_2.x << (~u_input.a.x % 32u)), 74078i, ~var_0.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> vec4<i32> {
    global2 = array<vec2<u32>, 25>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.d.c, 52506u), arg_2.d.c);
    var var_1 = (u_input.a.x & (1u | u_input.a.x)) | (u_input.a.x >> (arg_1.d.c % 32u));
    var_0 = reverseBits(arg_2.e << (~_wgslsmith_div_u32(~17201u, u_input.a.x) % 32u));
    var var_2 = all(!select(!(!vec3<bool>(arg_0.c.x, arg_1.c.x, arg_1.c.x)), vec3<bool>(true, true, any(vec3<bool>(true, arg_1.c.x, arg_2.c.x))), vec3<bool>(true, true, select(true, true, false))));
    return abs(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, arg_0.a.x), 1358i, ~2147483647i, abs(_wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x))), func_3()));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> i32 {
    global0 = array<Struct_1, 29>();
    return arg_2.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = vec3<i32>(-2147483647i, ~func_4(vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-595f, -1910f, arg_2, arg_0.x) * vec4<f32>(-1000f, arg_2, 542f, -1712f)), -func_2(Struct_3(vec2<i32>(2147483647i, 1i), 0u, global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), Struct_2(-675f, arg_2, vec3<bool>(true, arg_1, true), global0[_wgslsmith_index_u32(34382u, 29u)], 77756u), Struct_2(arg_2, 631f, vec3<bool>(arg_1, arg_1, arg_1), Struct_1(u_input.a.x, vec3<i32>(2147483647i, -20197i, -1i), u_input.a.x), 66960u))), countOneBits(firstLeadingBit(-1i)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + -1105f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 1633f))) - arg_2)));
    global1 = array<vec4<bool>, 1>();
    var_0 = _wgslsmith_add_vec3_i32(~vec3<i32>(25756i, ~min(-12806i, var_0.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, var_0.x), reverseBits(35875i))), ~(-vec3<i32>(~0i, var_0.x, 0i)));
    let var_2 = firstLeadingBit(var_0.x);
    return any(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(all(vec3<bool>(false, true, arg_1)) | false, true, !all(global1[_wgslsmith_index_u32(1u, 1u)])), any(select(global1[_wgslsmith_index_u32(~u_input.a.x, 1u)], !vec4<bool>(false, arg_1, true, arg_1), global1[_wgslsmith_index_u32(~31114u, 1u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 25>();
    var var_0 = !func_1(vec3<f32>(_wgslsmith_f_op_f32(select(1603f, _wgslsmith_div_f32(1304f, -1713f), true)), 1703f, 908f), (true | all(vec3<bool>(false, false, false))) == true, -944f);
    global2 = array<vec2<u32>, 25>();
    var_0 = (((true != func_1(vec3<f32>(450f, -873f, 1000f), false, 205f)) && true) | all(select(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], vec4<bool>(false, true, true, false), u_input.a.x < u_input.a.x))) && any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))));
    var var_1 = ~reverseBits(func_3().zxy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(0i, var_1.x), vec3<f32>(-115f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -181f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1123f))), 1f)), -var_1.x, _wgslsmith_mult_vec3_i32(~abs(vec3<i32>(var_1.x, var_1.x, var_1.x)), -_wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.x, -120578i, var_1.x), vec3<i32>(0i, var_1.x, var_1.x))));
}

