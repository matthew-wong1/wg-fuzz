struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = ~u_input.a.yx;
    var var_1 = vec2<f32>(1250f, -812f);
    var var_2 = arg_3;
    var_1 = _wgslsmith_f_op_vec2_f32(arg_3.d * var_2.d);
    global0 = arg_0;
    return -1i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(((_wgslsmith_add_vec4_i32(vec4<i32>(0i, -73388i, -1i, global0.a.x), global0.a) & select(vec4<i32>(global0.a.x, 0i, global0.a.x, global0.a.x), vec4<i32>(global0.a.x, global0.a.x, -2147483647i, global0.a.x), global0.b)) >> (vec4<u32>(~u_input.a.x, 0u, ~85159u, 1628u) % vec4<u32>(32u))) << (~(~(u_input.a >> (u_input.a % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<bool>(global0.b.x, false, true, true), -1109f, _wgslsmith_f_op_vec2_f32(-global0.d));
    let var_1 = true;
    global0 = Struct_1(~abs(vec4<i32>(2147483647i, 26724i, global0.a.x, _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(global0.a.x, var_0.a.x, global0.a.x, global0.a.x)))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c)) - -816f) + _wgslsmith_div_f32(_wgslsmith_div_f32(global0.d.x, var_0.d.x), -1042f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f * _wgslsmith_f_op_f32(abs(-293f)))), _wgslsmith_f_op_f32(f32(-1f) * -394f)));
    var_0 = Struct_1(vec4<i32>(var_0.a.x, var_0.a.x, -_wgslsmith_clamp_i32(~(-47431i), -1i, var_0.a.x), (func_3(Struct_1(var_0.a, vec4<bool>(true, false, var_0.b.x, var_1), -529f, global0.d), vec3<bool>(var_0.b.x, false, false), u_input.a.yxz, Struct_1(vec4<i32>(-1i, 2147483647i, global0.a.x, -10846i), vec4<bool>(true, global0.b.x, false, global0.b.x), 401f, var_0.d)) << (4294967295u % 32u)) >> (u_input.a.x % 32u)), select(vec4<bool>(global0.b.x, -2147483647i >= -global0.a.x, true, !var_0.b.x), !global0.b, !any(vec2<bool>(var_0.b.x, var_1))), global0.d.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))), global0.c))));
    let var_2 = ~(vec3<u32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), u_input.a.xxy), u_input.a.x) >> (u_input.a.zxx % vec3<u32>(32u)));
    return Struct_1(-vec4<i32>(global0.a.x, -func_3(Struct_1(var_0.a, var_0.b, 596f, vec2<f32>(global0.c, global0.d.x)), global0.b.yxx, u_input.a.xzx, Struct_1(vec4<i32>(global0.a.x, global0.a.x, -24553i, global0.a.x), vec4<bool>(var_0.b.x, var_1, global0.b.x, false), global0.d.x, global0.d)), ~(-27789i), var_0.a.x), vec4<bool>(!global0.b.x, any(!vec2<bool>(var_1, false)), global0.b.x | true, !all(select(vec3<bool>(global0.b.x, var_0.b.x, false), global0.b.zxw, global0.b.yxy))), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * 1012f)), -1339f)), _wgslsmith_f_op_f32(-297f + _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(max(global0.c, 845f))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> vec4<f32> {
    global0 = func_2();
    global0 = func_2();
    global0 = arg_1;
    let var_0 = arg_3;
    global0 = func_2();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.d.x)), -419f, _wgslsmith_f_op_f32(-arg_2.x), -533f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, _wgslsmith_f_op_f32(853f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1402f, global0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.x, global0.d.x)))), global0.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-480f, global0.d.x, global0.d.x, 465f), Struct_1(vec4<i32>(1i, -1i, global0.a.x, global0.a.x), global0.b, global0.c, vec2<f32>(-197f, -1286f)), vec4<f32>(-736f, -606f, 1000f, -444f), 0i)) + vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(-global0.d.x), -2880f, _wgslsmith_f_op_f32(ceil(-1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, -955f, 292f, -329f), _wgslsmith_f_op_vec4_f32(vec4<f32>(102f, global0.c, global0.c, global0.c) + vec4<f32>(-490f, global0.d.x, global0.d.x, global0.d.x)), true)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2162f, global0.c, global0.c, global0.d.x)))))));
    let var_1 = any(vec4<bool>(true, false, true, global0.b.x));
    let var_2 = func_2();
    var var_3 = func_2();
    global0 = Struct_1(select(_wgslsmith_clamp_vec4_i32(min(reverseBits(global0.a), func_2().a), max(vec4<i32>(var_2.a.x, var_3.a.x, global0.a.x, global0.a.x), var_3.a | vec4<i32>(global0.a.x, var_3.a.x, var_3.a.x, var_3.a.x)), var_3.a), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(var_2.a.x, var_3.a.x, 44678i, -1i), global0.a), abs(var_2.a)) << (vec4<u32>(~u_input.a.x, u_input.a.x | 57681u, ~1u, ~u_input.a.x) % vec4<u32>(32u)), func_2().b), select(var_3.b, var_3.b, true), _wgslsmith_f_op_f32(exp2(global0.c)), global0.d);
    var var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(max(max(~(vec2<u32>(0u, u_input.a.x) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), min(u_input.a.xx, u_input.a.wx) << (~u_input.a.yy % vec2<u32>(32u))), reverseBits(abs(u_input.a.xy))));
}

