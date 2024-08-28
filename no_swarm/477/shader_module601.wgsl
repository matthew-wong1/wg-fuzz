struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: array<i32, 2>;

var<private> global3: array<vec3<f32>, 28>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = all(!(!select(vec3<bool>(arg_0.a, false, arg_0.a), select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, true, false), vec3<bool>(false, true, arg_0.a)), vec3<bool>(arg_0.a, false, false))));
    let var_1 = vec3<bool>(false, !arg_0.a, !(arg_0.a & any(select(vec4<bool>(false, arg_0.a, var_0, false), vec4<bool>(true, arg_0.a, arg_0.a, true), vec4<bool>(false, arg_0.a, false, false)))));
    global3 = array<vec3<f32>, 28>();
    global0 = -(firstTrailingBit(~(-vec2<i32>(arg_0.c, -85680i))) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)));
    var var_2 = Struct_2(~_wgslsmith_sub_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(arg_0.b.x, 2u)], -14420i, global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(arg_0.b.x, 2u)]) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 26195u, u_input.b.x, u_input.a), vec4<u32>(arg_0.b.x, arg_0.b.x, 25323u, 4294967295u), vec4<u32>(arg_0.b.x, 4294967295u, 73744u, arg_0.b.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, global0.x, arg_0.c, arg_0.c) << (vec4<u32>(u_input.b.x, arg_0.b.x, 95181u, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(global2[_wgslsmith_index_u32(62012u, 2u)], global2[_wgslsmith_index_u32(52028u, 2u)], 2147483647i, global2[_wgslsmith_index_u32(u_input.a, 2u)]))), ~countOneBits(~(vec2<u32>(u_input.a, u_input.b.x) ^ vec2<u32>(1u, arg_0.b.x))), vec4<bool>(var_0, arg_0.a, select(any(var_1.zz), true, !var_1.x) || true, true));
    return vec2<u32>(~abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.b.x, 61183u, 1u), vec3<u32>(var_2.b.x, arg_0.b.x, var_2.b.x), var_2.c.wzz), vec3<u32>(116704u, 103222u, 34682u))), 1u);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(reverseBits(~vec4<i32>(-871i, global0.x, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 2u)])), func_3(Struct_1(true && any(vec4<bool>(false, false, false, true)), u_input.b, ~(~(-53577i)))), vec4<bool>(!(any(vec4<bool>(true, false, false, false)) || (u_input.b.x > 1u)), !all(vec2<bool>(true, true)), false, true));
    let var_1 = ~(abs(~countOneBits(9250u)) >> (_wgslsmith_div_u32(0u, min(~4294967295u, min(15835u, u_input.b.x))) % 32u));
    let var_2 = Struct_2(select(var_0.a, var_0.a, var_0.c), (u_input.b << (~vec2<u32>(85158u, var_1) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(var_1, var_1)), ~abs(u_input.b)), select(select(!var_0.c, var_0.c, select(!vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c, var_0.c.x)), !(!var_0.c), false));
    global0 = var_2.a.ww;
    global1 = array<vec2<f32>, 17>();
    return vec4<i32>(_wgslsmith_add_i32(0i, _wgslsmith_div_i32(var_2.a.x, u_input.c.x)), var_0.a.x, var_2.a.x, global0.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_2(select(vec4<i32>(55332i, -1i, _wgslsmith_clamp_i32(-2850i, global2[_wgslsmith_index_u32(abs(u_input.b.x), 2u)], _wgslsmith_add_i32(0i, global2[_wgslsmith_index_u32(4294967295u, 2u)])), 48651i), func_2(), true | all(vec2<bool>(true, true))), _wgslsmith_mult_vec2_u32(~(u_input.b << (~u_input.b % vec2<u32>(32u))), vec2<u32>(max(firstLeadingBit(u_input.a), func_3(Struct_1(false, u_input.b, 37710i)).x), ~abs(0u))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), arg_1 <= arg_1), !(global0.x == 0i)));
    global2 = array<i32, 2>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(773f + _wgslsmith_f_op_f32(ceil(-109f)))));
    var var_2 = func_2().x;
    global1 = array<vec2<f32>, 17>();
    return Struct_2(var_0.a, _wgslsmith_add_vec2_u32(~u_input.b, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(45921u, 0u), ~u_input.b), ~(~vec2<u32>(4294967295u, u_input.a)))), var_0.c);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> i32 {
    global0 = u_input.c;
    let var_0 = ~21964i;
    global1 = array<vec2<f32>, 17>();
    global2 = array<i32, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 17u)], _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(0u, 17u)] * vec2<f32>(arg_0, 1720f)), vec2<bool>(arg_2.c.x, true))) * _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(select(1779u, 68819u, arg_1), 17u)])))));
    return -(~global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), u_input.c);
    let var_0 = vec3<i32>(countOneBits(func_4(_wgslsmith_f_op_f32(1f * 545f), false, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1259f, 628f, -1297f, 356f)), _wgslsmith_f_op_f32(1701f + 572f), i32(-1i) * -51189i))), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, -abs(u_input.c.x)), firstLeadingBit(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u << (u_input.b.x % 32u), 2u)], -1i))), ~0i);
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(554f, _wgslsmith_f_op_f32(ceil(-363f)), -699f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(627f + 191f) - -1000f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-490f, _wgslsmith_f_op_f32(f32(-1f) * -1519f), 1346f, -475f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-860f, -356f, 1000f, -905f))) - vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(317f))))))), -_wgslsmith_sub_i32(countOneBits(global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), -8512i));
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_1.b.x, 26249u, 31507u) ^ ~vec3<u32>(var_1.b.x, u_input.b.x, 17507u)), _wgslsmith_mult_vec3_u32((vec3<u32>(u_input.b.x, 1u, u_input.a) ^ vec3<u32>(2041u, 51163u, 1u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(var_1.b.x, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_sub_u32(var_1.b.x, u_input.b.x), func_1(vec4<f32>(-1000f, 1023f, -1395f, -1000f), -1000f, -15075i).b.x, var_1.b.x >> (16956u % 32u))), ~((vec3<u32>(u_input.b.x, var_1.b.x, 18656u) | vec3<u32>(u_input.a, 4294967295u, 7781u)) << (min(vec3<u32>(var_1.b.x, 68859u, 4294967295u), vec3<u32>(50187u, var_1.b.x, 4294967295u)) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(abs(vec3<u32>(var_1.b.x, 29393u, 16012u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), ~vec3<u32>(var_1.b.x, var_1.b.x, 4294967295u))), ~firstLeadingBit(~vec3<u32>(u_input.a, 4294967295u, u_input.b.x))));
    global0 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(min(-var_0.yx, func_2().ww), u_input.c, abs(_wgslsmith_mult_vec2_i32(var_0.zy, vec2<i32>(global0.x, -2147483647i)))) | ((u_input.c ^ firstLeadingBit(var_0.yz)) ^ _wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.x, u_input.c.x), select(var_0.zy, u_input.c, vec2<bool>(true, true)))), var_1.a.zw);
    global3 = array<vec3<f32>, 28>();
    global1 = array<vec2<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(var_1.b.x, 17u)])), ~(~36546u));
}

