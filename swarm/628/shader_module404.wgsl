struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_3(Struct_1(any(!(!vec4<bool>(true, arg_0, arg_0, true))), ~u_input.d << (~u_input.a % 32u)), -472f, Struct_2(u_input.b, firstTrailingBit(select(vec3<u32>(u_input.e.x, 4294967295u, 79210u) & u_input.e, u_input.e, select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, false, arg_0), true))), 1u));
    var var_1 = -399f;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(865f, -179f) - 979f)));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(true, ~select(u_input.d << (1u % 32u), u_input.e.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(241f))), Struct_2(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -26903i, 23494i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -60929i, u_input.b.x, -1i), u_input.b))), ~firstLeadingBit(u_input.e), abs(reverseBits(4294967295u ^ u_input.d))));
    var var_1 = false;
    var_1 = true;
    let var_2 = Struct_1(-983f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true))), 1u);
    var_1 = any(select(vec3<bool>(!(!var_0.a.a), var_0.a.a, (349f <= var_0.b) | true), select(vec3<bool>(var_0.a.a, var_2.a, -2147483647i < u_input.b.x), select(!vec3<bool>(var_0.a.a, var_2.a, var_0.a.a), !vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a), any(vec2<bool>(var_2.a, var_2.a))), !vec3<bool>(var_2.a, var_0.a.a, var_0.a.a)), select(select(vec3<bool>(var_2.a, var_0.a.a, var_2.a), !vec3<bool>(false, var_0.a.a, var_0.a.a), true), vec3<bool>(true, true, true), !vec3<bool>(var_0.a.a, false, false))));
    return vec3<bool>(!any(vec3<bool>(true, var_2.a, false)), all(vec3<bool>(true, false, true)), all(!(!vec2<bool>(var_0.a.a, var_0.a.a))) && true);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = select(!(!func_2()), !vec3<bool>(!(!arg_2.a.a), (arg_2.a.a & arg_2.a.a) | !arg_2.a.a, !arg_2.a.a), !arg_2.a.a);
    var_0 = select(vec3<bool>(func_2().x, all(func_2()), func_2().x), !vec3<bool>(true, _wgslsmith_f_op_f32(min(-167f, -1691f)) <= _wgslsmith_f_op_f32(trunc(1015f)), !var_0.x), vec3<bool>(arg_2.a.a != var_0.x, any(vec4<bool>(true, arg_2.a.a, func_2().x, true)), (_wgslsmith_f_op_f32(arg_1 + 412f) <= arg_1) & true));
    var var_1 = arg_2.a;
    var_1 = arg_2.a;
    var var_2 = var_0.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = vec3<i32>(1i, var_0, -var_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-316f, -150f), vec2<f32>(405f, -486f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(524f, -1000f))))))));
    var_1 = firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(min(u_input.b.x, 45147i), i32(-1i) * -18290i, reverseBits(-56446i)));
    let var_3 = _wgslsmith_clamp_vec2_i32(min((firstLeadingBit(u_input.b.yy) | firstTrailingBit(vec2<i32>(u_input.c, 2800i))) & vec2<i32>(-u_input.b.x, var_1.x), u_input.b.yw), vec2<i32>(-41271i, var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-30165i, -2147483647i, 46750i, 23219i), u_input.b & vec4<i32>(0i, 2818i, u_input.b.x, u_input.c)), var_1.x), var_1.yy));
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_1(vec3<i32>(1i, 0i, 22089i), -1453f, Struct_3(Struct_1(false, u_input.d), 1207f, Struct_2(vec4<i32>(-2147483647i, var_3.x, -14664i, var_1.x), u_input.e, u_input.e.x)))) == var_2.x, 7688u), -213f, Struct_2(select(firstTrailingBit(min(vec4<i32>(-9708i, u_input.b.x, 18298i, 2147483647i), u_input.b)), vec4<i32>(var_0 & var_3.x, min(-1i, -2147483647i), select(23588i, -1i, true), ~var_0), vec4<bool>(-35745i >= var_0, true, true, select(false, false, true))), ~((vec3<u32>(16124u, 46695u, u_input.a) << (vec3<u32>(34354u, 15662u, u_input.e.x) % vec3<u32>(32u))) ^ vec3<u32>(u_input.d, u_input.a, 4294967295u)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.a.yxw, var_4.c.a.x, -2147483647i);
}

