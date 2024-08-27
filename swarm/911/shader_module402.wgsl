struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 1u, 2620u, 16910u);

var<private> global2: i32 = 46664i;

var<private> global3: Struct_1;

var<private> global4: Struct_3 = Struct_3(82480u, Struct_2(true, 4294967295u, vec4<u32>(59282u, 4294967295u, 0u, 25794u), Struct_1(24102i, 27774i, i32(-2147483648), vec3<u32>(0u, 1u, 9368u)), vec2<f32>(1000f, 499f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(arg_1, global4.b);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_add_u32(66800u, 0u);
    var_2 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(abs(global3.d.x), var_0.b.d.d.x, 4294967295u)), arg_3.c.wyz);
    var var_3 = arg_0;
    return Struct_2(arg_3.a, _wgslsmith_dot_vec4_u32(~abs(global4.b.c), abs(select(select(global4.b.c, var_0.b.c, var_0.b.a), reverseBits(vec4<u32>(4294967295u, 0u, arg_1, global4.b.b)), select(vec4<bool>(false, true, arg_3.a, var_0.b.a), vec4<bool>(true, var_0.b.a, true, global4.b.a), vec4<bool>(false, global4.b.a, arg_3.a, arg_3.a))))), vec4<u32>(min(4294967295u, global3.d.x), global4.a, ~1013u, 0u), arg_3.d, arg_3.e);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<u32> {
    global0 = array<vec2<bool>, 24>();
    let var_0 = global4.b;
    var var_1 = Struct_1(global3.c, _wgslsmith_dot_vec2_i32(arg_0.xw, _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(14772i, 61397i) << (vec2<u32>(var_0.d.d.x, global3.d.x) % vec2<u32>(32u))), -firstTrailingBit(arg_0.yz))), -(~1i >> (arg_3.a % 32u)), arg_3.b.c.yxy);
    var var_2 = any(vec4<bool>(false, false, global4.b.a, select(true, global4.b.a, global4.b.a)));
    var var_3 = func_2(global4.b.e.x, 50509u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.e.x))), arg_1).d;
    return vec3<u32>(_wgslsmith_mult_u32(68060u, 1u), 1u, 0u);
}

fn func_1() -> vec4<u32> {
    global3 = Struct_1(max(abs(1i), global3.b), ~global4.b.d.b, 14293i, ~(~(vec3<u32>(global1.x, global4.a, 0u) << (vec3<u32>(global3.d.x, 4294967295u, 44133u) % vec3<u32>(32u)))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~global1.x, global4.b.d.d.x ^ global4.a, ~global4.a), func_3(~u_input.c, func_2(global4.b.e.x, global3.d.x, global4.b.e, Struct_2(global4.b.a, 36601u, global4.b.c, global4.b.d, global4.b.e)), vec3<u32>(u_input.a, 0u, global1.x), Struct_3(0u, Struct_2(global4.b.a, 34889u, vec4<u32>(global1.x, 0u, 2621u, 96907u), global4.b.d, global4.b.e)))) % vec3<u32>(32u)));
    var var_0 = _wgslsmith_f_op_f32(select(global4.b.e.x, _wgslsmith_f_op_f32(-global4.b.e.x), true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.b.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(781f, -264f))))), 713f);
    global0 = array<vec2<bool>, 24>();
    global2 = reverseBits(u_input.c.x);
    return countOneBits(vec4<u32>(_wgslsmith_clamp_u32(29563u, _wgslsmith_clamp_u32(1u, 42171u, global4.a), 55653u), 45545u, 32828u, firstLeadingBit(global4.a) >> (~24261u % 32u)) ^ vec4<u32>(countOneBits(~u_input.a), 1u, firstLeadingBit(_wgslsmith_div_u32(u_input.a, u_input.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global4.b.c, global4.b.c), 35945u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global4.b.a, u_input.a, func_1(), Struct_1(reverseBits(u_input.b.x) | -(u_input.c.x << (global1.x % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, 1i >> (global4.a % 32u), ~28675i, 1i ^ global3.a), vec4<i32>(-2147483647i, ~global3.b, global4.b.d.b, u_input.c.x << (0u % 32u))), 2147483647i, ~vec3<u32>(~4294967295u, global1.x, ~global1.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global4.b.e - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4.b.e.x, 471f)))))));
    let var_1 = Struct_1(~(~(~u_input.b.x & max(u_input.c.x, 2147483647i))), u_input.c.x, u_input.b.x, vec3<u32>(78829u, var_0.b, ~((var_0.c.x | global1.x) ^ ~7802u)));
    let var_2 = func_2(_wgslsmith_f_op_f32(sign(var_0.e.x)), 1u, var_0.e, func_2(_wgslsmith_f_op_f32(-global4.b.e.x), _wgslsmith_sub_u32(global4.a, var_1.d.x) << (global1.x % 32u), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -796f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(152f, -194f, true)))), global4.b)).d;
    var var_3 = true;
    let var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, 59438u, _wgslsmith_sub_u32(var_2.d.x, 1u)), 4294967295u), 62233u, countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, 1u, global4.a, u_input.a), var_0.c))), select(_wgslsmith_add_vec3_u32(func_3(vec4<i32>(global4.b.d.b, -26469i, u_input.b.x, 2694i), Struct_2(global4.b.a, 1u, var_0.c, Struct_1(global4.b.d.a, var_0.d.a, var_2.a, vec3<u32>(var_1.d.x, 4294967295u, global1.x)), vec2<f32>(var_0.e.x, -1154f)), ~global3.d, Struct_3(var_2.d.x, global4.b)), vec3<u32>(_wgslsmith_add_u32(1u, var_2.d.x), 44000u << (global3.d.x % 32u), var_2.d.x)), global4.b.c.xyz << (global4.b.d.d % vec3<u32>(32u)), true));
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(614f + 676f), _wgslsmith_f_op_f32(step(global4.b.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.e.x)) * _wgslsmith_f_op_f32(func_2(588f, 81500u, vec2<f32>(578f, 135f), global4.b).e.x + _wgslsmith_f_op_f32(min(var_0.e.x, 207f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-(~min(u_input.b.zz, vec2<i32>(43861i, 41619i))), ~vec2<i32>(var_0.d.c, -1i)), ~abs(-vec3<i32>(-2147483647i, 1i, global3.c)), -3016i, _wgslsmith_div_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, 1i, var_1.c), vec4<i32>(6896i, 13367i, global3.b, 1i)) >> (var_1.d.x % 32u), 18464i), ~var_2.b), -1405f);
}

