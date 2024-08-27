struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(6879u, true, 657f), 1u, vec2<i32>(i32(-2147483648), 14169i), false);

var<private> global2: Struct_1 = Struct_1(26808u, true, 1403f);

var<private> global3: array<bool, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(min(global1.a.c, global1.a.c))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.c - 209f)))), _wgslsmith_f_op_f32(trunc(310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.c))), _wgslsmith_f_op_f32(-global2.c)));
    let var_1 = 1u;
    let var_2 = Struct_1(0u, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1f)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_mod_u32(78961u, global2.a), any(vec2<bool>(any(vec3<bool>(true, false, global3[_wgslsmith_index_u32(63472u, 8u)])), !global3[_wgslsmith_index_u32(global2.a, 8u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(809f, global2.c), 750f, any(vec2<bool>(true, true)))))), abs(33268u), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c.x, -1i, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 1i, -1i), vec3<i32>(arg_0, arg_0, global1.c.x))), ~(i32(-1i) * -21691i)) << (vec2<u32>(abs(1u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(3015u, 0u, 105392u), ~global1.b)) % vec2<u32>(32u)), any(select(vec3<bool>(!global3[_wgslsmith_index_u32(global1.a.a, 8u)], select(global3[_wgslsmith_index_u32(global2.a, 8u)], global0.d, global1.a.b), select(true, global0.d, false)), select(!vec3<bool>(true, global1.a.b, global1.a.b), vec3<bool>(false, true, true), vec3<bool>(false, global1.d, false)), !(!vec3<bool>(global2.b, false, global1.a.b)))));
    let var_4 = vec2<f32>(global1.a.c, -130f);
    return global1.a;
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global2 = global1.a;
    var var_0 = Struct_2(func_2(~(~global0.c.x)), 1u, _wgslsmith_mod_vec2_i32(select(global0.c, vec2<i32>(u_input.a, 0i), true), _wgslsmith_mod_vec2_i32(vec2<i32>(-40259i, -8201i), -arg_0.c)), any(vec4<bool>(!(global2.a >= 34212u), all(vec2<bool>(true, global1.d)) | !global0.a.b, !any(vec2<bool>(global0.a.b, true)), (global3[_wgslsmith_index_u32(arg_0.b, 8u)] || global2.b) || (arg_0.c.x > -1i))));
    var var_1 = ~vec3<i32>(_wgslsmith_clamp_i32(15565i, reverseBits(-12945i), ~1i), 0i, var_0.c.x);
    global1 = arg_0;
    global0 = arg_0;
    return !(!select(vec2<bool>(select(var_0.d, true, global1.a.b), true), vec2<bool>(arg_0.a.b, -222f <= arg_0.a.c), true));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec2<i32> {
    var var_0 = arg_2;
    global0 = arg_1;
    var var_1 = func_2(_wgslsmith_mult_i32(14516i, 1i ^ firstTrailingBit(arg_1.c.x)) | 1371i);
    var var_2 = (((countOneBits(vec3<u32>(global2.a, 1u, 5568u)) ^ firstLeadingBit(vec3<u32>(122990u, 1u, 57135u))) ^ vec3<u32>(global1.a.a, global0.a.a, 8211u)) | (~(vec3<u32>(1u, global2.a, 427u) | vec3<u32>(global0.b, var_1.a, 8207u)) ^ _wgslsmith_sub_vec3_u32(select(vec3<u32>(var_1.a, var_1.a, 72930u), vec3<u32>(global2.a, 4294967295u, 181u), vec3<bool>(true, false, global1.a.b)), ~vec3<u32>(4294967295u, 1u, global0.b)))) | ~(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.a, 35135u), select(vec3<u32>(3613u, arg_1.b, global0.b), vec3<u32>(3867u, 1u, 93251u), false)) & ~(vec3<u32>(23354u, 0u, global2.a) ^ vec3<u32>(global2.a, 1415u, global2.a)));
    global2 = Struct_1(16470u, global3[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return reverseBits(select(global1.c, global1.c, func_3(arg_1))) << (_wgslsmith_add_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(var_1.a, arg_1.b))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.x, 1u, 9489u), vec4<u32>(32471u, var_2.x, 45907u, 0u)), arg_1.a.a)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global0.a, ~global1.a.a, _wgslsmith_sub_vec2_i32(firstLeadingBit(func_1(!vec4<bool>(global2.b, true, global0.a.b, false), Struct_2(Struct_1(global0.b, false, global2.c), global2.a, global0.c, true), vec4<f32>(global2.c, 766f, global0.a.c, -1972f), vec3<i32>(0i, global1.c.x, 22086i) >> (vec3<u32>(global0.b, global1.b, global0.b) % vec3<u32>(32u)))), global1.c), !(-34362i >= _wgslsmith_div_i32(_wgslsmith_mod_i32(36370i, global1.c.x), min(-1i, 27805i))));
    global0 = Struct_2(global0.a, global2.a, global0.c, global3[_wgslsmith_index_u32(global0.a.a, 8u)]);
    let var_0 = all(select(select(vec3<bool>(true, false && global0.d, global2.a > 0u), select(vec3<bool>(global3[_wgslsmith_index_u32(global2.a, 8u)], global3[_wgslsmith_index_u32(9338u, 8u)], false), select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(54784u, 8u)], global0.a.b, true), global2.b), global3[_wgslsmith_index_u32(global2.a, 8u)] || false), !global1.d), !(!vec3<bool>(global1.d, true, global3[_wgslsmith_index_u32(global1.b, 8u)])), all(!func_3(Struct_2(global0.a, global2.a, vec2<i32>(global0.c.x, u_input.a), false)))));
    global1 = Struct_2(func_2(max(_wgslsmith_dot_vec4_i32(vec4<i32>(21479i, -15094i, -29740i, 0i), min(vec4<i32>(u_input.a, 1i, global0.c.x, -2147483647i), vec4<i32>(-2147483647i, -12758i, 11745i, 2147483647i))), global0.c.x)), ~1u, global0.c, all(!(!(!vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 8u)], global1.a.b)))));
    global3 = array<bool, 8>();
    global2 = Struct_1(47447u, false, 1115f);
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.c.x, u_input.a), global1.c.x), _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.x, global1.c.x, -2147483647i), vec3<i32>(-36973i, -4374i, global1.c.x))), 46512i)), 2147483647i, vec4<u32>(func_2(-9709i).a, _wgslsmith_mult_u32(~_wgslsmith_div_u32(global1.b, 31191u), max(~0u, func_2(global0.c.x).a)), ~36713u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.a, global1.b, global1.a.a, 4294967295u), ~vec4<u32>(global2.a, 21240u, global2.a, var_1)), _wgslsmith_div_vec4_u32(vec4<u32>(17044u, global0.a.a, var_1, global1.a.a), vec4<u32>(global2.a, var_1, global1.b, global1.a.a) << (vec4<u32>(global2.a, global0.a.a, global0.b, 4294967295u) % vec4<u32>(32u))))), _wgslsmith_div_vec2_u32(min(countOneBits(vec2<u32>(global2.a, global2.a)) | ~vec2<u32>(global0.b, 56362u), vec2<u32>(var_1, var_1) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 2949u), vec2<u32>(global2.a, var_1), vec2<u32>(global0.b, 11213u)) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13989u, global1.b), vec2<u32>(1u, global2.a)), ~vec2<u32>(global1.a.a, 1u))));
}

