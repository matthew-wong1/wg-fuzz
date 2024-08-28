struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 25> = array<i32, 25>(-30527i, -19803i, 86370i, -1i, -46339i, -21276i, 0i, 0i, 1i, 1i, 27201i, -37537i, 10223i, -67913i, -10222i, -28139i, 31398i, -61868i, 1i, 2147483647i, 10477i, i32(-2147483648), 27352i, -8437i, 0i);

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(112f, -155f, -996f, -1060f), vec4<f32>(2169f, -749f, 1000f, -1000f), vec4<f32>(-481f, -1867f, -1000f, -151f), vec4<f32>(1301f, 2380f, 1646f, 1926f), vec4<f32>(-793f, 139f, -1217f, 1684f), vec4<f32>(-2121f, -1697f, -1271f, 460f), vec4<f32>(1367f, -751f, -1009f, 1810f), vec4<f32>(168f, 469f, -407f, -742f));

var<private> global3: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x, ~firstLeadingBit(28090u)), _wgslsmith_mult_u32(~31069u, min(~u_input.c.x, ~(~u_input.c.x))));
    global3 = !vec4<bool>((_wgslsmith_f_op_f32(sign(283f)) <= -1516f) | global3.x, _wgslsmith_clamp_u32(firstTrailingBit(19750u), ~0u, 4294967295u) > 4294967295u, !(!(!global3.x)), all(select(!vec4<bool>(true, global3.x, false, global3.x), vec4<bool>(arg_0.a.a.x, global3.x, arg_0.b.a.x, false), false)));
    let var_1 = u_input.c.yy;
    let var_2 = global3.x;
    global2 = array<vec4<f32>, 8>();
    return arg_0.b.a.x;
}

fn func_2() -> vec4<i32> {
    let var_0 = (((any(global3.zy) || !global3.x) | func_3(Struct_3(Struct_1(vec2<bool>(true, true)), Struct_1(global3.zw)))) || !any(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, false, false), vec3<bool>(global3.x, true, global3.x)))) && (-u_input.a.x >= 0i);
    var var_1 = 645f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f - 199f)) - _wgslsmith_f_op_f32(min(-1734f, -267f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))));
    var var_2 = Struct_1(global3.xy);
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.a.www, u_input.a.wyy), _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(5246u, 25u)], -15228i), -vec3<i32>(global1[_wgslsmith_index_u32(global0.x, 25u)], u_input.b, global1[_wgslsmith_index_u32(4294967295u, 25u)]), u_input.a.yxy), ~(~(-u_input.a.xww))));
    return countOneBits(abs(u_input.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    let var_0 = func_2() | vec4<i32>(global1[_wgslsmith_index_u32(8695u, 25u)], abs(max(global1[_wgslsmith_index_u32(0u & arg_2, 25u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(arg_3.x, arg_3.x)))), _wgslsmith_dot_vec3_i32(~arg_3.zwx, -(arg_3.xww ^ vec3<i32>(u_input.b, arg_3.x, arg_3.x))), _wgslsmith_add_i32(-1i, 2147483647i));
    global2 = array<vec4<f32>, 8>();
    var var_1 = Struct_3(Struct_1(vec2<bool>(4294967295u >= _wgslsmith_dot_vec2_u32(u_input.c.yz, vec2<u32>(1u, 0u)), true)), Struct_1(arg_1.yy));
    return _wgslsmith_dot_vec2_i32(select(select(u_input.a.yz, vec2<i32>(~34189i, arg_3.x), !select(arg_1.xy, vec2<bool>(false, false), true)), vec2<i32>(-1i) * -(u_input.a.wz | vec2<i32>(1i, -1i)), (select(false, false, true) && all(vec2<bool>(true, global3.x))) & true), _wgslsmith_sub_vec2_i32(abs(~vec2<i32>(var_0.x, -37630i)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, var_0.x), u_input.a.xx), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -21833i), var_0.xx) & vec2<i32>(-20484i, 58198i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1252f;
    var var_1 = reverseBits(func_1(global3.wx, !(!global3.wxz), global0.x, vec4<i32>(global1[_wgslsmith_index_u32(50689u, 25u)] & 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 25u)] ^ u_input.a.x, -u_input.a.x, countOneBits(-30536i)))) <= -10294i;
    let var_2 = vec2<u32>(_wgslsmith_clamp_u32(59527u, min(21430u, (global0.x & global0.x) >> (_wgslsmith_add_u32(1u, global0.x) % 32u)), ~(~40626u) << (~max(0u, u_input.c.x) % 32u)), global0.x);
    global0 = countOneBits(~var_2) & (vec2<u32>(reverseBits(var_2.x), global0.x) << (~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c.x, 4294967295u), var_2) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(select(vec2<bool>(all(vec2<bool>(global3.x, global3.x)), global3.x), vec2<bool>(true, global3.x), false), select(!vec3<bool>(global3.x, false, global3.x), vec3<bool>(!global3.x, any(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), true), !all(vec3<bool>(true, global3.x, true))), u_input.c.x, u_input.a), _wgslsmith_clamp_vec2_i32((-vec2<i32>(-15074i, global1[_wgslsmith_index_u32(1u, 25u)]) << (var_2 % vec2<u32>(32u))) | u_input.a.yx, vec2<i32>(1i, u_input.a.x) ^ abs(u_input.a.ww), firstLeadingBit(select(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], u_input.a.x), vec2<i32>(-4205i, 46395i) & u_input.a.xy, global3.x))), _wgslsmith_f_op_f32(var_0 - -1083f), i32(-1i) * -select(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -global1[_wgslsmith_index_u32(34466u, 25u)], !global3.x));
}

