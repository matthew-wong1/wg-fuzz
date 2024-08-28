struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(11175u, 1u, 4294967295u), Struct_2(18490u, 4294967295u, 17638u, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1832f, -387f), vec3<f32>(-597f, 906f, 472f), vec4<i32>(-44374i, 0i, i32(-2147483648), 0i)), vec2<bool>(true, false)), -14377i);

var<private> global1: i32 = -48996i;

var<private> global2: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global3: array<vec4<u32>, 30>;

var<private> global4: vec2<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> vec3<f32> {
    return vec3<f32>(global0.b.d.c.x, 1791f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.d.c.x * global0.b.d.c.x))) + global0.b.d.c.x));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = min(~(~2147483647i << (arg_1.b.c % 32u)), arg_0.x) ^ global4.x;
    var var_1 = global0.b.d.c.x;
    global4 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5130i, global0.c >> (firstTrailingBit(46900u) % 32u)), -arg_0, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.b.d.d.x, arg_0.x), arg_1.b.d.d.x), ~4314i)));
    global0 = arg_1;
    var var_2 = _wgslsmith_mod_u32(abs(0u), 73559u);
    return ~select(~90964u, 38727u, !arg_1.b.e.x || false);
}

fn func_1(arg_0: f32) -> i32 {
    global4 = _wgslsmith_sub_vec2_i32(global0.b.d.d.zw ^ abs(global0.b.d.d.ww), abs(global0.b.d.d.xz));
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(~_wgslsmith_clamp_vec2_i32(vec2<i32>(~global4.x, 17755i), global0.b.d.d.zx, vec2<i32>(-2147483647i, 18639i)), true));
    global1 = 1i;
    global2 = array<vec2<bool>, 12>();
    let var_1 = Struct_4(global0.b, global0.b, global0.b.d, Struct_3(~global0.a, Struct_2(20566u, ~global0.b.b, func_3(vec2<i32>(24287i, -22533i), Struct_3(u_input.e.www, Struct_2(0u, 10194u, u_input.d, global0.b.d, vec2<bool>(global0.b.e.x, global0.b.e.x)), 18951i), var_0.x), Struct_1(reverseBits(u_input.e.zw), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(322f, arg_0), vec2<f32>(var_0.x, 913f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, var_0.x, 102f))), firstLeadingBit(vec4<i32>(u_input.c, 1i, u_input.c, -11544i))), !(!vec2<bool>(true, global0.b.e.x))), (max(-32387i, 0i) ^ abs(global4.x)) >> (0u % 32u)), u_input.e.xy);
    return _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(global0.b.d.d, _wgslsmith_div_vec4_i32(global0.b.d.d, _wgslsmith_div_vec4_i32(~vec4<i32>(global4.x, 2147483647i, var_1.d.b.d.d.x, var_1.c.d.x), ~vec4<i32>(-18282i, 38353i, global4.x, global4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = min(vec2<i32>(func_1(_wgslsmith_f_op_f32(f32(-1f) * -215f)), ~(-(~global4.x))), _wgslsmith_div_vec2_i32(global0.b.d.d.zz, countOneBits(vec2<i32>(0i | global0.b.d.d.x, max(38613i, 2147483647i)))));
    var var_0 = max(vec4<i32>(abs(0i), global0.b.d.d.x, _wgslsmith_div_i32(firstTrailingBit(u_input.a), -select(36672i, global0.c, global0.b.e.x)), 0i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.c, global0.b.d.d.x << (global0.a.x % 32u), -u_input.c, _wgslsmith_mod_i32(-15615i, u_input.a)), vec4<i32>(countOneBits(-1i), select(0i, u_input.a, true), max(-1i, -1900i), 10816i)) ^ global0.b.d.d);
    let var_1 = Struct_3(vec3<u32>(u_input.b, ~select(global0.b.b, 23391u, false), _wgslsmith_add_u32(40983u, u_input.d ^ 1u)), Struct_2(~global0.b.b >> (_wgslsmith_add_u32(u_input.e.x >> (u_input.b % 32u), _wgslsmith_add_u32(20321u, u_input.b)) % 32u), global0.a.x << ((abs(1u) | (u_input.e.x >> (global0.b.d.a.x % 32u))) % 32u), ~abs(~48493u), Struct_1(~global0.a.yz, global0.b.d.b, global0.b.d.c, -vec4<i32>(global4.x, global0.b.d.d.x, 0i, global4.x)), global2[_wgslsmith_index_u32(~(~4294967295u) | ~global0.a.x, 12u)]), _wgslsmith_dot_vec3_i32(~min(var_0.zwz, global0.b.d.d.yzz) | ~global0.b.d.d.zwy, -_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.x, -27432i, global0.b.d.d.x), countOneBits(vec3<i32>(2147483647i, 44753i, 8677i)))));
    var var_2 = vec4<bool>(true, ~max(var_1.a.x, _wgslsmith_clamp_u32(u_input.b, var_1.b.b, global0.a.x)) >= ~0u, any(select(select(!vec4<bool>(global0.b.e.x, false, var_1.b.e.x, var_1.b.e.x), vec4<bool>(false, global0.b.e.x, true, global0.b.e.x), select(vec4<bool>(global0.b.e.x, var_1.b.e.x, var_1.b.e.x, global0.b.e.x), vec4<bool>(false, var_1.b.e.x, true, global0.b.e.x), vec4<bool>(true, global0.b.e.x, false, true))), !(!vec4<bool>(false, false, var_1.b.e.x, true)), !global0.b.e.x)), !var_1.b.e.x);
    var var_3 = var_1;
    let var_4 = var_3.b.d;
    let var_5 = -10566i;
    var var_6 = Struct_1(~var_3.a.zx, var_1.b.d.b, vec3<f32>(_wgslsmith_f_op_f32(279f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f + -334f)) + _wgslsmith_f_op_f32(-1f)), var_4.c.x), reverseBits(global0.b.d.d));
    let var_7 = Struct_1(vec2<u32>(var_3.b.d.a.x, var_4.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.d.b.x + var_3.b.d.c.x) - _wgslsmith_f_op_f32(ceil(-1384f))), -2357f) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-507f, var_1.b.d.c.x))), 489f)), vec3<f32>(var_4.c.x, var_6.c.x, _wgslsmith_f_op_f32(exp2(global0.b.d.b.x))), var_3.b.d.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(global0.b.d.a.x, 49390u, 21025u, u_input.b))), ~(~countOneBits(vec4<u32>(4294967295u, u_input.b, var_4.a.x, 9771u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292f * _wgslsmith_f_op_f32(f32(-1f) * -141f))), _wgslsmith_f_op_f32(-var_3.b.d.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f + var_4.b.x))), var_7.d.x);
}

