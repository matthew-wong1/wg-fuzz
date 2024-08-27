struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 10>;

var<private> global2: vec3<i32>;

var<private> global3: vec4<f32> = vec4<f32>(362f, -203f, 450f, 282f);

var<private> global4: array<f32, 25> = array<f32, 25>(-1065f, -255f, 1000f, -1740f, -456f, 167f, 419f, -223f, -1000f, -614f, 1909f, 1000f, -1239f, 899f, 114f, -1200f, -359f, -2007f, 789f, 1000f, 1469f, 3093f, 123f, 2139f, -1330f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = 2147483647i;
    let var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-203f + -946f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(-188f - 3977f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(911f))))), _wgslsmith_f_op_f32(604f * global3.x), !(!arg_0.b.x))));
    let var_2 = global3.wxy;
    let var_3 = -u_input.a;
    var var_4 = !arg_0.b.xy;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(firstLeadingBit(arg_0.c), 25u)] + _wgslsmith_div_f32(global4[_wgslsmith_index_u32(arg_0.c, 25u)], -699f)), 585f, _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(~arg_0.c, 25u)])), -275f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_2.x, -895f, var_2.x)))))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global4 = array<f32, 25>();
    let var_0 = arg_0.d.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_sub_i32(69191i, _wgslsmith_mult_i32(u_input.a.x, 9343i)), arg_0.b.b, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.d.c, 0u, 0u)), reverseBits(vec3<u32>(arg_0.d.c, 25744u, arg_0.d.c))), _wgslsmith_f_op_vec3_f32(floor(var_0)), global2.zz)));
    var var_2 = arg_0;
    var var_3 = vec4<i32>(-1i, -firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_2.b.e, global2.yx), -67692i ^ global2.x)), global2.x ^ _wgslsmith_div_i32(~var_2.d.a, global1[_wgslsmith_index_u32(24970u, 10u)]), reverseBits(8160i << (0u % 32u)));
    return Struct_1(~(~0i), !arg_0.b.b, ~((abs(33694u) | firstTrailingBit(arg_0.d.c)) ^ min(min(37369u, 0u), _wgslsmith_mod_u32(0u, 4294967295u))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b.d.x, global4[_wgslsmith_index_u32(countOneBits(var_2.d.c), 25u)], _wgslsmith_f_op_f32(-arg_0.b.d.x)))), vec2<i32>(1i, global2.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(global3.x + 384f);
    global0 = 362f;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global4[_wgslsmith_index_u32(arg_1.c, 25u)], 689f), vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 25u)], 250f, arg_0.d.d.x)), _wgslsmith_f_op_vec3_f32(floor(global3.zxy)), false)), global3.zww)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(arg_0.b.c, 25u)], arg_1.d.x, 1882f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(0u, 10u)], vec4<bool>(true, false, true, false), 1u, arg_1.d, global2.xy))).xyz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.d.x, arg_1.d.x, global4[_wgslsmith_index_u32(14021u, 25u)])), all(!vec3<bool>(arg_1.b.x, arg_0.c.x, arg_0.b.b.x)))) + _wgslsmith_f_op_vec3_f32(max(func_2(arg_0).d, vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-322f + 906f), _wgslsmith_f_op_f32(arg_0.d.d.x - -122f))))));
    let var_2 = arg_0;
    var var_3 = vec3<f32>(arg_1.d.x, func_2(arg_0).d.x, _wgslsmith_f_op_f32(-var_1.x));
    return ~_wgslsmith_add_u32(19878u, ~(~(~26586u)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(max(~arg_0.x, ~arg_0.x), 25u)] - global3.x)) + -600f);
    return Struct_2(vec2<bool>(false, any(vec3<bool>(true, true, true)) | false), func_2(Struct_2(!func_2(Struct_2(vec2<bool>(true, false), Struct_1(1i, vec4<bool>(false, true, false, true), arg_0.x, global3.wyy, vec2<i32>(global2.x, arg_1.x)), vec2<bool>(true, false), Struct_1(42736i, vec4<bool>(true, false, false, false), 0u, vec3<f32>(global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(arg_0.x, 25u)], 1367f), vec2<i32>(43603i, -13622i)))).b.wx, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, -69980i, global1[_wgslsmith_index_u32(arg_0.x, 10u)]), vec3<i32>(u_input.a.x, u_input.a.x, 1i)), vec4<bool>(true, false, false, true), _wgslsmith_mod_u32(arg_0.x, 25894u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, global3.x, -144f), vec3<f32>(global4[_wgslsmith_index_u32(arg_0.x, 25u)], global4[_wgslsmith_index_u32(1u, 25u)], global4[_wgslsmith_index_u32(arg_0.x, 25u)]))), arg_1 << (arg_0.xz % vec2<u32>(32u))), vec2<bool>(true, true), Struct_1(~global2.x, select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(arg_0.x, 25u)], 844f, arg_2.x)), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], -19453i)))), !select(!func_2(Struct_2(vec2<bool>(false, false), Struct_1(arg_1.x, vec4<bool>(false, true, false, true), 1u, vec3<f32>(-218f, -429f, global3.x), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], 45671i)), vec2<bool>(true, false), Struct_1(u_input.a.x, vec4<bool>(false, true, true, true), 1u, global3.wzx, vec2<i32>(arg_1.x, -28411i)))).b.zx, func_2(Struct_2(vec2<bool>(false, true), Struct_1(global2.x, vec4<bool>(false, true, false, false), 4294967295u, global3.zxw, vec2<i32>(0i, u_input.a.x)), vec2<bool>(false, false), Struct_1(arg_1.x, vec4<bool>(false, false, false, true), arg_0.x, global3.wyx, vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(arg_0.x, 10u)])))).b.xy, true), func_2(Struct_2(select(vec2<bool>(false, false), vec2<bool>(true, true), func_2(Struct_2(vec2<bool>(true, false), Struct_1(15136i, vec4<bool>(true, true, true, true), arg_0.x, global3.wyz, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -19469i)), vec2<bool>(true, false), Struct_1(global2.x, vec4<bool>(true, true, true, true), arg_0.x, global3.zww, vec2<i32>(-6606i, global1[_wgslsmith_index_u32(41294u, 10u)])))).b.zw), Struct_1(-40494i ^ global1[_wgslsmith_index_u32(arg_0.x, 10u)], vec4<bool>(false, true, true, true), 4294967295u, vec3<f32>(960f, global3.x, arg_2.x), vec2<i32>(-65755i, -2147483647i) | u_input.a), func_2(Struct_2(vec2<bool>(false, true), Struct_1(global1[_wgslsmith_index_u32(38320u, 10u)], vec4<bool>(false, true, false, true), arg_0.x, vec3<f32>(925f, arg_2.x, -994f), u_input.a), vec2<bool>(false, false), Struct_1(global2.x, vec4<bool>(false, true, true, true), arg_0.x, global3.wzx, vec2<i32>(global1[_wgslsmith_index_u32(arg_0.x, 10u)], u_input.a.x)))).b.yz, Struct_1(firstTrailingBit(arg_1.x), vec4<bool>(true, true, true, false), 1u, global3.zzy, firstTrailingBit(arg_1)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    return func_5(vec4<u32>(~func_4(Struct_2(vec2<bool>(false, true), Struct_1(-13784i, vec4<bool>(false, true, false, false), 26458u, global3.wwz, vec2<i32>(u_input.a.x, -1i)), vec2<bool>(true, true), Struct_1(-74673i, vec4<bool>(true, true, true, true), 79195u, global3.wzy, u_input.a)), func_2(Struct_2(vec2<bool>(true, false), Struct_1(global1[_wgslsmith_index_u32(0u, 10u)], vec4<bool>(true, false, false, true), 51480u, vec3<f32>(arg_0.x, 321f, arg_0.x), vec2<i32>(0i, -36284i)), vec2<bool>(false, false), Struct_1(-36554i, vec4<bool>(false, false, true, false), 42240u, global3.zxy, u_input.a))), vec4<bool>(true, true, true, true)), 0u, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 1u, 10977u), vec4<u32>(37579u, 4294967295u, 1u, 1u))), ~(~_wgslsmith_div_u32(8761u, 4294967295u))), u_input.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-413f, global3.x) + vec2<f32>(1482f, global4[_wgslsmith_index_u32(1u, 25u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, global4[_wgslsmith_index_u32(4294967295u, 25u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(21136u, 25u)]), arg_0.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(!select(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.d.x, -835f, 1151f) * vec3<f32>(-1000f, arg_0.d.x, arg_1.d.d.x))).a, arg_1.d.b.ww, func_2(arg_1).b.wz), func_1(vec3<f32>(global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_1.b.a, arg_0.b, 0u, arg_1.d.d, vec2<i32>(-1i, global1[_wgslsmith_index_u32(arg_1.b.c, 10u)])))).x, _wgslsmith_f_op_f32(max(-467f, global4[_wgslsmith_index_u32(4294967295u, 25u)])))), _wgslsmith_f_op_f32(-arg_1.b.d.x))).b, select(arg_0.b.yw, arg_1.d.b.wx, all(arg_1.b.b.xxz)), func_2(Struct_2(select(!arg_0.b.zy, vec2<bool>(false, arg_1.c.x), func_1(vec3<f32>(arg_0.d.x, arg_0.d.x, 509f)).d.b.x), func_5(vec4<u32>(4294967295u, 1u, arg_1.d.c, 4294967295u) << (vec4<u32>(82071u, 0u, arg_0.c, 20110u) % vec4<u32>(32u)), func_5(vec4<u32>(arg_0.c, 0u, arg_0.c, arg_1.b.c), vec2<i32>(u_input.a.x, u_input.a.x), vec2<f32>(global4[_wgslsmith_index_u32(arg_0.c, 25u)], global4[_wgslsmith_index_u32(22152u, 25u)])).d.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(129f, global4[_wgslsmith_index_u32(1u, 25u)]))).b, func_5(~vec4<u32>(arg_1.b.c, arg_0.c, 0u, 41838u), arg_0.e & vec2<i32>(1151i, 2147483647i), vec2<f32>(828f, -3088f)).b.b.xy, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.a, 0i, 24286i, 16323i), vec4<i32>(14722i, 1i, global1[_wgslsmith_index_u32(29977u, 10u)], 1i)), vec4<bool>(true, arg_1.a.x, arg_1.b.b.x, arg_1.d.b.x), _wgslsmith_clamp_u32(arg_1.b.c, 9430u, arg_1.d.c), global3.yzx, _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(-2147483647i, 1i))))));
    global0 = global4[_wgslsmith_index_u32(~func_4(var_0, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.yxz) * func_1(vec3<f32>(arg_1.b.d.x, 1014f, arg_0.d.x)).b.d)).d, var_0.b.b), 25u)];
    var var_1 = arg_0;
    var var_2 = var_0;
    global2 = ~(~(-vec3<i32>(1i, -2939i, var_1.e.x) >> (_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_1.c, var_2.d.c, 0u)), vec3<u32>(var_0.b.c, arg_1.b.c, var_1.c)) % vec3<u32>(32u))));
    return _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(func_5(vec4<u32>(arg_0.c, 49174u, var_0.b.c, arg_1.d.c), u_input.a, var_0.d.d.zy).b.c, _wgslsmith_div_u32(arg_0.c, var_0.b.c), ~arg_1.d.c), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1364u, 28461u, 57951u), vec3<u32>(4294967295u, 1u, 36377u)), ~2699u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 57729u), vec2<u32>(arg_0.c, 0u)))), ~abs(reverseBits(vec3<u32>(arg_0.c, 1u, 31081u)))), abs(~(~(~vec3<u32>(4294967295u, var_0.d.c, var_0.d.c)))));
}

