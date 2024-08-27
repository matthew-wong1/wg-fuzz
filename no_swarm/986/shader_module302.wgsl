struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, false));

var<private> global2: Struct_5 = Struct_5(9069i, Struct_1(vec3<i32>(5098i, 23550i, -1i), 1u, -1577f, -2104f, 6018u), vec3<u32>(0u, 34049u, 1u));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = select(vec3<bool>(global1.a.x, all(!(!vec2<bool>(true, global1.a.x))), !global1.a.x & any(vec2<bool>(global1.a.x, global1.a.x))), vec3<bool>(global2.b.c < -798f, global1.a.x, !any(!vec4<bool>(true, global1.a.x, true, global1.a.x))), all(select(vec4<bool>(false, global2.a != global2.a, !global1.a.x, global1.a.x), vec4<bool>(global1.a.x != global1.a.x, all(global1.a), false, false), true)));
    let var_1 = Struct_3(_wgslsmith_clamp_vec2_i32(global2.b.a.xx, _wgslsmith_clamp_vec2_i32(u_input.a.yz, global2.b.a.yy, -(u_input.a.zz | u_input.a.xx)), select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, 20217i, 0i, global2.b.a.x), vec4<i32>(u_input.d, 1i, 18968i, -16398i)), -global2.b.a.x), reverseBits(_wgslsmith_mod_vec2_i32(u_input.a.yz, u_input.a.zz)), select(vec2<bool>(false, true), !vec2<bool>(false, var_0.x), var_0.x))), countOneBits(countOneBits(u_input.a.yy ^ -vec2<i32>(1i, 22383i))));
    global1 = Struct_2(global1.a);
    let var_2 = vec4<bool>(false, any(global1.a), false, global1.a.x);
    global0 = global1.a.x;
    return 872f;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: vec4<i32>) -> bool {
    var var_0 = Struct_2(!(!(!select(vec2<bool>(true, global1.a.x), vec2<bool>(arg_0, true), true))));
    let var_1 = 1u;
    var var_2 = Struct_1(~(firstTrailingBit(u_input.a) & select(vec3<i32>(arg_1.a.x, 11711i, 2147483647i), u_input.a, vec3<bool>(global1.a.x, false, true))) << (vec3<u32>(max(~var_1, ~global2.b.b), 57831u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global2.c.x, 1u), ~var_1)) % vec3<u32>(32u)), 6862u, _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(floor(global2.b.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global2.c, vec3<u32>(0u, var_1, var_1)), vec3<u32>(5001u, global2.b.b, u_input.c.x)) <= _wgslsmith_sub_u32(global2.c.x, 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b.c - -2171f))))), 4294967295u);
    var var_3 = -max(vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-27656i, -24525i), var_2.a.x << (38437u % 32u)), _wgslsmith_mult_i32(~(-1i), 7787i), 0i, arg_3.x), -select(arg_3, arg_3 ^ arg_3, !vec4<bool>(true, false, arg_0, arg_0)));
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.c - arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d - arg_2))))));
    return !(!(!(false || var_0.a.x) | false));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    global0 = all(vec4<bool>(true | any(vec2<bool>(true, true)), true, !select(true, true, global1.a.x), arg_1.x));
    let var_0 = select(select(vec4<bool>(global1.a.x, true || !arg_2.a.x, (arg_2.a.x == arg_1.x) || any(arg_1), !(global2.b.c != global2.b.c)), select(!vec4<bool>(true, true, arg_1.x, arg_2.a.x), arg_1, !any(arg_1.zy)), arg_1), !(!vec4<bool>(true, true, false, global2.b.b > 68341u)), vec4<bool>(func_4(arg_1.x, Struct_3(u_input.a.xy, vec2<i32>(global2.b.a.x, 2147483647i)), _wgslsmith_f_op_f32(func_3()), ~vec4<i32>(30288i, global2.a, 33971i, -2147483647i)) != true, true, func_4(true, Struct_3(u_input.a.yy, vec2<i32>(global2.a, 13035i)), 228f, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, global2.a, -2147483647i, u_input.a.x) << (vec4<u32>(1u, 1u, arg_0.x, arg_0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, global2.a, global2.a, global2.b.a.x), vec4<i32>(global2.a, u_input.d, global2.a, global2.b.a.x)))), true || (global1.a.x == any(vec4<bool>(false, global1.a.x, true, global1.a.x)))));
    global1 = arg_2;
    var var_1 = Struct_2(vec2<bool>(any(select(var_0.yxy, vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(var_0.x, arg_2.a.x, true), true))), !(!(!var_0.x))));
    let var_2 = Struct_4(Struct_3(reverseBits(u_input.a.yz | vec2<i32>(global2.a, 1i)), _wgslsmith_add_vec2_i32(u_input.a.zy & u_input.a.xy, ~(vec2<i32>(u_input.d, u_input.a.x) << (vec2<u32>(4294967295u, arg_0.x) % vec2<u32>(32u))))), Struct_3(firstTrailingBit(vec2<i32>(firstLeadingBit(0i), 21102i)), _wgslsmith_mod_vec2_i32(global2.b.a.zz & vec2<i32>(u_input.a.x, global2.b.a.x), global2.b.a.zy >> (global2.c.zy % vec2<u32>(32u))) >> (~(~arg_0.yx) % vec2<u32>(32u))), Struct_2(vec2<bool>(!var_0.x, !arg_2.a.x & true)), 4294967295u, _wgslsmith_mult_u32(~(arg_0.x >> (1u % 32u)) >> (_wgslsmith_div_u32(~arg_0.x, _wgslsmith_div_u32(global2.c.x, 4294967295u)) % 32u), 4294967295u));
    return min(firstTrailingBit(~98185u), _wgslsmith_add_u32(~(~var_2.e), ~(~4294967295u)));
}

