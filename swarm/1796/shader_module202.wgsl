struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: array<Struct_4, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, u_input.c), vec2<i32>(arg_0.a, u_input.b)), -arg_0.a), ~1i & ((i32(-1i) * -10625i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-23964i, 26827i, 2147483647i), vec3<i32>(1i, arg_0.a, -5212i)))));
    var var_1 = 915f;
    let var_2 = reverseBits(select(_wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(6638i, 7388i)), _wgslsmith_mod_i32(arg_0.a & arg_0.a, -18201i)), u_input.a, (0i | -var_0.a) != _wgslsmith_div_i32(2147483647i, u_input.b)));
    let var_3 = Struct_4(vec3<bool>(0u < (1u & ~global0.b.x), !(1i <= min(2147483647i, arg_0.a)), true), global0.a, Struct_2(firstTrailingBit(69043i)), 33391u);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x - global0.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x)))) * _wgslsmith_f_op_f32(round(global0.c.x))) + 571f);
    return -2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = 20655u;
    global2 = array<Struct_4, 10>();
    let var_1 = -vec3<i32>(arg_1.c.a, func_3(arg_1.c), -_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, -1i), -u_input.a));
    global2 = array<Struct_4, 10>();
    global0 = Struct_1(false, ~global0.b | (~(~global0.b) >> (countOneBits(vec2<u32>(global0.b.x, arg_0.x)) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.c.x)))), global0.c.x, _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global0.c.x)))));
    return ~vec3<i32>(i32(-1i) * -2147483647i, u_input.c, -548i);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global0.a, vec2<u32>(~firstLeadingBit(~global0.b.x), global0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, 1116f), vec3<f32>(global0.c.x, -575f, global0.c.x)) - _wgslsmith_f_op_vec3_f32(-global0.c)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.c - vec3<f32>(global0.c.x, global0.c.x, 1404f)))), any(!vec4<bool>(global1.x, true, global1.x, false))))));
    var var_0 = Struct_1(global0.a, ~global0.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f + global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - 1059f) + -963f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_div_f32(global0.c.x, 1789f))), _wgslsmith_f_op_vec3_f32(max(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(global0.c.x, -547f, global0.c.x)))))));
    var var_1 = global0.a;
    var var_2 = ~(~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, -61434i), ~vec3<i32>(u_input.b, u_input.a, -2147483647i)), func_2(~vec4<u32>(global0.b.x, 26302u, 27535u, 68764u), Struct_4(vec3<bool>(global0.a, false, true), global1.x, Struct_2(u_input.b), var_0.b.x))));
    global1 = !select(vec4<bool>(false, true, !any(vec2<bool>(global1.x, var_0.a)), any(vec2<bool>(var_0.a, true))), select(select(select(vec4<bool>(global1.x, false, var_0.a, var_0.a), vec4<bool>(global0.a, global0.a, global0.a, true), vec4<bool>(false, var_0.a, true, var_0.a)), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(true, true, var_0.a, global0.a), vec4<bool>(false, global0.a, true, global0.a)), vec4<bool>(global1.x, global1.x, false, true)), !select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global0.a, global0.a, false, false), true), global0.a == !global1.x), !(!(!vec4<bool>(true, true, global0.a, false))));
    return Struct_1(all(global1.zz), _wgslsmith_sub_vec2_u32(var_0.b, max(min(_wgslsmith_add_vec2_u32(vec2<u32>(16520u, 24249u), var_0.b), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, global0.b.x), vec2<u32>(var_0.b.x, 82644u))), vec2<u32>(select(1u, global0.b.x, true), select(4294967295u, var_0.b.x, var_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(773f)) + -1313f)), 1000f, var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(all(vec2<bool>(global0.a, false)) || select(_wgslsmith_add_u32(1u, 0u) >= ~global0.b.x, true, all(global1.xyz)), global0.a, global1.x, !global1.x);
    var var_0 = Struct_5(global1.x, func_1(), vec3<i32>(-u_input.c, abs(0i), i32(-1i) * -firstTrailingBit(-2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)), _wgslsmith_f_op_f32(trunc(var_0.b.c.x)), _wgslsmith_f_op_f32(var_0.b.c.x + global0.c.x))))));
    var_0 = Struct_5(global1.x, Struct_1(!(53734u != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u))), var_0.b.b, var_0.b.c), vec3<i32>(_wgslsmith_add_i32(u_input.c, countOneBits(~var_0.c.x)), _wgslsmith_sub_i32(func_3(Struct_2(37237i)), 0i), ~u_input.c));
    var var_2 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(84813u, 17038u, 0u, 12266u), vec4<u32>(var_0.b.b.x, global0.b.x, global0.b.x, 62920u), vec4<bool>(false, false, false, global0.a)), vec4<u32>(13070u, 1u, 4294967295u, global0.b.x)) | firstLeadingBit(~4294967295u), global0.b.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(551u, 4294967295u, 17597u), firstLeadingBit(select(vec3<u32>(4294967295u, var_0.b.b.x, 0u), vec3<u32>(global0.b.x, 7314u, global0.b.x), var_0.a))) % 32u));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-16675i, ~var_0.b.b, abs(~countOneBits(~vec3<u32>(1u, global0.b.x, var_3.b.x))), max(1u, var_0.b.b.x));
}

