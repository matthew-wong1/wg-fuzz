struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    return !vec3<bool>(any(vec4<bool>(true, all(vec2<bool>(arg_0, true)), true, true)), arg_0, true);
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    let var_0 = min(countOneBits(u_input.b.x), u_input.b.x) >= abs(-((u_input.b.x | -1i) & firstTrailingBit(u_input.b.x)));
    global0 = 392f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-400f + -252f) * 418f), 448f, true)), _wgslsmith_div_f32(-1367f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(334f, -695f))));
    global0 = select(false, 4294967295u != ~_wgslsmith_mult_u32(arg_0.x, u_input.a.x), all(func_2(false & var_0))) & false;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1863f * -795f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(select(-1716f, -893f, true)))), true || any(vec3<bool>(true, true, var_0))))), Struct_2(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 3583u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1483f, 1766f, -732f) - vec3<f32>(-297f, -1163f, 371f))), ~arg_0, _wgslsmith_f_op_f32(min(-2107f, _wgslsmith_f_op_f32(-1937f + -536f))), -1178f), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1583f, -211f, 319f) * vec3<f32>(1000f, 460f, -1265f)), vec3<f32>(-1641f, 2117f, 2190f), !vec3<bool>(true, var_0, true))), arg_0, _wgslsmith_f_op_f32(-160f + 1000f), 1000f), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-192f, 770f, 907f), vec3<f32>(-1000f, 668f, 900f)), vec3<f32>(1801f, -434f, -428f), vec3<bool>(var_0, var_0, var_0))), ~vec4<u32>(arg_0.x, 4294967295u, u_input.a.x, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1815f - -300f) + _wgslsmith_div_f32(483f, 1262f)), 1059f), !(!vec4<bool>(var_0, true, var_0, false))), _wgslsmith_sub_i32(~35318i, -countOneBits(_wgslsmith_sub_i32(1i, -1i))), ~arg_0.xz << (_wgslsmith_sub_vec2_u32(min(~vec2<u32>(88309u, arg_0.x), select(arg_0.zz, vec2<u32>(0u, 1u), vec2<bool>(var_0, var_0))), u_input.a.xz) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1399f, 665f))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1265f, -2389f)))), vec2<f32>(1f, 1f))));
    var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)))), var_1.e.x), Struct_2(~_wgslsmith_dot_vec3_u32(var_1.b.d.b.xxz, arg_0.wzz) & u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.b.d.a, vec3<f32>(var_1.e.x, var_1.a, -1893f), true)) - vec3<f32>(1474f, -784f, -327f)), var_1.b.d.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a + var_1.e.x))), 679f), var_1.b.b, var_1.b.d, vec4<bool>(true, true, _wgslsmith_f_op_f32(var_1.a - -1000f) <= _wgslsmith_f_op_f32(-var_1.b.b.a.x), var_0)), abs(-_wgslsmith_div_i32(u_input.b.x, 0i) ^ countOneBits(-1i)), u_input.a.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(min(var_1.a, var_1.e.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.d.a.x), var_1.a)));
    return StorageBuffer(u_input.b.x, vec2<i32>(var_1.c, _wgslsmith_mod_i32(-72095i, -1i) >> (~var_1.b.b.b.x % 32u)) | abs(reverseBits(select(vec2<i32>(-21839i, var_1.c), u_input.b.yx, var_1.b.e.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(true | any(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_vec4_u32(~vec4<u32>(~u_input.a.x, 29162u, u_input.a.x, ~40558u), ~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u))));
}

