struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: i32;

var<private> global3: array<vec3<bool>, 3>;

var<private> global4: vec3<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    global2 = 22562i;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(global0.b.yyw)), ~1671i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, global4.x, global4.x, 737f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(129f, global4.x, 679f, 165f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(328f, 1000f, global4.x, global4.x) - global0.b))))), _wgslsmith_f_op_f32(-1000f * -924f), _wgslsmith_div_vec4_i32(~(-(~vec4<i32>(global0.d.x, global0.a.b, 0i, 0i))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global0.d.x, 4899i, global0.a.b) ^ vec4<i32>(-10417i, -92421i, global0.d.x, 1i), global0.d << (vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))) ^ max(firstTrailingBit(global0.d), -global0.d)));
    let var_1 = 46914u;
    let var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.c)), var_0.a.a.x, 154f), 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-280f, _wgslsmith_f_op_f32(global0.a.a.x + 1971f)), -646f, global0.c, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.a.x, -823f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - 1000f))))), ~global0.d);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(445f, global4.x) + var_2.b.x));
    return -_wgslsmith_mult_i32(select(-(global0.a.b ^ 60997i), global0.d.x, any(vec2<bool>(true, true))), (~17999i >> (abs(0u) % 32u)) >> (var_1 % 32u));
}

fn func_2(arg_0: Struct_5) -> vec3<i32> {
    global2 = _wgslsmith_mod_i32(1i, abs(-36272i));
    let var_0 = Struct_2(Struct_1(vec3<f32>(-2438f, arg_0.a, arg_0.a), global0.d.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, global4.x, arg_0.a, -683f)))))), 551f, vec4<i32>(_wgslsmith_mult_i32(29947i, reverseBits(func_3())), firstLeadingBit(_wgslsmith_mult_i32(-global0.d.x, -2147483647i)), min(~arg_0.b.x, select(-26137i, _wgslsmith_add_i32(arg_0.b.x, 4531i), false)), global0.a.b));
    let var_1 = global0.a;
    let var_2 = _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1404f, global4.x, 1172f, -1564f), var_0.b)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 856f, var_1.a.x, var_0.c))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, var_1.a.x, global4.x, -1271f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, var_0.a.a.x, 954f, global4.x)))), global0.b))));
    return select(_wgslsmith_mod_vec3_i32(~(-(~vec3<i32>(25105i, global0.a.b, global0.d.x))), vec3<i32>(var_0.a.b, _wgslsmith_mod_i32(-global0.a.b, arg_0.b.x), max(global0.d.x, 23216i))), min(var_0.d.zzx, vec3<i32>(_wgslsmith_div_i32(-20280i, global0.d.x), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(var_1.b, -1i)), arg_0.b.x)), all(vec2<bool>(true, true)));
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    global2 = 47976i;
    let var_0 = vec3<i32>(-4435i, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-95044i, 0i, global0.a.b, -1i), ~vec4<i32>(-26297i, arg_0, -2147483647i, global0.d.x)), global0.d), -_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, -5857i), arg_0));
    let var_1 = func_2(Struct_5(global0.b.x, vec4<i32>(1i, ~reverseBits(-2147483647i), 1i, ~reverseBits(0i))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x + global4.x), _wgslsmith_f_op_f32(round(-768f)), global4.x) + global0.b.yxz), _wgslsmith_mult_i32(firstTrailingBit(~(-2147483647i)), 36802i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, _wgslsmith_f_op_f32(global4.x - global4.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4.x)), global4.x), global0.a.a.x))), global4.x, vec4<i32>(-1i, min(_wgslsmith_sub_i32(1i, 1i), arg_1), 1i, 1i));
    global2 = var_1.x;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<f32>(742f, global4.x, _wgslsmith_f_op_f32(f32(-1f) * -268f));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a >> (select(4294967295u, ~4294967295u, true) % 32u)) & func_1(global0.d.x, global0.a.b));
}

