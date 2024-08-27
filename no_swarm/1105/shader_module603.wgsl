struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(14668u, -1000f, vec2<i32>(-411i, 1i));

var<private> global2: bool = true;

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> vec3<bool> {
    global2 = true;
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-global3.zxz);
    let var_3 = vec3<i32>(var_0.c.x, arg_1, 3604i);
    return select(!vec3<bool>(all(select(vec2<bool>(true, arg_2), vec2<bool>(true, false), false)), arg_2 != (global0.c.x == global1.c.x), any(select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, true, arg_3, arg_3), arg_3))), vec3<bool>(!arg_2, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 48695i, var_0.c.x, global1.c.x), vec4<i32>(arg_1, var_0.c.x, 0i, 1i)) != min(-2147483647i, ~arg_0.c.x), !select(0i == global1.c.x, false, true)), vec3<bool>(false, !((arg_2 | arg_3) && true), false));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_1(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-406f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2360f) - global1.b), -503f)), ~vec2<i32>(-2147483647i, -global1.c.x));
    let var_1 = var_0.a;
    return !vec4<bool>(~(~(-4714i)) >= global0.c.x, any(vec4<bool>(all(vec2<bool>(false, arg_2)), true, false, true)), any(func_3(Struct_1(global0.a, global3.x, var_0.c), global0.c.x, true, true)), true && (true || arg_2));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    return Struct_1(global1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x * 352f))), vec2<i32>(-global0.c.x, firstTrailingBit(global0.c.x)));
}

fn func_1() -> vec3<i32> {
    let var_0 = -516f;
    global0 = func_4(2147483647i, all(func_2(false, _wgslsmith_div_vec4_i32(~vec4<i32>(-22534i, 41397i, -1i, global1.c.x), ~vec4<i32>(global1.c.x, -53243i, -2147483647i, global0.c.x)), global1.c.x <= ~global0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -532f, global1.b, -1102f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1474f, -1346f, -565f, 1925f) * vec4<f32>(-626f, -1317f, 1609f, -630f)), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-219f - global1.b), -647f, -827f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-480f, global0.b, -722f, var_0)))))));
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(global0.c.x, global1.c.x), 27328i << (firstTrailingBit(_wgslsmith_sub_u32(25404u, global0.a) | _wgslsmith_add_u32(4294967295u, u_input.a.x)) % 32u));
    return select(_wgslsmith_mod_vec3_i32(select(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.x, global0.c.x, global0.c.x), -vec3<i32>(-31468i, -18205i, 14943i)), vec3<i32>(51141i, global1.c.x, var_1.x) << (vec3<u32>(u_input.a.x, 1u, global1.a) % vec3<u32>(32u)), vec3<bool>(true, true, true)), vec3<i32>(abs(var_1.x), 2147483647i, var_1.x)), min(reverseBits(abs(-vec3<i32>(1i, global0.c.x, -13801i))), vec3<i32>(min(var_1.x, var_1.x << (global1.a % 32u)), ~var_1.x, 2147483647i)), !any(vec3<bool>(func_2(true, vec4<i32>(global1.c.x, global0.c.x, global0.c.x, 1665i), false).x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_mod_u32(36682u >> (0u % 32u), ~select(global0.a, u_input.a.x, true)) | global1.a, global1.b, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(global0.c.x, 1i)), _wgslsmith_sub_vec2_i32(~(~global0.c), min(vec2<i32>(-2147483647i, global1.c.x), global0.c))));
    var var_0 = func_1();
    let var_1 = func_4(~_wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(~global1.c.x, _wgslsmith_mult_i32(global1.c.x, -19439i))), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec4<f32>(global3.x, global1.b, -476f, global3.x));
    let var_2 = func_2(any(select(vec3<bool>(false, true, true), vec3<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(true, false)), true), any(vec3<bool>(true, true, true)))), firstLeadingBit(select(vec4<i32>(2147483647i, -1i, global1.c.x, 1i) >> (vec4<u32>(var_1.a, global1.a, var_1.a, global1.a) % vec4<u32>(32u)), ~vec4<i32>(0i, 0i, global0.c.x, global0.c.x), true) ^ (vec4<i32>(-1i) * -vec4<i32>(19780i, 63120i, -1022i, var_0.x))), true).wzw;
    let var_3 = Struct_1(_wgslsmith_div_u32(global0.a, 8671u), _wgslsmith_f_op_f32(-func_4(-(var_0.x << (global1.a % 32u)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, 546f, global0.b, var_1.b))))).b), vec2<i32>(_wgslsmith_div_i32(abs(var_1.c.x ^ -1i), _wgslsmith_dot_vec2_i32(var_0.yz, ~vec2<i32>(47519i, 2147483647i))), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.b, global1.b), 108f, 266f, global3.x)), vec4<f32>(1000f, global0.b, -229f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, var_3.b)))), u_input.a << (vec2<u32>(4294967295u, ~u_input.a.x) % vec2<u32>(32u)), u_input.a.x);
}

