struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-19982i, -985i, vec3<f32>(246f, -245f, -1641f), vec2<bool>(false, false), 10752u), Struct_2(Struct_1(2147483647i, -1i, vec3<f32>(1143f, -216f, -662f), vec2<bool>(true, false), 159022u), Struct_1(23840i, i32(-2147483648), vec3<f32>(185f, -258f, -589f), vec2<bool>(true, false), 1u)), vec2<u32>(23595u, 16573u), Struct_2(Struct_1(60604i, 31303i, vec3<f32>(634f, 1189f, 228f), vec2<bool>(false, false), 21284u), Struct_1(2147483647i, 81164i, vec3<f32>(-100f, 278f, 1360f), vec2<bool>(false, false), 125858u)), vec3<i32>(44209i, -1i, 2147483647i));

var<private> global1: i32;

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(1i, -1i, vec3<f32>(-941f, -222f, 264f), vec2<bool>(true, true), 63795u), Struct_1(i32(-2147483648), i32(-2147483648), vec3<f32>(1000f, -178f, 222f), vec2<bool>(false, true), 0u)));

var<private> global3: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-176f, -246f), vec2<f32>(-486f, 1784f), vec2<f32>(2128f, 233f), vec2<f32>(1000f, -1000f), vec2<f32>(-1000f, -1000f), vec2<f32>(792f, 1310f), vec2<f32>(-1420f, 1233f), vec2<f32>(-648f, -2167f), vec2<f32>(469f, 1282f), vec2<f32>(-805f, 1000f), vec2<f32>(447f, -239f), vec2<f32>(-1457f, 980f), vec2<f32>(204f, 314f), vec2<f32>(-666f, -216f), vec2<f32>(129f, -525f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = true;
    var var_1 = vec3<i32>(_wgslsmith_add_i32(global0.e.x, -global0.e.x), arg_0.a.b.b << (u_input.c.x % 32u), 1i);
    var var_2 = Struct_1(-(i32(-1i) * -1i), var_1.x | (var_1.x ^ (i32(-1i) * -global0.b.a.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.b.c.x, -858f, _wgslsmith_f_op_f32(round(-1240f))), _wgslsmith_f_op_vec3_f32(global0.d.a.c * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, global2.a.b.c.x, global0.a.c.x), global0.d.b.c))))), arg_0.a.a.c)), !vec2<bool>(all(select(vec3<bool>(global2.a.b.d.x, false, false), vec3<bool>(arg_0.a.b.d.x, false, false), vec3<bool>(false, global2.a.a.d.x, false))), !global0.b.b.d.x), global2.a.b.e);
    global3 = array<vec2<f32>, 15>();
    let var_3 = Struct_2(global0.d.b, Struct_1(1544i, -_wgslsmith_mult_i32(u_input.b, firstLeadingBit(-1i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(160f * global0.d.b.c.x), -206f, -185f))), global0.a.d, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 34841u), global0.c ^ ~global0.c)));
    return _wgslsmith_f_op_vec2_f32(sign(var_2.c.xz));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: i32) -> Struct_3 {
    var var_0 = global0.b;
    let var_1 = ~_wgslsmith_mod_vec4_u32(select(abs(vec4<u32>(1u, var_0.a.e, 1u, 34499u)), vec4<u32>(global2.a.a.e, _wgslsmith_sub_u32(1u, 1u), _wgslsmith_mult_u32(arg_0.x, 1u), u_input.a.x), var_0.a.d.x & (arg_1.x && global0.a.d.x)), abs(arg_0));
    global3 = array<vec2<f32>, 15>();
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(Struct_2(Struct_1(arg_2, 0i, vec3<f32>(global0.a.c.x, -195f, global0.d.a.c.x), vec2<bool>(false, true), 57459u), Struct_1(u_input.b, 71471i, vec3<f32>(240f, global0.b.b.c.x, global0.b.b.c.x), vec2<bool>(true, global2.a.a.d.x), 1u)))))))));
    var var_3 = Struct_2(var_0.b, Struct_1(0i << (countOneBits(1u) % 32u), var_0.b.a, vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1583f), _wgslsmith_f_op_f32(ceil(global2.a.a.c.x))), global0.a.d, ~u_input.a.x));
    return Struct_3(var_3.b, global2.a, ~(~(var_1.zx ^ vec2<u32>(94392u, 45923u))) ^ select(select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0.x), arg_0.wy), ~vec2<u32>(global0.a.e, 17316u), global0.a.d.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(8946u, var_3.a.e), vec2<u32>(0u, 80511u), arg_0.zz) ^ reverseBits(vec2<u32>(var_1.x, 36912u)), !all(vec3<bool>(false, global0.d.a.d.x, var_0.b.d.x))), global0.d, ~global0.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = global0.e.x;
    var var_0 = global0.b;
    let var_1 = global0.d.b.d.x;
    var var_2 = arg_0.b.a.b;
    let var_3 = arg_0.b.a.d.x;
    return func_2(firstLeadingBit(~vec4<u32>(30753u, 1u, _wgslsmith_sub_u32(global0.b.b.e, 34700u), 0u)), !(!global0.d.a.d), ~(~2147483647i)).d.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 669f;
    var var_1 = global0.a.e;
    var var_2 = global2.a;
    var var_3 = arg_1.b;
    let var_4 = Struct_2(var_2.a, arg_1);
    return Struct_1(i32(-1i) * -15556i, max(-32621i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.b, _wgslsmith_mod_i32(arg_0.b.a.a, 10640i)), 44529i)), vec3<f32>(var_2.a.c.x, var_2.b.c.x, _wgslsmith_f_op_f32(ceil(global0.d.b.c.x))), select(func_2(min(vec4<u32>(var_4.a.e, var_4.b.e, 4294967295u, 4294967295u) ^ vec4<u32>(6350u, arg_0.c.x, arg_0.d.a.e, global2.a.a.e), vec4<u32>(var_2.b.e, 47344u, arg_0.d.b.e, global0.c.x)), global0.d.b.d, -43997i).a.d, !vec2<bool>(global2.a.a.d.x, true), arg_1.d.x), global2.a.a.e);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(func_5(Struct_3(func_4(func_2(vec4<u32>(global2.a.b.e, 87324u, 1856u, global2.a.b.e), vec2<bool>(true, true), global2.a.a.b), u_input.c, vec4<bool>(global2.a.b.d.x, false, true, true)), func_2(vec4<u32>(4294967295u, 65899u, 4294967295u, u_input.a.x), select(global2.a.b.d, global2.a.a.d, vec2<bool>(global0.a.d.x, true)), _wgslsmith_mult_i32(u_input.b, global2.a.b.b)).b, vec2<u32>(4294967295u, global0.b.a.e), func_2(firstTrailingBit(vec4<u32>(1u, u_input.c.x, global0.a.e, u_input.c.x)), !vec2<bool>(true, global0.d.b.d.x), global2.a.a.a).d, -global0.e), Struct_1(~2147483647i, _wgslsmith_div_i32(func_2(vec4<u32>(u_input.a.x, 1u, u_input.c.x, u_input.a.x), vec2<bool>(global0.a.d.x, false), 11509i).a.b, _wgslsmith_add_i32(11932i, global0.a.a)), _wgslsmith_f_op_vec3_f32(round(global0.d.b.c)), !func_2(vec4<u32>(17232u, u_input.c.x, u_input.a.x, 2103u), global2.a.a.d, global0.d.a.a).a.d, u_input.c.x)), func_2(select(~vec4<u32>(u_input.c.x, u_input.c.x, 59366u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 13038u, 4294967295u, 27352u) ^ vec4<u32>(1u, global0.c.x, 7766u, u_input.c.x), vec4<u32>(u_input.c.x, 51062u, global0.b.a.e, u_input.a.x)), vec4<bool>(true, true, !global2.a.a.d.x, any(vec4<bool>(false, true, true, global2.a.b.d.x)))), func_2(~reverseBits(vec4<u32>(40479u, 34663u, 4294967295u, 34493u)), global0.b.a.d, _wgslsmith_sub_i32(-1i, -global0.b.a.a)).d.b.d, -2147483647i).d, _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c.x & 4294967295u), 15849u), ~u_input.c.zz), Struct_2(global2.a.b, global2.a.b), global0.e);
    let var_1 = global0.d.a;
    var_0 = Struct_3(func_2(~abs(~vec4<u32>(0u, var_1.e, 26464u, u_input.c.x)), func_5(Struct_3(Struct_1(1i, -1i, vec3<f32>(-927f, 436f, -2371f), vec2<bool>(global2.a.b.d.x, var_1.d.x), 4294967295u), func_2(vec4<u32>(var_0.a.e, var_0.b.b.e, global2.a.b.e, 1665u), vec2<bool>(var_0.d.a.d.x, var_1.d.x), -1i).d, global0.c, Struct_2(Struct_1(u_input.b, global0.d.a.b, var_1.c, vec2<bool>(false, false), var_1.e), global2.a.b), abs(vec3<i32>(u_input.b, var_0.e.x, var_1.a))), global2.a.b).d, global0.b.b.a).d.a, func_2(~(~select(vec4<u32>(var_0.a.e, 0u, var_0.d.a.e, 46492u), vec4<u32>(34326u, var_0.a.e, 0u, var_1.e), vec4<bool>(global0.b.a.d.x, true, global2.a.a.d.x, false))), var_0.d.a.d, 0i).d, ~vec2<u32>(0u, _wgslsmith_div_u32(u_input.c.x, 1u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global2.a.b.e, 52409u), 17492u), _wgslsmith_sub_vec2_u32(u_input.c.xx, vec2<u32>(global2.a.a.e, 4294967295u)) ^ ~vec2<u32>(global2.a.b.e, var_1.e)) % vec2<u32>(32u)), global2.a, ~_wgslsmith_mod_vec3_i32(global0.e, vec3<i32>(u_input.b, -2147483647i, ~global0.e.x)));
    var var_2 = var_0.e.x;
    let var_3 = vec3<u32>(4294967295u, func_4(Struct_3(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 16050u, var_0.a.e, 18773u), vec4<u32>(1u, 11605u, global2.a.b.e, u_input.c.x)), vec2<bool>(global2.a.a.d.x, global0.d.b.d.x), _wgslsmith_add_i32(u_input.b, global0.a.a)).b.a, global2.a, vec2<u32>(30785u << (var_0.b.a.e % 32u), ~44624u), func_2(vec4<u32>(u_input.c.x, var_1.e, 35758u, u_input.a.x), vec2<bool>(true, global0.d.a.d.x), firstLeadingBit(2147483647i)).d, -vec3<i32>(-1i, 2147483647i, global0.e.x)), vec3<u32>(global2.a.b.e, 1u, 1u), vec4<bool>(!var_0.d.a.d.x, global0.a.d.x, (41276u << (global0.d.a.e % 32u)) >= _wgslsmith_dot_vec2_u32(var_0.c, var_0.c), func_5(func_2(vec4<u32>(var_0.c.x, 0u, 1u, 7275u), global0.d.a.d, 1i), func_2(vec4<u32>(691u, 1u, u_input.a.x, 4294967295u), global2.a.b.d, var_0.b.a.b).a).d.x)).e, max((var_1.e ^ ~var_0.b.b.e) & ~93469u, ~global2.a.a.e));
    return func_2(vec4<u32>(global2.a.a.e, select(~(var_1.e << (1u % 32u)), (0u << (var_1.e % 32u)) ^ min(var_1.e, 4294967295u), var_1.d.x), _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(4294967295u, global2.a.a.e)) | _wgslsmith_sub_u32(~var_3.x, 1u), var_0.b.b.e), !vec2<bool>(!var_0.b.b.d.x, any(select(vec4<bool>(global2.a.a.d.x, var_0.b.a.d.x, true, var_1.d.x), vec4<bool>(false, false, false, var_1.d.x), true))), reverseBits(-global0.e.x));
}

