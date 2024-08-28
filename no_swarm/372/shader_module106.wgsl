struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global2: vec2<i32> = vec2<i32>(-11030i, -1i);

var<private> global3: array<i32, 18>;

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<i32>(2370i, -29657i, 19421i), false, vec3<bool>(false, false, true), 37690u, vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(39971i, -1i, 4654i), false, vec3<bool>(true, false, false), 8325u, vec4<bool>(false, false, false, true)), Struct_2(vec3<i32>(2147483647i, -1i, -49273i), false, vec3<bool>(true, true, false), 78605u, vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(-6847i, 37256i, -26465i), false, vec3<bool>(true, false, false), 4294967295u, vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(-13713i, -46767i, 33165i), true, vec3<bool>(false, true, true), 90837u, vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(-1i, -38230i, 38721i), true, vec3<bool>(false, false, true), 1u, vec4<bool>(true, true, true, false)), Struct_2(vec3<i32>(45769i, -1i, -11968i), false, vec3<bool>(false, true, false), 40612u, vec4<bool>(true, true, false, false)), Struct_2(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), false, vec3<bool>(false, false, true), 4294967295u, vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 0i), true, vec3<bool>(true, false, false), 63544u, vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(-26291i, i32(-2147483648), 14069i), true, vec3<bool>(false, true, false), 1u, vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(-46215i, 28255i, -25897i), false, vec3<bool>(true, false, true), 30332u, vec4<bool>(false, false, true, false)), Struct_2(vec3<i32>(2147483647i, 31272i, -17045i), true, vec3<bool>(false, true, false), 0u, vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(2147483647i, 302i, 10623i), true, vec3<bool>(false, false, true), 30673u, vec4<bool>(true, true, true, false)), Struct_2(vec3<i32>(-37633i, 6216i, -1i), false, vec3<bool>(false, false, true), 32352u, vec4<bool>(true, false, true, true)), Struct_2(vec3<i32>(20898i, 44808i, -1i), true, vec3<bool>(true, false, false), 1u, vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(-1i, 0i, -6625i), true, vec3<bool>(true, true, true), 1u, vec4<bool>(true, true, true, true)), Struct_2(vec3<i32>(-65960i, -5484i, -32407i), true, vec3<bool>(true, true, true), 4294967295u, vec4<bool>(true, true, true, true)), Struct_2(vec3<i32>(37354i, -1i, -61060i), false, vec3<bool>(false, true, true), 9030u, vec4<bool>(false, false, true, true)), Struct_2(vec3<i32>(15187i, -13043i, 2147483647i), false, vec3<bool>(true, false, false), 52388u, vec4<bool>(false, true, true, false)), Struct_2(vec3<i32>(13630i, 23697i, 1i), true, vec3<bool>(false, true, true), 58770u, vec4<bool>(false, false, true, false)), Struct_2(vec3<i32>(-27156i, 1i, 9173i), true, vec3<bool>(false, true, true), 0u, vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(2147483647i, 18835i, 14581i), false, vec3<bool>(false, false, false), 0u, vec4<bool>(true, true, true, false)), Struct_2(vec3<i32>(11059i, 2147483647i, 2147483647i), true, vec3<bool>(true, false, false), 68488u, vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(i32(-2147483648), 40903i, -31196i), false, vec3<bool>(true, false, true), 4294967295u, vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(18022i, 447i, 23770i), false, vec3<bool>(false, true, true), 17997u, vec4<bool>(true, false, true, true)), Struct_2(vec3<i32>(1i, 2147483647i, i32(-2147483648)), true, vec3<bool>(false, true, true), 0u, vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(-45093i, -1i, i32(-2147483648)), true, vec3<bool>(true, false, true), 0u, vec4<bool>(false, false, true, false)), Struct_2(vec3<i32>(-1i, 1i, 1i), true, vec3<bool>(false, false, false), 4294967295u, vec4<bool>(false, false, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> vec2<i32> {
    return -(u_input.d.xy ^ _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(30402i), _wgslsmith_mult_i32(global2.x, u_input.d.x)), -vec2<i32>(-8077i, global2.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = global2.x;
    let var_1 = Struct_4(Struct_3(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, global2.x), func_3(70211u, u_input.b.x, Struct_4(Struct_3(u_input.d.xy), Struct_1(-2147483647i, u_input.d.zy, vec3<u32>(22486u, 14298u, 4294967295u), -1085f, vec4<u32>(3148u, 0u, arg_2, 1u)), Struct_1(global2.x, vec2<i32>(-25341i, -1i), vec3<u32>(arg_2, 84489u, arg_2), arg_0.x, vec4<u32>(arg_2, u_input.a, 70989u, arg_2)), Struct_1(global2.x, vec2<i32>(global3[_wgslsmith_index_u32(1u, 18u)], -1i), vec3<u32>(528u, arg_2, u_input.b.x), 944f, vec4<u32>(arg_2, 4294967295u, u_input.a, u_input.b.x)), true))) >> (vec2<u32>(4294967295u & u_input.a, 1u) % vec2<u32>(32u))), Struct_1(-2147483647i, ~u_input.e.zy, ~reverseBits(vec3<u32>(arg_2, 1u, 49889u) & vec3<u32>(u_input.b.x, arg_2, arg_2)), -878f, ~(~(~vec4<u32>(u_input.a, arg_2, arg_2, u_input.a)))), Struct_1(0i, u_input.d.zx, select(~vec3<u32>(arg_2, arg_2, 24126u) >> (vec3<u32>(u_input.b.x, u_input.b.x, arg_2) % vec3<u32>(32u)), vec3<u32>(48924u & arg_2, u_input.a, ~55232u), global0.x), arg_0.x, ~(~vec4<u32>(arg_2, arg_2, u_input.b.x, arg_2))), Struct_1(abs(global2.x) | ~(-20474i), ~u_input.e.yx, select(vec3<u32>(arg_2 & u_input.b.x, 4294967295u >> (arg_2 % 32u), _wgslsmith_mult_u32(5936u, 47135u)), ~countOneBits(vec3<u32>(76155u, 55010u, 12993u)), global1.x & (arg_0.x <= -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -2021f), min(vec4<u32>(arg_2, 49263u, 4294967295u, arg_2) ^ ~vec4<u32>(5368u, 0u, 3140u, u_input.a), vec4<u32>(arg_2, u_input.a, arg_2, u_input.b.x))), global0.x);
    var var_2 = Struct_4(var_1.a, Struct_1(i32(-1i) * -global2.x, firstLeadingBit(-(u_input.e.zz ^ u_input.d.xy)), var_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, var_1.d.d, false))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))), min(var_1.c.e, firstTrailingBit(countOneBits(var_1.d.e)))), var_1.c, Struct_1(20666i, vec2<i32>(~_wgslsmith_mod_i32(arg_1, var_1.c.b.x), 0i), ~var_1.c.c, _wgslsmith_f_op_f32(floor(115f)), vec4<u32>(~var_1.c.c.x, _wgslsmith_mod_u32(u_input.a, 0u), var_1.c.c.x, var_1.c.c.x)), _wgslsmith_f_op_f32(floor(672f)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(round(-510f)))));
    var var_3 = firstLeadingBit(var_1.d.e.wzz);
    let var_4 = var_2.c.e.yxx;
    return var_1.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    global3 = array<i32, 18>();
    let var_0 = Struct_4(Struct_3(vec2<i32>(-arg_0.x, _wgslsmith_div_i32(arg_0.x, ~2912i))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1347f, arg_1, 878f, -502f) + vec4<f32>(arg_1, arg_1, -659f, -1434f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(-1751f, arg_1), _wgslsmith_f_op_f32(round(-1035f)), arg_1)), -_wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(17226i, -12496i, global3[_wgslsmith_index_u32(4294967295u, 18u)])), u_input.a), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), -991f, _wgslsmith_f_op_f32(step(814f, arg_1)), arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1310f, arg_1, -216f))), i32(-1i) * -29099i, _wgslsmith_sub_u32(u_input.a, u_input.a)), Struct_1(u_input.e.x, vec2<i32>(1i, _wgslsmith_div_i32(u_input.d.x, _wgslsmith_mod_i32(26927i, -2147483647i))), vec3<u32>(4294967295u, func_2(vec4<f32>(-1052f, -1000f, -406f, arg_1), _wgslsmith_mod_i32(1i, global3[_wgslsmith_index_u32(39687u, 18u)]), u_input.b.x).e.x, ~4294967295u), -117f, ~func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -476f, arg_1, -2885f), vec4<f32>(arg_1, arg_1, arg_1, 731f), true)), -1i, u_input.b.x).e), all(select(select(vec4<bool>(global0.x, false, true, true), vec4<bool>(global1.x, global0.x, true, global1.x), select(vec4<bool>(true, false, true, global1.x), vec4<bool>(false, global0.x, true, true), vec4<bool>(global1.x, false, global1.x, global1.x))), !(!vec4<bool>(global0.x, global1.x, true, global1.x)), !all(global0.www))));
    var var_1 = 30008u;
    global2 = func_3(u_input.b.x, u_input.b.x, Struct_4(var_0.a, Struct_1(_wgslsmith_dot_vec2_i32(~u_input.e.xy, -arg_0), vec2<i32>(38534i, 0i) | func_3(3705u, 4294967295u, var_0), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b.e.zyx, vec3<u32>(4015u, 0u, var_0.b.c.x)), vec3<u32>(var_0.c.e.x, 1u, 46874u), vec3<u32>(16472u, 4294967295u, u_input.b.x) << (vec3<u32>(1u, var_0.d.e.x, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(select(-292f, -291f, global1.x))), _wgslsmith_add_vec4_u32(vec4<u32>(42533u, var_0.d.e.x, u_input.a, var_0.b.e.x), vec4<u32>(30713u, 66332u, u_input.b.x, var_0.b.c.x))), var_0.c, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1, -424f, 357f))), ~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(37800u, var_0.d.c.x), 18u)], var_0.d.c.x), true));
    var var_2 = ~var_0.c.a;
    return ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!(!select(vec4<bool>(global1.x, false, global0.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), false))));
    let var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(reverseBits(~_wgslsmith_add_u32(1u, 77392u)), u_input.a), 28u)];
    global0 = var_0.e;
    let var_1 = vec3<i32>(func_1(-u_input.d.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(560f, -723f) * _wgslsmith_div_f32(1410f, 146f)))), func_1(u_input.d.zx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1822f))))) << (max(_wgslsmith_mod_u32(select(6736u, var_0.d, true), var_0.d), 39379u) % 32u), global2.x | -36363i);
    global4 = array<Struct_2, 28>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-561f, _wgslsmith_f_op_f32(-487f * 105f))) - 361f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1484f), _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)));
    global1 = vec4<bool>(reverseBits(117978u) > min(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b.x, var_0.d, var_0.d, 49966u), vec4<u32>(var_0.d, 49781u, var_0.d, u_input.b.x)), ~vec4<u32>(u_input.b.x, 25637u, 64467u, 1u)), u_input.b.x << (u_input.b.x % 32u)), all(vec4<bool>(any(global1.xx), global0.x, u_input.e.x != (global2.x << (101798u % 32u)), !(!var_0.b))), _wgslsmith_f_op_f32(round(-181f)) > -150f, any(vec2<bool>(global0.x, true)));
    global0 = !(!(!(!(!var_0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(min(global2.x, -_wgslsmith_mod_i32(func_1(u_input.e.zx, 327f), _wgslsmith_mod_i32(-42440i, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(938f, -1000f, -3079f, -2158f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1035f, -277f, 727f, -298f)))))), -7890i, firstLeadingBit(~u_input.b.x)).c, ~select(~vec2<u32>(u_input.a, 65045u), u_input.b, !select(vec2<bool>(var_0.b, false), vec2<bool>(false, false), var_0.c.xy)));
}

