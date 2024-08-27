struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(false, 580f, vec4<i32>(-1i, 1060i, 1i, 14948i), Struct_1(vec3<i32>(2147483647i, -39071i, 1i), vec4<i32>(24260i, 35157i, 36350i, 8016i), true)), Struct_3(true, -3232f, vec4<i32>(-1i, -21822i, i32(-2147483648), 2147483647i), Struct_1(vec3<i32>(1i, -65879i, -1i), vec4<i32>(1i, -46231i, 4367i, 45779i), true)), Struct_3(false, 1949f, vec4<i32>(1i, -1i, -1i, -51732i), Struct_1(vec3<i32>(-43261i, -24357i, 20003i), vec4<i32>(-1i, -22956i, -355i, 1i), true)), Struct_3(false, 1327f, vec4<i32>(2147483647i, 1i, 43475i, -2823i), Struct_1(vec3<i32>(1i, 40408i, -54174i), vec4<i32>(i32(-2147483648), 1384i, 25293i, 35382i), false)), Struct_3(true, -1183f, vec4<i32>(i32(-2147483648), 2147483647i, 0i, 10467i), Struct_1(vec3<i32>(0i, -1i, 2147483647i), vec4<i32>(5988i, 0i, i32(-2147483648), 2046i), false)), Struct_3(false, 678f, vec4<i32>(31986i, 10715i, 1i, 1i), Struct_1(vec3<i32>(-1i, -30560i, 1i), vec4<i32>(-1i, -3493i, -4430i, 2147483647i), true)), Struct_3(false, 1473f, vec4<i32>(58545i, 0i, 20801i, -25909i), Struct_1(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec4<i32>(5629i, -62036i, -65429i, 17773i), false)), Struct_3(true, -203f, vec4<i32>(53080i, -1i, 2147483647i, 2147483647i), Struct_1(vec3<i32>(19581i, 0i, -36170i), vec4<i32>(46413i, -8867i, 1i, 0i), false)), Struct_3(false, -616f, vec4<i32>(i32(-2147483648), i32(-2147483648), -48320i, 34530i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 39147i), vec4<i32>(2147483647i, -58955i, -26557i, 2147483647i), true)), Struct_3(false, -689f, vec4<i32>(-1i, -18043i, -9626i, -6413i), Struct_1(vec3<i32>(46133i, 0i, 42552i), vec4<i32>(-10184i, 0i, i32(-2147483648), i32(-2147483648)), true)), Struct_3(false, 509f, vec4<i32>(-23221i, -1i, 0i, -16003i), Struct_1(vec3<i32>(-2750i, 1i, -25928i), vec4<i32>(-1i, i32(-2147483648), -9971i, -24615i), false)), Struct_3(true, 1174f, vec4<i32>(1i, 1i, -7091i, 18261i), Struct_1(vec3<i32>(3591i, 1i, 39546i), vec4<i32>(1037i, 90887i, 2147483647i, -30168i), true)), Struct_3(true, -1260f, vec4<i32>(1i, -5390i, i32(-2147483648), 64179i), Struct_1(vec3<i32>(-6633i, 2147483647i, 0i), vec4<i32>(1i, 11637i, 2147483647i, i32(-2147483648)), true)));

var<private> global1: i32 = -15905i;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: array<vec3<bool>, 20>;

