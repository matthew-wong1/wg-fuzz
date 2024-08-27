struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(6302u, vec4<f32>(-1241f, 1398f, 1410f, 1367f), 2147483647i);

var<private> global1: i32 = 77826i;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<Struct_1, 19>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    global2 = array<Struct_1, 24>();
    var var_0 = countOneBits(~u_input.b.x);
    let var_1 = vec2<bool>(true, select(false, true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false)) || any(vec2<bool>(false, true))));
    let var_2 = select(!vec2<bool>(!(var_1.x | var_1.x), !var_1.x), !var_1, select(select(vec2<bool>(var_1.x, true), var_1, var_1.x), vec2<bool>(select(any(vec3<bool>(var_1.x, var_1.x, true)), true, var_1.x), true), var_1));
    var var_3 = firstLeadingBit(u_input.b.x);
    return 43842u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = 6172u;
    global2 = array<Struct_1, 24>();
    let var_1 = firstTrailingBit(abs(reverseBits(firstTrailingBit(~vec4<u32>(global0.a, 1u, u_input.b.x, 0u)))));
    global3 = array<Struct_1, 19>();
    let var_2 = arg_1;
    return vec3<i32>(min(global0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, u_input.a, arg_2.c, 2147483647i) ^ vec4<i32>(-2101i, arg_1.c, -1i, 63582i), vec4<i32>(arg_0.c, global0.c, u_input.a, arg_0.c))) >> (u_input.b.x % 32u), max(-6912i, global0.c), abs(2423i));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = reverseBits(countOneBits(countOneBits(vec3<i32>(global0.c, 1i, u_input.a) >> (vec3<u32>(4294967295u, 31410u, u_input.b.x) % vec3<u32>(32u))))) | select(func_4(global2[_wgslsmith_index_u32(firstLeadingBit(~13480u), 24u)], global3[_wgslsmith_index_u32(func_3(vec2<f32>(235f, global0.b.x), global0.b.xxw), 19u)], Struct_1(~u_input.b.x, _wgslsmith_f_op_vec4_f32(round(global0.b)), global0.c)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(16023i, u_input.a, global0.c), vec3<i32>(u_input.a, 55905i, -2147483647i)) & vec3<i32>(u_input.a, ~u_input.a, -2147483647i), true);
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_1));
    global2 = array<Struct_1, 24>();
    let var_2 = all(arg_0.yyz);
    let var_3 = ((0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a, 1u, 48738u) ^ vec4<u32>(u_input.b.x, global0.a, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 57475u, u_input.b.x) ^ vec4<u32>(18027u, global0.a, 0u, global0.a)) % 32u)) > _wgslsmith_add_u32(1u, 1u)) & (_wgslsmith_add_i32(-42956i, var_0.x) != 1i);
    return Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(global0.b)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.x, global0.b.x, arg_1, global0.b.x))))))), arg_0)), -2147483647i);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = 0i ^ _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(reverseBits(29453i), func_2(vec4<bool>(true, true, false, true), global0.b.x).c)), _wgslsmith_sub_vec2_i32(select(~vec2<i32>(0i, -4204i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.c, 31507i), vec2<i32>(-2147483647i, -2147483647i)), all(vec3<bool>(false, false, true))), vec2<i32>(u_input.a << (global0.a % 32u), 9211i)));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(~(reverseBits(vec3<i32>(0i, global0.c, 49422i)) | firstLeadingBit(vec3<i32>(-23371i, global0.c, -1i)))), min(-vec3<i32>(1i, _wgslsmith_mod_i32(-2147483647i, -17600i), -2147483647i), _wgslsmith_clamp_vec3_i32(-countOneBits(vec3<i32>(-17008i, -2147483647i, arg_1.c)), ~vec3<i32>(arg_2, u_input.a, 2147483647i), reverseBits(vec3<i32>(1i, global0.c, arg_1.c)))));
    global0 = func_2(vec4<bool>(false, true, false, -_wgslsmith_mult_i32(u_input.a, 1i) <= -15967i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-189f)) - _wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2162f)));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.b.wxz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1701f, 435f, -652f) + arg_1.b.zxz))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 183f, arg_1.b.x) + arg_1.b.xzw))))));
    return global2[_wgslsmith_index_u32(arg_1.a, 24u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = func_5(u_input.b, func_2(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), arg_2.b.x > _wgslsmith_f_op_f32(global0.b.x + arg_1)), arg_1), 1i | reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(0i, arg_2.c, u_input.a)) | -1i));
    global1 = arg_0.c;
    var var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = func_5(reverseBits(_wgslsmith_add_vec3_u32(~u_input.b, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, 27128u, var_0.a), u_input.b), vec3<u32>(4294967295u, var_2.a, var_1.a)))), Struct_1(20537u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, 165f, arg_2.b.x, -1330f), var_2.b)))), var_1.c), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-(vec3<i32>(arg_2.c, 1i, 0i) << (u_input.b % vec3<u32>(32u))), vec3<i32>(0i, var_2.c >> (global0.a % 32u), -var_2.c)), -var_1.c));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(1733i, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_2.c), vec2<i32>(var_1.c, 25412i)), vec2<bool>(true, true)) | ~(vec2<i32>(-2147483647i, 0i) << (u_input.b.yy % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(-8643i, 1i)), abs(func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_0.b.x)).c) << (arg_2.a % 32u), func_5(u_input.b, Struct_1(u_input.b.x, var_0.b, -1i), ~arg_0.c).c, _wgslsmith_mult_i32(i32(-1i) * -arg_2.c, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = _wgslsmith_dot_vec4_i32(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(18045i, global0.c, global0.c, -48176i), vec4<i32>(-1i, global0.c, u_input.a, 0i), vec4<i32>(global0.c, 8583i, u_input.a, u_input.a)), min(func_1(global2[_wgslsmith_index_u32(global0.a, 24u)], global0.b.x, global3[_wgslsmith_index_u32(global0.a, 19u)]), -vec4<i32>(69707i, 2147483647i, global0.c, u_input.a)), true), vec4<i32>(1i, ~(global0.c << (max(global0.a, u_input.b.x) % 32u)), u_input.a, firstTrailingBit(u_input.a)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(25606u, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.b.x, ~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(44118u, global0.a, u_input.b.x, 35760u), firstTrailingBit(vec4<u32>(global0.a, global0.a, global0.a, 4294967295u))))), 24u)];
    var var_3 = reverseBits(select(vec4<i32>(u_input.a, -2147483647i, 0i, max(firstTrailingBit(-27862i), _wgslsmith_dot_vec3_i32(vec3<i32>(-44326i, 37746i, 0i), vec3<i32>(var_2.c, u_input.a, global0.c)))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.c, global0.c, 52046i, global0.c), vec4<i32>(-var_2.c, 27655i, 0i, 2147483647i), reverseBits(vec4<i32>(2147483647i, -2147483647i, global0.c, global0.c))), true));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, (reverseBits(vec4<i32>(-25108i, -3399i, -23195i, 2147483647i) << (vec4<u32>(var_2.a, var_2.a, 11321u, 14614u) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 27454u, u_input.b.x, 51062u), countOneBits(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u))) % vec4<u32>(32u))) ^ vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, 9226i), var_3.xx) ^ 0i, ~var_3.x, var_2.c), vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-func_2(vec4<bool>(true, true, true, true), var_2.b.x).b.x)));
}