fn func_7(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(func_5(~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, arg_1.x, arg_1.x, 22439u), select(vec4<u32>(1u, arg_0, 45005u, 4294967295u), vec4<u32>(68218u, arg_1.x, arg_1.x, 17708u), vec4<bool>(true, true, true, false))), vec2<i32>(~select(-18682i, global2.x, true), global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<f32>(global4[_wgslsmith_index_u32(func_6(func_2(Struct_2(vec2<bool>(true, true), Struct_1(u_input.a.x, vec4<bool>(true, true, false, true), arg_0, global3.xzw, vec2<i32>(1i, u_input.a.x)), vec2<bool>(false, true), Struct_1(-2147483647i, vec4<bool>(false, true, true, false), 0u, global3.xwy, vec2<i32>(u_input.a.x, global2.x)))), Struct_2(vec2<bool>(false, true), Struct_1(global1[_wgslsmith_index_u32(11998u, 10u)], vec4<bool>(false, false, false, false), 4294967295u, global3.yxx, u_input.a), vec2<bool>(false, true), Struct_1(-2147483647i, vec4<bool>(true, true, true, false), arg_0, global3.www, vec2<i32>(1i, 50580i)))).x, 25u)], 1333f)).b)).yxy;
    global2 = -select((vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(arg_0, 0u, 4294967295u) % vec3<u32>(32u))) << (~arg_1 % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(13187u, 10u)], 0i, -1i), vec3<i32>(-3711i, 30404i, global2.x)) & ~vec3<i32>(-84867i, 1i, -1i), !all(vec2<bool>(false, false))) >> (vec3<u32>(countOneBits(arg_1.x), ~arg_0, arg_0) % vec3<u32>(32u));
    var var_1 = false;
    global1 = array<i32, 10>();
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(arg_0 << (0u % 32u)), 25u)]), -156f, -1396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x + var_0.x))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0, 25u)] * global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 581f) + _wgslsmith_f_op_f32(var_0.x + 514f)), var_0.x))));
    return func_1(_wgslsmith_f_op_vec3_f32(-global3.zzy)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(firstTrailingBit((1u >> (0u % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1753u, 27909u), vec2<u32>(6010u, 14605u))) & ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 11132u, 1u, 8904u), vec4<u32>(9729u, 68630u, 0u, 0u)), vec3<u32>(firstLeadingBit(1u), ~1u, 1u) ^ func_6(Struct_1(-2147483647i, vec4<bool>(true, true, true, true), ~0u, vec3<f32>(global3.x, global4[_wgslsmith_index_u32(30823u, 25u)], -1000f), global2.zy), func_1(_wgslsmith_f_op_vec3_f32(global3.yzz * vec3<f32>(global3.x, global4[_wgslsmith_index_u32(20006u, 25u)], 575f)))));
    let var_1 = vec2<u32>(var_0.c, ~(~(~4294967295u)));
    var var_2 = func_5(~(~_wgslsmith_div_vec4_u32(vec4<u32>(92559u, 4294967295u, 4294967295u, var_0.c), vec4<u32>(var_1.x, 57929u, var_1.x, var_1.x))) << (min(vec4<u32>(60990u, 43135u, 13623u, 0u) >> (abs(vec4<u32>(var_1.x, var_0.c, 58271u, var_1.x)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, 24854u, 45832u, var_1.x), vec4<u32>(0u, var_0.c, 29823u, var_1.x))) % vec4<u32>(32u)), ~global2.zx & _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.a), vec2<i32>(-2147483647i, global2.x & global1[_wgslsmith_index_u32(var_1.x, 10u)])), func_1(func_2(Struct_2(func_2(Struct_2(var_0.b.yz, Struct_1(global1[_wgslsmith_index_u32(83486u, 10u)], vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), 0u, vec3<f32>(-1354f, global3.x, -476f), u_input.a), var_0.b.wz, Struct_1(var_0.e.x, var_0.b, 4294967295u, var_0.d, global2.zy))).b.zz, func_5(vec4<u32>(var_1.x, 1u, var_0.c, var_1.x), vec2<i32>(u_input.a.x, 0i), vec2<f32>(global3.x, var_0.d.x)).b, !vec2<bool>(false, var_0.b.x), func_7(var_0.c, vec3<u32>(46484u, 1u, 0u)))).d).b.d.yy).d;
    var var_3 = Struct_2(vec2<bool>(true, var_1.x > 55796u), func_1(var_0.d).b, !vec2<bool>(true, var_2.b.x), func_7(var_2.c, ~(vec3<u32>(var_0.c, var_2.c, var_2.c) ^ (vec3<u32>(var_0.c, 14234u, var_2.c) >> (vec3<u32>(var_1.x, 0u, var_2.c) % vec3<u32>(32u))))));
    var var_4 = func_7(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_2.c, min(4294967295u, 0u), 3113u, func_7(0u, vec3<u32>(var_0.c, 45428u, var_2.c)).c), vec4<u32>(0u, var_2.c << (var_1.x % 32u), var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.d.c, var_2.c), vec3<u32>(var_0.c, 4294967295u, 136u)))), abs(~vec4<u32>(4294967295u, 4294967295u, var_1.x, var_2.c)) | vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4237u), var_2.c, 45053u, ~63078u)), vec3<u32>(countOneBits(~_wgslsmith_mult_u32(var_0.c, var_0.c)), select(32067u, ~_wgslsmith_sub_u32(var_2.c, var_2.c), !(!var_0.b.x)), _wgslsmith_div_u32(23589u, func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1458f, var_2.d.x, var_0.d.x)))).d.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(var_1.x, 10u)], var_0.e.x, -3840i)), -vec4<i32>(-32861i, var_0.a, var_4.e.x, global2.x), min(vec4<i32>(50131i, -12606i, 10390i, -47105i), vec4<i32>(2147483647i, var_4.e.x, var_2.e.x, 1i))) | (vec4<i32>(2147483647i, global2.x, var_4.e.x, _wgslsmith_sub_i32(var_2.e.x, global2.x)) | select(-vec4<i32>(global2.x, var_4.e.x, 1i, var_3.d.a), abs(vec4<i32>(u_input.a.x, 1i, 0i, 1i)), vec4<bool>(false, true, var_3.b.b.x, var_2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d.x * -1197f))), -587f, var_3.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(var_3.b)).x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.d.x * 1000f), 1945f))));
}

