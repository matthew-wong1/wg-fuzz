struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4897u, vec4<u32>(1u, 4969u, 4294967295u, 4294967295u));

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<u32, 14> = array<u32, 14>(4294967295u, 1u, 4294967295u, 71094u, 4294967295u, 0u, 33897u, 1u, 33192u, 0u, 8415u, 4294967295u, 64851u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<f32> {
    global2 = array<u32, 14>();
    global2 = array<u32, 14>();
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(294f, arg_2.x) + _wgslsmith_f_op_vec2_f32(step(arg_2.zw, arg_2.yz))))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 12u)];
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(380f)), _wgslsmith_f_op_f32(f32(-1f) * -1536f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(960f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-3404f, 114f)))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-250f, -374f), vec2<f32>(-2487f, 585f)), _wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(19153u, 20363u, 26763u), Struct_1(global2[_wgslsmith_index_u32(0u, 14u)], arg_0.b), vec4<f32>(1578f, 787f, -216f, -325f))))))));
    let var_3 = true;
    global0 = Struct_1(~global0.a, ~global0.b);
    return Struct_1(select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32((u_input.a.x ^ 39355u) & _wgslsmith_add_u32(var_0.b.x, 38470u), global2[_wgslsmith_index_u32(4294967295u, 14u)]), 14u)], max(arg_0.a ^ arg_0.a, 0u), false), var_0.b | arg_0.b);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 12u)];
    let var_1 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~11832u), reverseBits(_wgslsmith_mod_u32(reverseBits(17134u), 4294967295u))), 12u)]);
    let var_2 = func_2(var_1);
    let var_3 = var_1.b.yww;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.x, 5727u, 28482u), var_3, var_1.b.wxw))), var_0.b.xwx), 12u)];
    return !(!vec2<bool>(false, any(!vec3<bool>(false, arg_0, false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_i32(((~vec2<i32>(u_input.b, -50909i) | vec2<i32>(u_input.b, u_input.b)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(65849u, u_input.a.x) >> (arg_2.b.zw % vec2<u32>(32u)), vec2<u32>(100621u, u_input.a.x)) % vec2<u32>(32u))) >> (reverseBits(global0.b.xw) % vec2<u32>(32u)), vec2<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(28347i, u_input.b, u_input.b, u_input.b), vec4<i32>(-19980i, u_input.b, u_input.b, u_input.b) | vec4<i32>(2147483647i, -2147483647i, u_input.b, u_input.b)), 0i));
    global2 = array<u32, 14>();
    let var_1 = -var_0;
    var var_2 = -(~countOneBits(var_1.x));
    let var_3 = arg_2;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec2<bool>(true, !any(vec3<bool>(false, true, false))), !func_1(true), select(vec2<bool>(true, select(true, false, true)), vec2<bool>(true, true), true)), vec2<bool>(true, true), Struct_1(45080u, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(global0.b.x, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42254u, 14u)], 14u)], 14u)]), u_input.a) << (abs(global0.b) % vec4<u32>(32u)), ~vec4<u32>(global0.b.x, 29317u, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(72736u, 14u)]))));
    let var_1 = ~vec2<u32>(1u, var_0.b.x);
    global2 = array<u32, 14>();
    let var_2 = ~u_input.a.x >= ~(_wgslsmith_dot_vec3_u32(vec3<u32>(57505u, 0u, global2[_wgslsmith_index_u32(var_0.a, 14u)]), ~vec3<u32>(var_1.x, u_input.a.x, var_1.x)) | func_2(Struct_1(global2[_wgslsmith_index_u32(var_0.a, 14u)], vec4<u32>(99495u, 4294967295u, var_0.a, 1u))).b.x);
    let var_3 = select(vec2<i32>(u_input.b & (u_input.b | u_input.b), -u_input.b), vec2<i32>(abs(i32(-1i) * -u_input.b), _wgslsmith_add_i32(firstLeadingBit(u_input.b), u_input.b)), any(select(select(vec3<bool>(false, false, var_2), select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, true, true), vec3<bool>(var_2, true, true)), var_2), vec3<bool>(true, all(vec4<bool>(false, var_2, false, true)), true), !vec3<bool>(var_2, true, true))));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(713f, 812f, 119f) * vec3<f32>(-1000f, -779f, 1229f)), _wgslsmith_div_vec3_f32(vec3<f32>(-408f, -290f, -860f), vec3<f32>(263f, 1000f, -595f)), vec3<bool>(var_2, false, var_2)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -440f))), _wgslsmith_f_op_f32(max(-381f, _wgslsmith_f_op_f32(-248f - 2043f))), -386f))));
    var var_5 = Struct_1(_wgslsmith_sub_u32(func_2(func_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.a))).b.x, ~_wgslsmith_clamp_u32(29713u >> (1u % 32u), 1u, ~global0.a)), ~(~_wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(36819u, global0.a, global2[_wgslsmith_index_u32(var_1.x, 14u)], 41952u) | global0.b)));
    var var_6 = vec2<u32>(countOneBits(~104916u), firstLeadingBit(~(~u_input.a.x)));
    let var_7 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 34470u), 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-960f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_f32(select(var_4.x, var_4.x, true))))) - _wgslsmith_f_op_f32(1681f + _wgslsmith_f_op_f32(-var_4.x))), vec4<i32>(var_3.x, _wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(u_input.b, 2147483647i)), -16216i), -(~var_3.x), 1i));
}

