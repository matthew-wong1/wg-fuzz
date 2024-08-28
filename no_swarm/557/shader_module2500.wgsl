struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-1520f, -509f, 1789f, 931f), vec4<f32>(1268f, 1442f, -245f, -406f), vec4<f32>(100f, -330f, -357f, -521f), vec4<f32>(-1214f, -1000f, 1910f, -875f), vec4<f32>(-251f, -1371f, 736f, 1238f), vec4<f32>(-320f, 624f, -677f, -1661f), vec4<f32>(-333f, 1312f, 1003f, 686f));

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: Struct_2;

var<private> global3: vec3<i32>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = !(!vec3<bool>(select(true, true, any(vec4<bool>(false, false, true, false))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -589f) > _wgslsmith_f_op_f32(trunc(-483f))));
    let var_1 = ~u_input.a;
    let var_2 = global4.d.c;
    global2 = Struct_2(Struct_1(0u, global2.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 988f) - arg_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -353f), 1u), firstLeadingBit(vec3<u32>(~4294967295u, 0u, firstTrailingBit(arg_1.e))) | (vec3<u32>(27771u, var_1, 2801u) >> (u_input.e.wzw % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.d - arg_1.c.x))))), Struct_1(1u, arg_1.b, global2.a.c, var_2.x, arg_1.a));
    var var_3 = Struct_2(global4.d, ~vec3<u32>(5658u, ~global4.a.e, ~52256u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-262f))), global2.a);
    return arg_1.b;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = global2.d;
    var var_1 = global4.a.b.x;
    let var_2 = var_0.a;
    var var_3 = Struct_2(Struct_1(~var_0.e, func_3(global4.a.d, Struct_1(var_0.e, countOneBits(vec4<i32>(0i, -33834i, var_0.b.x, arg_2.x)), vec2<f32>(global2.a.d, var_0.d), -1006f, 1u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)), -1161f), _wgslsmith_f_op_f32(-var_0.d), (1u | abs(u_input.a)) ^ select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.x, 1u), global2.b), 1u, true)), vec3<u32>(6622u, 4294967295u, ~arg_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -445f), global2.c, any(vec2<bool>(true, true)))), global2.d);
    let var_4 = !select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1126f - var_3.a.c.x)) < _wgslsmith_f_op_f32(sign(731f)), true, false || !all(vec2<bool>(false, false)));
    return vec2<bool>(global4.a.e < (abs(countOneBits(1u)) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(77711u, 1u, 0u), ~vec3<u32>(54543u, 4294967295u, u_input.e.x))), true);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = !select(select(vec2<bool>(select(true, false, false), false), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), all(vec2<bool>(false, false)))), func_2(reverseBits(global2.d.a), global4.b.yx, u_input.b), !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)));
    var var_1 = 48438u;
    let var_2 = global2.a.e;
    global3 = -vec3<i32>(-_wgslsmith_dot_vec4_i32(~global4.a.b, global4.d.b << (vec4<u32>(global4.b.x, 4294967295u, 0u, 60375u) % vec4<u32>(32u))), -_wgslsmith_mult_i32(arg_0, _wgslsmith_mod_i32(1i, u_input.b.x)), -60849i);
    global2 = Struct_2(Struct_1(4294967295u | global4.b.x, ~global4.d.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1263f * global2.d.d), global4.d.d), _wgslsmith_f_op_f32(abs(-1671f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.a.d, 852f)) - _wgslsmith_f_op_f32(global2.d.d * -1029f))), ~global2.b.x), max(_wgslsmith_mult_vec3_u32(vec3<u32>(~global4.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.e, 0u, 4294967295u, global4.b.x), u_input.e), ~1u), ~countOneBits(u_input.e.xzz)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(70318u, u_input.e.x, 1u), global2.b))), global2.d.c.x, Struct_1(global4.d.a, min(~(global4.a.b | vec4<i32>(0i, 22843i, 16324i, global4.d.b.x)), vec4<i32>(firstLeadingBit(global4.a.b.x), u_input.b.x, firstTrailingBit(global3.x), u_input.b.x ^ global4.d.b.x)), _wgslsmith_f_op_vec2_f32(global2.a.c * vec2<f32>(-575f, _wgslsmith_f_op_f32(floor(global2.a.d)))), _wgslsmith_f_op_f32(f32(-1f) * -1712f), 0u));
    return Struct_1(reverseBits(~u_input.a), vec4<i32>(-(~(~u_input.c)), abs(~countOneBits(global4.d.b.x)), countOneBits(i32(-1i) * -29603i), abs(global4.a.b.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(942f, _wgslsmith_f_op_f32(-global4.c)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.a.d)) - _wgslsmith_f_op_f32(-1113f + -904f))), 1211f)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global4.d.b.x);
    var var_1 = global2.d;
    global4 = Struct_2(global4.a, global4.b, _wgslsmith_f_op_f32(-global4.d.d), func_1(0i));
    let var_2 = func_1(~_wgslsmith_dot_vec4_i32(var_1.b, min(func_3(307f, Struct_1(36818u, vec4<i32>(20847i, 2147483647i, var_0.b.x, u_input.b.x), global4.a.c, -445f, 0u)), ~vec4<i32>(1i, 35803i, 33223i, 41751i))));
    let var_3 = var_0.b.yzw;
    var_1 = func_1(-63988i);
    global1 = array<vec2<u32>, 12>();
    let var_4 = global2.d.b.wx;
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.b.wz, 2147483647i, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, firstTrailingBit(-37723i) >> (1u % 32u), -10509i), var_0.b), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global4.d.a, global2.b.x, 0u, u_input.e.x), u_input.e), _wgslsmith_sub_vec4_u32(~u_input.e, u_input.e)), _wgslsmith_sub_vec4_u32(vec4<u32>(~var_0.a, _wgslsmith_clamp_u32(1u, 0u, var_0.a), var_1.e, ~41803u), abs(u_input.e & u_input.e))), 0u);
}

