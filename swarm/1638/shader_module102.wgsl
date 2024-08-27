struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-528f, -1460f, -558f), 732f, true, 291f);

var<private> global1: i32 = 0i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, 758f, arg_3.d) + vec3<f32>(233f, -910f, 430f)))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = arg_1;
    var var_1 = var_0;
    let var_2 = vec4<bool>(arg_0.b.d.x, true, !select(true, all(vec4<bool>(arg_1.b.d.x, true, var_0.b.d.x, false)), select(arg_0.b.d.x, false, true) | global0.c), !arg_1.b.d.x);
    return _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - -932f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(1f - global0.a.x), arg_1.b);
    global1 = 1i;
    var var_1 = arg_2;
    let var_2 = vec2<u32>(select(_wgslsmith_clamp_u32(~45729u, _wgslsmith_div_u32(~0u, 60705u), arg_1.b.a), _wgslsmith_clamp_u32(var_0.b.a, u_input.a, 1u | ~arg_1.b.a), true), firstTrailingBit(arg_3.x));
    let var_3 = var_0.b;
    return _wgslsmith_add_i32(~(abs(max(3228i, u_input.c.x)) << (~1u % 32u)), max(countOneBits(abs(_wgslsmith_clamp_i32(1i, u_input.c.x, 0i))), 24655i));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1038f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d * arg_0.d), 1f)) * -424f), global0.b, -309f);
    let var_1 = Struct_3(var_0.x, arg_1);
    let var_2 = u_input.c.x;
    var_0 = _wgslsmith_f_op_vec3_f32(global0.a * arg_1.b);
    let var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(var_1, Struct_3(1109f, var_1.b), _wgslsmith_f_op_f32(-var_1.b.b.x))), -365f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(868f, var_1.b.c, global0.c)), _wgslsmith_f_op_f32(func_3(var_1, var_1, -591f)))), -292f), var_1, select(vec4<bool>(true, any(var_1.b.d), arg_1.d.x, arg_1.d.x), vec4<bool>(false, !arg_0.c, any(vec2<bool>(var_1.b.d.x, false)), var_1.b.d.x), all(!vec2<bool>(arg_0.c, var_1.b.d.x))), vec2<u32>(_wgslsmith_add_u32(~u_input.b, firstTrailingBit(0u)), 9557u)) << (29042u % 32u);
    return firstTrailingBit(~_wgslsmith_mult_u32(~arg_1.a, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.d + 2258f))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.a, 75939u), u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-325f, _wgslsmith_f_op_f32(global0.d * 117f), global0.b) * _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 19644i, 44255i), vec4<i32>(23145i, -2147483647i, u_input.c.x, -8661i)), ~vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.b), Struct_2(global0.a, -1616f, true, global0.a.x)))), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d)) + _wgslsmith_f_op_f32(826f - global0.a.x))), !vec2<bool>(global0.c, true)));
    let var_1 = firstTrailingBit(vec4<u32>(u_input.b, u_input.a, func_2(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.b)), -1140f, global0.c, var_0.a), var_0.b), u_input.b));
    var var_2 = ~(-u_input.c) ^ u_input.c;
    var var_3 = !vec3<bool>(false, false || any(var_0.b.d), true);
    let var_4 = Struct_2(var_0.b.b, _wgslsmith_f_op_f32(func_3(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1620f, -1743f, true)))))), all(!(!select(vec3<bool>(var_3.x, true, global0.c), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.b.x * global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1689f - -936f) - _wgslsmith_f_op_f32(-var_0.b.b.x))))));
    var var_5 = var_4;
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec2_f32(var_5.a.xy + var_4.a.xz), firstLeadingBit(u_input.c.x), _wgslsmith_sub_vec2_u32((vec2<u32>(var_6.b.a, 33832u) << (select(vec2<u32>(var_0.b.a, 1912u), var_1.yx, vec2<bool>(true, var_3.x)) % vec2<u32>(32u))) & (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_1.yw) >> (var_1.yx % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(abs(var_1.wy), reverseBits(reverseBits(var_1.wy)))), vec2<i32>(-(u_input.c.x | -2147483647i), -28007i) ^ vec2<i32>(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 18232i) & max(3513i, var_2.x)));
}

