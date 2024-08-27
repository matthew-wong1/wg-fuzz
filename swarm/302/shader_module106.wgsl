struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(966f, -1289f, -794f), Struct_1(39395u, 41187i), vec2<f32>(159f, -136f));

var<private> global2: Struct_1;

var<private> global3: array<f32, 24> = array<f32, 24>(555f, 1699f, 1528f, -505f, 575f, -662f, 2247f, -1227f, -173f, -462f, -209f, 344f, 356f, -433f, 1112f, 145f, -809f, 933f, -1000f, 839f, 1682f, -490f, 434f, -738f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    global2 = Struct_1(abs(1u), _wgslsmith_sub_i32(firstTrailingBit(-(u_input.b & u_input.b)), -u_input.b));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_0 = 188f;
    var var_1 = Struct_2(vec3<f32>(-1536f, _wgslsmith_f_op_f32(max(807f, _wgslsmith_f_op_f32(f32(-1f) * -721f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))))), Struct_1(max(min(_wgslsmith_dot_vec3_u32(u_input.a.ywz, vec3<u32>(u_input.a.x, 22391u, 58724u)), 0u), 4294967295u), 0i), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.yy - vec2<f32>(global1.c.x, arg_1.c.x)) - _wgslsmith_f_op_vec2_f32(-arg_1.a.xz)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.x, 1319f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.x, var_0), global1.a.xy, arg_0))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_1.c, _wgslsmith_f_op_vec2_f32(-global1.a.xz))))));
    return 14279i;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var var_2 = countOneBits(arg_2);
    let var_3 = global0[_wgslsmith_index_u32(1u, 31u)];
    let var_4 = arg_0;
    return -u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> vec2<i32> {
    return vec2<i32>(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-500f, -443f, 1354f))), arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1141f, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])))), max(vec3<i32>(func_3(arg_1.x, Struct_2(vec3<f32>(-748f, -117f, arg_0.c.x), Struct_1(arg_0.b.a, -1i), global1.a.yx)), -1i, 62912i), (vec3<i32>(36331i, 0i, -56851i) | vec3<i32>(u_input.b, global1.b.b, global1.b.b)) | _wgslsmith_mod_vec3_i32(vec3<i32>(-27591i, arg_0.b.b, global2.b), vec3<i32>(-1i, global1.b.b, -1i))), reverseBits(abs(global2.b)), true), _wgslsmith_div_i32(reverseBits(global2.b) | global2.b, 0i));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = global1.b.a & ~(~(~(~arg_1)));
    let var_2 = Struct_1(~global2.a, arg_2.x);
    let var_3 = ~u_input.a;
    let var_4 = vec4<bool>(var_0, func_2(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(global1.a)), global1.b, global1.a.yx), select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), false), !vec3<bool>(false, true, var_0), var_0)).x < 1i, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global2.a, _wgslsmith_dot_vec2_u32(u_input.a.yy, var_3.yy), u_input.a.x ^ 89138u), u_input.a) == _wgslsmith_sub_u32(~(~2193u), max(reverseBits(1u), 45619u | global2.a)), true);
    return global1.b;
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(arg_1.yzz, vec3<f32>(837f, 1816f, -1213f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) * arg_1.wzx)))), func_5(u_input.b, _wgslsmith_add_u32(firstLeadingBit(~global2.a), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.a), vec2<u32>(74074u, 35718u))), abs(vec4<i32>(_wgslsmith_mod_i32(global2.b, arg_0), arg_2.b, global1.b.b, global1.b.b | 20486i)), abs(vec2<i32>(0i, -10125i) << (vec2<u32>(arg_2.a, arg_2.a) % vec2<u32>(32u))) | firstLeadingBit(vec2<i32>(u_input.b, -2147483647i))), vec2<f32>(-1113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) * arg_1.x)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1492f);
    var var_1 = global0[_wgslsmith_index_u32(24878u, 31u)];
    var var_2 = ~vec2<i32>(_wgslsmith_add_i32(~2147483647i, global2.b), var_1.b.b);
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - global1.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1427f, global3[_wgslsmith_index_u32(var_1.b.a, 24u)], global3[_wgslsmith_index_u32(23895u, 24u)]) - global1.a)) + vec3<f32>(_wgslsmith_f_op_f32(select(-850f, 1000f, false)), 531f, -504f))), Struct_1(reverseBits(~_wgslsmith_div_u32(var_1.b.a, arg_2.a)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2877i, -32449i), vec2<i32>(1i, -9884i)) >> (0u % 32u), -2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(25317u, 24u)])))));
    return global0[_wgslsmith_index_u32(global2.a & 1u, 31u)];
}

fn func_1(arg_0: bool) -> vec4<f32> {
    global1 = Struct_2(global1.a, global1.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1191f, -1277f), vec2<f32>(global1.c.x, global1.c.x)))))))));
    global2 = Struct_1(0u, -879i);
    global1 = func_6(-25067i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -2282f, _wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(-global1.a.x)))), func_5(global2.b ^ 40674i, u_input.a.x, (vec4<i32>(0i, global2.b, -1i, 1799i) | max(vec4<i32>(39026i, global1.b.b, global2.b, global2.b), vec4<i32>(25840i, global2.b, 0i, global2.b))) >> (u_input.a % vec4<u32>(32u)), func_2(global0[_wgslsmith_index_u32(min(~82882u, _wgslsmith_add_u32(0u, global1.b.a)), 31u)], select(!vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, true), !vec3<bool>(arg_0, false, arg_0)))));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1349f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 34341u, global1.b.a), u_input.a.xyx), ~u_input.a.wzw) << (global2.a % 32u), 24u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, global1.b.a), reverseBits(vec4<u32>(4294967295u, 4294967295u, 59515u, 4294967295u))) >> ((firstLeadingBit(global1.b.a) & ~4294967295u) % 32u), 24u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(~(~(_wgslsmith_div_u32(global2.a, global2.a) << (global2.a % 32u))), ~global1.b.b);
    global2 = Struct_1(global1.b.a, 1i);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1181f, 269f, global3[_wgslsmith_index_u32(60647u, 24u)], -936f) * vec4<f32>(1042f, global1.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], global3[_wgslsmith_index_u32(u_input.a.x, 24u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(40991u, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], global1.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 24u)]))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(97658u, 24u)], global1.c.x)) - global1.a.x), _wgslsmith_f_op_f32(global1.a.x + 497f), -848f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(-global1.a.x))))));
    global0 = array<Struct_2, 31>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1406f, _wgslsmith_f_op_f32(219f * global1.a.x), _wgslsmith_div_f32(-1232f, -969f)));
    let var_2 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~global1.b.a, 24u)], vec3<i32>(34794i, -1i, 14991i), vec3<i32>(select(func_3(false, Struct_2(var_0.zyz, Struct_1(global2.a, -2147483647i), var_0.zx)), -global1.b.b, false), reverseBits(abs(global2.b)) & 0i, -2147483647i), select(firstLeadingBit(~vec3<u32>(14187u, 0u, 96135u)), vec3<u32>(~(~0u), 16569u, ~(~28406u)), ~4294967295u < global1.b.a), ~vec2<i32>(max(global1.b.b, global2.b), -2147483647i) & (-(~vec2<i32>(var_2.b, global2.b)) & vec2<i32>(~global1.b.b, 73179i)));
}

