struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 14>;

var<private> global2: Struct_2;

var<private> global3: i32 = -5313i;

var<private> global4: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> vec4<bool> {
    return !(!vec4<bool>(false, true, !(arg_2.a & true), true || any(global2.d.a)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<i32>) -> StorageBuffer {
    global2 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, global2.c.x, arg_0), ~global2.a), abs(countOneBits(~11409u)), u_input.a), !all(!vec4<bool>(global2.d.a.x, false, global2.d.a.x, global2.d.a.x)), global2.c >> ((~abs(vec2<u32>(69506u, global2.a.x)) | vec2<u32>(u_input.a, abs(arg_0))) % vec2<u32>(32u)), Struct_1(!select(func_3(u_input.a, global2.d.b, Struct_3(global2.d.a.x, -1i)), !vec4<bool>(global2.d.a.x, false, true, false), func_3(global2.a.x, 0i, Struct_3(false, 2147483647i)).x), u_input.c, global2.d.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -2015f)), _wgslsmith_f_op_f32(-global2.d.c.x), any(func_3(48435u, u_input.c, Struct_3(global2.d.a.x, u_input.c)).xwy)))), ~_wgslsmith_dot_vec3_u32(min(global2.a, countOneBits(global2.a)), ~vec3<u32>(1399u, 96186u, global1[_wgslsmith_index_u32(u_input.a, 14u)])));
    global0 = ~arg_2.x;
    var var_0 = _wgslsmith_mult_i32(arg_2.x, firstTrailingBit(-1i >> ((~global2.a.x >> (1u % 32u)) % 32u)));
    let var_1 = Struct_3(_wgslsmith_mod_i32(abs(global2.d.b), 0i) >= -2147483647i, arg_2.x);
    global1 = array<u32, 14>();
    return StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-259i), -abs(global2.d.b)), abs(~9631i)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.d)), _wgslsmith_f_op_f32(-global2.d.c.x), arg_1, _wgslsmith_div_f32(arg_1, global2.d.d)))), ~((~vec2<u32>(u_input.a, 0u) << (_wgslsmith_sub_vec2_u32(global2.c, vec2<u32>(arg_0, 0u)) % vec2<u32>(32u))) | global2.a.yy), ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(0i, 1i, var_1.b, -2147483647i)) ^ vec4<i32>(0i, u_input.c, 0i, var_1.b), vec4<i32>(~arg_2.x, arg_2.x ^ var_1.b, -976i, max(1i, 5928i))));
}

fn func_1(arg_0: bool, arg_1: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.d.c.x - _wgslsmith_f_op_f32(global2.d.d - -997f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.d.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.c.x) - global2.d.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(324f)))), _wgslsmith_f_op_f32(1464f - -125f)));
    let var_1 = Struct_3(false, 2147483647i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-1557f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1393f - _wgslsmith_f_op_f32(f32(-1f) * -338f)) * -883f)), _wgslsmith_f_op_f32(var_0.x * var_0.x));
    let var_3 = 0i;
    global4 = var_0.x;
    return func_2(global1[_wgslsmith_index_u32(arg_1, 14u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2.d.d)))), _wgslsmith_sub_vec2_i32(max(~vec2<i32>(global2.d.b, var_3), u_input.b.zz), -(~select(u_input.b.zx, u_input.b.zy, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(u_input.c);
    var var_0 = i32(-1i) * -1i;
    let var_1 = Struct_3(!global2.b, -_wgslsmith_sub_i32(19417i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, -1i, -2147483647i), vec4<i32>(-14496i, -5381i, u_input.b.x, 2147483647i))));
    var var_2 = global2.c.x >> (83730u % 32u);
    var var_3 = _wgslsmith_clamp_vec2_u32(global2.a.xz, ~_wgslsmith_div_vec2_u32(global2.c, vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global2.a.x, 14u)])), ~_wgslsmith_mult_vec2_u32(global2.a.zx, abs(~global2.c)));
    var var_4 = Struct_3(false, _wgslsmith_sub_i32(32744i >> (global2.c.x % 32u), -8048i));
    var var_5 = -26380i;
    var_4 = var_1;
    let var_6 = var_1.b;
    let x = u_input.a;
    s_output = func_1(false, 37440u);
}

