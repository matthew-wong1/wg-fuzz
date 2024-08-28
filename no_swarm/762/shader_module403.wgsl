struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 29>();
    let var_0 = arg_0;
    let var_1 = Struct_1(-u_input.c);
    let var_2 = abs(~var_0.a.x);
    global0 = array<u32, 29>();
    return Struct_1(var_1.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    var var_0 = -vec2<i32>(u_input.c.x, -23970i);
    var_0 = vec2<i32>(~_wgslsmith_clamp_i32(~arg_0.a.x, arg_0.a.x, arg_2.a.x) >> (max(global0[_wgslsmith_index_u32(u_input.b, 29u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(43196u, 29u)], 17636u)) % 32u), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~u_input.c, _wgslsmith_add_vec2_i32(u_input.c, arg_1.a)), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.a.x, u_input.c.x, 15553i, 36552i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, arg_2.a.x, u_input.c.x), vec4<i32>(arg_2.a.x, arg_0.a.x, 1i, arg_0.a.x)))));
    let var_1 = firstLeadingBit(arg_2.a.x ^ -_wgslsmith_clamp_i32(-var_0.x, -1i, 1i));
    global0 = array<u32, 29>();
    var var_2 = func_2(Struct_1(-countOneBits(arg_0.a | vec2<i32>(2147483647i, var_0.x))));
    return var_0.x;
}

fn func_1(arg_0: f32) -> i32 {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1127f, arg_0) * vec3<f32>(arg_0, 1653f, arg_0))))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 390f) * _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-arg_0), arg_0));
    var var_1 = u_input.c & _wgslsmith_add_vec2_i32(vec2<i32>(func_3(func_2(Struct_1(u_input.c)), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(u_input.c), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), -4524i), abs(-vec2<i32>(u_input.c.x, u_input.c.x)) & max(countOneBits(vec2<i32>(u_input.c.x, 26392i)), vec2<i32>(u_input.c.x, u_input.c.x)));
    var_1 = ~vec2<i32>(_wgslsmith_add_i32((var_1.x & u_input.c.x) | -var_1.x, var_1.x), ~u_input.c.x);
    return func_3(Struct_1(u_input.c), func_2(Struct_1(u_input.c)), func_2(Struct_1(vec2<i32>(func_3(Struct_1(vec2<i32>(var_1.x, u_input.c.x)), Struct_1(u_input.c), Struct_1(u_input.c), u_input.a.yy), u_input.c.x ^ u_input.c.x))), firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 29u)]), ~vec2<u32>(28350u, 1u))) | vec2<u32>(73939u, global0[_wgslsmith_index_u32(~(u_input.d.x ^ 1u), 29u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1272f)))))));
    var var_1 = Struct_1(-vec2<i32>(max(func_1(var_0.x), 28395i), u_input.c.x));
    let var_2 = u_input.a.ywy;
    let var_3 = select(!vec4<bool>(false, false, _wgslsmith_f_op_f32(251f + var_0.x) >= -1000f, true), !(!vec4<bool>(true, true, false, var_2.x >= var_2.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, true)), false, any(vec4<bool>(true, false, true, false))), vec4<bool>(all(vec2<bool>(false, false)), true, all(vec4<bool>(true, true, true, false)), true)), vec4<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), ~var_2.x >= _wgslsmith_dot_vec2_u32(vec2<u32>(57623u, var_2.x), var_2.xz)), vec4<bool>(true, true, true, true)));
    global0 = array<u32, 29>();
    let var_4 = vec3<bool>(all(var_3), var_3.x | var_3.x, !(min(var_1.a.x, u_input.c.x) == var_1.a.x));
    var var_5 = i32(-1i) * -(~(-1i));
    var_5 = firstLeadingBit(u_input.c.x);
    var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zyw);
}

