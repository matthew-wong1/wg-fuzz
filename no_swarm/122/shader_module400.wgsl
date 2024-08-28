struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), 0u, vec2<i32>(57146i, 0i), vec4<i32>(-49784i, i32(-2147483648), 2147483647i, 0i));

var<private> global1: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(76745u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(11073u, 41581u), vec2<u32>(0u, 4294967295u), vec2<u32>(11125u, 0u), vec2<u32>(57573u, 31154u), vec2<u32>(59042u, 1u), vec2<u32>(37833u, 36794u), vec2<u32>(32683u, 61259u), vec2<u32>(29869u, 17727u), vec2<u32>(4462u, 0u), vec2<u32>(28470u, 1u), vec2<u32>(18123u, 64630u), vec2<u32>(42167u, 0u));

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global3: Struct_2;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, false, false), 0u, vec2<i32>(0i, 17623i), vec4<i32>(2147483647i, 18282i, 2147483647i, 2147483647i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    var var_0 = global3.b;
    global4 = global3.b;
    let var_1 = 0i;
    global0 = Struct_1(select(vec3<bool>(any(!vec4<bool>(false, true, var_0.a.x, false)), any(vec4<bool>(true, true, global0.a.x, false)), false), global3.b.a, !vec3<bool>(!global4.a.x, global4.a.x, global4.a.x)), u_input.b.x, reverseBits(vec2<i32>(_wgslsmith_mult_i32(global3.b.c.x, global4.c.x), reverseBits(var_1))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, reverseBits(-25510i), ~var_0.c.x, -2147483647i), max(global4.d, global4.d) | global3.b.d));
    global1 = array<vec2<u32>, 14>();
    return -19297i;
}

fn func_2(arg_0: vec4<bool>) -> vec2<i32> {
    global4 = Struct_1(vec3<bool>(true, func_3() <= (_wgslsmith_clamp_i32(global4.d.x, global4.d.x, global4.c.x) & _wgslsmith_sub_i32(global3.b.c.x, 0i)), global0.a.x), u_input.a.x, vec2<i32>(abs(global3.b.c.x), global4.d.x) >> (vec2<u32>(abs(~u_input.b.x), global4.b & _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), global4.d);
    let var_0 = vec2<bool>(global0.a.x && global3.d, all(vec3<bool>(arg_0.x, any(arg_0), global3.b.a.x || false)));
    global1 = array<vec2<u32>, 14>();
    var var_1 = Struct_3(Struct_2(global4.b, Struct_1(!select(global4.a, global0.a, vec3<bool>(global4.a.x, var_0.x, global0.a.x)), ~u_input.a.x, global0.d.xy | abs(vec2<i32>(-37190i, 0i)), -_wgslsmith_sub_vec4_i32(global3.b.d, vec4<i32>(global0.c.x, 1i, 14306i, global0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.c, -1013f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-377f - global3.c), global3.c)), true));
    let var_2 = var_1.a.b;
    return max(min(~(var_2.d.wz << (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global3.b.b), u_input.b) % vec2<u32>(32u))), ~(-(global3.b.d.xw | var_1.a.b.d.zx))), -vec2<i32>(-func_3(), ~_wgslsmith_clamp_i32(-28675i, global3.b.c.x, 17166i)));
}

fn func_1() -> u32 {
    global4 = Struct_1(!global0.a, _wgslsmith_mod_u32(0u, reverseBits(54237u)), vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(global3.b.d.xy), func_2(vec4<bool>(false, false, global0.a.x, false))) << (1u % 32u), global3.b.d.x), ~countOneBits(vec4<i32>(-global3.b.c.x, func_2(vec4<bool>(false, global0.a.x, global0.a.x, global3.b.a.x)).x, func_3(), -30280i)));
    var var_0 = _wgslsmith_clamp_i32(-7399i, global4.d.x, -(_wgslsmith_mod_i32(-2147483647i, global4.d.x) | firstTrailingBit(global3.b.c.x))) ^ global3.b.c.x;
    let var_1 = global3.b;
    var var_2 = max(max(vec4<u32>(~(~61095u), firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, global0.b)), ~1u, 34430u), vec4<u32>(0u, _wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(global4.b, 1u)), 0u, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, global4.b), 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(~var_1.b >> (global4.b % 32u), var_1.b, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.b.x), vec3<u32>(global0.b, 0u, var_1.b)), abs(vec3<u32>(var_1.b, 39910u, global4.b))), global0.b), ~vec4<u32>(~0u, _wgslsmith_clamp_u32(global0.b, global4.b, 38359u), global3.b.b >> (var_1.b % 32u), ~var_1.b)));
    return ~firstTrailingBit(abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4245u;
    global1 = array<vec2<u32>, 14>();
    let var_1 = _wgslsmith_clamp_u32(global4.b, 0u, ~(~global4.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), global3.c, var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-193f, _wgslsmith_f_op_f32(f32(-1f) * -621f), -632f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(159f, global3.c, -1383f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1739f, 360f, 837f)))))), ~abs(0u));
}

