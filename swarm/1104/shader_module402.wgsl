struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(1i, 0i, 1i, -1i), vec3<f32>(1185f, -2218f, 1200f));

var<private> global1: vec4<bool>;

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    global3 = Struct_1(global3.a, 1u);
    global1 = global3.a;
    let var_0 = Struct_1(vec4<bool>(any(vec2<bool>(global3.a.x, false || global3.a.x)), true, !(!global3.a.x), global3.b <= ~(~global3.b)), global3.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-156f, global0.b.x, global0.b.x, arg_0.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -1978f, -242f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, arg_0.x, 871f, -670f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - -1439f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(global0.b.x + -451f)), 774f, global0.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-647f, arg_0.x, 1000f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -1196f, 771f, arg_0.x) * vec4<f32>(global0.b.x, 1483f, -1284f, global0.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1568f, global0.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, global0.b.x, global0.b.x) - vec4<f32>(arg_0.x, -491f, 988f, -519f))))));
    let var_2 = vec3<f32>(543f, -940f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1053f))))))));
    return ~(~vec4<u32>(abs(u_input.b), var_0.b, global3.b, global3.b) ^ (vec4<u32>(u_input.a.x, 59006u, ~48278u, _wgslsmith_clamp_u32(4294967295u, 1u, 35965u)) ^ vec4<u32>(~4294967295u, countOneBits(57139u), 4294967295u, 7819u)));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec2<i32>(firstLeadingBit(-2147483647i) >> (global3.b % 32u), 2147483647i);
    global2 = 36963u;
    var_0 = global0.a.zx;
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, 2474f)) * global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - global0.b))))));
    let var_1 = Struct_2(func_3(global0.b), 1i, Struct_1(vec4<bool>(any(select(global3.a, vec4<bool>(global1.x, true, false, global3.a.x), vec4<bool>(global1.x, true, global1.x, false))), (var_0.x & 1i) < min(var_0.x, 2147483647i), true, _wgslsmith_f_op_f32(-global0.b.x) >= -411f), ~reverseBits(4294967295u)));
    return var_1.c.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    global1 = select(!vec4<bool>(true, any(select(global3.a, vec4<bool>(true, false, global3.a.x, true), true)), ~arg_1.b == _wgslsmith_dot_vec3_u32(vec3<u32>(global3.b, 4609u, arg_1.b), vec3<u32>(u_input.b, arg_3.b, global3.b)), global1.x), func_2(), arg_3.a);
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(-1712f, arg_2.x, -809f)) - arg_2))));
    let var_0 = global0.b.x;
    var var_1 = countOneBits(reverseBits(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(arg_1.b, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(1u, 0u, u_input.b, 4294967295u), !arg_3.a), countOneBits(vec4<u32>(u_input.b, arg_3.b, u_input.a.x, 15919u)))));
    let var_2 = arg_1.b;
    return Struct_3(global0.a & _wgslsmith_div_vec4_i32(abs(vec4<i32>(-14300i, global0.a.x, 0i, global0.a.x)), max(global0.a, vec4<i32>(12171i, 2233i, 1i, arg_0)) >> (vec4<u32>(0u, arg_3.b, 1077u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.b, global0.b)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(global0.b)), arg_2))))));
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    global3 = Struct_1(func_2(), 4294967295u);
    let var_0 = 13527i;
    let var_1 = Struct_2(vec4<u32>(u_input.b, u_input.b, global3.b ^ u_input.b, global3.b) | vec4<u32>(4294967295u, 108305u, (global3.b | 0u) ^ 43060u, func_3(global0.b).x), global0.a.x, Struct_1(global3.a, 7027u));
    global2 = ~abs(1u);
    global3 = Struct_1(!select(var_1.c.a, !(!var_1.c.a), true), u_input.b);
    return StorageBuffer(~var_0, _wgslsmith_dot_vec3_u32(var_1.a.wwz, ~var_1.a.wxx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, abs(1i), _wgslsmith_dot_vec3_i32(global0.a.zzz, vec3<i32>(-1i, global0.a.x, global0.a.x)), global0.a.x & global0.a.x), vec4<i32>(global0.a.x, firstTrailingBit(-2147483647i), 1i, -35785i)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(-1270f)), -895f, -1081f))));
    let var_1 = -vec4<i32>(-2147483647i, -2147483647i, ~(i32(-1i) * -2147483647i), 60490i);
    var var_2 = global1.x;
    var var_3 = 1075f;
    global1 = !(!vec4<bool>(global1.x, true, true, any(select(vec3<bool>(global1.x, true, true), global3.a.wwy, global1.xxx))));
    let x = u_input.a;
    s_output = func_4(func_1(i32(-1i) * -1i, Struct_1(global3.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 99418u), vec3<u32>(global3.b, 35369u, 4294967295u)))), global0.b, Struct_1(!(!vec4<bool>(global3.a.x, false, true, true)), ~global3.b)));
}