var<private> global4: vec4<f32> = vec4<f32>(-612f, -325f, -918f, 1367f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(-(~arg_0.d.b.wxw), _wgslsmith_mod_vec4_i32(arg_0.d.b, abs(arg_0.c)), !arg_0.a);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global4.xy - _wgslsmith_f_op_vec2_f32(-global4.wx))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(426f, arg_0.b)), _wgslsmith_f_op_f32(abs(global4.x)), true)))));
    let var_2 = arg_0.d.a;
    let var_3 = reverseBits(vec2<i32>(30194i, arg_0.d.b.x)) & _wgslsmith_mult_vec2_i32(vec2<i32>(~(var_2.x | 0i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.x, -2147483647i, 19675i), vec3<i32>(-2147483647i, -1i, arg_0.d.a.x), false), vec3<i32>(-40723i, arg_0.c.x, 27546i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_2.x, u_input.b.x), var_2.zy, ~(vec2<i32>(-9932i, -21776i) >> (u_input.c.xz % vec2<u32>(32u)))));
    global4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-572f, arg_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.x)))))), var_1.x, -262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-625f, 1000f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) * _wgslsmith_div_f32(104f, _wgslsmith_div_f32(var_1.x, var_1.x))), -186f, arg_0.b, -1157f));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    global1 = 2147483647i;
    global3 = array<vec3<bool>, 20>();
    let var_0 = global4.xx;
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, var_0.x, global4.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, global4.x, -1000f, -214f) * vec4<f32>(global4.x, -742f, global4.x, -1000f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1348f, -1401f, global4.x, var_0.x), vec4<f32>(global4.x, 1296f, global4.x, global4.x))), vec4<f32>(var_0.x, 1004f, global4.x, global4.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(false, var_0.x, vec4<i32>(u_input.b.x, 66526i, arg_2.x, -29783i), Struct_1(arg_2, vec4<i32>(-2147483647i, -1i, -14190i, -23543i), true)))), vec4<f32>(1875f, -902f, global4.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1339f), var_0.x, _wgslsmith_div_f32(global4.x, 1250f)))));
    var var_1 = Struct_1(-(arg_2 ^ min(-u_input.b, arg_2 ^ arg_2)), ~(-(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -14290i, -1i, -2147483647i))), false);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 203f))))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    global3 = array<vec3<bool>, 20>();
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(36901i, 1732i, select(u_input.b.x, u_input.b.x, all(!vec2<bool>(true, global2.x)))), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, -9359i), ~u_input.b.x, u_input.b.x));
    let var_1 = !((!global2.x && true) & true);
    return Struct_1(countOneBits(u_input.b), vec4<i32>(-max(0i, -38803i) << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19540u, u_input.c.x, 0u, 4294967295u), vec4<u32>(26473u, u_input.a, 4294967295u, u_input.c.x)), ~u_input.a) % 32u), reverseBits(var_0.x), _wgslsmith_dot_vec2_i32(max(_wgslsmith_mod_vec2_i32(var_0.zx, vec2<i32>(-2147483647i, u_input.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, var_0.x), u_input.b.yz, u_input.b.xy)), vec2<i32>(1i, 27118i)), var_0.x), var_1);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_2(vec3<u32>(44752u, 863u, 42975u), false, u_input.b))) + _wgslsmith_f_op_f32(ceil(724f)))), !(!select(select(vec4<bool>(global2.x, false, true, false), vec4<bool>(true, true, true, global2.x), vec4<bool>(false, false, global2.x, true)), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(global2.x, global2.x, true, false)), vec4<bool>(false, global2.x, false, global2.x))));
    global2 = !vec4<bool>(all(!vec4<bool>(global2.x, true, global2.x, true)) && false, var_0.c, true, true);
    var var_1 = -24896i;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global4.yzx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(~(~arg_0), 13u)])).www)));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(-u_input.b.x, _wgslsmith_sub_i32(1i, 2147483647i)), ~(-125i), u_input.b.x, -1i), firstTrailingBit(vec4<i32>(var_0.a.x, u_input.b.x, u_input.b.x, 10452i) ^ var_0.b)) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(~min(vec4<u32>(u_input.c.x, 5844u, 23787u, 0u), vec4<u32>(arg_0, arg_0, u_input.a, 46819u))), abs(vec4<u32>(46153u | arg_0, _wgslsmith_sub_u32(u_input.c.x, arg_0), u_input.c.x ^ 52854u, 19645u))) % 32u);
    return Struct_1(-vec3<i32>(var_0.a.x << (~arg_0 % 32u), max(firstTrailingBit(var_3), 19123i), _wgslsmith_add_i32(i32(-1i) * -2775i, var_3)), ~((var_0.b << (vec4<u32>(u_input.c.x, 1u, arg_0, 56062u) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_3, -4591i, -2147483647i, -35320i), var_0.b)) | -(var_0.b | min(var_0.b, vec4<i32>(u_input.b.x, -1i, var_3, -1i))), any(global2.zy));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_3 {
    let var_0 = global2.wzw;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e) * _wgslsmith_f_op_vec3_f32(round(arg_0.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, arg_0.e.x, arg_0.e.x)), global2.xxx)))));
    let var_2 = Struct_3(func_1(u_input.c.x).c, _wgslsmith_f_op_f32(min(1367f, -1000f)), -arg_0.a.b, arg_0.c);
    var var_3 = Struct_3(global2.x, -636f, select(vec4<i32>(-55111i >> (1u % 32u), abs(u_input.b.x), u_input.b.x >> (4294967295u % 32u), -2147483647i), (vec4<i32>(11086i, -31858i, 0i, 14424i) >> (vec4<u32>(u_input.a, 103418u, 71806u, 4294967295u) % vec4<u32>(32u))) ^ max(var_2.d.b, arg_0.c.b), !select(vec4<bool>(arg_1, var_2.d.c, var_0.x, true), vec4<bool>(true, true, false, var_2.d.c), vec4<bool>(arg_2, true, true, arg_1))) | var_2.d.b, Struct_1(var_2.c.zzw, -(firstLeadingBit(vec4<i32>(u_input.b.x, var_2.d.a.x, 32311i, -2067i)) ^ -arg_0.c.b), arg_2));
    let var_4 = select(abs(u_input.a >> (u_input.a % 32u)), u_input.a, var_0.x);
    return Struct_3(any(vec3<bool>(false, _wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.yy) == var_4, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1186f) + var_2.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)), -1945f)))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.a.b, vec4<i32>(-1i, -11094i, -2147483647i, var_3.d.b.x)) << (~vec4<u32>(u_input.a, 4294967295u, 0u, var_4) % vec4<u32>(32u)), select(vec4<i32>(var_3.c.x, var_3.c.x, var_2.c.x, 2147483647i), vec4<i32>(2147483647i, u_input.b.x, 2147483647i, -7899i), arg_0.c.c)) ^ _wgslsmith_mod_vec4_i32(~var_2.d.b, _wgslsmith_mod_vec4_i32(select(var_2.d.b, var_2.c, arg_2), _wgslsmith_div_vec4_i32(var_3.c, vec4<i32>(0i, arg_0.a.b.x, var_2.c.x, -61304i)))), func_1(~_wgslsmith_clamp_u32(min(4294967295u, 60774u), ~1u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 20>();
    var var_0 = global4.x;
    var var_1 = func_5(Struct_2(func_1(0u), global2.wz, Struct_1(-max(vec3<i32>(56i, -92025i, u_input.b.x), vec3<i32>(u_input.b.x, 20412i, 49062i)), vec4<i32>(~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.b.x, -19853i)), 2147483647i, -u_input.b.x), false), _wgslsmith_div_i32(1094i, ~u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global4.zxx, _wgslsmith_f_op_vec3_f32(ceil(global4.wyw)), global3[_wgslsmith_index_u32(select(14082u, 1u, false), 20u)])))), true, global2.x);
    let var_2 = Struct_1(~select(abs(vec3<i32>(-25789i, 5461i, -6694i)), _wgslsmith_mult_vec3_i32(var_1.d.a, vec3<i32>(u_input.b.x, -43316i, 0i)), func_4(1547f, vec4<bool>(false, var_1.d.c, false, var_1.d.c)).c) | (_wgslsmith_sub_vec3_i32(var_1.d.a, u_input.b) | ~u_input.b), var_1.c, any(vec4<bool>(all(vec4<bool>(true, true, global2.x, false)), all(vec4<bool>(global2.x, var_1.d.c, var_1.a, var_1.d.c)), _wgslsmith_f_op_f32(var_1.b - -1361f) <= var_1.b, global4.x != var_1.b)));
    var var_3 = var_2;
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1608f, 441f, -409f, _wgslsmith_f_op_f32(-992f + -1829f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_3.c, global4.x, vec4<i32>(var_1.d.a.x, var_2.b.x, 1i, -22241i), var_2)))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -1000f, -504f, -294f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), func_5(Struct_2(Struct_1(vec3<i32>(u_input.b.x, var_2.b.x, -15549i), var_1.d.b, var_1.d.c), global2.xy, Struct_1(var_2.a, var_1.c, var_1.d.c), 39083i, vec3<f32>(762f, -716f, 549f)), true, var_3.c).b, func_5(Struct_2(Struct_1(vec3<i32>(var_1.c.x, -10747i, u_input.b.x), var_3.b, true), vec2<bool>(false, global2.x), var_2, u_input.b.x, global4.wyz), global2.x, var_3.c).b, _wgslsmith_f_op_f32(-global4.x)), !(!vec4<bool>(false, var_3.c, true, var_3.c))))));
    var var_4 = vec3<u32>(max(countOneBits(_wgslsmith_add_u32(u_input.a, 1u)), _wgslsmith_dot_vec2_u32(~u_input.c.yy, firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(u_input.c.x, 33760u))))), u_input.c.x, firstLeadingBit(55666u));
    let var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.zxz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.yyw * global4.zww))), _wgslsmith_f_op_vec3_f32(select(global4.yww, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global4.x, global4.x), _wgslsmith_f_op_f32(var_1.b + -1000f), global4.x)), !any(!global3[_wgslsmith_index_u32(0u, 20u)])))));
    var var_6 = _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(var_1.d.a.x), var_1.c.x, _wgslsmith_dot_vec4_i32(var_3.b, (var_2.b << (vec4<u32>(8488u, var_4.x, 12972u, 61178u) % vec4<u32>(32u))) | ~vec4<i32>(var_2.b.x, 1i, 66384i, 1i))), ~(vec3<i32>(-var_1.d.a.x, var_1.c.x, -2147483647i) << (~(~u_input.c) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_1.b, -2022f)), select(~(-1i), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x, var_6.x), 1i, abs(var_1.d.b.x)), true), _wgslsmith_f_op_f32(sign(-1371f)));
}

