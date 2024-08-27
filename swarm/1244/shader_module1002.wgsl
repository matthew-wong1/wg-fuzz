struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(-71321i, -1i, -71066i);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(true, true, false), vec2<f32>(922f, 166f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-167f, 571f)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec4<i32> {
    global0 = global2[_wgslsmith_index_u32(~(~4294967295u), 2u)];
    let var_0 = firstLeadingBit(~(-11177i));
    let var_1 = -1361f;
    global1 = u_input.c.www;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -2578f))), -947f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1301f))) - 1367f), _wgslsmith_f_op_f32(global0.b.x - 1771f));
    return u_input.c;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.yz), global0.b))), arg_0.zz, _wgslsmith_clamp_u32(firstTrailingBit(63378u), u_input.d, _wgslsmith_mod_u32(1942u, u_input.d)) != 263u)));
    global2 = array<Struct_1, 2>();
    global0 = Struct_1(select(!(!(!vec3<bool>(true, false, var_1.a.x))), select(select(select(var_1.a, vec3<bool>(global0.a.x, global0.a.x, true), global0.a), !global0.a, !var_1.a.x), var_1.a, false), var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + global0.b.x), global0.b.x)));
    let var_2 = u_input.c | reverseBits(~(-u_input.c));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.x * -362f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_1 {
    global1 = vec3<i32>(47797i, global1.x, ~global1.x);
    global1 = ~(_wgslsmith_mod_vec3_i32(u_input.c.yyz & (vec3<i32>(arg_1.x, -38689i, 23738i) << (vec3<u32>(u_input.a.x, u_input.d, u_input.a.x) % vec3<u32>(32u))), -_wgslsmith_div_vec3_i32(vec3<i32>(0i, 1i, 41048i), vec3<i32>(1i, -2147483647i, 2147483647i))) ^ min(arg_1.xww, -arg_1.www));
    let var_0 = Struct_1(select(select(!(!arg_0.a), select(vec3<bool>(global0.a.x, true, global0.a.x), !arg_0.a, vec3<bool>(true, arg_0.a.x, false)), arg_0.a), global0.a, any(arg_0.a)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1022f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))));
    global2 = array<Struct_1, 2>();
    let var_1 = arg_0;
    return var_1;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<i32> {
    global0 = arg_3;
    let var_0 = func_4(global2[_wgslsmith_index_u32(u_input.d, 2u)], func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1620f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-504f, 300f, arg_3.b.x)))), arg_3.b.x) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.b.x, global0.b.x, global0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(320f, global0.b.x, global0.b.x) - vec3<f32>(global0.b.x, 1000f, arg_3.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1213f, global0.b.x, -414f) + vec3<f32>(arg_3.b.x, arg_3.b.x, global0.b.x)))))), arg_3.b);
    let var_1 = firstTrailingBit(firstTrailingBit(~countOneBits(vec4<u32>(42137u, 53883u, u_input.d, u_input.d) | vec4<u32>(0u, u_input.d, u_input.d, 1u))));
    global2 = array<Struct_1, 2>();
    global0 = var_0;
    return u_input.c.wz;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: f32) -> bool {
    let var_0 = countOneBits(reverseBits(abs(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_1.x, 1u, arg_1.x, 18727u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, 2572u, 98012u), vec4<u32>(u_input.a.x, arg_1.x, u_input.d, u_input.d), vec4<u32>(arg_1.x, u_input.a.x, 26859u, 31867u))))));
    global0 = global2[_wgslsmith_index_u32(0u | u_input.d, 2u)];
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    var var_0 = false;
    let var_1 = !select(select(vec4<bool>(all(vec4<bool>(global0.a.x, false, false, global0.a.x)), true, select(true, global0.a.x, false), !global0.a.x), vec4<bool>(global0.a.x, u_input.a.x < 0u, global0.a.x, true), global0.a.x), !vec4<bool>(select(true, global0.a.x, false), true, global0.a.x, false), func_5(_wgslsmith_div_vec2_i32(func_1(global1.x, global0.a.yz, u_input.c, Struct_1(vec3<bool>(global0.a.x, true, false), vec2<f32>(global0.b.x, 2878f))), _wgslsmith_mod_vec2_i32(global1.zy, u_input.c.yx)), _wgslsmith_sub_vec2_u32(vec2<u32>(55317u, u_input.d) | u_input.a, ~vec2<u32>(0u, 0u)), -604f));
    var var_2 = !all(select(!vec4<bool>(var_1.x, false, global0.a.x, var_1.x), select(var_1, var_1, false), select(all(vec3<bool>(var_1.x, var_1.x, true)), true, true)));
    global1 = ~u_input.c.xxz;
    global2 = array<Struct_1, 2>();
    var var_3 = -25202i;
    var var_4 = Struct_1(func_4(Struct_1(!var_1.xxw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -868f) * vec2<f32>(global0.b.x, -239f)))), _wgslsmith_add_vec4_i32(u_input.c, ~func_2()), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -373f), -773f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, global0.b.x, 295f))), vec3<f32>(global0.b.x, -1644f, global0.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(434f, 1196f)) * global0.b)).a, _wgslsmith_f_op_vec2_f32(max(global0.b, global0.b)));
    var_4 = global2[_wgslsmith_index_u32(countOneBits(6944u), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 25928u), _wgslsmith_div_vec4_u32(vec4<u32>(42968u, u_input.a.x, u_input.d, u_input.d), vec4<u32>(u_input.d, 65617u, 44739u, u_input.d))), select(vec4<u32>(u_input.d, 27506u, u_input.d, u_input.d), min(vec4<u32>(u_input.d, 6906u, 1u, 23469u), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a.x)), global1.x == -1i))), vec3<i32>(~1i, global1.x, u_input.b) & _wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.c.x, u_input.b, 30226i), u_input.c.xxy) >> (vec3<u32>(u_input.d, u_input.d, 8521u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-31224i, -5755i, u_input.c.x), u_input.c.zyw, vec3<i32>(global1.x, -1i, global1.x))), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, 27715i, u_input.b, 0i), vec4<i32>(u_input.b, 38428i, 1i, -45790i)), vec4<i32>(1i, ~(-1i), func_1(~u_input.c.x, vec2<bool>(false, var_1.x), vec4<i32>(-24592i, 8039i, -2147483647i, global1.x), func_4(Struct_1(var_1.wzz, global0.b), u_input.c, vec3<f32>(global0.b.x, var_4.b.x, var_4.b.x), vec2<f32>(-1545f, global0.b.x))).x, -1i >> (u_input.d % 32u))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_4.b.x, var_4.b.x)), _wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f + global0.b.x)), _wgslsmith_f_op_f32(global0.b.x - 761f), _wgslsmith_f_op_f32(-var_4.b.x)))));
}

