struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, true, true, false, false, true, false, true, true, true, false, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(vec4<i32>(2147483647i, -1i, arg_2.e.x, -12727i), arg_2.c.yzw);
    return -588f;
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_div_i32(~1i, select(2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, arg_0.a.x, 1i), select(u_input.c, u_input.c, global0[_wgslsmith_index_u32(17879u, 15u)]))), any(vec2<bool>(true, true))));
    return true || global0[_wgslsmith_index_u32(max(u_input.a, ~u_input.a), 15u)];
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_add_vec2_i32(-vec2<i32>(-6821i, arg_1.a.x), ~(arg_1.a.wz << (vec2<u32>(~u_input.a, u_input.a) % vec2<u32>(32u))));
    var var_2 = countOneBits(-1662i);
    let var_3 = true & !func_3(Struct_2(vec3<i32>(arg_1.a.x, u_input.c.x, var_1.x) << (vec3<u32>(51058u, u_input.a, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(arg_1.b.x)), vec4<f32>(arg_1.b.x, arg_1.b.x, -1000f, -2254f), all(vec4<bool>(arg_0, true, true, false)), vec3<i32>(0i, 2147483647i, u_input.c.x)), 2866f);
    var var_4 = Struct_1(_wgslsmith_clamp_vec4_i32(arg_1.a, vec4<i32>(arg_1.a.x, u_input.c.x << (select(1u, u_input.b.x, true) % 32u), var_1.x, _wgslsmith_sub_i32(3784i, -24408i)), u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x))))) + vec3<f32>(399f, -1000f, 742f)));
    return 1177f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    let var_0 = abs(u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1824f, -1260f, _wgslsmith_f_op_f32(func_1(u_input.b, false, Struct_2(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), -2026f, vec4<f32>(135f, -550f, -198f, -1251f), global0[_wgslsmith_index_u32(u_input.b.x, 15u)], u_input.c.wzx))), 1306f), vec4<f32>(_wgslsmith_f_op_f32(-687f * -1227f), _wgslsmith_div_f32(-519f, -577f), -598f, -1868f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2184f - 1412f)), -1520f, _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-481f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(13688u, 15u)], Struct_1(vec4<i32>(var_0, -23685i, u_input.c.x, 20698i), vec3<f32>(1272f, -1175f, -1156f)))), _wgslsmith_f_op_f32(func_2(false, Struct_1(u_input.c, vec3<f32>(2068f, -324f, 112f)))), 458f, _wgslsmith_f_op_f32(round(-672f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.b.x, u_input.b.x, 82700u), false, Struct_2(vec3<i32>(1i, u_input.c.x, var_0), -1411f, vec4<f32>(1000f, -1075f, -523f, 739f), true, u_input.c.zxx))), 826f, -325f), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 3028u), 15u)], true, 20354u <= u_input.b.x, global0[_wgslsmith_index_u32(~u_input.b.x, 15u)])))));
    let var_2 = vec2<i32>(min(~(~0i), _wgslsmith_mult_i32(~abs(var_0), max(~16809i, ~var_0))), 1i);
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 259f, -1280f, var_1.x), vec4<f32>(var_1.x, 395f, -884f, -949f), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1762f, 1079f, -1593f, var_1.x), vec4<f32>(1543f, var_1.x, var_1.x, -292f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(832f, var_1.x, 865f, 334f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-867f, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, 1163f, 1726f, -120f)), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zwz);
}

