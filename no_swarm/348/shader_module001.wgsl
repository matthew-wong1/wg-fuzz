struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(9845u, 0u), vec2<u32>(1u, 0u), vec2<u32>(43497u, 24847u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(38986u, 74022u), vec2<u32>(1733u, 4294967295u), vec2<u32>(34616u, 4294967295u), vec2<u32>(67261u, 4294967295u), vec2<u32>(15861u, 14701u), vec2<u32>(19110u, 27620u), vec2<u32>(0u, 1u), vec2<u32>(61856u, 4294967295u), vec2<u32>(23985u, 1047u), vec2<u32>(17007u, 77793u), vec2<u32>(1u, 4294967295u), vec2<u32>(43628u, 20780u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 26340u), vec2<u32>(1u, 4294967295u), vec2<u32>(7373u, 80470u), vec2<u32>(0u, 0u), vec2<u32>(1u, 3958u), vec2<u32>(59305u, 1u), vec2<u32>(5702u, 0u), vec2<u32>(4294967295u, 32792u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(95687u, 83212u), vec2<u32>(41878u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = any(arg_3.c.a.a.xwy);
    var var_1 = Struct_4(arg_3.c, true, _wgslsmith_f_op_vec2_f32(arg_2.wx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.wx) * arg_2.xx)), vec2<f32>(_wgslsmith_f_op_f32(trunc(397f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(257f * arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.x))))))));
    let var_2 = var_1.a.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) - arg_2.x);
    var_1 = Struct_4(global0[_wgslsmith_index_u32(0u, 22u)], !arg_3.c.a.a.x, arg_1.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_3.c.b * 2189f), _wgslsmith_f_op_f32(-846f - arg_3.a.b)))));
    return 0u;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.b, -440f))));
    var var_1 = ~(select(vec4<u32>(0u, 29574u, firstTrailingBit(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 13075u, 4294967295u, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, arg_2.b, u_input.b))), vec4<u32>(func_2(vec2<i32>(2147483647i, u_input.a.x), vec4<f32>(arg_2.c.b, var_0.x, arg_2.e, 1198f), vec4<f32>(-150f, var_0.x, 182f, 882f), arg_2), 0u, _wgslsmith_div_u32(arg_2.b, 42174u), _wgslsmith_add_u32(u_input.b, 28056u)), arg_1) & reverseBits(vec4<u32>(arg_2.b, arg_2.b, _wgslsmith_div_u32(arg_0.x, 4294967295u), 1u)));
    var_1 = ~(~abs(firstLeadingBit(select(vec4<u32>(38044u, var_1.x, var_1.x, arg_2.b), vec4<u32>(u_input.b, 1u, var_1.x, arg_0.x), arg_2.c.a.b.x))));
    let var_2 = ~5206u;
    let var_3 = ~global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 29u)];
    return -abs(firstTrailingBit(53397i) | 2147483647i) | u_input.a.x;
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = -1867f;
    let var_1 = !select(select(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, false))), vec3<bool>(true, true, true), false), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), true);
    var var_2 = 4294967295u;
    let var_3 = Struct_1(select(vec4<bool>(!(!var_1.x), var_1.x, true, var_1.x), vec4<bool>(!var_1.x, var_1.x, true, all(select(var_1.xy, var_1.zy, vec2<bool>(true, false)))), vec4<bool>(all(vec2<bool>(var_1.x, var_1.x)), all(!var_1), var_1.x, !any(var_1.zz))), vec4<bool>(false, true, true, true));
    global0 = array<Struct_2, 22>();
    return Struct_2(Struct_1(!(!var_3.a), !select(!var_3.a, !vec4<bool>(var_1.x, var_1.x, var_3.a.x, false), true)), -1217f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), _wgslsmith_mod_vec2_i32(u_input.a.yy, firstTrailingBit(vec2<i32>(u_input.a.x, u_input.d.x)))), u_input.a.xz, u_input.d.xz) >> (global1[_wgslsmith_index_u32(u_input.b, 29u)] % vec2<u32>(32u));
    let var_1 = var_0.x;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(u_input.b, 22u)], abs(1u), func_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 21153u, 34899u), vec3<u32>(u_input.c, 0u, u_input.c)), ~vec3<u32>(1u, 0u, u_input.c)), ~49664u), vec4<i32>(~(var_1 << (4294967295u % 32u)), var_0.x ^ -2147483647i, func_1(~vec2<u32>(u_input.b, u_input.b), vec4<bool>(false, true, false, false), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), -460f), u_input.c, Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), -1042f), false, 332f)), var_0.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(765f * _wgslsmith_f_op_f32(1024f - -661f)) - _wgslsmith_f_op_f32(-788f * -2074f))));
    var_2 = Struct_3(Struct_2(func_3(var_2.b, vec4<i32>(~2147483647i, -var_1, var_0.x, 49966i >> (0u % 32u))).a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(391f, 254f), var_2.a.b))))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c ^ u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(35332u, 1083u, 4294967295u), vec3<u32>(u_input.b, var_2.b, 47525u))), firstLeadingBit(0u)), var_2.b), func_3(var_2.b, -vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, var_0.x), abs(var_1), var_0.x, 1i)), true, _wgslsmith_div_f32(_wgslsmith_div_f32(-1010f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) + var_2.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f - func_3(16256u, vec4<i32>(var_1, var_1, -2147483647i, var_0.x)).b) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.a.b, -533f, var_2.a.a.a.x)))))));
    let var_3 = -_wgslsmith_add_i32(_wgslsmith_mod_i32(-6867i, _wgslsmith_sub_i32(min(var_1, u_input.d.x), ~u_input.d.x)), 2147483647i);
    let var_4 = Struct_3(Struct_2(func_3(13092u, ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 34796i, -2147483647i, -2147483647i), vec4<i32>(var_0.x, 1i, 0i, 4567i))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e - var_2.c.b)))), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.b, var_2.b, 25523u), vec3<u32>(80861u, 1u, 4294967295u), var_2.c.a.a.x) ^ max(vec3<u32>(10216u, 55061u, 14009u), vec3<u32>(0u, 1576u, 0u)), ~vec3<u32>(var_2.b, 16306u, 4294967295u)), Struct_2(var_2.a.a, -650f), !(~(~0u) != u_input.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e, var_2.c.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.b) * _wgslsmith_f_op_f32(sign(2407f)))))));
    var_2 = Struct_3(Struct_2(func_3(var_2.b, firstTrailingBit(reverseBits(vec4<i32>(-16440i, var_3, 0i, var_0.x)))).a, var_4.e), var_2.b, func_3(var_2.b, ~abs(reverseBits(vec4<i32>(u_input.a.x, 45285i, -8405i, 0i)))), ~(-var_1) != ~_wgslsmith_dot_vec3_i32(vec3<i32>(-42948i, var_1, 1i), select(vec3<i32>(var_1, 2147483647i, -1i), u_input.a, var_4.a.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.e, var_4.c.b)) + _wgslsmith_f_op_f32(886f + var_2.e)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c.b, 1285f) + var_4.e)) - _wgslsmith_f_op_f32(trunc(var_4.a.b))));
    global1 = array<vec2<u32>, 29>();
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, -160f, -1483f) - vec3<f32>(-1561f, var_2.c.b, 723f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2189f, var_4.c.b, var_4.c.b) - vec3<f32>(var_4.e, var_2.c.b, -819f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.e, 518f, 159f), vec3<f32>(var_4.a.b, -343f, 135f))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(471f)), var_2.a.b), var_4.e, -246f)));
    let x = u_input.a;
    s_output = StorageBuffer(-max(reverseBits(-var_0.x), -var_0.x));
}

