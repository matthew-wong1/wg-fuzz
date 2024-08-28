struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 640f;

var<private> global1: array<Struct_2, 26>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> f32 {
    var var_0 = countOneBits(max(vec4<u32>(firstLeadingBit(u_input.b.x), 4294967295u, ~0u, u_input.a.x), vec4<u32>(17791u, ~u_input.a.x, _wgslsmith_mod_u32(77685u, 4294967295u), u_input.a.x | 0u)) ^ firstLeadingBit(vec4<u32>(firstTrailingBit(u_input.a.x), 15821u, ~u_input.a.x, u_input.a.x)));
    var_0 = vec4<u32>(u_input.b.x, 4294967295u, var_0.x, ~_wgslsmith_mult_u32(4935u, u_input.b.x));
    global2 = arg_0;
    var var_1 = arg_0.e;
    var_1 = -163f;
    return global2.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) + _wgslsmith_f_op_f32(func_3(arg_2, select(vec3<bool>(false, arg_2.a, true), global2.c.yxy, global2.c.x), global2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(661f)) + arg_2.e), -1016f));
    global2 = arg_2;
    let var_1 = Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.e, global2.e, global2.d, -1071f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1235f, -340f, arg_2.b.x, arg_2.e) - var_0))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, arg_1, -835f, global2.d)))))), Struct_1(false, var_0.xyz, !(!select(vec4<bool>(global2.a, global2.a, false, arg_2.a), arg_2.c, vec4<bool>(true, global2.a, false, global2.a))), -267f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(681f, -1665f)), _wgslsmith_f_op_f32(func_3(Struct_1(false, vec3<f32>(1006f, var_0.x, arg_1), vec4<bool>(true, arg_2.c.x, arg_2.a, arg_2.a), var_0.x, arg_1), vec3<bool>(global2.a, false, arg_2.a), global2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + global2.e))), vec4<i32>(1i, 0i, arg_3, _wgslsmith_dot_vec3_i32(firstTrailingBit(abs(vec3<i32>(arg_3, arg_3, arg_3))), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_3, arg_3, arg_3), vec3<i32>(-2147483647i, arg_3, arg_3)))));
    global2 = Struct_1(arg_2.a | false, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -815f, global2.b.x), var_1.a.b) + arg_2.b))))), !(!vec4<bool>(var_1.a.a && arg_2.c.x, select(var_1.a.a, true, false), false, var_1.b.x >= var_1.b.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) * _wgslsmith_f_op_f32(1835f + arg_1)), var_0.x)));
    let var_2 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, ~u_input.a.x, 4294967295u), vec3<u32>(arg_0.x, arg_0.x, ~countOneBits(16202u)));
    return Struct_1(!any(global2.c.zzz), vec3<f32>(-222f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.d)), -308f), -223f), select(arg_2.c, !(!vec4<bool>(var_1.c.a, var_1.c.c.x, false, var_1.c.a)), vec4<bool>(true, false, true, reverseBits(arg_0.x) >= u_input.b.x)), _wgslsmith_f_op_f32(sign(861f)), 994f);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = func_2(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.a.x ^ 4294967295u, _wgslsmith_sub_u32(~20594u, u_input.a.x), 144583u)), arg_1.c.e, arg_1.c, -(_wgslsmith_div_i32(arg_1.d.x, ~arg_1.d.x) ^ arg_1.d.x));
    var var_1 = Struct_2(func_2(~(vec3<u32>(72896u, 4294967295u, 111149u) << (vec3<u32>(u_input.b.x, u_input.b.x, 28378u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.c.a, global2.b, arg_1.a.c, -541f, arg_1.b.x), !vec3<bool>(var_0.c.x, arg_1.a.a, true), !arg_1.c.a))), Struct_1(arg_1.a.c.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(204f, var_0.e, global2.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.b.x, var_0.d, global2.e) * vec3<f32>(arg_1.c.e, -674f, 1423f)))), var_0.c, _wgslsmith_f_op_f32(min(global2.b.x, arg_1.c.d)), -1748f), 1i), arg_1.b, Struct_1(true, _wgslsmith_f_op_vec3_f32(-global2.b), !vec4<bool>(var_0.c.x, global2.c.x & false, global2.a, global2.c.x), _wgslsmith_f_op_f32(713f + _wgslsmith_f_op_f32(arg_1.b.x * arg_1.a.e)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(abs(-21229i)), ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.x, 13397i, 0i), vec3<i32>(arg_0, arg_1.d.x, arg_1.d.x)) ^ abs(arg_1.d.x), 19381i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 17889i, arg_0, arg_1.d.x), arg_1.d)) << (vec4<u32>(1u, u_input.b.x, ~u_input.b.x, 4294967295u ^ u_input.b.x) % vec4<u32>(32u))));
    let var_2 = var_1.a;
    var var_3 = !(!select(select(!vec2<bool>(var_2.c.x, false), !var_1.c.c.zy, arg_1.a.c.zy), !var_0.c.yw, any(vec4<bool>(false, var_1.c.c.x, arg_1.a.a, true)) == !var_1.a.c.x));
    global0 = _wgslsmith_f_op_f32(-var_1.a.d);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-843f - _wgslsmith_f_op_f32(func_3(func_2(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), var_1.b.x, var_1.c, -21920i), func_2(vec3<u32>(3904u, u_input.a.x, u_input.b.x), global2.b.x, Struct_1(true, var_0.b, var_0.c, -279f, -503f), 0i).c.xwy, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1104f + _wgslsmith_f_op_f32(min(-827f, var_0.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, global2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - global2.b.x)), _wgslsmith_f_op_f32(func_1(i32(-1i) * -54254i, global1[_wgslsmith_index_u32(u_input.b.x, 26u)])))) - vec4<f32>(-2021f, -656f, _wgslsmith_f_op_f32(-696f + _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_div_f32(global2.e, _wgslsmith_f_op_f32(func_1(_wgslsmith_add_i32(-12783i, -31374i), global1[_wgslsmith_index_u32(u_input.b.x, 26u)])))));
    let var_2 = ~u_input.b.x;
    let var_3 = -1381f;
    global2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -255f, var_3))) * global2.b), !(!global2.c), 1413f, var_1.x);
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, 2147483647i), vec4<i32>(1i, -2147483647i, 22141i, -1i)), i32(-1i) * -2147483647i) ^ ~2147483647i, _wgslsmith_mult_i32(-1i, 0i)) > 0i;
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(-12301i, 2147483647i, 0i)) | _wgslsmith_add_i32(1i, -15150i), -4603i));
}

