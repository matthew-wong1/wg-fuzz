struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-855f, -344f, 244f));

var<private> global1: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<bool>) -> vec4<bool> {
    global1 = countOneBits(_wgslsmith_clamp_i32(-(~2147483647i), ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-34262i, 22371i, u_input.d, 1i), vec4<i32>(31378i, u_input.c, 1i, arg_2.x)), u_input.c), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_2, arg_2), vec3<i32>(u_input.d, arg_2.x, -2147483647i)) | arg_2.x));
    var var_0 = Struct_2(vec4<bool>(false, true, false, !arg_3.x));
    var var_1 = select(arg_3.x, var_0.a.x, var_0.a.x);
    global1 = arg_2.x;
    var var_2 = arg_2;
    return vec4<bool>(_wgslsmith_f_op_f32(-arg_0) >= arg_1.a.x, arg_3.x, var_0.a.x, any(!var_0.a));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), func_3(_wgslsmith_f_op_f32(-global0.a.x), Struct_1(vec3<f32>(433f, 794f, global0.a.x)), vec3<i32>(-10081i, u_input.c, 2147483647i), vec4<bool>(false, false, true, true)), 537f >= _wgslsmith_f_op_f32(-global0.a.x)), all(vec3<bool>(false, true, true))));
    let var_1 = (vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, -49280i, 6577i, u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.c), vec4<i32>(9007i, -2147483647i, u_input.c, -2147483647i)))) & _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.d)), vec4<i32>(u_input.c, ~u_input.d, 28902i, firstLeadingBit(~u_input.d)), vec4<i32>(1i, _wgslsmith_add_i32(reverseBits(u_input.d), -96980i), u_input.d, -16951i));
    var var_2 = -307f;
    let var_3 = _wgslsmith_f_op_f32(max(788f, arg_0.a.x));
    var var_4 = _wgslsmith_dot_vec3_i32(~var_1.xyz >> ((vec3<u32>(u_input.b.x, 0u, u_input.a.x) >> (reverseBits(u_input.b.yxw) % vec3<u32>(32u))) % vec3<u32>(32u)), var_1.wxz);
    return firstLeadingBit(max(var_1.zy, max(vec2<i32>(0i, 4578i) << (vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-51937i, u_input.c))) & var_1.zx));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) * _wgslsmith_f_op_f32(min(673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1134f, _wgslsmith_f_op_f32(floor(global0.a.x))))))));
    global1 = arg_2.x;
    var var_1 = Struct_1(global0.a);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a)));
    var var_2 = Struct_2(!vec4<bool>(arg_0, all(vec3<bool>(arg_0, false, arg_0)), _wgslsmith_f_op_f32(-var_1.a.x) != 2827f, true && !arg_0));
    return vec4<bool>(arg_0, true, false, var_2.a.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(arg_1);
    let var_1 = var_0;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, global0.a.x, -1202f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 156f, 1719f) - global0.a), select(arg_0.yxz, arg_1.zzy, false))) - vec3<f32>(_wgslsmith_f_op_f32(global0.a.x * 1211f), _wgslsmith_f_op_f32(-global0.a.x), 501f)))));
    let var_2 = -33135i;
    let var_3 = vec4<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2917f, -857f) * _wgslsmith_f_op_f32(f32(-1f) * -1256f)))) - global0.a.x), global0.a.x);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -881f)), _wgslsmith_div_f32(-367f, var_3.x), _wgslsmith_f_op_f32(max(-1114f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(global0.a.x, -1152f))))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = 1050f;
    global0 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1485f), -2220f, true & arg_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))))));
    global0 = func_5(vec4<bool>(arg_0, true, select(true, false, arg_0), all(!(!vec3<bool>(true, arg_0, arg_0)))), select(func_4(arg_0, 1u << (1u % 32u), -func_2(Struct_1(vec3<f32>(global0.a.x, 151f, -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, false))))), func_4(false, u_input.b.x, ~vec2<i32>(-5173i, u_input.d), _wgslsmith_f_op_f32(round(global0.a.x))), vec4<bool>(!(!arg_0), true, !arg_0, false)), u_input.b.x);
    return _wgslsmith_mult_vec2_i32(-((_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483647i, 2147483647i)) << (~vec2<u32>(15304u, 5063u) % vec2<u32>(32u))) ^ vec2<i32>(1i, 1i)), vec2<i32>(i32(-1i) * -u_input.c, _wgslsmith_mod_i32(-13840i, min(1i, u_input.d))) & -(~select(vec2<i32>(1i, u_input.d), vec2<i32>(-43737i, u_input.d), vec2<bool>(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-14228i, u_input.d), _wgslsmith_div_vec2_i32(func_1(true), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, -1i)))), countOneBits(max(-vec2<i32>(8979i, u_input.c), firstTrailingBit(vec2<i32>(u_input.c, -5033i)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-886f, global0.a.x)) + -452f))) + _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-global0.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, _wgslsmith_f_op_f32(global0.a.x + global0.a.x), -1000f)) - _wgslsmith_f_op_vec3_f32(step(global0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(682f, -1683f, global0.a.x), global0.a))))))));
    var var_2 = Struct_2(vec4<bool>(true, true, true, select(_wgslsmith_div_f32(global0.a.x, var_1.a.x) > -1023f, true, ~u_input.a.x > 64749u)));
    let var_3 = var_1.a.x;
    var_2 = Struct_2(select(select(select(vec4<bool>(true, false, var_2.a.x, true), var_2.a, all(var_2.a)), vec4<bool>(!var_2.a.x, all(vec2<bool>(var_2.a.x, var_2.a.x)), true, false), !(!vec4<bool>(var_2.a.x, true, true, var_2.a.x))), !(!vec4<bool>(true, var_2.a.x, true, true)), !func_3(-174f, Struct_1(var_1.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(45345i, 0i, -65975i), vec3<i32>(u_input.c, 2880i, 25199i)), func_3(var_1.a.x, Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, 583f)), vec3<i32>(u_input.d, u_input.c, u_input.c), vec4<bool>(true, false, var_2.a.x, true)))));
    let var_4 = reverseBits(~vec4<i32>(u_input.c, 0i, firstLeadingBit(func_2(var_1).x), reverseBits(func_1(true).x)));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.b);
}