fn func_1() -> vec2<f32> {
    var var_0 = abs(14218u);
    let var_1 = _wgslsmith_dot_vec4_i32((-vec4<i32>(u_input.a.x, u_input.a.x, 34240i, global2.b.a.x) & firstLeadingBit(vec4<i32>(0i, global2.a, u_input.a.x, 0i))) << (vec4<u32>(28170u | global2.b.b, func_2(vec3<u32>(global2.c.x, 1u, 1u), vec4<bool>(true, false, true, true), Struct_2(global1.a), vec3<f32>(-1686f, -1152f, global2.b.c)), 7349u, _wgslsmith_div_u32(4294967295u, global2.c.x)) % vec4<u32>(32u)), vec4<i32>(2419i, u_input.a.x, _wgslsmith_sub_i32(abs(-1i), u_input.d), 18320i)) >> ((global2.c.x >> (~select(4294967295u, ~32819u, any(vec4<bool>(false, false, global1.a.x, true))) % 32u)) % 32u);
    global1 = Struct_2(global1.a);
    var var_2 = Struct_3(vec2<i32>(var_1, _wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(-var_1, 54830i ^ var_1, -27529i))), firstTrailingBit(vec2<i32>(38631i, 35832i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-696f, _wgslsmith_f_op_f32(min(136f, global2.b.d)))) * -695f))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.b.d, var_3), vec2<f32>(var_3, var_3)) + vec2<f32>(1135f, var_3)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1537f, -853f))))), select(vec2<bool>(global2.b.d >= var_3, global1.a.x), global1.a, global1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = vec4<i32>(select(global2.a, -11384i, true & global1.a.x), -u_input.a.x, 19228i, min(~_wgslsmith_dot_vec2_i32(global2.b.a.zz, abs(vec2<i32>(u_input.a.x, global2.a))), -2383i));
    var var_2 = Struct_3(~min(abs(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global2.a), vec2<i32>(global2.a, -21625i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.b.a.x, -15892i), vec2<i32>(-64737i, global2.a), vec2<i32>(u_input.a.x, 64125i)) | select(global2.b.a.xx, u_input.a.zz, vec2<bool>(global1.a.x, true))), u_input.a.yz);
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1813f, var_0.x))));
    global0 = true;
    var var_3 = Struct_2(!(!(!global1.a)));
    global0 = !global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i);
}

