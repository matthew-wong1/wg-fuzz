struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-1i, 22765i), vec2<i32>(23204i, -1i), vec2<i32>(-60185i, 2147483647i), vec2<i32>(-25599i, -715i), vec2<i32>(-7137i, 40809i), vec2<i32>(1i, -84637i), vec2<i32>(-24703i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 47757i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -13507i), vec2<i32>(805i, -1i), vec2<i32>(-42473i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-17598i, -3742i), vec2<i32>(0i, -9137i), vec2<i32>(2147483647i, 34623i), vec2<i32>(17870i, 35511i), vec2<i32>(47119i, 25620i));

var<private> global1: array<vec2<i32>, 16>;

var<private> global2: vec2<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_2(arg_2.xzy, -vec3<i32>(_wgslsmith_mult_i32(-arg_2.x, -arg_2.x), -2147483647i, 2147483647i ^ _wgslsmith_add_i32(arg_2.x, arg_2.x)), arg_2.x);
    global1 = array<vec2<i32>, 16>();
    var_0 = Struct_2(min(arg_2.wwy, select(~_wgslsmith_mod_vec3_i32(var_0.b, var_0.a), select(_wgslsmith_mult_vec3_i32(vec3<i32>(31724i, arg_2.x, arg_2.x), var_0.b), arg_2.xyx, any(vec4<bool>(false, false, true, false))), vec3<bool>(arg_1.x, any(vec2<bool>(true, arg_0)), any(vec3<bool>(global2.x, false, global2.x))))), ~_wgslsmith_mult_vec3_i32(countOneBits(arg_2.yyy), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, 29693i, 16118i), vec3<i32>(18813i, arg_2.x, -2147483647i)), ~vec3<i32>(arg_2.x, arg_2.x, 31470i))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(24271i, var_0.a.x, var_0.c, arg_2.x) << (reverseBits(vec4<u32>(4294967295u, u_input.a, 3375u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_2.x, var_0.c, arg_2.x, -1i)), vec4<i32>(-2147483647i, 1i, arg_2.x, arg_2.x)), countOneBits(vec4<i32>(arg_2.x, arg_2.x, var_0.b.x, arg_2.x))), vec4<i32>(-select(var_0.a.x, 0i, arg_0), _wgslsmith_sub_i32(-1i << (0u % 32u), _wgslsmith_mult_i32(arg_2.x, var_0.c)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.x, -11837i), 5211i), var_0.c)));
    global0 = array<vec2<i32>, 19>();
    var var_1 = Struct_2(~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_0.c, var_0.a.x, -39640i), arg_2.wzw, vec3<bool>(true, arg_0, global2.x)), vec3<i32>(arg_2.x >> (u_input.a % 32u), abs(1i), i32(-1i) * -3349i), var_0.b), vec3<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.c, 1i, -arg_2.x), -25477i), ~21669i), ~(-_wgslsmith_mod_i32(arg_2.x, -23787i)));
    return vec3<u32>(abs(~abs(1u)), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(abs(41536u)), ~(~1u), _wgslsmith_mult_u32(countOneBits(32267u), firstTrailingBit(4294967295u))), ~(~select(vec3<u32>(5827u, u_input.a, 46939u), vec3<u32>(0u, 5166u, u_input.a), false))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2;
    global0 = array<vec2<i32>, 19>();
    var var_1 = ~((vec3<i32>(-21325i, arg_1.a.x, 1i) & var_0.a) >> (max(~func_3(true, vec2<bool>(true, global2.x), vec4<i32>(var_0.a.x, arg_1.c, -1i, arg_2.b.x)), ~(vec3<u32>(63237u, u_input.a, 3335u) >> (vec3<u32>(1u, u_input.a, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_2 = Struct_1(vec3<bool>(true, select(~u_input.a, select(33991u, 4294967295u, true), any(vec4<bool>(global2.x, global2.x, true, true))) < _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, u_input.a), countOneBits(u_input.a), u_input.a), true), ~1i);
    var_2 = Struct_1(!select(!vec3<bool>(false, true, var_2.a.x), select(!vec3<bool>(global2.x, false, var_2.a.x), !vec3<bool>(var_2.a.x, false, false), !var_2.a), !vec3<bool>(var_2.a.x, global2.x, false)), 35723i);
    return arg_0.x;
}

fn func_1() -> vec2<u32> {
    var var_0 = -2147483647i;
    global0 = array<vec2<i32>, 19>();
    var var_1 = -(~vec3<i32>(~_wgslsmith_mod_i32(-1i, 1i), firstLeadingBit(-2147483647i), min(min(-27325i, 59431i), 2147483647i)));
    global0 = array<vec2<i32>, 19>();
    let var_2 = select(!vec4<bool>(all(!vec3<bool>(global2.x, false, false)), any(select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, true, global2.x, false), true)), true, select(any(vec3<bool>(true, global2.x, global2.x)), global2.x, false)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-547f, 266f), Struct_2(vec3<i32>(var_1.x, var_1.x, 13902i), vec3<i32>(2147483647i, var_1.x, var_1.x), var_1.x), Struct_2(vec3<i32>(1i, 0i, var_1.x), vec3<i32>(var_1.x, 20283i, var_1.x), 2147483647i))) + _wgslsmith_f_op_f32(f32(-1f) * -2120f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f) * _wgslsmith_f_op_f32(f32(-1f) * -1420f)), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, global2.x), global2.x)), global2.x, !(!any(vec2<bool>(global2.x, true)))), !vec4<bool>(!any(vec2<bool>(global2.x, true)), true, false, global2.x));
    return vec2<u32>(countOneBits(u_input.a) >> (u_input.a % 32u), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.a, u_input.a)) & u_input.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> i32 {
    global1 = array<vec2<i32>, 16>();
    return firstTrailingBit(firstLeadingBit(1i)) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(max(~u_input.a, ~u_input.a), arg_0.x & 1u), u_input.a, 0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>((4294967295u ^ u_input.a) >= (u_input.a | u_input.a), u_input.a == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1012u)), true), true), ~1i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(-1000f - -392f))), 1143f)), 267f);
    var var_2 = vec3<i32>(func_4(func_1(), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1948f, -1000f, var_1.x, var_1.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, var_1.x, var_1.x, -1237f) * vec4<f32>(-359f, -1152f, 631f, -504f)))))), var_0.b, var_0.b);
    global0 = array<vec2<i32>, 19>();
    let var_3 = var_0;
    var var_4 = vec3<i32>(var_2.x, var_0.b, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~1u, ~vec3<u32>(u_input.a << (u_input.a % 32u), ~u_input.a, u_input.a) << ((_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 17129u, 1u), vec3<u32>(4294967295u, u_input.a, 4294967295u) >> (vec3<u32>(12061u, 4294967295u, 40466u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(abs(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), vec3<u32>(_wgslsmith_mod_u32(u_input.a, ~u_input.a), func_1().x, ~1u)));
}