fn func_6(arg_0: Struct_3) -> i32 {
    let var_0 = func_1().a.d;
    let var_1 = global0.a.e;
    let var_2 = select(func_1().a.d, arg_0.d.a.d, !(!vec2<bool>(true, !global0.a.d.x)));
    global0 = arg_0;
    let var_3 = arg_0.d;
    return select(1i, func_4(func_1(), select(u_input.c, ~vec3<u32>(3722u, 4294967295u, var_3.b.e), vec3<bool>(true, any(vec3<bool>(true, true, false)), !var_0.x)), vec4<bool>(global0.b.b.d.x, !(!global0.b.b.d.x), false, var_0.x)).a, global2.a.b.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a.b.d.x;
    var var_1 = 0u;
    var var_2 = global2.a.a.d.x;
    global1 = 1i;
    var var_3 = Struct_1(u_input.b, -(~func_6(func_1())), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-865f, -646f)), global0.d.a.c.x), 1145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.b.c.x)))), !global0.b.b.d, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-29463i, global0.e.x, 28072i, -43984i), vec4<i32>(var_3.b, var_3.a, var_3.a, 1i) | vec4<i32>(-1i, var_3.a, 33558i, 1i), !vec4<bool>(true, false, global0.d.a.d.x, global0.d.a.d.x)), vec4<i32>(var_3.b >> (1u % 32u), ~(-1i), var_3.a ^ global2.a.b.b, 4141i))), global2.a.a.c, vec3<i32>(~_wgslsmith_div_i32(u_input.b << (var_3.e % 32u), global2.a.a.b << (8151u % 32u)), 27114i, -1i));
}

