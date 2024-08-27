struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: array<i32, 26> = array<i32, 26>(0i, -5959i, 1i, 1i, -20636i, 39094i, 2983i, -25456i, 4553i, 1i, 13631i, -9315i, -37006i, -1i, 47261i, 0i, 44487i, 51789i, 12694i, -19252i, 12857i, 45423i, 2147483647i, 879i, 2147483647i, 1i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    global2 = array<i32, 26>();
    let var_0 = !(!vec3<bool>(!arg_0.a.a.b && true, arg_0.a.a.d.x >= _wgslsmith_sub_i32(arg_0.a.a.d.x, arg_0.a.a.a), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, -1058f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-arg_1))), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), !global1[_wgslsmith_index_u32(u_input.a, 32u)])))));
    var var_2 = arg_0.a.a.d.x;
    return 38481u;
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = Struct_1(2147483647i, ~func_3(var_0, var_0.a.b.x) >= (45805u >> (var_0.a.a.c.x % 32u)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 32172u, 31371u), vec3<u32>(u_input.a, u_input.a, arg_1)), vec3<u32>(arg_1, arg_1, arg_0.a.a.c.x)), var_0.a.a.c), _wgslsmith_clamp_vec3_i32(~((vec3<i32>(1i, var_0.a.c, arg_0.a.c) ^ arg_2) & (vec3<i32>(1i, var_0.a.c, -10732i) | vec3<i32>(global2[_wgslsmith_index_u32(78951u, 26u)], arg_2.x, global2[_wgslsmith_index_u32(var_0.a.a.c.x, 26u)]))), vec3<i32>(~_wgslsmith_div_i32(4373i, arg_0.a.c), arg_0.a.d.x, max(_wgslsmith_mult_i32(arg_0.a.d.x, -24687i), -28976i)), var_0.a.d));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(var_0.a.b.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.b.xw) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1127f, -1475f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, -219f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.x, arg_0.a.b.x) * _wgslsmith_f_op_vec2_f32(max(arg_0.a.b.wz, vec2<f32>(1064f, arg_0.a.b.x))))))));
    var_2 = Struct_1(1i, !(!var_1), ~(~firstTrailingBit(~vec3<u32>(arg_1, var_0.a.a.c.x, arg_1))), arg_2);
    return Struct_1(-1i, select(!(~arg_0.a.a.c.x > min(60329u, arg_0.a.a.c.x)), global2[_wgslsmith_index_u32(1u, 26u)] >= ~arg_2.x, var_1), vec3<u32>(firstLeadingBit(arg_1), var_2.c.x | 31169u, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, var_0.a.a.c.x), var_2.c.x)), ~_wgslsmith_add_vec3_i32(vec3<i32>(abs(var_0.a.d.x), 51158i, 2147483647i), min(arg_0.a.d, _wgslsmith_sub_vec3_i32(arg_2, vec3<i32>(var_2.a, 2147483647i, global2[_wgslsmith_index_u32(arg_0.a.a.c.x, 26u)])))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = Struct_3(u_input.a, ~vec2<u32>(~_wgslsmith_div_u32(arg_0.c.x, arg_0.c.x), max(arg_0.c.x & u_input.a, ~arg_0.c.x)), Struct_1(-countOneBits(~(-12860i)), true, _wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_0.c, any(global1[_wgslsmith_index_u32(u_input.a, 32u)])), arg_0.c), vec3<i32>(62744i, -39314i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, arg_0.d.x), vec2<i32>(1i, arg_0.a)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-770f, 788f), vec2<f32>(-382f, 506f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-553f, 658f, -190f, -673f))), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_0.b, arg_0.b, arg_1.b), vec4<bool>(true, true, arg_0.b, arg_0.b))))))));
    global1 = array<vec2<bool>, 32>();
    let var_1 = Struct_2(var_0.c, var_0.e, ~_wgslsmith_add_i32(arg_1.a, 1i), vec3<i32>(~54848i, arg_0.a, -1i));
    var_0 = Struct_3(func_3(Struct_4(Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, var_0.d.x, var_1.b.x, 1846f)), 44021i, vec3<i32>(var_1.d.x, var_1.a.d.x, 1i))), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), select(var_1.a.c.xz, ~vec2<u32>(firstTrailingBit(var_0.a), reverseBits(u_input.a)), all(select(global1[_wgslsmith_index_u32(~var_1.a.c.x, 32u)], vec2<bool>(var_1.a.b, var_0.c.b), true))), arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-1000f - var_1.b.x)) + var_1.b.zy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -1215f, -672f, var_1.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.e + var_1.b), vec4<f32>(1000f, var_0.e.x, var_1.b.x, 406f))) * vec4<f32>(_wgslsmith_f_op_f32(step(1000f, -659f)), var_1.b.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(select(122f, -982f, true))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(var_0.e.yw));
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    global0 = array<vec2<i32>, 20>();
    let var_0 = !(!select(true, func_4(Struct_1(arg_1.a, false, arg_0.c.c, arg_1.d), func_2(Struct_4(Struct_2(arg_2.c, arg_0.e, arg_2.c.d.x, vec3<i32>(arg_2.c.d.x, arg_1.a, arg_1.a))), 26698u, arg_0.c.d)), !(!arg_2.c.b)));
    global2 = array<i32, 26>();
    global1 = array<vec2<bool>, 32>();
    var var_1 = arg_2.c;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    global2 = array<i32, 26>();
    var var_0 = 1u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.e.x)) + _wgslsmith_f_op_f32(step(-859f, -2232f))))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.b.x, arg_2.a), 26u)];
    let var_3 = 1u;
    return Struct_3(min(arg_0.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.a) ^ (arg_2.a >> (arg_1 % 32u)), arg_0.c.c.x)), vec2<u32>(4294967295u, ~countOneBits(_wgslsmith_mod_u32(arg_0.c.c.x, 4294967295u))), Struct_1(-min(func_1(Struct_3(arg_2.b.x, vec2<u32>(arg_2.c.c.x, 37525u), Struct_1(-2147483647i, false, arg_0.c.c, vec3<i32>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], -2147483647i)), arg_2.e.wz, vec4<f32>(-1692f, -1000f, 1614f, arg_0.d.x)), arg_2.c, arg_0).a, 0i), arg_0.c.b, _wgslsmith_div_vec3_u32(countOneBits(arg_0.c.c), ~arg_0.c.c), ~(~_wgslsmith_mult_vec3_i32(arg_0.c.d, vec3<i32>(43832i, -1i, global2[_wgslsmith_index_u32(12626u, 26u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_2.e.wz)) - arg_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(floor(var_1.x)), arg_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1399f, var_1.x, 978f, 1189f)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    var var_0 = func_5(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 28397u << (u_input.a % 32u), countOneBits(99954u), arg_0.a), ~vec4<u32>(28806u, u_input.a, arg_2.a.c.x, 6983u)), ~max(func_2(Struct_4(arg_2), 78710u, vec3<i32>(arg_0.c.d.x, 36860i, 2147483647i)).c.zz, ~vec2<u32>(1u, 1u)), arg_2.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2441f, arg_1.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 2306f, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2262f, 403f, -478f, arg_2.b.x))))), 57220u, Struct_3(14293u, arg_1.a.c.zx, arg_2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.b.yw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, 761f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.b.zx))), global1[_wgslsmith_index_u32(13959u, 32u)])), arg_2.b), 466f);
    var var_1 = !(!(!vec3<bool>(true, func_1(Struct_3(4294967295u, vec2<u32>(41042u, arg_1.a.c.x), var_0.c, vec2<f32>(543f, arg_1.b.x), var_0.e), Struct_1(arg_1.a.d.x, false, vec3<u32>(u_input.a, arg_1.a.c.x, 1u), arg_2.d), Struct_3(50741u, vec2<u32>(0u, arg_0.c.c.x), Struct_1(arg_2.a.a, arg_2.a.b, arg_0.c.c, var_0.c.d), var_0.e.yw, vec4<f32>(423f, -1341f, -1276f, -598f))).b, func_2(Struct_4(Struct_2(arg_0.c, var_0.e, 2147483647i, vec3<i32>(16325i, var_0.c.a, var_0.c.d.x))), 4294967295u, vec3<i32>(var_0.c.d.x, global2[_wgslsmith_index_u32(arg_2.a.c.x, 26u)], 72367i)).b)));
    let var_2 = arg_1;
    var var_3 = vec3<u32>(~firstTrailingBit(4294967295u) ^ ~func_5(arg_0, arg_1.a.c.x, func_5(Struct_3(var_2.a.c.x, vec2<u32>(1485u, 12177u), Struct_1(var_2.a.a, arg_0.c.b, vec3<u32>(4294967295u, arg_2.a.c.x, var_2.a.c.x), vec3<i32>(2147483647i, var_0.c.a, arg_0.c.d.x)), arg_2.b.ww, var_0.e), 60630u, Struct_3(1u, vec2<u32>(arg_2.a.c.x, u_input.a), Struct_1(-32814i, true, arg_1.a.c, var_0.c.d), var_2.b.yy, var_2.b), arg_1.b.x), _wgslsmith_f_op_f32(1504f - arg_2.b.x)).b.x, u_input.a & ~0u, 2575u);
    global2 = array<i32, 26>();
    return func_5(func_5(func_5(arg_0, ~(arg_1.a.c.x >> (4294967295u % 32u)), arg_0, _wgslsmith_div_f32(-651f, arg_1.b.x)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.c.x, arg_2.a.c.x, arg_0.b.x, var_2.a.c.x), vec4<u32>(arg_2.a.c.x, arg_2.a.c.x, 16066u, u_input.a)), ~vec4<u32>(u_input.a, arg_1.a.c.x, 48099u, var_3.x))), func_5(func_5(arg_0, ~1u, func_5(arg_0, arg_2.a.c.x, Struct_3(1u, arg_2.a.c.xy, Struct_1(-2147483647i, false, vec3<u32>(1u, arg_1.a.c.x, 18454u), var_2.d), vec2<f32>(arg_0.e.x, 402f), vec4<f32>(arg_1.b.x, -842f, arg_1.b.x, -229f)), arg_1.b.x), var_0.e.x), var_3.x, Struct_3(var_0.a, vec2<u32>(arg_2.a.c.x, var_0.a) | vec2<u32>(106217u, u_input.a), func_2(Struct_4(Struct_2(Struct_1(var_2.a.d.x, true, var_2.a.c, vec3<i32>(-44180i, 1i, -2147483647i)), arg_1.b, -1i, vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(arg_1.a.c.x, 26u)], 1920i))), var_3.x, vec3<i32>(-6725i, 2147483647i, arg_0.c.a)), vec2<f32>(var_0.e.x, arg_1.b.x), var_0.e), arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.b.x)), -901f)) - var_0.d.x)), 17405u, arg_0, var_0.d.x);
}

