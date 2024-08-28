struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = countOneBits(-(-(~vec2<i32>(32741i, global1.a)) ^ countOneBits(u_input.b.yx)));
    var var_1 = Struct_1(reverseBits(u_input.b.x), vec4<u32>(_wgslsmith_mult_u32(~21903u, abs(select(global1.b.x, 0u, false))), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 51103u, 1u, global1.b.x), vec4<u32>(global1.b.x << (arg_0.x % 32u), ~4294967295u, global1.b.x, 1u | arg_0.x)), ~4294967295u, arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c + vec2<f32>(global1.c.x, -1961f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, 2117f) - vec2<f32>(global1.c.x, global1.c.x))))));
    global0 = any(!vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false)), true, true, !select(false, true, true)));
    let var_2 = ~0u;
    let var_3 = Struct_1(var_1.a, var_1.b | var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c.x, -1286f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.c - global1.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.x, var_1.c.x), global1.c, vec2<bool>(true, false))), vec2<bool>(true, true))))));
    return ~vec3<u32>(27976u, _wgslsmith_dot_vec3_u32((vec3<u32>(1269u, var_1.b.x, 4294967295u) | global1.b.wyx) << (~vec3<u32>(1u, 10600u, 27590u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, global1.b.x, 1u), _wgslsmith_div_vec3_u32(var_1.b.yyx, vec3<u32>(var_2, 0u, 0u)))), firstLeadingBit(~var_2));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(global1.b.yw, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, global1.b.x), reverseBits(global1.b.wy)), vec2<u32>(~global1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(27501u, global1.b.x), vec2<u32>(global1.b.x, global1.b.x)))), abs(global1.b.yx)));
    let var_1 = func_3(vec4<u32>(max(global1.b.x, countOneBits(4294967295u)), global1.b.x, 0u, ~(global1.b.x << (1u % 32u))) & global1.b);
    var var_2 = 38099u;
    var var_3 = Struct_2(Struct_1(-reverseBits(global1.a), ~global1.b & vec4<u32>(~52608u, 1u, _wgslsmith_clamp_u32(0u, 96119u, global1.b.x), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global1.c.x) + vec2<f32>(global1.c.x, -477f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1944f, global1.c.x) * global1.c)))), Struct_1(_wgslsmith_mod_i32(-19885i, global1.a) << (global1.b.x % 32u), vec4<u32>(_wgslsmith_add_u32(34577u, _wgslsmith_dot_vec2_u32(global1.b.zz, global1.b.wz)), global1.b.x, global1.b.x, 1u), vec2<f32>(global1.c.x, 1259f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(298f, _wgslsmith_f_op_f32(-global1.c.x)))), u_input.a);
    let var_4 = var_3.a;
    return Struct_1(min(~reverseBits(i32(-1i) * -2147483647i), countOneBits(var_3.a.a)), var_3.a.b, var_4.c);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = -16504i;
    var var_1 = any(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, true))), any(vec3<bool>(true, true, true)))) == true;
    let var_2 = _wgslsmith_sub_i32(1i, -1i);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-639f))))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * 1335f))), _wgslsmith_f_op_f32(arg_0.c.x * global1.c.x)) - vec3<f32>(_wgslsmith_f_op_f32(abs(477f)), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c.x) + -1664f))));
    var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(224f, _wgslsmith_div_f32(858f, -1698f), func_2().c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-758f, 1372f, arg_0.b.c.x))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_div_f32(global1.c.x, 739f))));
    return func_2();
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    let var_0 = 1i;
    var var_1 = Struct_2(arg_0.b, arg_3.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f + 409f)), -1000f))), var_0);
    global1 = Struct_1(~(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, arg_1.a), 2147483647i)), vec4<u32>(~(~arg_0.a.b.x), var_1.a.b.x, 1u, var_1.b.b.x ^ ~0u), vec2<f32>(-1556f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, -748f))), _wgslsmith_f_op_f32(select(-962f, arg_0.b.c.x, true)))));
    let var_2 = func_4(Struct_2(var_1.b, func_2(), arg_0.a.c, -73228i), ~15215u, u_input.b.zz);
    global1 = Struct_1(-1i, ~vec4<u32>(arg_0.a.b.x, var_2.b.x, global1.b.x >> ((arg_1.b.x ^ 0u) % 32u), ~arg_0.b.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(arg_1, arg_3.b, var_1.a.c, -25006i), 0u, u_input.b.yx).c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.x, 1490f), vec2<f32>(1189f, 457f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.b.c) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b.c.x, var_2.c.x))))))));
    return true && !arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec3<bool>(false, false, true));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1956f, global1.c.x))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c.x + 579f))), _wgslsmith_f_op_f32(global1.c.x - 327f), global1.c.x)) - vec3<f32>(_wgslsmith_f_op_f32(sign(-473f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.x))))), global1.c.x));
    var var_1 = reverseBits(max(~global1.b.xx, ~global1.b.wy));
    var var_2 = true || any(vec3<bool>(true, false, !func_1(Struct_2(Struct_1(global1.a, global1.b, var_0.zx), Struct_1(u_input.b.x, global1.b, global1.c), global1.c, u_input.a), Struct_1(25913i, global1.b, var_0.zy), vec2<bool>(true, false), Struct_2(Struct_1(0i, vec4<u32>(4294967295u, global1.b.x, var_1.x, global1.b.x), var_0.xx), Struct_1(-15871i, global1.b, vec2<f32>(1000f, var_0.x)), vec2<f32>(global1.c.x, global1.c.x), -1i))));
    var var_3 = Struct_2(func_2(), func_4(Struct_2(Struct_1(abs(global1.a), global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1626f, global1.c.x) + global1.c)), Struct_1(global1.a, _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, global1.b.x, 1u, global1.b.x), global1.b), global1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(285f, -691f)), (global1.a >> (global1.b.x % 32u)) | func_2().a), ~var_1.x, _wgslsmith_mult_vec2_i32(u_input.b.yz, -vec2<i32>(global1.a, -1i)) | vec2<i32>(global1.a, select(global1.a, 1i, true))), global1.c, global1.a);
    var var_4 = vec3<bool>(min(_wgslsmith_div_u32(4294967295u, var_1.x), _wgslsmith_sub_u32(~4294967295u, ~global1.b.x)) <= _wgslsmith_mod_u32(reverseBits(abs(global1.b.x)), func_2().b.x), !(!select(false, false, false)), !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)));
    var var_5 = func_2();
    var_2 = !select(var_4.x | !any(vec3<bool>(var_4.x, var_4.x, true)), false, false);
    let var_6 = var_5.b.wyw | var_3.b.b.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_0.x)), global1.b.zxw, u_input.b.zx & u_input.b.xx, func_2().c.x);
}

