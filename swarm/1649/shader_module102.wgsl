struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: Struct_4 = Struct_4(Struct_2(false, vec4<u32>(1u, 4294967295u, 1u, 2038u), Struct_1(vec4<i32>(2147483647i, 12648i, 16279i, -36320i), -843f, vec2<f32>(398f, 987f)), Struct_1(vec4<i32>(-4994i, 34323i, 33299i, 1i), 812f, vec2<f32>(-525f, -1445f)), Struct_1(vec4<i32>(-33303i, -7479i, 1i, i32(-2147483648)), -1624f, vec2<f32>(444f, 837f))), false);

var<private> global3: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1000f, -1877f, -2004f), vec3<f32>(1259f, -472f, 276f), vec3<f32>(612f, 1000f, 605f), vec3<f32>(391f, -331f, -1000f), vec3<f32>(542f, 931f, -467f), vec3<f32>(-1295f, -280f, -1000f), vec3<f32>(1191f, -1819f, 1179f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    global3 = array<vec3<f32>, 7>();
    global2 = Struct_4(Struct_2(false, select(~global2.a.b, global2.a.b, (arg_1 || global2.a.a) & any(vec2<bool>(arg_0.x, true))), Struct_1(global2.a.e.a, -426f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.e.b, -1056f)))), Struct_1(vec4<i32>(countOneBits(16071i), u_input.b.x, u_input.a.x, -2147483647i), _wgslsmith_f_op_f32(trunc(-1087f)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.a.c.c, global2.a.d.c), _wgslsmith_f_op_vec2_f32(abs(global2.a.e.c)))), Struct_1(u_input.a, 594f, global2.a.c.c)), false);
    global1 = array<Struct_1, 14>();
    let var_0 = vec4<bool>(all(!vec4<bool>(any(arg_0), all(vec2<bool>(arg_1, true)), global2.a.b.x <= 1u, true)), global0.x, false, false);
    var var_1 = vec3<u32>(min(4294967295u, global2.a.b.x), _wgslsmith_add_u32(~global2.a.b.x, abs(global2.a.b.x)), abs(global2.a.b.x));
    return 1f;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(max(u_input.a.x, u_input.b.x), abs(0i)), u_input.a.x, -13818i, 0i);
    var var_1 = _wgslsmith_f_op_f32(global2.a.c.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec2<bool>(global0.x, global2.b), true)))) * 130f)));
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(~(~var_0.x), 39927i, countOneBits(countOneBits(~global2.a.c.a.x)), (~5698i ^ abs(var_0.x)) & -2147483647i), ~u_input.b ^ (u_input.b << ((_wgslsmith_mult_vec4_u32(global2.a.b, global2.a.b) >> (~vec4<u32>(global2.a.b.x, 66677u, 5854u, 9914u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_4 = 1i;
    return global0.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = global2.a;
    let var_1 = u_input.b.x;
    let var_2 = Struct_5(global2.a, -3411i, !(!vec4<bool>(!global2.a.a, true, func_2(var_0.b.x), arg_3)));
    let var_3 = 26045u;
    var var_4 = Struct_4(Struct_2(true, max(vec4<u32>(4294967295u, global2.a.b.x & var_0.b.x, 1u, ~32683u), min(~var_2.a.b, vec4<u32>(1u, 104457u, var_3, var_3))), Struct_1(vec4<i32>(37508i << (var_0.b.x % 32u), max(arg_2.a.x, arg_0.x), u_input.a.x, global2.a.e.a.x), 441f, vec2<f32>(196f, _wgslsmith_f_op_f32(func_3(vec2<bool>(arg_3, false), var_0.a)))), Struct_1(var_2.a.d.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.d.b, 913f) + -1097f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(868f, var_2.a.d.b))) + vec2<f32>(var_2.a.c.c.x, var_0.d.b))), arg_2), _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0.e.b * -169f))) != global2.a.c.b);
    return Struct_1(vec4<i32>(var_1, var_4.a.e.a.x, ~global2.a.d.a.x, ~(~_wgslsmith_div_i32(arg_0.x, 0i))), 1594f, vec2<f32>(-1425f, global2.a.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.a.c.c - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.e.b, _wgslsmith_f_op_f32(global2.a.d.b * global2.a.d.b)) - global2.a.d.c))));
    var var_1 = Struct_2(!(1i == countOneBits(global2.a.e.a.x)), vec4<u32>(1u, global2.a.b.x, countOneBits(global2.a.b.x), abs(global2.a.b.x) << (_wgslsmith_sub_u32(~0u, global2.a.b.x) % 32u)), Struct_1(vec4<i32>(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -1i, -2147483647i, u_input.b.x)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global2.a.d.a.x, u_input.b.x), global2.a.e.a.ywx), abs(u_input.a.x), _wgslsmith_div_i32(abs(1i), global2.a.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f * _wgslsmith_f_op_f32(var_0.x - -708f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, var_0.x)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -349f)), vec2<f32>(global2.a.e.c.x, -804f))))), global2.a.e, func_1(u_input.b.zyx, _wgslsmith_div_u32(reverseBits(global2.a.b.x), max(_wgslsmith_dot_vec4_u32(global2.a.b, global2.a.b), 1u)), Struct_1(global2.a.d.a, _wgslsmith_f_op_f32(round(-1376f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 872f))) * global2.a.c.c)), ~reverseBits(7096u) <= global2.a.b.x));
    var var_2 = abs(vec2<i32>(0i, func_1(vec3<i32>(-1i, i32(-1i) * -24725i, -2147483647i), ~abs(26731u), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_1.d.a.x, 1i), global2.a.d.a), -254f, var_1.e.c), true).a.x));
    let var_3 = !func_2(36957u);
    var var_4 = -var_1.d.a.x;
    let var_5 = vec4<i32>(0i, 27280i, 1i, 57917i >> (1u % 32u));
    var var_6 = global2.a;
    let var_7 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1474f, global2.a.e.c.x, var_6.d.b, var_6.d.c.x)))) + vec4<f32>(_wgslsmith_div_f32(var_1.d.b, 540f), _wgslsmith_div_f32(var_6.e.b, var_1.d.c.x), _wgslsmith_f_op_f32(round(var_1.e.c.x)), _wgslsmith_f_op_f32(129f + var_1.c.c.x))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(374f, var_0.x), _wgslsmith_f_op_f32(floor(386f)), _wgslsmith_f_op_f32(-var_0.x), -256f)))), _wgslsmith_mult_vec2_u32(var_6.b.ww, vec2<u32>(_wgslsmith_clamp_u32(abs(4294967295u), min(var_1.b.x, 21503u), var_7), ~var_1.b.x)), var_1.d.b);
}

