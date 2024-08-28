struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global1: array<f32, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, -803f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 14u)]), global1[_wgslsmith_index_u32(~40116u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<f32>(-429f, _wgslsmith_f_op_f32(f32(-1f) * -2354f), _wgslsmith_f_op_f32(floor(514f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31294u, 14u)] - 1343f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -476f))), -1612f, -736f, -655f)));
    var var_1 = !arg_2;
    global1 = array<f32, 14>();
    let var_2 = Struct_2(Struct_1(!arg_2.xxw, vec4<f32>(global1[_wgslsmith_index_u32(~1u, 14u)], -1670f, _wgslsmith_f_op_f32(abs(-271f)), _wgslsmith_f_op_f32(trunc(var_0.b.x))), 78691u, var_0.b, vec2<i32>(1i, 1i)));
    var var_3 = Struct_2(Struct_1(select(global0[_wgslsmith_index_u32(u_input.a, 15u)], var_1.wxz, !(!var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x + 1532f), _wgslsmith_div_f32(-350f, 1000f))), var_2.a.b.x, -472f, _wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(1219f * arg_0))), ~u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, 1000f, 541f, var_0.b.x))), -var_2.a.e));
    return vec3<f32>(global1[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_mult_u32(select(4294967295u, var_3.a.c, all(var_3.a.a.yz)), ~var_2.a.c)), 14u)], arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.a.b.x)))))))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b.wxy, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(_wgslsmith_div_f32(273f, -402f), global1[_wgslsmith_index_u32(~0u, 14u)]), !select(global0[_wgslsmith_index_u32(0u, 15u)], vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, false)), vec4<bool>(true, any(global0[_wgslsmith_index_u32(22802u, 15u)]), true, !arg_2)))));
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(21134u, u_input.a, u_input.a, 4294967295u), vec4<u32>(0u, u_input.a, 90306u, 82984u), vec4<u32>(1u, 60493u, 15634u, u_input.a)))), 15u)], _wgslsmith_f_op_vec4_f32(step(arg_0.b, _wgslsmith_f_op_vec4_f32(step(arg_0.b, _wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b))))), ~(~u_input.a), vec4<f32>(-627f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-116f * arg_1), _wgslsmith_f_op_f32(arg_1 + var_0.x))), arg_1, arg_1), firstLeadingBit(-select(vec2<i32>(49647i, -2147483647i), vec2<i32>(2147483647i, 16606i), arg_2))));
    var_0 = arg_0.b.xyw;
    var var_2 = var_1;
    let var_3 = vec3<u32>(0u, ~_wgslsmith_div_u32((var_2.a.c << (var_2.a.c % 32u)) << (53196u % 32u), ~abs(var_2.a.c)), var_1.a.c);
    return var_2.a;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = 2147483647i;
    let var_1 = Struct_2(func_2(Struct_3(-983f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.b) - arg_1.a.d)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.a), 14u)], true));
    global0 = array<vec3<bool>, 15>();
    global0 = array<vec3<bool>, 15>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-271f, -311f, 2577f, -650f) * vec4<f32>(var_1.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d.x) + var_1.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(-156f + 1000f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.d.x * global1[_wgslsmith_index_u32(4294967295u, 14u)]), 1f, _wgslsmith_f_op_f32(max(var_1.a.d.x, -1293f)), arg_1.a.d.x))))));
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~2380u, var_1.a.c), abs(1u), abs(~(~81957u))) & var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    let var_0 = vec4<i32>(~(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(2147483647i, -2147483647i, -43952i, -42455i), ~vec4<i32>(-50973i, 53661i, -2147483647i, 0i), all(vec2<bool>(true, false)))), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, 55744i, -47875i, -2147483647i) >> (~vec4<u32>(0u, 43756u, 0u, u_input.a) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-1i, firstTrailingBit(4456i))), _wgslsmith_mult_i32(reverseBits((-1i >> (u_input.a % 32u)) >> (~u_input.a % 32u)), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 45941i), vec2<i32>(2147483647i, -72074i))));
    let var_1 = vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~func_1(true, Struct_2(Struct_1(global0[_wgslsmith_index_u32(133096u, 15u)], vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)], -2188f), 1u, vec4<f32>(1633f, global1[_wgslsmith_index_u32(u_input.a, 14u)], 147f, global1[_wgslsmith_index_u32(15884u, 14u)]), vec2<i32>(-2147483647i, -21735i))), 2147483647i), 14u)]), global1[_wgslsmith_index_u32(~((u_input.a | 8264u) >> (~u_input.a % 32u)), 14u)]), -1451f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(u_input.a), 14u)] - global1[_wgslsmith_index_u32(~u_input.a, 14u)]));
    var var_2 = -(~_wgslsmith_sub_vec4_i32(~var_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_0.x, -2147483647i), vec4<i32>(-51693i, var_0.x, -23563i, -1i), abs(var_0))));
    global1 = array<f32, 14>();
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f))), !(!(!global0[_wgslsmith_index_u32(4294967295u, 15u)])), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(select(true, true, true), true, false, 259f != var_1.x)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(1u, u_input.a) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 0u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 14931u) % vec4<u32>(32u)), ~vec4<u32>(10823u, u_input.a, u_input.a, u_input.a))), var_1.xz, 130f);
}

