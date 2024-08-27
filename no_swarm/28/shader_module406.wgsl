struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-1i, 0i, 1i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 51693i, 7725i), vec4<i32>(-14018i, 9351i, 2147483647i, 1467i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -37136i), vec4<i32>(2147483647i, -40688i, 4955i, 18183i));

var<private> global2: Struct_1;

var<private> global3: u32;

var<private> global4: i32 = 1i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = select(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(65161u, arg_0.c, global2.b), vec3<u32>(112582u, 0u, 1u)) & vec3<u32>(global2.b, arg_0.c, global2.b), ~(vec3<u32>(12642u, u_input.a.x, u_input.a.x) << (vec3<u32>(0u, 36071u, 0u) % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c, 1u, ~global2.b), vec3<u32>(arg_0.b, ~70626u, _wgslsmith_mult_u32(global2.c, 0u)))), arg_0.b, !(!arg_0.e.x));
    var var_0 = arg_0;
    var var_1 = global2.a.yw;
    let var_2 = _wgslsmith_mod_i32(var_1.x, -1i);
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 0i, 0i, 2147483647i), min(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(abs(22357u), 5u)], global2.a, arg_0.a), _wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.c, arg_0.b), 5u)], global2.a, ~arg_0.a))), (_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(-35483i, var_1.x, 1i, global2.a.x)), vec4<i32>(var_0.a.x, var_1.x, arg_0.a.x, 47066i)) & (-vec4<i32>(1i, var_1.x, var_0.a.x, var_1.x) >> (vec4<u32>(arg_0.b, var_0.b, 17967u, 1u) % vec4<u32>(32u)))) | ~(-vec4<i32>(var_2, 33183i, var_2, arg_0.a.x)));
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c, _wgslsmith_sub_u32(6572u, var_0.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(61694u, u_input.a.x) & u_input.a, firstLeadingBit(u_input.a))), ~(~(~_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(u_input.a.x, global2.b)))));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_5 {
    let var_0 = !global2.e;
    var var_1 = Struct_4(~select(4294967295u, func_3(Struct_1(vec4<i32>(arg_0, arg_0, 14648i, arg_0), u_input.a.x, 1u, arg_1, vec2<bool>(true, true))), !var_0.x));
    var var_2 = !(!(!vec3<bool>(true, select(global2.e.x, false, true), var_0.x)));
    return Struct_5(30537u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, 1608f, -1000f), vec4<f32>(1000f, -971f, 683f, global2.d), vec4<bool>(var_2.x, var_0.x, true, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -423f, 2461f, 1000f) + vec4<f32>(870f, 2872f, 212f, 273f))))), !vec4<bool>(false | any(vec4<bool>(false, var_0.x, var_0.x, global2.e.x)), var_0.x, any(vec3<bool>(var_0.x, global2.e.x, true)), false), _wgslsmith_mult_vec3_i32(global2.a.wxy, _wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_0, 2032i), ~global2.a.xzz)) ^ ~(-global2.a.wxy));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> vec4<u32> {
    var var_0 = select(vec3<bool>(global2.e.x && arg_0.c.x, !(all(vec3<bool>(false, false, global2.e.x)) && all(vec4<bool>(arg_0.c.x, arg_0.c.x, true, global2.e.x))), arg_1.c.x), select(arg_1.c.yyz, arg_1.c.zxz, arg_1.c.zxw), arg_1.c.yxx);
    let var_1 = func_2(i32(-1i) * -1488i, 845f);
    global1 = array<vec4<i32>, 5>();
    var var_2 = 4294967295u;
    var var_3 = func_2(-firstLeadingBit(-2147483647i), -1137f).c.x;
    return ~firstTrailingBit(vec4<u32>(4294967295u, ~1u, reverseBits(arg_0.a), func_2(var_1.d.x, global2.d).a ^ ~var_1.a));
}

fn func_1(arg_0: u32) -> i32 {
    global4 = global2.a.x;
    var var_0 = vec3<u32>(~(~firstTrailingBit(~global2.c)), select(arg_0, global2.b, all(vec3<bool>(arg_0 < 0u, select(true, global2.e.x, global2.e.x), global2.e.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(2983u, global2.b, 27346u, arg_0) >> (select(vec4<u32>(u_input.a.x, arg_0, 0u, 63626u), vec4<u32>(0u, 4294967295u, arg_0, 0u), global2.e.x) % vec4<u32>(32u)), func_4(func_2(global2.a.x, global0.x), func_2(global2.a.x, global0.x))));
    var var_1 = Struct_5(u_input.a.x | ~1u, vec4<f32>(_wgslsmith_f_op_f32(-func_2(_wgslsmith_sub_i32(global2.a.x, 18153i), _wgslsmith_f_op_f32(709f + -1072f)).b.x), -597f, global0.x, global0.x), select(func_2(2147483647i, _wgslsmith_f_op_f32(-func_2(0i, -1560f).b.x)).c, vec4<bool>(!all(vec3<bool>(false, global2.e.x, global2.e.x)), !(global2.d != global2.d), true, select(false, global2.e.x, select(global2.e.x, true, true))), !(!any(vec4<bool>(global2.e.x, global2.e.x, global2.e.x, true)))), global2.a.yxx);
    let var_2 = ~vec4<i32>(~global2.a.x, 0i, 0i, abs(func_2(global2.a.x, -1000f).d.x)) | -vec4<i32>(25715i, -(0i ^ var_1.d.x), _wgslsmith_div_i32(24413i, var_1.d.x) | -1i, var_1.d.x);
    let var_3 = Struct_1(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, global2.a.x, global2.a.x, var_2.x), ~vec4<i32>(-27060i, global2.a.x, 1i, global2.a.x))), var_1.d.x, global2.a.x, _wgslsmith_mult_i32(global2.a.x, -(~var_1.d.x))), 4294967295u, arg_0, global0.x, global2.e);
    return _wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(0i, select(~(-3898i), ~1i, !all(var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, global2.a.x <= (func_1(global2.c) << (1u % 32u)), firstTrailingBit(u_input.a.x << (global2.c % 32u)) <= ~1u, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))) - _wgslsmith_f_op_f32(floor(-154f)));
    let var_2 = var_0.xyz;
    var_0 = !(!(!vec4<bool>(true & var_2.x, var_0.x && var_2.x, func_2(global2.a.x, -1457f).c.x, false)));
    global2 = Struct_1(global1[_wgslsmith_index_u32(84289u, 5u)], global2.b, ~u_input.a.x, _wgslsmith_f_op_f32(min(218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f + global0.x))))), global2.e);
    let var_3 = min(-49221i, global2.a.x);
    var var_4 = Struct_4(max(global2.b, select(~func_2(20366i, 571f).a, _wgslsmith_div_u32(1u, select(u_input.a.x, global2.b, var_0.x)), false)));
    let var_5 = Struct_4(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, ((_wgslsmith_add_vec2_u32(u_input.a, u_input.a) << (~vec2<u32>(4294967295u, var_4.a) % vec2<u32>(32u))) | vec2<u32>(min(global2.b, 0u), 4294967295u)) | _wgslsmith_add_vec2_u32(vec2<u32>(~var_4.a, select(var_5.a, u_input.a.x, true)), abs(u_input.a)));
}

