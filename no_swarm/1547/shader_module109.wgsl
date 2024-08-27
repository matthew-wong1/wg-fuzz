struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(25375u, 1u), vec2<u32>(48110u, 26211u), vec2<u32>(6872u, 49621u), vec2<u32>(1u, 60331u), vec2<u32>(34784u, 129184u), vec2<u32>(68226u, 9368u), vec2<u32>(1u, 30273u), vec2<u32>(0u, 0u), vec2<u32>(66250u, 20957u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(19500u, 1u), vec2<u32>(0u, 17929u), vec2<u32>(0u, 46025u), vec2<u32>(105861u, 65109u), vec2<u32>(0u, 0u), vec2<u32>(23639u, 94106u), vec2<u32>(428u, 69796u));

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = -(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, u_input.c), vec4<i32>(u_input.c, 15790i, u_input.c, u_input.c)), -2147483647i), firstTrailingBit(-vec3<i32>(u_input.c, u_input.c, -1i))));
    global1 = array<vec2<u32>, 19>();
    var_0 = select(max(vec3<i32>(~_wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(u_input.c, u_input.c)), countOneBits(u_input.c), reverseBits(~u_input.c)), min(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i, u_input.c, var_0.x)), reverseBits(vec3<i32>(u_input.c, var_0.x, var_0.x))), _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c, u_input.c, 5582i), vec3<i32>(u_input.c, -8282i, var_0.x), vec3<bool>(arg_0.a.x, arg_0.a.x, global2.a.x)), vec3<i32>(0i, var_0.x, 0i)))), abs(select(select(vec3<i32>(u_input.c, u_input.c, var_0.x), vec3<i32>(var_0.x, var_0.x, -22653i), true), max(vec3<i32>(var_0.x, u_input.c, var_0.x), vec3<i32>(-69940i, -47524i, 5637i)), vec3<bool>(true, true, true)) & ~(~vec3<i32>(var_0.x, -2147483647i, var_0.x))), arg_0.a.x);
    global0 = array<vec4<f32>, 30>();
    var var_1 = vec3<bool>(firstTrailingBit(u_input.a ^ max(35686u, u_input.a)) == 0u, arg_0.a.x, true);
    return _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(var_0.x, u_input.c), ~var_0.x, _wgslsmith_sub_i32(-47746i, -2147483647i), var_0.x), ~(vec4<i32>(u_input.c, var_0.x, -1i, u_input.c) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.a, 1u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u)) % vec4<u32>(32u)))), abs(-max(_wgslsmith_add_vec4_i32(vec4<i32>(-40332i, u_input.c, 52898i, 2147483647i), vec4<i32>(var_0.x, 0i, u_input.c, var_0.x)), abs(vec4<i32>(-28479i, u_input.c, var_0.x, 7228i)))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    global1 = array<vec2<u32>, 19>();
    global1 = array<vec2<u32>, 19>();
    var var_0 = vec3<u32>(u_input.a, u_input.b, 15220u);
    var var_1 = firstLeadingBit(_wgslsmith_sub_vec4_i32(func_3(Struct_1(vec2<bool>(global2.a.x, true))), countOneBits(vec4<i32>(-3170i, u_input.c, u_input.c, -2147483647i))) & _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c, 0i, -14215i, 30598i), _wgslsmith_div_vec4_i32(vec4<i32>(34006i, 4716i, u_input.c, -77752i), vec4<i32>(0i, u_input.c, 18505i, u_input.c))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 1i, -30669i)), u_input.c, _wgslsmith_sub_i32(u_input.c, -19391i), 1i)));
    var var_2 = select(-2006i, -53484i, global2.a.x) | var_1.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(743f)), _wgslsmith_f_op_f32(f32(-1f) * -637f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    global2 = Struct_1(vec2<bool>(true, 539f == _wgslsmith_f_op_f32(func_2(any(vec4<bool>(true, false, global2.a.x, true)), !vec2<bool>(global2.a.x, false)))));
    var var_0 = Struct_2(Struct_1(global2.a));
    var_0 = Struct_2(var_0.a);
    let var_1 = Struct_3(_wgslsmith_sub_u32(19175u, _wgslsmith_sub_u32(u_input.a, ~u_input.b >> (arg_1.a % 32u))));
    var var_2 = var_1;
    return Struct_3(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(17717u, var_2.a)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_2);
    let var_1 = abs(vec4<u32>(arg_0.a, 1u, ~(u_input.a | 1u), u_input.a) << (~(reverseBits(vec4<u32>(arg_0.a, u_input.b, u_input.a, 0u)) >> (max(vec4<u32>(arg_0.a, 4294967295u, 1u, u_input.b), vec4<u32>(1064u, 127288u, 15431u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c);
    let var_3 = arg_2.a.x;
    let var_4 = all(!arg_1);
    return var_0.a;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    global1 = array<vec2<u32>, 19>();
    global0 = array<vec4<f32>, 30>();
    let var_0 = u_input.a;
    let var_1 = ~u_input.c;
    let var_2 = Struct_2(func_5(func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), -217f, _wgslsmith_f_op_f32(func_2(arg_1, global2.a))), Struct_3(u_input.a), Struct_3(~35233u)), !vec2<bool>(-2147483647i < var_1, select(arg_1, false, false)), Struct_1(vec2<bool>(true, var_0 != u_input.a))));
    return Struct_1(vec2<bool>(!any(!vec3<bool>(arg_1, false, true)), func_5(Struct_3(min(0u, 10495u)), !(!global2.a), var_2.a).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-829f, false);
    var var_1 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c >> (19308u % 32u), -abs(u_input.c)), ~(-20027i)));
    global2 = Struct_1(vec2<bool>(true, true));
    var var_2 = vec2<i32>(reverseBits(min(abs(_wgslsmith_sub_i32(u_input.c, 42444i)), max(_wgslsmith_sub_i32(u_input.c, 46731i), 1i))), 1i);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(569f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-244f, -1779f)), -650f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(0u & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 148917u, 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b), vec4<u32>(1u, 77290u, u_input.a, u_input.a)), u_input.a ^ 31362u, firstLeadingBit(u_input.b))), 19u)], var_3.x, _wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, var_2.x), vec2<i32>(var_2.x, 5876i), vec2<i32>(var_2.x, -1i))), min(vec2<i32>(-26142i, u_input.c), vec2<i32>(0i, var_2.x)) & vec2<i32>(var_2.x, var_2.x)) ^ vec2<i32>(2147483647i, abs(reverseBits(-36278i))));
}

