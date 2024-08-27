struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-473f + _wgslsmith_f_op_f32(abs(-1678f)));
    let var_2 = var_0.b.yxy;
    return Struct_4(317f);
}

fn func_3(arg_0: vec2<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1015f, -1388f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1211f, -1143f)) - 1f)));
    let var_1 = u_input.c;
    let var_2 = firstLeadingBit(~u_input.a.x);
    let var_3 = max(-1i, max(abs(_wgslsmith_add_i32(-2147483647i, i32(-1i) * -2147483647i)), _wgslsmith_sub_i32(_wgslsmith_add_i32(select(0i, 71834i, arg_0.x), _wgslsmith_clamp_i32(45045i, -37664i, 34758i)), _wgslsmith_add_i32(513i, -33635i) >> (var_1.x % 32u))));
    let var_4 = vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0))), -364f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, var_0, arg_0.x)))))), _wgslsmith_f_op_f32(ceil(-1011f)));
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)))), var_4.x, -464f);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> vec2<bool> {
    var var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, ~68576u), reverseBits(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a)));
    let var_2 = Struct_2(select(10663u, 4294967295u, all(!select(arg_0.b, vec3<bool>(false, true, arg_0.b.x), arg_0.b.x))), select(!vec4<bool>(!arg_0.b.x, select(arg_0.b.x, arg_3, true), !arg_0.b.x, !arg_0.b.x), select(vec4<bool>(false, !arg_3, true, arg_3), !select(vec4<bool>(arg_3, true, arg_0.b.x, arg_3), vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), true), !vec4<bool>(arg_3, arg_3, arg_3, true)), all(arg_0.b)));
    var_1 = 48085u;
    let var_3 = !arg_3;
    return vec2<bool>(var_2.b.x, any(vec3<bool>(true && (arg_3 & arg_3), !all(vec3<bool>(false, var_2.b.x, true)), true | (true & var_2.b.x))));
}

fn func_2() -> StorageBuffer {
    var var_0 = u_input.a.zx;
    var var_1 = Struct_1(-1006f, func_4(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, false))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1236f, 890f, 1829f)))), vec3<bool>(false, false, true)), 1i, ~u_input.a, false), -1i);
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(!(!var_1.b))).x, _wgslsmith_f_op_f32(trunc(var_1.a))), select(select(var_1.b, func_4(Struct_5(vec3<f32>(1244f, 510f, var_1.a), vec3<bool>(false, var_1.b.x, true)), _wgslsmith_div_i32(var_1.c, 1i), _wgslsmith_sub_vec3_u32(u_input.c.xwy, vec3<u32>(39628u, var_0.x, 0u)), true), func_4(Struct_5(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, true, false)), var_1.c, u_input.a >> (vec3<u32>(20708u, 4294967295u, u_input.b) % vec3<u32>(32u)), false).x), select(var_1.b, vec2<bool>(true, all(vec3<bool>(true, var_1.b.x, false))), !select(vec2<bool>(var_1.b.x, false), vec2<bool>(var_1.b.x, var_1.b.x), false)), any(vec4<bool>(select(var_1.b.x, true, true), var_1.a == var_1.a, var_1.a >= -313f, var_0.x <= var_0.x))), 2147483647i);
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * -358f), _wgslsmith_div_f32(671f, -758f)), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1245f, var_1.a, -238f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, var_1.a, 534f), vec3<f32>(673f, 916f, 370f)))), vec3<bool>(true, true, true)), reverseBits(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-22817i, var_1.c, var_1.c), vec3<i32>(0i, var_1.c, 1i)))), u_input.a, var_1.b.x), var_1.c);
    let var_2 = countOneBits(max(u_input.c.x, u_input.c.x));
    return StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c & -97129i, -6708i), vec2<i32>(~1i, 1i)), 2147483647i, ~0i), countOneBits(max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c, var_1.c, var_1.c, var_1.c) | vec4<i32>(var_1.c, 2147483647i, 4795i, 2147483647i), -vec4<i32>(var_1.c, -2147483647i, 0i, var_1.c)), vec4<i32>(5712i, _wgslsmith_dot_vec2_i32(vec2<i32>(62034i, -2147483647i), vec2<i32>(var_1.c, 1i)), 1i, -25889i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 1079f) - vec2<f32>(var_1.a, -768f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -580f) + vec2<f32>(1000f, var_1.a))))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, -1174f), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(var_1.b.x, true))).x, _wgslsmith_div_f32(var_1.a, var_1.a))))), -(vec3<i32>(-1i) * -vec3<i32>(var_1.c, 1i, 27279i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, !(!all(vec2<bool>(false, false)))), vec2<bool>(true, !all(vec2<bool>(false, true))), true);
    var var_1 = func_1(Struct_2(~countOneBits(~4294967295u), !(!vec4<bool>(false, var_0.x, false, true))));
    let var_2 = -(~abs(~vec2<i32>(-1i, -20228i)));
    let var_3 = var_1.a;
    let var_4 = _wgslsmith_div_vec2_u32(u_input.a.xy, ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.c.xx, u_input.c.yy) << (firstTrailingBit(u_input.a.yz) % vec2<u32>(32u)), u_input.c.wy));
    let x = u_input.a;
    s_output = func_2();
}

