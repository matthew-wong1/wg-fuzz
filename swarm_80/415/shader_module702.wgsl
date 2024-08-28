struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(0u, 47874u, 4294967295u), vec3<u32>(0u, 1626u, 1u), vec3<u32>(4294967295u, 4294967295u, 14908u), vec3<u32>(1u, 35772u, 4294967295u), vec3<u32>(49248u, 1u, 4294967295u), vec3<u32>(21472u, 0u, 5320u), vec3<u32>(4294967295u, 4294967295u, 16251u), vec3<u32>(34108u, 1u, 0u), vec3<u32>(1u, 60186u, 0u), vec3<u32>(1u, 1910u, 38229u), vec3<u32>(4294967295u, 33475u, 4294967295u), vec3<u32>(9878u, 10972u, 18059u), vec3<u32>(1u, 42125u, 55671u), vec3<u32>(44259u, 5923u, 0u), vec3<u32>(61737u, 4294967295u, 24741u), vec3<u32>(51556u, 43647u, 4294967295u), vec3<u32>(1u, 4294967295u, 7732u), vec3<u32>(0u, 36969u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(15382u, 4294967295u, 25208u), vec3<u32>(11434u, 4294967295u, 38625u), vec3<u32>(44482u, 96801u, 33510u), vec3<u32>(7991u, 4294967295u, 4294967295u), vec3<u32>(33590u, 4294967295u, 4294967295u), vec3<u32>(0u, 65369u, 59436u), vec3<u32>(0u, 1u, 17085u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(23706u, 78067u, 44866u));

var<private> global1: array<vec2<u32>, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = !vec4<bool>(false, any(vec4<bool>(arg_0.d.d.a.b, true, arg_0.d.e.a.a.x, any(vec4<bool>(true, arg_0.d.e.a.a.x, arg_0.d.e.a.b, arg_0.c.c)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.e.b.x))) == -1815f, arg_0.c.d.a.a.x);
    let var_1 = Struct_1(select(!arg_0.d.e.a.a, select(select(!var_0.zw, arg_0.d.e.a.a, vec2<bool>(true, true)), vec2<bool>(var_0.x, false && arg_0.c.d.a.a.x), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true))), select(vec2<bool>(true, true), var_0.xx, !select(var_0.yz, arg_0.d.d.a.a, vec2<bool>(true, true)))), 422f <= _wgslsmith_f_op_f32(select(704f, _wgslsmith_f_op_f32(f32(-1f) * -1351f), all(!vec3<bool>(true, arg_0.d.e.a.a.x, false)))), arg_0.a);
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    global0 = array<vec3<u32>, 28>();
    return var_0.xx;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_1(func_3(Struct_5(firstTrailingBit(-2147483647i << (0u % 32u)), vec4<i32>(1i, _wgslsmith_add_i32(1627i, -45188i), -2147483647i, abs(-3890i)), Struct_4(vec3<i32>(42249i, 0i, -22876i), vec3<i32>(1i, 1i, 1i), false, Struct_3(Struct_1(vec2<bool>(true, true), true, -1i), vec2<f32>(-1836f, 1000f), 0u), Struct_3(Struct_1(vec2<bool>(true, false), false, 68606i), vec2<f32>(426f, 897f), u_input.a)), Struct_4(vec3<i32>(-2147483647i, 2147483647i, 1i), vec3<i32>(36182i, -25024i, -2147483647i), true, Struct_3(Struct_1(vec2<bool>(false, true), true, -16864i), vec2<f32>(408f, -2773f), 830u), Struct_3(Struct_1(vec2<bool>(false, false), true, 15421i), vec2<f32>(-214f, -677f), 79461u)))), true, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-41050i << (_wgslsmith_sub_u32(u_input.b, u_input.b) % 32u), -(~(-36961i))), -45286i));
    let var_1 = select(!select(!select(vec4<bool>(var_0.b, true, var_0.b, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), var_0.a.x), !(!vec4<bool>(true, var_0.a.x, false, true)), vec4<bool>(all(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), all(vec4<bool>(var_0.b, var_0.a.x, false, var_0.a.x)), false, false)), vec4<bool>(select(var_0.a.x, true, _wgslsmith_mult_i32(var_0.c, -5648i) < (i32(-1i) * -2587i)), any(var_0.a), var_0.b, any(!select(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(true, true, var_0.a.x, false)))), var_0.a.x | (555f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(258f)))));
    let var_2 = 1u;
    global0 = array<vec3<u32>, 28>();
    var var_3 = countOneBits(select(vec4<u32>(~60500u ^ ~u_input.a, max(60845u, u_input.b | 91297u), ~reverseBits(15850u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4044u, u_input.a, u_input.a), vec4<u32>(var_2, var_2, 0u, var_2))), firstLeadingBit(max(~vec4<u32>(u_input.b, 1u, 0u, u_input.b), min(vec4<u32>(var_2, u_input.a, 52945u, u_input.b), vec4<u32>(0u, u_input.a, u_input.a, 1u)))), false));
    return Struct_5(var_0.c ^ reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(28835i, var_0.c), abs(vec2<i32>(0i, var_0.c)))), ~(vec4<i32>(-1i) * -vec4<i32>(-17369i, var_0.c, var_0.c, 2147483647i)), Struct_4(_wgslsmith_mult_vec3_i32(~select(vec3<i32>(var_0.c, -2147483647i, 22730i), vec3<i32>(var_0.c, var_0.c, 51591i), vec3<bool>(true, false, var_1.x)), -vec3<i32>(-50754i, 1i, 55019i)), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.c, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c, var_0.c), vec2<i32>(var_0.c, var_0.c))), _wgslsmith_mod_i32(-2147483647i, max(2147483647i, var_0.c)), 1i), true, Struct_3(Struct_1(var_1.ww, var_1.x, var_0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(470f, 1932f)), ~abs(0u)), Struct_3(Struct_1(var_0.a, !var_0.b, max(var_0.c, -1i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1042f, -1129f) - vec2<f32>(-3219f, -1999f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-411f, -1067f), vec2<f32>(-1000f, -450f), var_1.x)), !var_0.a)), 143113u)), Struct_4(vec3<i32>(var_0.c, firstLeadingBit(~var_0.c), _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, var_0.c), 18228i)), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.c, var_0.c, var_0.c), vec3<i32>(var_0.c, var_0.c, var_0.c)), var_0.c, _wgslsmith_sub_i32(var_0.c ^ 2147483647i, var_0.c)), true, Struct_3(Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, var_0.a.x), var_1.xx), var_1.x, abs(var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(543f, -2268f)), ~(u_input.b | var_3.x)), Struct_3(Struct_1(func_3(Struct_5(-15466i, vec4<i32>(var_0.c, var_0.c, -2147483647i, var_0.c), Struct_4(vec3<i32>(var_0.c, 0i, var_0.c), vec3<i32>(var_0.c, var_0.c, var_0.c), false, Struct_3(Struct_1(var_1.xz, false, var_0.c), vec2<f32>(2023f, 627f), 0u), Struct_3(Struct_1(vec2<bool>(true, var_1.x), false, 0i), vec2<f32>(-520f, 1282f), u_input.b)), Struct_4(vec3<i32>(var_0.c, var_0.c, var_0.c), vec3<i32>(2147483647i, var_0.c, -33791i), true, Struct_3(Struct_1(var_0.a, var_1.x, var_0.c), vec2<f32>(1381f, -477f), var_2), Struct_3(Struct_1(var_0.a, var_1.x, var_0.c), vec2<f32>(358f, 569f), u_input.a)))), true, reverseBits(1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(137f, -375f)))), ~select(73857u, 0u, true))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_5 {
    global0 = array<vec3<u32>, 28>();
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(68914u, ~(~arg_1.x)), arg_2.e.c);
    let var_1 = func_2();
    global1 = array<vec2<u32>, 19>();
    var var_2 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(var_1.b, var_1.b), var_1.b));
    return func_2();
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> bool {
    var var_0 = Struct_2(vec3<f32>(arg_0.c.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1310f), 1311f), ~arg_0.b.xx, arg_0.c.d.a, arg_0.c.d.a, Struct_1(func_3(arg_0), arg_0.d.d.b.x == _wgslsmith_f_op_f32(-func_2().d.e.b.x), min(~(-arg_0.a), select(-1i, select(1i, -9265i, true), !arg_0.c.e.a.a.x))));
    global1 = array<vec2<u32>, 19>();
    global1 = array<vec2<u32>, 19>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(u_input.a, arg_0.c.d.c), arg_0.c.d.c)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(arg_0.c.d.b.x, 832f, -152f))))))), var_0.b, Struct_1(select(vec2<bool>(true, true), func_3(Struct_5(-35660i, arg_0.b, Struct_4(vec3<i32>(var_0.c.c, arg_0.c.a.x, 1933i), vec3<i32>(arg_0.a, -19907i, 1407i), false, Struct_3(Struct_1(vec2<bool>(var_0.e.a.x, false), var_0.c.b, var_0.e.c), arg_0.d.e.b, arg_0.c.e.c), Struct_3(Struct_1(var_0.d.a, arg_0.d.e.a.b, -1i), arg_0.d.e.b, 0u)), arg_0.c)), all(var_0.c.a)), true, abs(_wgslsmith_sub_i32(arg_0.d.a.x, _wgslsmith_mod_i32(var_0.b.x, arg_0.b.x)))), var_0.e, var_0.c);
    return select(var_0.d.b, any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_0.c.e.a.b, false), vec3<bool>(var_0.c.b, false, true)), !vec3<bool>(arg_0.d.c, false, arg_0.d.e.a.b), select(vec3<bool>(true, true, arg_0.d.e.a.a.x), vec3<bool>(false, arg_0.c.e.a.b, true), var_0.e.b)), select(select(vec3<bool>(false, true, var_0.d.b), vec3<bool>(false, false, arg_0.d.c), vec3<bool>(arg_0.c.c, false, var_0.d.b)), select(vec3<bool>(var_0.e.b, var_0.c.a.x, true), vec3<bool>(var_0.e.b, false, true), vec3<bool>(var_0.d.b, true, var_0.c.b)), vec3<bool>(true, true, true)), !vec3<bool>(arg_0.d.e.a.a.x, true, true))), arg_0.c.e.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = ~12675u;
    let var_2 = Struct_4(-vec3<i32>(~select(0i, 1i, false), firstLeadingBit(reverseBits(-1i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 2147483647i), -1i)), -countOneBits(max(-vec3<i32>(26794i, -1i, -2147483647i), vec3<i32>(1i, 2147483647i, 2147483647i) >> (vec3<u32>(var_0, 24268u, u_input.a) % vec3<u32>(32u)))), (false | func_4(func_1(vec4<f32>(392f, -905f, -731f, 1000f), vec4<u32>(63088u, 1u, u_input.a, u_input.b), Struct_4(vec3<i32>(1i, 0i, 18953i), vec3<i32>(-1i, 49172i, -1i), false, Struct_3(Struct_1(vec2<bool>(true, false), true, 9140i), vec2<f32>(1778f, -310f), 6617u), Struct_3(Struct_1(vec2<bool>(false, true), true, -2147483647i), vec2<f32>(-716f, -801f), u_input.b))), -1988f)) & false, Struct_3(Struct_1(vec2<bool>(true, any(vec4<bool>(true, true, false, true))), u_input.b > 0u, ~28805i << (~4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, -711f)), vec2<f32>(1597f, 514f))))), ~u_input.b), func_2().d.d);
    var_1 = var_0;
    var_1 = ~reverseBits(_wgslsmith_sub_u32(0u, func_2().c.e.c));
    global0 = array<vec3<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1256f))), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(2309f, -264f)))) + -568f), _wgslsmith_f_op_f32(-1950f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.b.x) - -540f)), _wgslsmith_f_op_f32(step(var_2.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1281f, 473f) + _wgslsmith_f_op_f32(f32(-1f) * -447f))))), u_input.b, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 119051u), vec2<u32>(4294967295u, 84087u)), _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(u_input.b, 19u)], vec2<u32>(0u, u_input.b)) | (global1[_wgslsmith_index_u32(u_input.a, 19u)] ^ vec2<u32>(u_input.b, 31668u))), var_0 ^ u_input.a, _wgslsmith_mult_u32(var_0, 40552u)), -2670f, var_2.e.b.x);
}

