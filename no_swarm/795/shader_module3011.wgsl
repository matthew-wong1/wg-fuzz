struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(i32(-2147483648), vec3<bool>(true, false, true), false, 2147483647i, vec2<f32>(1575f, 475f)), Struct_1(1i, vec3<bool>(false, true, true), true, 0i, vec2<f32>(-367f, 524f)), Struct_1(33383i, vec3<bool>(false, false, true), false, -79738i, vec2<f32>(492f, -161f)), Struct_1(-40864i, vec3<bool>(true, false, true), false, 8002i, vec2<f32>(-794f, 1000f)), Struct_1(-48786i, vec3<bool>(true, false, false), false, 1i, vec2<f32>(505f, 419f)), Struct_1(3716i, vec3<bool>(false, true, false), true, -16290i, vec2<f32>(410f, -944f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> bool {
    let var_0 = 1u;
    let var_1 = arg_0;
    var var_2 = var_1;
    global1 = array<Struct_1, 6>();
    let var_3 = Struct_1(~(-arg_2), var_1.b, var_2.b.x, -_wgslsmith_mult_i32(firstLeadingBit(-1i), _wgslsmith_mod_i32(~u_input.a, var_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1646f, -389f))))), -1068f));
    return all(select(select(!select(vec4<bool>(false, var_3.b.x, false, arg_0.c), vec4<bool>(true, true, false, false), vec4<bool>(true, arg_1.x, false, true)), !vec4<bool>(true, false, var_2.c, false), true), vec4<bool>(false, u_input.b.x != _wgslsmith_sub_u32(var_0, 21403u), !all(var_3.b), select(u_input.b.x < 0u, true && var_2.b.x, any(vec4<bool>(arg_1.x, true, true, true)))), select(vec4<bool>(var_3.b.x & true, true, any(var_3.b), var_3.b.x), vec4<bool>(var_1.b.x, var_2.b.x, var_1.c, arg_1.x | true), true)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: i32) -> bool {
    let var_0 = Struct_1(~(-24147i), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -5116i, u_input.a, arg_0) & vec4<i32>(u_input.a, u_input.a, 24499i, 1i), -vec4<i32>(54415i, -2147483647i, arg_0, global0[_wgslsmith_index_u32(10722u, 23u)])) >= _wgslsmith_mult_i32(arg_0, ~(-1i)), func_3(global1[_wgslsmith_index_u32(13130u, 6u)], vec3<bool>(true, true, true), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 42224i, 0i), vec3<i32>(u_input.a, arg_0, u_input.a)), -vec3<i32>(-33900i, arg_0, 1i))), any(vec2<bool>(true, true))), all(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))), countOneBits(-43059i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -415f)), arg_1.zw, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(arg_1.x, -1785f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-339f, arg_1.x) + arg_1.yw), true)), arg_1.wx)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.zz)));
    var var_2 = arg_1.wyy;
    let var_3 = arg_1.yx;
    var var_4 = !(!select(!(!vec4<bool>(false, var_0.c, false, var_0.c)), select(!vec4<bool>(true, false, var_0.c, var_0.b.x), select(vec4<bool>(var_0.b.x, true, var_0.c, true), vec4<bool>(var_0.b.x, true, false, true), var_0.b.x), select(vec4<bool>(false, var_0.c, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, true, true, true), vec4<bool>(false, false, var_0.b.x, var_0.c))), any(vec3<bool>(var_0.b.x, var_0.b.x, false))));
    return var_4.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> i32 {
    let var_0 = u_input.a;
    global1 = array<Struct_1, 6>();
    var var_1 = Struct_1(_wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(u_input.a, _wgslsmith_sub_i32(var_0, u_input.a)) | global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 23u)]), !vec3<bool>(all(vec2<bool>(arg_1, true)) & all(vec3<bool>(arg_1, false, arg_1)), arg_1, func_2(global0[_wgslsmith_index_u32(28683u, 23u)], arg_0, 26456i) && arg_1), arg_1, global0[_wgslsmith_index_u32(4294967295u, 23u)], vec2<f32>(-771f, _wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = 30867u;
    var var_3 = 71039u;
    return min(_wgslsmith_clamp_i32(42412i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(23494u, 23u)], u_input.a) ^ 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i ^ var_0, var_1.d), vec2<i32>(var_0, select(-2147483647i, -2731i, arg_1)))), reverseBits(global0[_wgslsmith_index_u32(102805u, 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    global1 = array<Struct_1, 6>();
    global0 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(-807f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(527f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -315f)))))), vec3<i32>(-func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, 2695f, -1000f, -1000f)), true), ~global0[_wgslsmith_index_u32(u_input.b.x, 23u)], ~(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 23u)])), vec3<u32>(select(u_input.b.x ^ ~u_input.b.x, 4294967295u, true), u_input.b.x, _wgslsmith_add_u32(~(u_input.b.x << (5491u % 32u)), u_input.b.x)), global0[_wgslsmith_index_u32(0u, 23u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f + _wgslsmith_f_op_f32(f32(-1f) * -1136f))), 496f));
}

