struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: Struct_1 = Struct_1(-41942i);

var<private> global3: array<vec3<i32>, 2>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    global1 = array<vec3<u32>, 25>();
    return reverseBits(15842u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<f32> {
    global0 = array<bool, 1>();
    var var_0 = Struct_1(abs(arg_1.a ^ ~_wgslsmith_div_i32(10810i, -1i)));
    var var_1 = Struct_1(global2.a);
    let var_2 = vec3<f32>(-2012f, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(step(-586f, -135f))))), _wgslsmith_f_op_f32(-1406f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))))));
    let var_3 = arg_2.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3 - -441f))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(exp2(var_3)), u_input.c != 1u)), -311f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(u_input.a, 2u)], vec3<i32>(global2.a, -1i, 33118i)), Struct_1(abs(u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(select(1089f, -2203f, global0[_wgslsmith_index_u32(arg_1, 1u)])), -643f)))) * _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-(29389i | u_input.b), -3938i, u_input.b), Struct_1(~(-6270i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, -1821f, 1263f, 1105f) - vec4<f32>(-328f, 179f, -1454f, -943f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 136f, -3280f, -1302f), vec4<f32>(-673f, -157f, 507f, -641f)))))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 1u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -498f) - _wgslsmith_f_op_f32(-var_0.x)), -659f, _wgslsmith_f_op_f32(abs(-740f)), var_0.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global3[_wgslsmith_index_u32(arg_0.x, 2u)], select(vec3<i32>(-1i, 44727i, -15170i), vec3<i32>(2147483647i, global2.a, 1i), global0[_wgslsmith_index_u32(4294967295u, 1u)])), global3[_wgslsmith_index_u32(~(~arg_0.x), 2u)])), Struct_1(u_input.b));
    var_2 = vec4<f32>(-1238f, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-512f, var_0.x)), -1203f, true)), var_0.x, all(select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 1u)], global0[_wgslsmith_index_u32(30082u, 1u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], false), vec2<bool>(global0[_wgslsmith_index_u32(309u, 1u)], global0[_wgslsmith_index_u32(37662u, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(64003u, 1u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)]))))), _wgslsmith_f_op_f32(abs(248f)));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-437f * var_0.x)))), -801f), select(vec2<i32>(var_3.a.a >> (0u % 32u), -10248i) & ~_wgslsmith_add_vec2_i32(vec2<i32>(var_3.a.a, 0i), vec2<i32>(-14125i, 0i)), firstLeadingBit(vec2<i32>(abs(var_3.a.a), ~global2.a)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_1, ~u_input.c, ~4294967295u), 1u)] && false));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(~(~vec4<u32>(u_input.a, 0u, 0u, 1u)) | min(vec4<u32>(36963u >> (u_input.d % 32u), func_1(global0[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(global2.a)), u_input.a ^ 10834u, ~u_input.d), ~vec4<u32>(u_input.a, u_input.a, 7695u, 1u)), 1u);
}

