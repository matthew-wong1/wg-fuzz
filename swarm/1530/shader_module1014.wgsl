struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(45222u, 58186u, 180u, 4294967295u, 4294967295u, 53576u, 44902u, 0u, 4294967295u, 1u, 70198u, 44693u, 4294967295u, 10668u, 11891u, 59140u, 4899u, 7744u, 5520u, 1u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global0 = array<u32, 21>();
    var var_0 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, -20576i), 1i, -abs(u_input.a.x)), all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(any(vec2<bool>(true, false)), false, true))));
    let var_1 = Struct_1(var_0.a, true);
    let var_2 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.b, true), var_1.b))));
    var_0 = Struct_1(var_1.a, !var_1.b);
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-392f + 1336f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f + 147f) * 1109f)))), -1799f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(438f * -1474f)), 332f)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> bool {
    global0 = array<u32, 21>();
    var var_0 = arg_0.x;
    var var_1 = Struct_1(arg_0.x, (global0[_wgslsmith_index_u32(abs(1u), 21u)] << (min(_wgslsmith_mod_u32(100220u, 4294967295u), 17600u) % 32u)) <= 0u);
    global0 = array<u32, 21>();
    var var_2 = Struct_1(1i, true);
    return any(vec3<bool>(var_1.b, all(vec2<bool>(true, true)), all(!vec2<bool>(true, var_1.b))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> StorageBuffer {
    global0 = array<u32, 21>();
    let var_0 = select(true, false, false);
    var var_1 = !vec2<bool>(func_4(vec3<i32>(-70634i, 1i, -7324i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_2)), _wgslsmith_f_op_vec4_f32(func_3())) || (_wgslsmith_f_op_f32(-arg_1) >= arg_1), 0i >= _wgslsmith_add_i32(u_input.a.x, -1i ^ arg_0.a));
    var var_2 = abs(vec4<i32>(-47906i, arg_3.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.a, -vec3<i32>(arg_0.a, -6742i, arg_3.a)), vec3<i32>(-1i) * -vec3<i32>(15054i, 30896i, 0i)), _wgslsmith_sub_i32(~min(19444i, u_input.a.x), ~(~u_input.a.x))));
    var var_3 = arg_1;
    return StorageBuffer(min(vec3<i32>(arg_3.a, firstTrailingBit(var_2.x), -25904i << (0u % 32u)), vec3<i32>(_wgslsmith_div_i32(-14588i, abs(var_2.x)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a, arg_3.a, arg_0.a, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -32433i, 40302i, arg_0.a), vec4<i32>(u_input.a.x, -45456i, arg_3.a, -43951i))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1919i, var_2.x, -687i) << (vec4<u32>(u_input.b.x, 33269u, 4768u, 61426u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, u_input.a.x, 0i, arg_3.a), vec4<i32>(var_2.x, var_2.x, arg_0.a, u_input.a.x))))));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec3_u32(u_input.b.zyx, countOneBits(u_input.b.yww));
    let var_1 = !all(vec4<bool>(!arg_0.b, true, true, !arg_0.b)) && select(any(vec3<bool>(true, true, true)), arg_0.b, !arg_0.b);
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_2 = arg_0;
    return func_2(arg_0, 1864f, -1034f, Struct_1(u_input.a.x, any(!vec2<bool>(true, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) * 795f), -446f, u_input.a.x < ~u_input.a.x)) * -512f));
    var var_1 = Struct_1(-11511i, true);
    let var_2 = true;
    global0 = array<u32, 21>();
    var_1 = Struct_1(22415i, !var_1.b & true);
    var var_3 = Struct_1(-11496i ^ _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(u_input.a.x, var_1.a), _wgslsmith_clamp_i32(2147483647i, u_input.a.x, -2147483647i), u_input.c.x <= 4294967295u), var_1.a), var_1.b);
    let x = u_input.a;
    s_output = func_1(Struct_1(u_input.a.x, !(!(var_1.a == 1i))));
}

