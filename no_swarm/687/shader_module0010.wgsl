struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-27140i, 43838i, 0i, 2147483647i), vec4<i32>(19129i, -4932i, -529i, 1i), vec4<i32>(8091i, -3741i, 0i, -22052i));

var<private> global1: u32 = 57230u;

var<private> global2: vec2<u32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = select(vec3<bool>(any(select(vec3<bool>(arg_0.x, true, arg_0.x), !arg_0.xxz, select(arg_0.yyz, arg_0.yzx, arg_0.wwz))), any(select(arg_0.zwz, vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x)), arg_0.x), !arg_0.xyw, true);
    global0 = array<vec4<i32>, 3>();
    let var_1 = Struct_3(false, Struct_2((vec4<i32>(1481i, -892i, 43947i, u_input.c) >> (vec4<u32>(4294967295u, u_input.b, 93639u, global2.x) % vec4<u32>(32u))) ^ global0[_wgslsmith_index_u32(~(~76500u), 3u)], firstLeadingBit(countOneBits(vec4<u32>(global2.x, global2.x, u_input.a, global2.x))), _wgslsmith_sub_u32(min(u_input.b, global2.x >> (global2.x % 32u)), _wgslsmith_sub_u32(global2.x, ~global2.x)), Struct_1(firstLeadingBit(1u), select(abs(vec2<i32>(-1i, -7490i)), vec2<i32>(u_input.c, u_input.c), var_0.zx), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1653f), _wgslsmith_f_op_f32(f32(-1f) * -273f)), 160f, 1u <= ~u_input.a), max(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 0u), vec4<u32>(81521u, global2.x, global2.x, 10703u)), vec4<u32>(u_input.b, 41624u, 18171u, u_input.b) & vec4<u32>(u_input.b, 0u, global2.x, 4294967295u)) & ~vec4<u32>(22443u, 4294967295u, global2.x, 14u)), countOneBits(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 101952i, -2147483647i), vec3<i32>(-16266i, u_input.c, 0i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1178f, -698f, -526f, -699f) - _wgslsmith_div_vec4_f32(vec4<f32>(-925f, -1183f, 364f, -1000f), vec4<f32>(1890f, -912f, -114f, -952f))) * vec4<f32>(_wgslsmith_div_f32(1991f, 921f), _wgslsmith_f_op_f32(abs(1551f)), _wgslsmith_f_op_f32(trunc(1460f)), _wgslsmith_f_op_f32(f32(-1f) * -902f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1362f, 1011f, -1958f, 1229f) + vec4<f32>(-1000f, 135f, 949f, 1000f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2002f, -1026f, 342f, 1485f)))));
    global1 = 8121u;
    var var_2 = Struct_3(var_0.x, Struct_2(var_1.b.a, ~(~vec4<u32>(0u, u_input.b, 106513u, 1u)), global2.x, var_1.b.d, vec4<u32>(57875u, var_1.b.b.x | ~global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, 1u), var_1.b.e) << (countOneBits(4294967295u) % 32u), 0u)), vec3<i32>(-5103i, -63792i, 11185i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1996f)), var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.d.c.x + var_1.b.d.c.x)))))));
    return ~global2.x;
}

fn func_2() -> Struct_2 {
    let var_0 = abs(~max(abs(vec4<u32>(3095u, 54788u, 1u, 4294967295u)), vec4<u32>(global2.x, 4294967295u, u_input.a, global2.x) ^ vec4<u32>(global2.x, u_input.a, 4910u, global2.x))) | vec4<u32>(min(_wgslsmith_add_u32(global2.x, 13696u & global2.x), 106318u), func_3(vec4<bool>(true, 5661u == global2.x, all(vec4<bool>(false, true, true, true)), true)), abs(abs(~23517u)), min(56424u, func_3(vec4<bool>(true, false, false, true))));
    global2 = min(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.xz, var_0.wx), u_input.b), var_0.x) ^ vec2<u32>(abs(min(global2.x, var_0.x)), ~_wgslsmith_clamp_u32(u_input.a, 1u, global2.x)), var_0.zw);
    global2 = vec2<u32>(var_0.x, ~85660u);
    let var_1 = ~1u;
    global1 = func_3(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, false))));
    return Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, u_input.c, -53219i, u_input.c)), vec4<i32>(2147483647i, -u_input.c, u_input.c, u_input.c)), min(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_1, 36181u, 1u, 20102u)), 3u)], firstTrailingBit(-global0[_wgslsmith_index_u32(var_0.x, 3u)]))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(var_0, select(var_0, var_0, false)), var_0), 4294967295u, Struct_1(max(var_0.x, ~var_1) << (var_0.x % 32u), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 1i), max(vec2<i32>(u_input.c, 19634i), vec2<i32>(u_input.c, u_input.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1751f, 511f) + vec2<f32>(-1000f, -443f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, 318f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) - _wgslsmith_f_op_f32(f32(-1f) * -393f)), !(629f < _wgslsmith_f_op_f32(round(1937f)))), var_0);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32) -> vec2<f32> {
    global1 = ~(u_input.a & ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 2295u), vec2<u32>(u_input.b, 16133u)), firstTrailingBit(vec2<u32>(92831u, 4294967295u))));
    global0 = array<vec4<i32>, 3>();
    let var_0 = func_2();
    global2 = var_0.b.xw >> (vec2<u32>(~_wgslsmith_clamp_u32(1u | global2.x, var_0.b.x, 1u), 37852u) % vec2<u32>(32u));
    global0 = array<vec4<i32>, 3>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(371f, -1549f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.c), var_0.d.c), _wgslsmith_f_op_vec2_f32(select(var_0.d.c, vec2<f32>(390f, var_0.d.d), vec2<bool>(true, true)))) * vec2<f32>(arg_2, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(all(vec2<bool>(false, any(vec4<bool>(false, false, false, true)))), Struct_2(~global0[_wgslsmith_index_u32(~(~0u), 3u)], ~(vec4<u32>(global2.x, 94619u, 84u, 12561u) & vec4<u32>(global2.x, 61016u, 4294967295u, 39338u)) & ~reverseBits(vec4<u32>(u_input.b, global2.x, 39756u, u_input.a)), abs(_wgslsmith_div_u32(global2.x, global2.x)), Struct_1(~4294967295u, vec2<i32>(25875i, -11599i) >> (~vec2<u32>(51874u, global2.x) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(step(-1209f, 776f)), 363f), _wgslsmith_f_op_f32(f32(-1f) * -181f), true), abs(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global2.x, 15681u, u_input.b, global2.x)), vec4<u32>(0u, 67528u, u_input.a, global2.x) & vec4<u32>(u_input.b, u_input.a, 65492u, 36019u)))), vec3<i32>(~(u_input.c >> (global2.x % 32u)) | u_input.c, u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-966f, 1348f, 1562f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1240f, -878f, -1388f, -644f)))))));
    let var_1 = var_0.b;
    let var_2 = var_1.d.e;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(select(0u, u_input.a, false), var_0.a, -428f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.c + var_0.d.zw) - vec2<f32>(var_0.b.d.c.x, var_0.b.d.d)))) * var_0.d.ww);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -814f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d.d * -285f)))))), vec2<u32>(75406u, ~(var_1.d.a | 9166u) << (_wgslsmith_mult_u32(0u, func_3(vec4<bool>(false, var_0.a, true, true))) % 32u)), var_0.b.e, var_1.d.b.x, ~abs(var_1.a.x));
}

