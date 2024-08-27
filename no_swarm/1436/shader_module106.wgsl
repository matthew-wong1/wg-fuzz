struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(1000f, 1000f, 518f), vec3<f32>(-129f, 256f, -668f), vec3<f32>(659f, -1105f, 253f), vec3<f32>(-1862f, 308f, -975f), vec3<f32>(-261f, -321f, -152f), vec3<f32>(120f, -1574f, 2230f), vec3<f32>(-768f, 1553f, -870f), vec3<f32>(2091f, -1674f, -1286f), vec3<f32>(1000f, 2096f, 279f), vec3<f32>(226f, -1259f, 828f), vec3<f32>(1140f, -433f, -291f), vec3<f32>(1184f, -269f, -380f), vec3<f32>(514f, -321f, -1217f), vec3<f32>(-457f, -1138f, -1119f), vec3<f32>(-714f, 1641f, 984f), vec3<f32>(-1105f, -1226f, 235f), vec3<f32>(-1472f, -994f, -107f), vec3<f32>(-869f, -704f, -996f), vec3<f32>(549f, -378f, -845f), vec3<f32>(1783f, 1620f, -858f), vec3<f32>(1417f, -751f, 1181f), vec3<f32>(1343f, -126f, -653f), vec3<f32>(-1000f, 1217f, -717f), vec3<f32>(148f, -274f, -355f), vec3<f32>(1434f, -789f, 203f), vec3<f32>(171f, 1292f, 280f), vec3<f32>(354f, -2092f, 464f), vec3<f32>(763f, -2197f, 1560f), vec3<f32>(1854f, -906f, -1084f), vec3<f32>(-1501f, -1180f, 1816f));

var<private> global1: bool = false;

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global3: vec3<u32> = vec3<u32>(3806u, 96740u, 1140u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(463f, -250f)), -1232f), _wgslsmith_mult_i32(~u_input.d.x, _wgslsmith_mod_i32(-u_input.d.x, u_input.d.x)), 39131u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1377f, 1000f))))), 325f);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -372f), var_0.e, true)))) < -439f;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, u_input.d.x), u_input.d), -25056i), var_0.b), firstTrailingBit(vec2<i32>(u_input.b.x, u_input.b.x) & (vec2<i32>(-1i, var_0.b) >> (vec2<u32>(49729u, 51009u) % vec2<u32>(32u))))), var_0.c, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.d)))) + _wgslsmith_f_op_f32(-1027f * var_0.e)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -150f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(564f + var_0.d))))), select(true, true, false) & any(vec4<bool>(true, true, false, true))))));
    global2 = array<vec3<bool>, 24>();
    return true;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = select(abs(58341u), countOneBits(global3.x), select(true & (_wgslsmith_f_op_f32(min(arg_0, -479f)) <= -1000f), func_3(), !(arg_0 > arg_3.x) || false));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.zz - vec2<f32>(arg_3.x, arg_0))))), ~reverseBits(_wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_mod_i32(-2147483647i, -13731i), _wgslsmith_clamp_i32(u_input.a.x, -35962i, -2147483647i))), _wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 62155u, var_0) >> (vec3<u32>(34962u, var_0, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(countOneBits(0u), ~global3.x, 4294967295u)), _wgslsmith_mult_u32(~(~91574u), _wgslsmith_add_u32(_wgslsmith_mod_u32(15976u, global3.x), 43850u << (arg_2.x % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -518f), arg_0);
    global3 = ~vec3<u32>(select(firstTrailingBit(1u), ~6876u, true), var_1.c, 4294967295u);
    global2 = array<vec3<bool>, 24>();
    var var_2 = abs(~select(vec3<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a.x, u_input.d.x), u_input.b.x), select(vec3<i32>(-20660i, -42703i, u_input.b.x), vec3<i32>(u_input.b.x, 72598i, 0i), true) << (vec3<u32>(10410u, var_0, var_0) % vec3<u32>(32u)), !select(vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(var_1.c, 24u)], vec3<bool>(true, false, true))));
    return _wgslsmith_div_f32(1501f, 533f);
}

