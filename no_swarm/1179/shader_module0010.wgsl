struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(3410u, Struct_2(911f, vec3<i32>(-27704i, -1i, -25674i)), 1u, Struct_1(344f), 91036u));

var<private> global1: Struct_3 = Struct_3(108490u, Struct_2(1808f, vec3<i32>(1i, -45578i, 15736i)), 4294967295u, Struct_1(-1157f), 0u);

var<private> global2: i32;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(-1557f, vec3<i32>(1522i, i32(-2147483648), 3402i)), Struct_2(-429f, vec3<i32>(-1i, i32(-2147483648), -31987i)), Struct_2(-1809f, vec3<i32>(33492i, -21475i, 0i)), Struct_2(915f, vec3<i32>(i32(-2147483648), -1i, -65010i)), Struct_2(1210f, vec3<i32>(55032i, -27880i, 8645i)), Struct_2(-1249f, vec3<i32>(20904i, 17788i, 27543i)), Struct_2(1532f, vec3<i32>(2147483647i, 3559i, i32(-2147483648))), Struct_2(294f, vec3<i32>(-1i, -3662i, -26995i)), Struct_2(425f, vec3<i32>(2147483647i, 13857i, 25462i)), Struct_2(787f, vec3<i32>(-21618i, 0i, i32(-2147483648))), Struct_2(835f, vec3<i32>(i32(-2147483648), -4067i, -1i)), Struct_2(807f, vec3<i32>(-14876i, 27069i, -39246i)), Struct_2(-813f, vec3<i32>(-76501i, 2147483647i, 48998i)), Struct_2(1000f, vec3<i32>(6713i, -1i, 2147483647i)), Struct_2(-1186f, vec3<i32>(i32(-2147483648), 25261i, 0i)), Struct_2(-1953f, vec3<i32>(-32016i, i32(-2147483648), -49366i)));

var<private> global4: array<u32, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = arg_2;
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_1, 2147483647i, u_input.d.x)), select(global1.b.b, vec3<i32>(1i, global1.b.b.x, -29248i), vec3<bool>(true, false, true))) << (68644u % 32u), abs(-min(arg_1, global1.b.b.x)), arg_1) << (~firstLeadingBit(u_input.a.zxw) % vec3<u32>(32u));
    global4 = array<u32, 25>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(54288u, min(_wgslsmith_mult_u32(52109u, arg_0), ~_wgslsmith_add_u32(8945u, arg_0))), 1u)];
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(85316u, countOneBits(~u_input.a.x)), 25u)];
    return firstLeadingBit(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_2.b.b.zy, vec2<i32>(var_2.b.b.x, 0i)) ^ (i32(-1i) * -4681i)), -39192i));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.a * global1.d.a) - _wgslsmith_f_op_f32(-global1.b.a)) - -567f)))));
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.xzz, ~abs(vec3<u32>(14522u, 0u, global1.c) << (u_input.a.wyz % vec3<u32>(32u)))), ~_wgslsmith_mult_vec3_u32(min(u_input.a.wwz, u_input.a.xzx), vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], global1.e, global4[_wgslsmith_index_u32(4294967295u, 25u)])) ^ u_input.b);
    let var_2 = 487f;
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1.b.b.x, countOneBits(func_3(5944u & global4[_wgslsmith_index_u32(0u, 25u)], firstLeadingBit(global1.b.b.x), Struct_1(-284f), _wgslsmith_f_op_f32(arg_1.x * arg_1.x))), u_input.d.x), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(u_input.c, 1i, 1i, 0i)) & vec4<i32>(_wgslsmith_add_i32(37956i, u_input.d.x), global1.b.b.x, _wgslsmith_mod_i32(global1.b.b.x, u_input.d.x), _wgslsmith_clamp_i32(2147483647i, -1i, u_input.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.b.x, _wgslsmith_div_i32(-1i, -3211i), 1i, _wgslsmith_add_i32(0i, global1.b.b.x)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.c), vec4<i32>(1i, 40411i, 2147483647i, u_input.c), false), firstLeadingBit(vec4<i32>(global1.b.b.x, 55051i, u_input.d.x, -2147483647i))), vec4<i32>(countOneBits(85397i), -u_input.c, u_input.d.x, global1.b.b.x))));
    global3 = array<Struct_2, 16>();
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(select(global4[_wgslsmith_index_u32(u_input.a.x >> (47147u % 32u), 25u)], global1.a, true), global1.e)), global1.a ^ min(59789u, var_1.x)), 16u)];
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = -(~arg_0.b ^ -(global1.b.b & (arg_0.b & arg_0.b)));
    var var_1 = Struct_3(1u, global1.b, 78814u, global1.d, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41427u, 45536u), vec2<u32>(4294967295u, u_input.b.x)), u_input.b.x, 7730u, ~global1.e) << (u_input.a % vec4<u32>(32u)), ~(u_input.a << (u_input.a % vec4<u32>(32u))) << (~abs(u_input.a) % vec4<u32>(32u))), 25u)]);
    global4 = array<u32, 25>();
    var var_2 = _wgslsmith_div_f32(var_1.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) * _wgslsmith_f_op_f32(round(func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-928f, arg_0.a, 752f, var_1.d.a), vec4<f32>(518f, var_1.b.a, 1000f, var_1.b.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.a, var_1.d.a, 1000f, arg_0.a))).a))));
    var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~37290u, 4294967295u, max(0u, var_1.a)), u_input.b)), 1u)];
    return arg_0.a != _wgslsmith_f_op_f32(-global1.b.a);
}

fn func_1() -> StorageBuffer {
    global4 = array<u32, 25>();
    var var_0 = vec4<bool>(true, ~(~global1.b.b.x) < ~u_input.c, all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(true, true), vec2<bool>(true, true))), !func_4(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-372f, 288f, -281f, 573f), vec4<f32>(global1.b.a, -2615f, global1.d.a, 1156f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a, 766f, global1.d.a, 1616f) - vec4<f32>(global1.b.a, 1071f, global1.d.a, 400f))), _wgslsmith_f_op_f32(max(1804f, -535f)) > _wgslsmith_f_op_f32(-global1.b.a)));
    let var_1 = var_0.x;
    let var_2 = ~max(~abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 936i), u_input.d)), vec2<i32>(u_input.d.x, i32(-1i) * -1i));
    let var_3 = var_0.xy;
    return StorageBuffer(4294967295u, vec2<u32>(~0u, 4294967295u), vec4<u32>(firstLeadingBit(global4[_wgslsmith_index_u32(max(~global1.e, _wgslsmith_sub_u32(global1.c, 4294967295u)), 25u)]), min(global1.e | u_input.a.x, max(57815u, ~0u)), global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, abs(global4[_wgslsmith_index_u32(global1.c, 25u)]), ~global4[_wgslsmith_index_u32(37288u, 25u)], 10669u), u_input.a), 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 16>();
    global0 = array<Struct_3, 1>();
    global4 = array<u32, 25>();
    global4 = array<u32, 25>();
    global1 = global0[_wgslsmith_index_u32(1u, 1u)];
    let x = u_input.a;
    s_output = func_1();
}

