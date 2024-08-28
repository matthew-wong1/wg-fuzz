struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-1i, 1i, 1i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(23357i, -21693i, -67102i), vec3<i32>(i32(-2147483648), -4300i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 10007i), vec3<i32>(2147483647i, -1i, -8187i), vec3<i32>(0i, -12279i, 29133i), vec3<i32>(0i, -51016i, 0i), vec3<i32>(70086i, i32(-2147483648), 0i), vec3<i32>(51796i, -42515i, 0i), vec3<i32>(9045i, 0i, -56974i), vec3<i32>(-43453i, -14723i, 0i), vec3<i32>(26334i, 0i, -1i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 12113i), vec3<i32>(2147483647i, -53350i, 0i), vec3<i32>(-2142i, 6607i, 0i));

var<private> global1: Struct_2 = Struct_2(1u, Struct_1(false, vec2<u32>(4294967295u, 65396u), vec3<i32>(1i, 6666i, 0i), -1032f, vec3<f32>(2684f, -1000f, -1588f)), Struct_1(false, vec2<u32>(4059u, 4294967295u), vec3<i32>(-24188i, 1i, 32096i), -800f, vec3<f32>(598f, -734f, -480f)), Struct_1(false, vec2<u32>(4294967295u, 0u), vec3<i32>(0i, 1i, -1260i), 376f, vec3<f32>(144f, 945f, -580f)), vec4<bool>(false, true, false, true));

var<private> global2: u32 = 37812u;

var<private> global3: bool = false;

