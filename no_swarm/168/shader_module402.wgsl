struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_4, 26>;

var<private> global3: array<u32, 7> = array<u32, 7>(1u, 67216u, 4294967295u, 34876u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = 56221u;
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b, 1547i), _wgslsmith_mult_i32(-u_input.e, ~u_input.e), u_input.a.x ^ -1i, u_input.b), abs(-(vec4<i32>(u_input.e, u_input.e, 2147483647i, -23099i) >> (vec4<u32>(global3[_wgslsmith_index_u32(39383u, 7u)], u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e | 37679i, -2147483647i, ~(-2147483647i), u_input.e), -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 26302i, u_input.b, 1i), vec4<i32>(-2147483647i, u_input.e, 2147483647i, 2147483647i))));
    let var_1 = Struct_4(select(!vec3<bool>(u_input.a.x <= var_0.x, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global3[_wgslsmith_index_u32(0u, 7u)], 52073u)) << (_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), min(vec2<u32>(30181u, global3[_wgslsmith_index_u32(4756u, 7u)]), vec2<u32>(70085u, global3[_wgslsmith_index_u32(0u, 7u)]))) % vec2<u32>(32u)), vec2<u32>(max(firstTrailingBit(0u), 13369u), 1u >> (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 1u) % 32u))));
    let var_2 = _wgslsmith_mult_u32(8124u, _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(19371u), 0u, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], var_1.b), 7u)], 30337u)), _wgslsmith_mod_vec3_u32(vec3<u32>(select(49455u, 1u, false), 1u, 20863u), vec3<u32>(var_1.b, ~var_1.b, 1u))));
    global1 = 1u;
    return var_2;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = u_input.b;
    let var_1 = Struct_2(false, ~(~countOneBits(var_0)) | arg_1.x, -arg_1.x & _wgslsmith_mult_i32(arg_1.x, u_input.a.x | ~u_input.a.x));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * _wgslsmith_div_f32(-1158f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))));
    return _wgslsmith_div_u32(u_input.c, ~global3[_wgslsmith_index_u32(func_3(), 7u)]);
}

fn func_1() -> u32 {
    global2 = array<Struct_4, 26>();
    var var_0 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1991f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f + -406f) * -1046f)) >= -1381f) | any(!vec2<bool>(u_input.d == u_input.d, true));
    var var_1 = vec3<u32>(~(1u ^ u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(0u >> (_wgslsmith_clamp_u32(u_input.d, u_input.c, 4294967295u) % 32u), ~global3[_wgslsmith_index_u32(2626u, 7u)] ^ max(0u, 136903u)), _wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(u_input.c, 7u)]), 7u)], 7u)], firstLeadingBit(12682u)), vec2<u32>(0u, global3[_wgslsmith_index_u32(~30879u, 7u)]))), _wgslsmith_sub_u32(reverseBits(0u), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(reverseBits(u_input.d) << (0u % 32u), 7u)], 7u)]));
    var var_2 = _wgslsmith_mult_u32(firstTrailingBit(func_2(vec2<f32>(_wgslsmith_f_op_f32(1257f - 552f), -1000f), ~(~vec3<i32>(u_input.b, u_input.e, -32137i)))), _wgslsmith_dot_vec2_u32(min(_wgslsmith_mult_vec2_u32(var_1.zz, select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(97529u, 7u)], 7u)], 18280u), var_1.zx, vec2<bool>(true, true))), ~vec2<u32>(1u, var_1.x)), _wgslsmith_clamp_vec2_u32(var_1.zx, var_1.yy, var_1.zy)));
    var_2 = 4294967295u;
    return global3[_wgslsmith_index_u32(1619u, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(1u, _wgslsmith_add_u32(func_1(), ~global3[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_mult_u32(select(u_input.d, 69066u, false), u_input.d) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6846u, 7u)], 7u)], 7u)], u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(70112u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 7u)], 7u)], 16429u), vec4<u32>(1u, 4294967295u, 0u, global3[_wgslsmith_index_u32(42180u, 7u)])))), ~firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.e))) << (vec2<u32>(global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(u_input.d, 7u)], global3[_wgslsmith_index_u32(29875u, 7u)]), 7u)] >> (4294967295u % 32u), reverseBits(18459u)) % vec2<u32>(32u)), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1310f, 1000f, 880f, -826f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(102f, -1172f, -474f, 1863f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2024f, -395f, -589f, 322f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(246f, -752f, -276f, 1032f) - vec4<f32>(407f, 712f, 1000f, -302f)) + vec4<f32>(-141f, 2879f, 288f, 1396f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1017f, 660f, -368f, -111f), vec4<f32>(1356f, 296f, 474f, -663f)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 933f))), _wgslsmith_f_op_f32(277f - 885f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-398f)))), _wgslsmith_f_op_f32(-1142f + -534f))), !((4294967295u ^ ~u_input.d) < ~select(global3[_wgslsmith_index_u32(57723u, 7u)], u_input.d, var_0.c))));
    var var_2 = -1893f;
    var var_3 = _wgslsmith_div_vec3_i32(min(vec3<i32>(abs(~u_input.b), -17141i, -10135i), vec3<i32>(2856i, 0i, 1i)), max(reverseBits(vec3<i32>(var_0.b.x, u_input.b, u_input.e) & (vec3<i32>(u_input.e, var_0.b.x, 1i) << (vec3<u32>(u_input.c, global3[_wgslsmith_index_u32(4294967295u, 7u)], 1u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 1i, var_0.b.x), vec3<i32>(u_input.b, 41455i, u_input.e))), countOneBits(vec3<i32>(u_input.b, -1735i, 2147483647i)) & (vec3<i32>(2147483647i, 35580i, var_0.b.x) | vec3<i32>(-68388i, u_input.a.x, var_0.b.x)))));
    let var_4 = vec2<bool>(-669f >= var_1.x, any(!vec2<bool>(var_0.c, true)));
    var var_5 = all(!vec2<bool>(false, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.a.x, 1u) ^ ~var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_div_vec2_f32(var_1.yx, _wgslsmith_f_op_vec2_f32(-var_1.ww)));
}

