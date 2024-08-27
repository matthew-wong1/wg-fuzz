struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(12250u, vec2<bool>(true, false), -32474i, false, 35427u), Struct_1(0u, vec2<bool>(false, false), 14188i, true, 0u), Struct_1(35849u, vec2<bool>(false, true), -28012i, false, 82334u), vec3<bool>(true, true, false)), Struct_2(Struct_1(1u, vec2<bool>(false, true), -28961i, false, 52394u), Struct_1(1u, vec2<bool>(true, false), -32767i, false, 16260u), Struct_1(1u, vec2<bool>(false, true), i32(-2147483648), false, 0u), vec3<bool>(false, false, true)), Struct_2(Struct_1(20439u, vec2<bool>(false, true), -149i, true, 93114u), Struct_1(4294967295u, vec2<bool>(true, true), 2147483647i, false, 4294967295u), Struct_1(44365u, vec2<bool>(false, true), 2147483647i, true, 4294967295u), vec3<bool>(true, false, true)), Struct_2(Struct_1(0u, vec2<bool>(false, false), i32(-2147483648), true, 52664u), Struct_1(20582u, vec2<bool>(true, true), -25842i, false, 51680u), Struct_1(4294967295u, vec2<bool>(false, true), 6499i, false, 47831u), vec3<bool>(false, false, false)), Struct_2(Struct_1(49783u, vec2<bool>(true, true), i32(-2147483648), false, 1u), Struct_1(0u, vec2<bool>(true, true), -30129i, true, 4294967295u), Struct_1(1u, vec2<bool>(true, true), 1i, false, 33706u), vec3<bool>(true, true, false)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, true), 2147483647i, true, 4294967295u), Struct_1(69782u, vec2<bool>(false, false), 58496i, true, 4294967295u), Struct_1(5264u, vec2<bool>(true, true), 2147483647i, true, 1u), vec3<bool>(false, true, false)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), 1i, false, 1u), Struct_1(0u, vec2<bool>(false, false), 69914i, false, 0u), Struct_1(0u, vec2<bool>(false, true), -1i, true, 3012u), vec3<bool>(true, true, false)), Struct_2(Struct_1(10868u, vec2<bool>(false, true), -29885i, true, 68782u), Struct_1(0u, vec2<bool>(false, true), 18547i, false, 1u), Struct_1(13993u, vec2<bool>(false, false), -82873i, true, 59114u), vec3<bool>(true, true, true)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, true), -1i, true, 4294967295u), Struct_1(1u, vec2<bool>(true, false), -18986i, true, 10082u), Struct_1(1u, vec2<bool>(false, true), 1726i, false, 4294967295u), vec3<bool>(true, true, true)), Struct_2(Struct_1(1u, vec2<bool>(false, true), 28106i, true, 28668u), Struct_1(27401u, vec2<bool>(false, false), 2147483647i, false, 0u), Struct_1(4294967295u, vec2<bool>(false, false), i32(-2147483648), false, 97430u), vec3<bool>(true, true, false)), Struct_2(Struct_1(0u, vec2<bool>(true, true), 0i, false, 9826u), Struct_1(98006u, vec2<bool>(false, false), 11175i, false, 0u), Struct_1(0u, vec2<bool>(true, false), -16763i, false, 4294967295u), vec3<bool>(true, true, false)), Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), 1i, false, 149815u), Struct_1(30475u, vec2<bool>(false, true), -17691i, false, 1u), Struct_1(0u, vec2<bool>(true, false), -1i, false, 0u), vec3<bool>(false, true, true)), Struct_2(Struct_1(18574u, vec2<bool>(true, true), 7677i, false, 32313u), Struct_1(0u, vec2<bool>(true, false), 2147483647i, false, 4294967295u), Struct_1(4294967295u, vec2<bool>(false, true), 0i, true, 4294967295u), vec3<bool>(true, true, true)), Struct_2(Struct_1(0u, vec2<bool>(true, true), 34289i, true, 1u), Struct_1(1u, vec2<bool>(true, true), 3814i, true, 4294967295u), Struct_1(25954u, vec2<bool>(false, false), 11165i, false, 39603u), vec3<bool>(true, true, false)), Struct_2(Struct_1(0u, vec2<bool>(true, false), 20698i, true, 4294967295u), Struct_1(40836u, vec2<bool>(false, false), 34189i, false, 43025u), Struct_1(0u, vec2<bool>(true, true), 0i, true, 4294967295u), vec3<bool>(false, false, false)));

