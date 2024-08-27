struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, true, false, false), Struct_1(644f, 26548u, 572f, vec4<bool>(false, false, true, false), 54595i), Struct_1(361f, 44781u, -548f, vec4<bool>(false, true, false, false), -1i), 9377i, Struct_1(1000f, 0u, -215f, vec4<bool>(false, true, true, true), -1714i));

var<private> global2: array<vec3<f32>, 18>;

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global2 = array<vec3<f32>, 18>();
    let var_0 = 0u;
    var var_1 = abs(~max(~select(vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, global3.e.e), vec2<bool>(global3.b.d.x, false)), vec2<i32>(0i, global1.e.e)));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.e.a)))), global1.c.a)));
    global0 = array<f32, 17>();
    return global3.c.e;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-(vec4<i32>(global1.d, -25254i, global1.d, -3841i) >> (vec4<u32>(0u, 1u, 1u, global1.b.b) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-80087i, global1.b.e, -2147483647i, 1i), vec4<i32>(arg_0.c.e, arg_0.e.e, 10565i, -27513i))), vec4<i32>(-1i) * -vec4<i32>(global1.d, 0i, arg_0.b.e, arg_0.d)), vec4<i32>(global3.c.e, ~0i, global1.e.e, _wgslsmith_sub_i32(firstTrailingBit(global1.e.e), -arg_0.b.e))), vec4<i32>(-1i, global3.b.e, _wgslsmith_mult_i32(~(-arg_0.d), func_3()), global1.d));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(~firstTrailingBit(vec3<u32>(1u, arg_0.c.b, 0u))), vec3<u32>(4294967295u << (global3.c.b % 32u), ~(~61969u), ~u_input.a.x)), vec3<u32>(~2292u, _wgslsmith_mod_u32(abs(_wgslsmith_sub_u32(global1.e.b, 8614u)), 1u), _wgslsmith_div_u32(global3.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 38139u), vec3<u32>(global3.e.b, 0u, 42714u))) ^ reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global3.e.b, 4294967295u, 0u), vec4<u32>(global3.b.b, u_input.a.x, arg_0.c.b, arg_0.e.b)))));
    var var_2 = firstLeadingBit(46902u);
    var var_3 = global1.e.b;
    global2 = array<vec3<f32>, 18>();
    return !arg_0.e.d;
}

fn func_1() -> f32 {
    let var_0 = !global1.c.d.x;
    global4 = global1.c.e;
    global4 = global1.b.e;
    global1 = Struct_2(!select(!vec4<bool>(var_0, global1.b.d.x, false, var_0), global3.c.d, global1.c.d.x), Struct_1(-758f, ~global3.c.b, -775f, select(select(select(vec4<bool>(false, true, false, global1.b.d.x), vec4<bool>(false, false, global3.e.d.x, false), global1.a), !global3.e.d, !global3.c.d), global1.b.d, select(!global1.c.d, global1.c.d, any(vec2<bool>(global3.e.d.x, false)))), global3.e.e), Struct_1(global1.b.c, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 17u)], global1.a, global1.b.e), global1.b.e, global3.e);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.b.a), (~(~u_input.a.x) >> (countOneBits(global1.e.b >> (u_input.a.x % 32u)) % 32u)) << (112162u % 32u), -1500f, select(!select(global1.c.d, func_2(Struct_2(vec4<bool>(true, global1.b.d.x, false, false), global1.b, Struct_1(global1.b.a, global1.e.b, -471f, vec4<bool>(var_0, global3.a.x, true, global1.e.d.x), global1.d), global3.d, global1.e)), true), select(global3.c.d, global3.c.d, !vec4<bool>(global1.a.x, false, true, var_0)), all(!vec3<bool>(global3.b.d.x, false, false))), abs(5561i));
    return _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(193f, global3.e.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 18>();
    global0 = array<f32, 17>();
    var var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1063f, global3.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), ~(~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(129801u, global1.c.b), vec2<u32>(1u, global3.b.b), vec2<u32>(8575u, u_input.a.x)), u_input.a)));
    var var_1 = Struct_1(-1000f, _wgslsmith_add_u32(3559u, 38309u), var_0.a, !global1.a, global3.b.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, var_1.a, 2352f, 656f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.a, var_1.c, global1.e.c, 747f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(~global1.b.e, ~(~14524i)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), ~1818u, 69351u, ~var_0.b.x), vec4<u32>(_wgslsmith_mod_u32(0u, 1u), u_input.a.x | global3.e.b, global1.b.b, firstTrailingBit(94292u))), ~vec4<u32>(var_0.b.x, ~global1.c.b, global1.e.b, 1u)));
}

