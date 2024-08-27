struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(40664i, Struct_1(vec3<f32>(-775f, 796f, 1436f), vec2<bool>(true, false), -35666i, vec3<u32>(58287u, 0u, 1u), 2147483647i), vec2<bool>(false, true), 4294967295u);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<f32>(-1000f, -1329f, 1633f), vec2<bool>(true, false), 23673i, vec3<u32>(53269u, 34315u, 4294967295u), -2860i), vec3<i32>(6790i, i32(-2147483648), 1i), Struct_2(54400i, Struct_1(vec3<f32>(-904f, 973f, -791f), vec2<bool>(true, true), 2147483647i, vec3<u32>(0u, 1u, 31019u), 1i), vec2<bool>(true, false), 27449u), 40116u, -1i);

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<bool, 1> = array<bool, 1>(false);

var<private> global4: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    return _wgslsmith_mod_vec3_i32(vec3<i32>(1616i, global0.b.e, _wgslsmith_add_i32(countOneBits(-global0.b.c), _wgslsmith_clamp_i32(global0.a, firstTrailingBit(global0.a), 0i))), ~(_wgslsmith_clamp_vec3_i32(reverseBits(global1.b), firstTrailingBit(global1.b), reverseBits(vec3<i32>(-40568i, global1.c.b.c, global0.a))) ^ -abs(global1.b)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> vec3<i32> {
    let var_0 = global1.b.x;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-245f * global1.c.b.a.x) + _wgslsmith_f_op_f32(min(global1.c.b.a.x, -780f))))))));
    var var_2 = global0.b.d.x;
    global4 = 32594i;
    var var_3 = firstLeadingBit(~(-35014i));
    return func_3(_wgslsmith_f_op_vec2_f32(-global1.c.b.a.zy));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, 2203f, 1000f, 798f) + vec4<f32>(arg_2.a.a.x, global0.b.a.x, -1770f, arg_2.a.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1189f, arg_2.a.a.x, 2093f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1224f + _wgslsmith_f_op_f32(-1000f * arg_2.c.b.a.x)) + arg_0)));
    global0 = arg_2.c;
    var var_2 = global0.b;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 353f)), global0.b.a.x);
    return arg_2.c;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_4(-258f, Struct_5(global1.b), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.b.a.x, 960f, global1.c.b.a.x)), vec3<f32>(422f, -412f, global1.c.b.a.x))), vec2<bool>(false, false), i32(-1i) * -global0.a, global0.b.d, 0i), _wgslsmith_mod_vec3_i32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-989f, global1.a.a.x, global1.a.a.x, 616f) + vec4<f32>(-584f, global1.c.b.a.x, 376f, -387f)), 568f), global1.b), Struct_2(1i, Struct_1(vec3<f32>(global0.b.a.x, -1711f, global0.b.a.x), !vec2<bool>(global0.b.b.x, global0.c.x), u_input.a | 2147483647i, global0.b.d, 29109i), global0.b.b, abs(4294967295u)), _wgslsmith_dot_vec3_u32(~global1.a.d, max(global1.a.d, vec3<u32>(global1.d, global0.d, global0.d))) | ~(~4294967295u), _wgslsmith_mod_i32(~global1.e, _wgslsmith_mult_i32(select(3787i, global0.b.c, global1.a.b.x), _wgslsmith_mult_i32(global1.c.a, u_input.a)))));
    let var_0 = _wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(firstTrailingBit(global0.b.d), ~countOneBits(global0.b.d)), ~(~global0.b.d | vec3<u32>(22285u, 4294967295u, 0u)), select(global3[_wgslsmith_index_u32(arg_0, 1u)], ~global0.b.c > global0.a, _wgslsmith_div_i32(-53095i, u_input.a) == _wgslsmith_mod_i32(u_input.a, 0i))), global0.b.d);
    let var_1 = ~(~(~(vec4<i32>(u_input.a, u_input.a, 9503i, global1.a.c) >> (vec4<u32>(var_0, global0.b.d.x, 9965u, arg_0) % vec4<u32>(32u))) | abs(reverseBits(vec4<i32>(global0.a, 71980i, global1.e, -1i)))));
    global0 = Struct_2(_wgslsmith_mult_i32(global0.b.e, -(global1.b.x & 1i)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.a * vec3<f32>(global0.b.a.x, global1.a.a.x, -2044f))), global0.b.a, !(!global1.a.b.x))), select(vec2<bool>(any(global1.c.c), global3[_wgslsmith_index_u32(0u, 1u)]), global0.b.b, global3[_wgslsmith_index_u32(abs(~0u), 1u)]), ~(~(-1i)), global1.c.b.d, ~_wgslsmith_dot_vec3_i32(-global1.b, vec3<i32>(-29757i, global0.b.c, 32147i) << (vec3<u32>(global0.d, global1.a.d.x, 15094u) % vec3<u32>(32u)))), !global0.c, 4294967295u);
    let var_2 = global1.c;
    return func_4(-2228f, Struct_5(_wgslsmith_add_vec3_i32(~func_3(var_2.b.a.yx), ~global1.b)), Struct_3(global1.c.b, var_1.yxx, Struct_2(global1.a.e, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, -282f, -1000f)), !global1.c.c, 1i, global0.b.d, 46322i), vec2<bool>(global3[_wgslsmith_index_u32(24671u, 1u)] & var_2.b.b.x, any(vec4<bool>(var_2.b.b.x, true, global1.a.b.x, false))), ~4294967295u), global0.b.d.x, -2147483647i ^ _wgslsmith_div_i32(reverseBits(u_input.a), 22605i))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.b;
    let var_1 = _wgslsmith_add_u32((~u_input.b >> (u_input.b % 32u)) | _wgslsmith_sub_u32(countOneBits(88507u), ~4294967295u), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, global0.b.d.x), global1.a.d.x, 29189u)) & global1.a.d.x;
    let var_2 = global0.b.d.xz;
    var var_3 = Struct_3(func_1(54421u), -(~firstTrailingBit(-global1.b)), func_4(func_4(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-395f + 137f)), Struct_5(countOneBits(vec3<i32>(18756i, global1.e, -20458i))), Struct_3(Struct_1(global0.b.a, global1.a.b, -2147483647i, global0.b.d, global1.b.x), ~global1.b, Struct_2(-2147483647i, global0.b, vec2<bool>(false, false), global1.a.d.x), 1u, -40091i)).b.a.x, Struct_5(abs(vec3<i32>(u_input.a, global0.b.c, u_input.a))), Struct_3(global1.a, global1.b, func_4(global0.b.a.x, Struct_5(vec3<i32>(u_input.a, 2147483647i, u_input.a)), Struct_3(Struct_1(global0.b.a, global1.c.c, u_input.a, global0.b.d, 52109i), vec3<i32>(u_input.a, global0.b.e, -82191i), Struct_2(global0.b.e, Struct_1(global1.a.a, vec2<bool>(true, true), -26203i, global1.c.b.d, global1.a.c), global1.c.b.b, global1.c.b.d.x), 11269u, -26600i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_2.x, var_1, 31455u), vec4<u32>(var_2.x, global0.d, u_input.b, u_input.b)), -2147483647i)), max(countOneBits(~22130u), ~var_2.x), _wgslsmith_add_i32(10036i, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1342f, -1336f, global1.c.b.a.x, global1.a.a.x) * vec4<f32>(global1.c.b.a.x, global1.c.b.a.x, -1962f, 137f))), _wgslsmith_f_op_f32(min(1657f, _wgslsmith_f_op_f32(step(global1.c.b.a.x, -877f))))).x));
    let var_4 = var_2.x;
    global4 = func_1(global0.b.d.x).c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a.x, ~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, var_2.x, var_3.a.d.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 62940u, var_2.x, 40734u), vec4<u32>(var_1, 0u, var_1, var_3.d))) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, global0.b.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.d.x, 4294967295u, 21947u, 33170u), vec4<u32>(var_2.x, var_2.x, global0.b.d.x, 34652u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x)), select(var_3.a.d.x, 62353u, func_1(u_input.b).b.x), vec3<u32>(~14313u, ~52425u, ~51688u));
}

