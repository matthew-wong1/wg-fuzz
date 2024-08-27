struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(4294967295u, 2147483647i), Struct_1(4427u, -41930i), Struct_1(95969u, 2147483647i), Struct_1(4294967295u, -14100i), Struct_1(1u, 1i), Struct_1(77588u, 2147483647i), Struct_1(14805u, -14870i), Struct_1(4294967295u, 4299i), Struct_1(1u, 20242i), Struct_1(0u, -1i), Struct_1(21340u, -33648i), Struct_1(0u, -1i), Struct_1(4294967295u, i32(-2147483648)), Struct_1(23814u, -13928i), Struct_1(5306u, 49122i), Struct_1(0u, -3505i), Struct_1(6673u, -1008i), Struct_1(1u, 1i), Struct_1(23048u, 2953i), Struct_1(14190u, -26433i), Struct_1(2696u, 2147483647i), Struct_1(0u, 2147483647i), Struct_1(1u, -1i), Struct_1(19483u, -34343i), Struct_1(10457u, -46222i), Struct_1(65204u, -1i), Struct_1(329u, -21322i), Struct_1(15692u, -11275i), Struct_1(0u, 2147483647i));

var<private> global1: Struct_1 = Struct_1(1u, 1524i);

var<private> global2: f32 = -200f;

var<private> global3: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.c.x, 29u)];
    global1 = Struct_1(global1.a, global1.b);
    global3 = 0i;
    var_0 = Struct_1(0u, ~24274i);
    var_0 = Struct_1(firstTrailingBit(var_0.a), ~(~global1.b));
    return -501f;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(0u, u_input.e.x);
    let var_1 = Struct_1(0u, min(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -19409i, -13222i), vec4<i32>(global1.b, -51732i, 27458i, 1i)), i32(-1i) * -27517i), ~abs(~(-71101i))));
    var var_2 = vec3<bool>(false, !arg_1, all(vec3<bool>(all(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, arg_1))), true, true)));
    return arg_2.a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2467f, -1525f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, 1027f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1228f, -1619f) - vec2<f32>(1769f, -1468f)))), false))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(f32(-1f) * -746f));
    global0 = array<Struct_1, 29>();
    let var_2 = vec2<bool>(true, false);
    var var_3 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1674f, -268f), vec3<f32>(var_0.x, 513f, var_0.x), vec3<bool>(var_2.x, true, true))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1, var_1) + vec3<f32>(-1127f, 1849f, -245f)))), var_2.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(32809u, u_input.c.x) & 87688u, ~(4294967295u << (u_input.c.x % 32u))), 29u)]), ~(-1i));
    return global0[_wgslsmith_index_u32(countOneBits(1u), 29u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    global1 = func_1();
    global1 = global0[_wgslsmith_index_u32(~arg_0.a, 29u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-320f, _wgslsmith_f_op_f32(1000f + 1355f), 1448f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 523f, 428f) * vec3<f32>(-1165f, 1189f, -891f)) - vec3<f32>(-329f, 709f, 1851f)), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-657f, 944f, 705f), vec3<f32>(1325f, -478f, -2186f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(630f, 771f, 1000f))), arg_1 != arg_1)), vec3<f32>(_wgslsmith_f_op_f32(331f + -635f), _wgslsmith_f_op_f32(f32(-1f) * -409f), 508f)) + vec3<f32>(476f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1832f, -1809f)), _wgslsmith_div_f32(100f, 235f))), 491f)), vec3<bool>(-reverseBits(global1.b) != ~(-2147483647i), true, all(vec4<bool>(true, arg_1 & arg_1, arg_1, any(vec3<bool>(arg_1, true, false)))))));
    let var_1 = Struct_1(_wgslsmith_mod_u32(u_input.c.x, arg_0.a), _wgslsmith_sub_i32(_wgslsmith_mult_i32(40440i >> (u_input.c.x % 32u), 1417i ^ global1.b) >> (countOneBits(u_input.a.x >> (24700u % 32u)) % 32u), u_input.e.x >> (min(~global1.a, reverseBits(global1.a)) % 32u)));
    global1 = Struct_1((var_1.a >> (_wgslsmith_div_u32(0u, var_1.a) % 32u)) | 25220u, _wgslsmith_div_i32(func_1().b, 1i) >> (_wgslsmith_clamp_u32(var_1.a, min(_wgslsmith_clamp_u32(1u, 13828u, 6099u), arg_0.a), 15879u) % 32u));
    return vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1467f) * -289f), 1000f, -2149f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1738f, 569f, -1073f, 279f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1735f, 849f, 120f, 1066f), vec4<f32>(873f, 486f, 418f, 121f)))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(func_1(), true)))))));
    var var_1 = any(vec2<bool>(select(false, false, false), any(vec4<bool>(true, true, true, true))));
    let var_2 = -18340i;
    let var_3 = global0[_wgslsmith_index_u32(72894u, 29u)];
    var_1 = true;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, var_0.x, var_0.x, 1189f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1815f, 1150f, 929f, 1769f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_4(func_1(), all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), true), vec2<bool>(true, any(vec4<bool>(true, true, false, false))), any(vec4<bool>(true, true, true, true))))));
    let var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b, -37443i, var_2, global1.b), vec4<i32>(-26335i, 2147483647i, var_3.b, var_2))), vec4<i32>(_wgslsmith_add_i32(26243i, u_input.e.x), _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(var_2, u_input.d.x, var_2)), ~10969i, global1.b)), _wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -17280i, 9502i, 0i), vec4<i32>(-33021i, 1i, 0i, u_input.d.x)), vec4<i32>(var_2, -var_2, firstTrailingBit(-2147483647i), firstLeadingBit(-28286i))), firstLeadingBit(vec4<i32>(1i, global1.b ^ -1i, global1.b, firstLeadingBit(var_3.b)))) << (countOneBits(~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a << (u_input.c % vec4<u32>(32u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, _wgslsmith_clamp_vec3_u32(vec3<u32>(~global1.a, _wgslsmith_dot_vec3_u32(u_input.c.ywy, vec3<u32>(var_3.a, 5727u, u_input.c.x)), 1u) ^ vec3<u32>(global1.a, 60577u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, 0u), u_input.c.yz)), min(vec3<u32>(abs(1u), global1.a, ~u_input.a.x), countOneBits(~vec3<u32>(var_3.a, 1u, u_input.c.x))), ~vec3<u32>(4294967295u, 1u, u_input.a.x) >> (u_input.c.zwz % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(var_0.x, -2988f)), reverseBits(global1.a));
}

