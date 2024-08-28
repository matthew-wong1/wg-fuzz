struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(i32(-2147483648), -1i, 2537i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1998i, 10365i, 1i), vec3<i32>(56006i, 42388i, -1i), vec3<i32>(1i, i32(-2147483648), 30828i), vec3<i32>(i32(-2147483648), -15126i, -1i), vec3<i32>(-57774i, 0i, -1i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 17790i, 1i), vec3<i32>(2147483647i, 8812i, -1773i), vec3<i32>(-22588i, 32834i, 2147483647i), vec3<i32>(0i, -1i, 3270i), vec3<i32>(-24034i, -3215i, 1i), vec3<i32>(-6605i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 2147483647i, -43705i), vec3<i32>(-13456i, 0i, -16239i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-62527i, -1i, i32(-2147483648)), vec3<i32>(21159i, i32(-2147483648), 10915i), vec3<i32>(-10514i, 1i, -25154i), vec3<i32>(0i, -1i, 0i), vec3<i32>(10763i, i32(-2147483648), -9236i), vec3<i32>(-14244i, 46453i, -57274i), vec3<i32>(24911i, i32(-2147483648), 2147483647i), vec3<i32>(-45089i, 26035i, 19296i), vec3<i32>(1i, -50818i, 1i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(2147483647i, -2221i, 11418i), vec3<i32>(49519i, 1i, -1i), vec3<i32>(19302i, 29426i, 2147483647i));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<u32>(4294967295u, 1u, 40453u)));

var<private> global2: f32 = 1451f;

var<private> global3: array<Struct_3, 14>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_1(~_wgslsmith_mod_vec3_u32(select(global4.a >> (arg_0.a.c.www % vec3<u32>(32u)), ~vec3<u32>(u_input.e, 67142u, 4294967295u), true), ~vec3<u32>(arg_0.a.b.a.x, arg_0.a.c.x, 0u) << (firstLeadingBit(arg_0.a.b.a) % vec3<u32>(32u))));
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2278f))))));
    global3 = array<Struct_3, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -777f))), _wgslsmith_f_op_f32(round(1f))));
    let var_2 = u_input.d;
    return u_input.a;
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)))))));
    global0 = array<vec3<i32>, 30>();
    global2 = -1540f;
    global0 = array<vec3<i32>, 30>();
    let var_1 = Struct_2(0u, Struct_1(abs(~select(vec3<u32>(u_input.b, global4.a.x, u_input.b), vec3<u32>(global4.a.x, 83054u, u_input.b), vec3<bool>(true, false, true)))), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(47048u), u_input.e, 4294967295u, ~54881u), vec4<u32>(~4294967295u, global4.a.x << (global4.a.x % 32u), ~51448u, 1u)) ^ (countOneBits(vec4<u32>(15578u, global4.a.x, global4.a.x, global4.a.x)) & (_wgslsmith_mult_vec4_u32(vec4<u32>(global4.a.x, 12114u, 42725u, u_input.b), vec4<u32>(49216u, 4294967295u, 1u, u_input.e)) << (select(vec4<u32>(u_input.e, global4.a.x, 28725u, u_input.e), vec4<u32>(global4.a.x, 1u, u_input.b, global4.a.x), true) % vec4<u32>(32u)))));
    return ~(~_wgslsmith_clamp_vec3_u32(var_1.c.yyz, min(global4.a, vec3<u32>(u_input.b, 48564u, 1u) ^ vec3<u32>(39961u, 4294967295u, 119861u)), vec3<u32>(4294967295u, 1u, 36023u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32) -> vec4<u32> {
    var var_0 = arg_0.a.b;
    var var_1 = 1i;
    let var_2 = ~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(arg_1), func_3(-2079i)), var_0.a.x) | firstLeadingBit(select(var_0.a.x, countOneBits(u_input.b), true)));
    let var_3 = Struct_4(~func_1(Struct_3(Struct_2(arg_1.x, Struct_1(global4.a), arg_0.a.c)), firstLeadingBit(~arg_0.a.b.a.x)).x, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~4840u, countOneBits(4294967295u)) ^ ~(global4.a.x | arg_0.a.c.x), 14u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)))), arg_0.a, Struct_3(Struct_2(1u, global1[_wgslsmith_index_u32(4294967295u, 1u)], max(firstTrailingBit(arg_0.a.c), abs(vec4<u32>(var_0.a.x, 1u, arg_0.a.c.x, var_2))))));
    var var_4 = var_3.c.yz;
    return _wgslsmith_clamp_vec4_u32(~arg_0.a.c, ~vec4<u32>(0u, 26732u, arg_1.x, var_2), var_3.b.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c, u_input.c ^ -u_input.c, 11245i), vec3<i32>(_wgslsmith_sub_i32(~(-1i), i32(-1i) * -1i), ~(-2147483647i), _wgslsmith_dot_vec2_i32(func_1(Struct_3(Struct_2(global4.a.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], vec4<u32>(0u, 12620u, 67308u, 58012u))), global4.a.x), u_input.a))), reverseBits(i32(-1i) * -firstLeadingBit(-1i)), -(~u_input.c >> (_wgslsmith_mod_u32(87622u << (global4.a.x % 32u), _wgslsmith_div_u32(global4.a.x, 4294967295u)) % 32u)), ~(-(i32(-1i) * -33938i)));
    var var_1 = select(func_2(Struct_3(Struct_2(_wgslsmith_sub_u32(global4.a.x, global4.a.x), global1[_wgslsmith_index_u32(global4.a.x, 1u)], ~vec4<u32>(24952u, 35224u, u_input.e, 4294967295u))), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(global4.a | global4.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(27359u, global4.a.x, 4294967295u), vec3<u32>(u_input.e, 4294967295u, global4.a.x), vec3<u32>(u_input.b, 1u, 4294967295u))), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(337f)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(16817u, global4.a.x), _wgslsmith_dot_vec2_u32(global4.a.yy, global4.a.zy), ~u_input.e, ~116416u), abs(~abs(vec4<u32>(59505u, 1u, 0u, 27824u)))), true);
    global3 = array<Struct_3, 14>();
    let var_2 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(var_0.x == u_input.c, any(vec4<bool>(true, true, false, false)), true, true)), select(vec4<bool>(true, true, false, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), true), vec4<bool>(true, true, true, true)), vec4<bool>(false, min(abs(u_input.a.x), u_input.c) >= (_wgslsmith_dot_vec2_i32(var_0.yz, u_input.a) & abs(2147483647i)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), !(!(var_1.x >= var_1.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), -156f > _wgslsmith_f_op_f32(round(-1000f))));
    global0 = array<vec3<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, -20110i, -979i), var_0), firstLeadingBit(var_0.x), ~_wgslsmith_add_i32(var_0.x, var_0.x)), -global0[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, 246f))))));
}