fn func_1(arg_0: i32) -> vec2<f32> {
    global0 = array<vec3<f32>, 30>();
    global1 = all(vec2<bool>(false, (i32(-1i) * -784i) != _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, 1i, u_input.a.x), vec4<i32>(1i, 0i, arg_0, arg_0))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1393f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-494f + 423f), _wgslsmith_f_op_f32(ceil(862f)), global3.yy, vec3<f32>(-157f, -392f, -714f))) - _wgslsmith_f_op_f32(272f + _wgslsmith_f_op_f32(floor(765f))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 2147483647i >> (abs(1u << (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.c) % 32u)) % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 30u)]), vec3<f32>(_wgslsmith_f_op_f32(floor(-180f)), _wgslsmith_f_op_f32(func_2(1209f, arg_0.d, vec2<u32>(arg_0.c, 1u), global0[_wgslsmith_index_u32(12304u, 30u)])), _wgslsmith_f_op_f32(886f - arg_2.d))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, 1714f, -730f, 283f) * vec4<f32>(480f, arg_2.d, var_1.x, -726f)), vec4<f32>(arg_2.d, 269f, arg_1, arg_2.d), func_3())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-399f, var_1.x, -207f, arg_1), vec4<f32>(var_1.x, -708f, 1256f, 762f)))))))));
    return Struct_1(var_2.yz, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(max(vec4<i32>(1i, arg_0.b, arg_0.b, 31484i), vec4<i32>(u_input.b.x, arg_0.b, u_input.a.x, u_input.a.x)), vec4<i32>(9269i, -2147483647i, arg_2.b, arg_0.b))), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 37275i, -2147483647i, 51143i), vec4<i32>(0i, u_input.a.x, u_input.b.x, u_input.b.x)), -vec4<i32>(var_0, 0i, -15790i, u_input.d.x)))), countOneBits(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_vec2_f32(func_1(2147483647i)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(206f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1328f, _wgslsmith_f_op_f32(f32(-1f) * -1675f)) * -340f) + -163f)));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_mod_i32(1i >> (u_input.c.x % 32u), u_input.d.x))), u_input.b.x, ~global3.x ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(41752u, 22591u), vec2<u32>(48046u, 18666u)) ^ reverseBits(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, var_0, false)))), -1397f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-520f + var_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1113f)))))), Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - var_0), _wgslsmith_f_op_f32(abs(1527f))))), _wgslsmith_div_i32(u_input.d.x, reverseBits(_wgslsmith_div_i32(2147483647i, 260i))), global3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-371f, var_0), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-480f)), _wgslsmith_f_op_vec2_f32(func_1(u_input.a.x)).x))), var_0));
    let var_2 = (~min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), vec3<i32>(var_1.b, u_input.d.x, 2147483647i)), vec3<i32>(44212i, var_1.b, 2147483647i) << (vec3<u32>(u_input.c.x, 0u, 49239u) % vec3<u32>(32u))) ^ max(_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, var_1.b, 0i), vec3<i32>(0i, u_input.d.x, -47791i)), -vec3<i32>(0i, 2147483647i, u_input.b.x))) << (max(vec3<u32>(4294967295u, _wgslsmith_sub_u32(global3.x, 6716u), global3.x), ~(~vec3<u32>(60801u, 0u, global3.x)) | firstLeadingBit(vec3<u32>(4294967295u, var_1.c, 4294967295u))) % vec3<u32>(32u));
    global3 = vec3<u32>(31601u, _wgslsmith_div_u32(~_wgslsmith_sub_u32(global3.x, 67521u), ~39209u) | 96749u, ~global3.x);
    global2 = array<vec3<bool>, 24>();
    var var_3 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec3<u32>(~4294967295u, 11865u, abs(u_input.c.x)), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global3.x, 0u, 4294967295u), vec4<u32>(u_input.c.x, var_1.c, 35371u, global3.x)) ^ reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 28726u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, 38738u, u_input.c.x, 33418u), ~vec4<u32>(var_1.c, u_input.c.x, global3.x, 4294967295u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -195f)))), _wgslsmith_f_op_f32(-1440f - _wgslsmith_f_op_f32(max(-560f, _wgslsmith_f_op_f32(sign(var_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), -1446f), 1i ^ firstTrailingBit(2147483647i));
}