var<private> global4: vec3<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> vec4<f32> {
    global3 = array<Struct_2, 15>();
    global1 = true;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0)))));
    global4 = ~(_wgslsmith_mult_vec3_u32(arg_2, ~arg_2) << (~vec3<u32>(37275u, firstTrailingBit(global4.x), global0.x) % vec3<u32>(32u)));
    global2 = any(!vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), false));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -2512f), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))), _wgslsmith_div_f32(arg_1, var_0), 508f));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> u32 {
    let var_0 = -189f;
    let var_1 = vec3<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -444f), -598f);
    global3 = array<Struct_2, 15>();
    var var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + 1229f))), ~(~(~vec3<u32>(62333u, 20196u, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0, 989f), _wgslsmith_div_vec4_f32(vec4<f32>(627f, var_0, var_0, -445f), vec4<f32>(1058f, var_0, var_0, -1020f))))))));
    return ~select(global0.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(0u, global4.x, global4.x)), arg_0.a), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = abs(vec2<u32>(global4.x ^ 13612u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(3147u, 69581u, 16400u), vec3<u32>(3200u, arg_2.e, arg_2.a)), select(vec3<u32>(arg_2.a, 25303u, 45474u), vec3<u32>(4294967295u, 55141u, 4294967295u), false)))) ^ vec2<u32>(~abs(func_2(Struct_3(vec3<u32>(arg_0.b.e, 0u, global0.x)), 0i)), 65451u);
    var var_1 = 36280u;
    var var_2 = firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(arg_2.c, arg_2.c), min(-5505i, -1i), -41673i, 2147483647i), vec4<i32>(~arg_2.c, -1i, arg_0.c.c, 1i)));
    var var_3 = Struct_3(max(~vec3<u32>(~arg_2.e, arg_0.c.e & arg_2.e, ~0u), _wgslsmith_add_vec3_u32(min(vec3<u32>(24243u, arg_2.e, 0u), vec3<u32>(1u, arg_2.e, 55930u)), abs(~vec3<u32>(arg_2.e, var_0.x, 4294967295u)))));
    global4 = select(countOneBits(~(~_wgslsmith_add_vec3_u32(vec3<u32>(global4.x, arg_2.e, 1u), var_3.a))), var_3.a, !arg_2.b.x);
    return Struct_3(~min(~min(var_3.a, vec3<u32>(9187u, global4.x, var_3.a.x)), select(firstTrailingBit(var_3.a), ~var_3.a, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(global3[_wgslsmith_index_u32(global0.x, 15u)], firstTrailingBit(~(-min(vec4<i32>(u_input.a, 0i, -17399i, u_input.a), vec4<i32>(-1i, -2147483647i, u_input.a, 19841i)))), Struct_1(max(global0.x, func_2(Struct_3(vec3<u32>(global4.x, global4.x, 0u)), 1i) >> (0u % 32u)), select(vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, false))), vec2<bool>(false, true), vec2<bool>(true, true)), ~1i, !select(true, true, true), 1u));
    var var_1 = global3[_wgslsmith_index_u32(global0.x, 15u)];
    let var_2 = Struct_1(~global4.x >> (func_4(Struct_2(var_1.b, var_1.a, var_1.a, !var_1.d), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.c, u_input.a, u_input.a, 2147483647i), vec4<i32>(-10507i, 35488i, var_1.c.c, u_input.a)), var_1.b).a.x % 32u), var_1.d.yx, _wgslsmith_add_i32(min(~(var_1.c.c & -12700i), -u_input.a), ~(~12822i) << (global4.x % 32u)), var_1.c.d, 0u);
    var var_3 = firstTrailingBit(var_2.c);
    global0 = var_0.a;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1275f, -2072f, var_0.d)), _wgslsmith_div_f32(293f, -1807f)))), 1000f, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 9366u), global0.xz), ~global4.x, _wgslsmith_mod_u32(1u, var_0.e)), vec3<u32>(firstTrailingBit(global0.x), 1u, global4.x)))).x));
    var_0 = func_1();
    var var_2 = true;
    var var_3 = global3[_wgslsmith_index_u32(1u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(48049u, 4294967295u), global0.yx), ~global0.zy), vec2<u32>(_wgslsmith_mult_u32(1u, global4.x), 1u)));
}