var<private> global4: i32 = -58802i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(7376u, 26070u ^ arg_1.c.a, 0u, global1.a), ~(~(~vec4<u32>(u_input.c, arg_1.c.d.b.x, 1u, 9107u))));
    var var_1 = Struct_4(false, arg_1, Struct_1(all(vec3<bool>(true, !arg_1.b, true)), abs(vec2<u32>(89785u, 1u) << (var_0.wx % vec2<u32>(32u))), global1.b.c, _wgslsmith_f_op_f32(select(global1.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.e.x) * _wgslsmith_f_op_f32(trunc(-551f))), arg_0.a & false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(global1.b.e, vec3<f32>(arg_0.e.x, -1041f, global1.b.e.x), arg_1.c.e.xzw)))), _wgslsmith_f_op_vec3_f32(-global1.c.e))));
    var var_2 = _wgslsmith_div_f32(-434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(431f)) * arg_1.c.b.d))));
    var_0 = vec4<u32>(48778u, _wgslsmith_div_u32(1u, var_0.x | 4294967295u), arg_1.c.a, ~global1.a);
    var var_3 = _wgslsmith_f_op_f32(trunc(134f));
    return vec3<f32>(arg_1.c.c.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f)) - 931f), var_1.b.c.d.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.a.d.e.x, _wgslsmith_f_op_f32(-arg_1.a.c.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.c.b.e.x), _wgslsmith_f_op_f32(-arg_0.d), all(vec2<bool>(false, arg_0.a)))), true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5) -> bool {
    let var_0 = select(global1.e.zxz, !global1.e.wzz, arg_0.e.yyz);
    let var_1 = arg_0;
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-var_1.d.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b)))));
    let var_3 = Struct_4(true, Struct_3(Struct_2(1u, var_1.c, Struct_1(!global1.d.a, vec2<u32>(0u, 0u), global0[_wgslsmith_index_u32(arg_0.b.b.x, 17u)], _wgslsmith_f_op_f32(trunc(var_1.d.e.x)), _wgslsmith_f_op_vec3_f32(floor(arg_1.b.yyw))), Struct_1(true, ~vec2<u32>(17004u, 4294967295u), -vec3<i32>(global1.c.c.x, -1i, -45161i), -2227f, _wgslsmith_f_op_vec3_f32(-arg_1.a)), select(arg_0.e, !vec4<bool>(arg_0.b.a, var_0.x, var_1.c.a, false), !vec4<bool>(var_0.x, arg_0.d.a, true, true))), false, var_1), arg_0.b);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -108f);
    return !(!var_1.b.a);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_4(func_4(Struct_2(global1.c.b.x, Struct_1(true, ~global1.b.b, _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(u_input.c, 17u)], global1.c.c), arg_2, _wgslsmith_f_op_vec3_f32(-global1.d.e)), Struct_1(false & arg_0, firstTrailingBit(global1.d.b), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(113068u, u_input.c), 17u)], _wgslsmith_f_op_f32(step(global1.d.d, global1.b.d)), global1.c.e), Struct_1(arg_1 >= global1.b.c.x, min(global1.c.b, global1.c.b), u_input.d.zyy, -195f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, arg_2, global1.c.e.x)))), global1.e), Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global1.c, Struct_3(Struct_2(u_input.c, global1.c, global1.d, Struct_1(true, vec2<u32>(34569u, 4294967295u), vec3<i32>(2147483647i, -2147483647i, -1i), -189f, global1.d.e), vec4<bool>(false, false, global1.e.x, arg_0)), arg_0, Struct_2(u_input.c, Struct_1(false, vec2<u32>(global1.c.b.x, global1.a), u_input.a.xyw, 537f, global1.c.e), global1.d, Struct_1(false, vec2<u32>(4294967295u, arg_3), global1.d.c, -200f, global1.d.e), global1.e)))) * _wgslsmith_f_op_vec3_f32(min(global1.d.e, global1.b.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(516f, arg_2, -271f, global1.d.d) + vec4<f32>(-210f, 1188f, -500f, global1.b.e.x)) + vec4<f32>(arg_2, arg_2, -1091f, global1.b.d)))), Struct_3(Struct_2(max(firstTrailingBit(15066u), 1u), global1.c, global1.b, Struct_1(true, global1.b.b, -vec3<i32>(arg_1, global1.d.c.x, -18957i), -1144f, global1.b.e), global1.e), !arg_0, Struct_2(16935u, Struct_1(true, global1.d.b, vec3<i32>(-19872i, 1i, arg_1), _wgslsmith_f_op_f32(ceil(arg_2)), vec3<f32>(-138f, 424f, global1.b.e.x)), global1.c, global1.b, !global1.e)), Struct_1(!(!select(global1.e.x, arg_0, global1.e.x)), global1.c.b, select(select(global1.c.c, select(vec3<i32>(0i, global1.d.c.x, u_input.e), vec3<i32>(global1.b.c.x, 16284i, arg_1), true), vec3<bool>(true, true, true)), select(~global0[_wgslsmith_index_u32(arg_3, 17u)], global0[_wgslsmith_index_u32(50500u | global1.a, 17u)], global1.e.xxx), false), global1.c.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d.e))));
    let var_1 = abs(-5403i);
    return Struct_4(!arg_0, var_0.b, Struct_1(var_0.b.b, ~abs(vec2<u32>(4294967295u, u_input.c)), _wgslsmith_div_vec3_i32(u_input.b.zwy, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1, var_0.b.a.c.c.x), u_input.b.xxz), -arg_1, var_0.c.c.x)), global1.c.d, vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2501f * var_0.c.e.x)), arg_2)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(~(-2147483647i) > ((abs(3253i) >> (0u % 32u)) >> (global1.b.b.x % 32u)), global1.c.c.x, -178f, 9042u);
    var var_1 = func_2(func_2(_wgslsmith_f_op_f32(min(var_0.c.d, -571f)) == global1.d.d, _wgslsmith_sub_i32(var_0.b.c.b.c.x, var_0.b.a.b.c.x) >> (global1.b.b.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(848f, 1031f))), abs(global1.d.b.x)).a, 31443i ^ var_0.c.c.x, func_2(func_4(Struct_2(~50617u, Struct_1(global1.c.a, vec2<u32>(4294967295u, var_0.b.c.c.b.x), var_0.c.c, var_0.c.d, global1.d.e), Struct_1(false, var_0.b.c.d.b, global0[_wgslsmith_index_u32(global1.b.b.x, 17u)], 263f, vec3<f32>(968f, global1.c.e.x, -120f)), var_0.b.a.c, select(vec4<bool>(false, true, false, var_0.a), vec4<bool>(global1.b.a, var_0.a, true, true), global1.d.a)), Struct_5(_wgslsmith_f_op_vec3_f32(-var_0.c.e), vec4<f32>(var_0.b.a.d.e.x, global1.b.d, 840f, -1583f))), -global1.c.c.x, -368f, u_input.c).c.e.x, select(u_input.c, var_0.c.b.x, any(vec3<bool>(var_0.a, var_0.a, global1.d.a))) & _wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(43178u, abs(global1.c.b.x)))).b;
    var var_2 = func_2(4294967295u >= ((~var_1.c.c.b.x | global1.b.b.x) ^ ((4294967295u | var_0.c.b.x) >> ((35223u << (1u % 32u)) % 32u))), 1i, _wgslsmith_f_op_f32(step(var_1.c.b.d, 1730f)), var_1.a.b.b.x).b.c;
    var var_3 = reverseBits(~1u);
    let var_4 = ~var_1.c.b.b.x;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = vec3<u32>(~(u_input.c ^ _wgslsmith_div_u32(1u ^ var_0.a.d.b.x, ~55809u)), 24999u, _wgslsmith_div_u32(~var_0.a.d.b.x | ~var_0.c.b.b.x, 32898u) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(37189u, abs(global1.d.b.x)), 0u) % 32u));
    global0 = array<vec3<i32>, 17>();
    global4 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(select(_wgslsmith_dot_vec4_i32(u_input.d << (vec4<u32>(7341u, 4294967295u, 0u, var_1.x) % vec4<u32>(32u)), vec4<i32>(56735i, 2147483647i, 34170i, global1.b.c.x)), _wgslsmith_add_i32(~u_input.b.x, firstTrailingBit(u_input.e)), true), -var_0.c.c.c.x), reverseBits(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -118f), -10594i, 4294967295u, firstLeadingBit(vec4<u32>(~max(var_0.c.c.b.x, global1.a), ~(~7295u), func_1().a.d.b.x & 4294967295u, 50109u)));
}