fn func_7(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = select(vec4<bool>(true, false, arg_0.c.b, false), !select(select(!vec4<bool>(false, arg_0.c.b, false, true), !vec4<bool>(true, false, true, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, false)), select(vec4<bool>(true, arg_0.c.b, arg_0.c.b, arg_0.c.b), !vec4<bool>(true, true, true, arg_0.c.b), !arg_0.c.b), !select(vec4<bool>(false, arg_0.c.b, true, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, false, true), arg_0.c.b)), func_2(Struct_4(Struct_2(arg_0.c, arg_0.e, -18989i, firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], -19628i, global2[_wgslsmith_index_u32(u_input.a, 26u)])))), _wgslsmith_dot_vec3_u32(arg_0.c.c, arg_0.c.c), arg_0.c.d).b);
    let var_1 = select(select(!select(vec4<bool>(arg_0.c.b, true, arg_0.c.b, arg_0.c.b), select(vec4<bool>(false, true, true, arg_0.c.b), vec4<bool>(true, true, true, arg_0.c.b), vec4<bool>(arg_0.c.b, var_0.x, var_0.x, true)), all(vec4<bool>(false, var_0.x, var_0.x, false))), select(select(vec4<bool>(false, true, var_0.x, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, true, false), !vec4<bool>(true, true, true, var_0.x)), select(vec4<bool>(false, arg_0.c.b, arg_0.c.b, var_0.x), !vec4<bool>(true, true, var_0.x, false), true), select(vec4<bool>(var_0.x, false, arg_0.c.b, var_0.x), vec4<bool>(true, true, false, true), arg_0.c.b)), vec4<bool>(_wgslsmith_f_op_f32(arg_0.e.x * arg_0.e.x) < _wgslsmith_div_f32(arg_0.d.x, arg_0.e.x), !var_0.x, false, arg_0.c.b)), vec4<bool>(!var_0.x, arg_0.c.b, var_0.x, var_0.x), (_wgslsmith_f_op_f32(abs(-647f)) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(719f - arg_0.e.x)))) & true);
    let var_2 = any(vec3<bool>(!func_6(arg_0, Struct_2(arg_0.c, arg_0.e, -1i, arg_0.c.d), Struct_2(Struct_1(1433i, var_1.x, vec3<u32>(1u, 53224u, arg_0.a), arg_0.c.d), vec4<f32>(102f, 404f, 1376f, arg_0.e.x), global2[_wgslsmith_index_u32(0u, 26u)], vec3<i32>(global2[_wgslsmith_index_u32(17148u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(8266u, 26u)])), arg_0.c.b).c.b, func_2(Struct_4(Struct_2(arg_0.c, arg_0.e, arg_0.c.d.x, vec3<i32>(global2[_wgslsmith_index_u32(62203u, 26u)], 2147483647i, global2[_wgslsmith_index_u32(1u, 26u)]))), func_6(arg_0, Struct_2(Struct_1(global2[_wgslsmith_index_u32(arg_0.a, 26u)], true, arg_0.c.c, vec3<i32>(global2[_wgslsmith_index_u32(17841u, 26u)], global2[_wgslsmith_index_u32(arg_0.a, 26u)], 0i)), arg_0.e, global2[_wgslsmith_index_u32(arg_0.b.x, 26u)], arg_0.c.d), Struct_2(Struct_1(0i, var_1.x, vec3<u32>(0u, 1u, 20372u), arg_0.c.d), vec4<f32>(-1644f, 502f, 844f, -236f), arg_0.c.a, arg_0.c.d), false).a, -vec3<i32>(arg_0.c.a, -18433i, -1i)).b || true, !(!(var_0.x | true))));
    var_0 = var_1;
    let var_3 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, u_input.a, _wgslsmith_div_u32(1u, u_input.a), u_input.a), ~max(vec4<u32>(0u, u_input.a, arg_0.b.x, 4294967295u), vec4<u32>(arg_0.a, 4552u, arg_0.a, arg_0.a)))) << (~max(firstLeadingBit(max(vec4<u32>(u_input.a, 1u, arg_0.c.c.x, 12553u), vec4<u32>(arg_0.b.x, 46985u, 0u, arg_0.a))), vec4<u32>(~arg_0.c.c.x, 0u, u_input.a, u_input.a)) % vec4<u32>(32u));
    return -(~_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(arg_0.a, 20u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.x, 0u), 20u)] | (vec2<i32>(-10850i, 2147483647i) | arg_0.c.d.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<vec2<i32>, 20>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -1216f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483f - -3349f) * 487f)), 527f)), -515f);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -525f) + var_1.x)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -466f))));
    let var_3 = false || (all(vec4<bool>(true, true, true, true)) | true);
    var var_4 = func_7(func_6(func_5(Struct_3(u_input.a, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), func_1(Struct_3(14785u, vec2<u32>(1u, u_input.a), Struct_1(1i, false, vec3<u32>(4294967295u, u_input.a, 19669u), vec3<i32>(953i, -14598i, -1i)), var_2.ww, vec4<f32>(var_1.x, -1947f, 1000f, 956f)), Struct_1(1330i, var_3, vec3<u32>(u_input.a, 4294967295u, 63627u), vec3<i32>(var_0, global2[_wgslsmith_index_u32(u_input.a, 26u)], 1i)), Struct_3(u_input.a, vec2<u32>(u_input.a, 4294967295u), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 26u)], var_3, vec3<u32>(u_input.a, 1u, u_input.a), vec3<i32>(-2147483647i, 55972i, 2147483647i)), var_2.yz, var_2)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-398f, -1167f))), _wgslsmith_f_op_vec4_f32(-var_2)), abs(74539u & u_input.a), Struct_3(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 829u)), func_2(Struct_4(Struct_2(Struct_1(var_0, false, vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<i32>(global2[_wgslsmith_index_u32(1u, 26u)], -2147483647i, 0i)), var_2, global2[_wgslsmith_index_u32(u_input.a, 26u)], vec3<i32>(0i, -53057i, var_0))), u_input.a, vec3<i32>(var_0, global2[_wgslsmith_index_u32(101661u, 26u)], 2147483647i)), _wgslsmith_div_vec2_f32(var_2.zz, vec2<f32>(-171f, 1042f)), _wgslsmith_f_op_vec4_f32(-var_2)), _wgslsmith_f_op_f32(-1608f - _wgslsmith_f_op_f32(525f - var_2.x))), Struct_2(func_5(func_5(Struct_3(u_input.a, vec2<u32>(0u, u_input.a), Struct_1(26324i, true, vec3<u32>(u_input.a, 8088u, 21783u), vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 26u)], -1i)), vec2<f32>(var_1.x, -1100f), vec4<f32>(var_2.x, 229f, 872f, var_1.x)), 0u, Struct_3(u_input.a, vec2<u32>(40792u, u_input.a), Struct_1(-44542i, var_3, vec3<u32>(u_input.a, 0u, 4294967295u), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], -2147483647i, global2[_wgslsmith_index_u32(733u, 26u)])), vec2<f32>(var_2.x, -2051f), var_2), var_1.x), _wgslsmith_div_u32(70564u, 26545u), func_5(Struct_3(u_input.a, vec2<u32>(26593u, u_input.a), Struct_1(var_0, var_3, vec3<u32>(u_input.a, u_input.a, 0u), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(0u, 26u)], var_0)), var_2.yx, vec4<f32>(-371f, -180f, var_2.x, -452f)), u_input.a, Struct_3(0u, vec2<u32>(4294967295u, 82748u), Struct_1(var_0, var_3, vec3<u32>(u_input.a, 36892u, u_input.a), vec3<i32>(-15075i, var_0, 0i)), var_2.xy, var_2), -786f), _wgslsmith_f_op_f32(step(-1115f, var_1.x))).c, var_2, global2[_wgslsmith_index_u32(6611u, 26u)], (vec3<i32>(2147483647i, -2147483647i, var_0) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) >> ((vec3<u32>(34162u, 22554u, 4294967295u) | vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u))), Struct_2(Struct_1(func_2(Struct_4(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 26u)], var_3, vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<i32>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)])), vec4<f32>(var_1.x, 1239f, var_2.x, var_1.x), global2[_wgslsmith_index_u32(u_input.a, 26u)], vec3<i32>(var_0, 2147483647i, var_0))), u_input.a, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 2006i, var_0)).d.x, !var_3, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 63662u)), vec3<i32>(var_0, var_0, -2147483647i)), _wgslsmith_f_op_vec4_f32(-var_2), var_0, (vec3<i32>(var_0, global2[_wgslsmith_index_u32(0u, 26u)], -2147483647i) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u))) >> (vec3<u32>(0u, 59853u, u_input.a) % vec3<u32>(32u))), false));
    let var_5 = ~func_2(Struct_4(Struct_2(Struct_1(var_4.x, true, vec3<u32>(25309u, u_input.a, 24372u), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], var_4.x, global2[_wgslsmith_index_u32(1u, 26u)])), var_2, ~18996i, vec3<i32>(38627i, var_4.x, 1i))), ~firstTrailingBit(~0u), firstLeadingBit(~vec3<i32>(var_4.x, var_0, 12821i))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_5(Struct_3(u_input.a, vec2<u32>(u_input.a, 10213u), Struct_1(-1i, false, vec3<u32>(0u, u_input.a, u_input.a), vec3<i32>(global2[_wgslsmith_index_u32(1u, 26u)], var_4.x, var_5)), vec2<f32>(var_2.x, var_2.x), vec4<f32>(-1410f, var_2.x, var_1.x, -788f)), ~4294967295u, func_5(Struct_3(u_input.a, vec2<u32>(0u, 4294967295u), Struct_1(4716i, false, vec3<u32>(u_input.a, u_input.a, 1u), vec3<i32>(var_4.x, -2147483647i, global2[_wgslsmith_index_u32(1u, 26u)])), var_2.yy, vec4<f32>(var_2.x, -697f, 1141f, -763f)), u_input.a, Struct_3(4294967295u, vec2<u32>(10166u, u_input.a), Struct_1(25303i, false, vec3<u32>(u_input.a, u_input.a, 0u), vec3<i32>(var_0, 44206i, 41181i)), vec2<f32>(var_2.x, 1573f), vec4<f32>(var_2.x, var_2.x, -369f, -787f)), -1691f), var_1.x).c.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)), 2704f), vec4<u32>(u_input.a >> (func_2(Struct_4(Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 26u)], false, vec3<u32>(4294967295u, 4294967295u, 35794u), vec3<i32>(1i, var_4.x, 34044i)), vec4<f32>(-590f, var_2.x, var_1.x, var_1.x), -2147483647i, vec3<i32>(-16961i, 0i, var_4.x))), ~1u, firstTrailingBit(vec3<i32>(-11092i, 1i, -1i))).c.x % 32u), _wgslsmith_mult_u32(~u_input.a, ~1u), 39539u, max(func_3(Struct_4(Struct_2(Struct_1(global2[_wgslsmith_index_u32(31606u, 26u)], var_3, vec3<u32>(u_input.a, 63863u, u_input.a), vec3<i32>(-2147483647i, -2147483647i, var_0)), var_2, -37545i, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 0i, var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~u_input.a & u_input.a)));
}

