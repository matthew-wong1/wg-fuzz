struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, -11088i, -18044i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<i32> {
    global0 = Struct_1(-arg_1.a);
    var var_0 = Struct_2(vec3<u32>(u_input.a, 0u, u_input.b.x) >> (_wgslsmith_mult_vec3_u32(u_input.b, ~countOneBits(u_input.b)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(arg_0.yx + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.xx * _wgslsmith_f_op_vec2_f32(-arg_0.zx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(605f * -2449f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_0.x), -1748f)))), arg_1);
    let var_1 = Struct_1(var_0.d.a);
    var var_2 = var_0.d.a.x;
    var_2 = _wgslsmith_mod_i32(-2147483647i, ~var_0.d.a.x);
    return abs(vec2<i32>(~abs(-18794i), global0.a.x));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1;
    global0 = var_0.d;
    let var_1 = _wgslsmith_mod_vec2_i32(arg_1.d.a.yz, abs(func_3(vec3<f32>(_wgslsmith_div_f32(1000f, arg_1.c.x), -192f, _wgslsmith_f_op_f32(sign(arg_1.c.x))), Struct_1(var_0.d.a))));
    let var_2 = ~(~(firstTrailingBit(arg_2) << (arg_1.a.x % 32u)));
    var var_3 = vec4<bool>((select(arg_0, arg_0, all(vec4<bool>(arg_0, false, false, arg_0))) || true) & !any(vec4<bool>(arg_0, arg_0, false, arg_0)), arg_0 & false, true, true);
    return var_0.d;
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    global0 = arg_0.d;
    global0 = func_2(true, arg_0, u_input.b.x);
    let var_0 = arg_0;
    global0 = func_2(any(vec3<bool>(true, (arg_0.d.a.x <= arg_0.d.a.x) & any(vec4<bool>(true, false, false, false)), all(vec4<bool>(false, false, true, false)))), var_0, select(_wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(33637u, 42168u)), vec2<u32>(11863u, 1u), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<u32>(u_input.a, ~1u)), var_0.a.x, any(vec2<bool>(true, true))));
    let var_1 = var_0.d.a & abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-17309i, -7976i, arg_0.d.a.x)), arg_0.d.a >> (vec3<u32>(56788u, 51876u, 1u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-39087i, arg_0.d.a.x, 2147483647i), vec3<i32>(0i, var_0.d.a.x, 0i) & vec3<i32>(arg_0.d.a.x, global0.a.x, 1i))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, _wgslsmith_f_op_f32(arg_0.c.x - 556f)) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(round(-576f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-var_0.b.x))))), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1046f - arg_0.b.x), -105f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-379f, -1067f)), _wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec3<u32>(57603u, 18666u, 39116u), vec2<f32>(1000f, 1008f), vec3<f32>(477f, 357f, -1809f), Struct_1(vec3<i32>(38066i, global0.a.x, global0.a.x)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-692f, -495f), vec2<f32>(1000f, 1579f))), vec2<f32>(-1694f, 1017f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1503f, 144f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-249f + 250f), _wgslsmith_f_op_f32(ceil(182f))))));
    global0 = func_2(false, Struct_2(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), var_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 303f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1925f, 346f, -819f), vec3<f32>(-1000f, 146f, var_1.x), vec3<bool>(true, false, false)))), vec3<bool>(true, true, true))), func_2(false, Struct_2(u_input.b, _wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, -784f, var_1.x), vec3<f32>(var_1.x, 530f, var_1.x))), Struct_1(vec3<i32>(global0.a.x, 6928i, global0.a.x))), 12133u)), ~(~var_0));
    global0 = func_2(any(vec4<bool>(all(vec4<bool>(false, false, true, false)), true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), false)), Struct_2(firstTrailingBit(u_input.b) ^ vec3<u32>(1u, u_input.a, ~0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1050f, 637f)), _wgslsmith_f_op_vec2_f32(var_1 * var_1))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-683f, -300f, false))), 471f, var_1.x), Struct_1(_wgslsmith_div_vec3_i32(global0.a, vec3<i32>(-22523i, -50995i, 4759i)))), 31177u);
    let var_2 = Struct_2(u_input.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-331f)) - var_1.x), _wgslsmith_f_op_f32(sign(var_1.x))))), vec3<f32>(-832f, -281f, 912f), func_2(!all(vec4<bool>(true, true, true, true)), Struct_2((vec3<u32>(u_input.a, 32440u, u_input.b.x) ^ vec3<u32>(10478u, u_input.b.x, var_0)) << (~u_input.b % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1, vec2<f32>(var_1.x, var_1.x)), vec2<f32>(-2024f, -1212f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, 1371f, var_1.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_1.x, -661f)))), func_2(false, Struct_2(u_input.b, vec2<f32>(var_1.x, 252f), vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_1(vec3<i32>(49125i, -2147483647i, 17585i))), _wgslsmith_mod_u32(52059u, u_input.b.x))), abs(1u & (u_input.a >> (100885u % 32u)))));
    global0 = var_2.d;
    let var_3 = -302f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 0u);
}

