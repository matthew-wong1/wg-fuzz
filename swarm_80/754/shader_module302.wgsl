struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(arg_1.xz, vec2<i32>(23221i, arg_1.x))), firstTrailingBit(arg_1.xx)), vec2<bool>(true, all(vec2<bool>(arg_0.x, true))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.c, 17709u))) & firstLeadingBit(~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f * -554f))), vec3<i32>(abs(0i) >> (1u % 32u), 1i, -1i)));
    var_0 = _wgslsmith_f_op_f32(var_1.a.d * var_1.a.d);
    var_0 = var_1.a.d;
    var_0 = -398f;
    return ~vec3<i32>(arg_1.x, i32(-1i) * -_wgslsmith_sub_i32(2147483647i, u_input.a), ~u_input.a);
}

fn func_2() -> Struct_2 {
    let var_0 = ~countOneBits(~u_input.c);
    let var_1 = (_wgslsmith_mult_vec4_u32(u_input.b, ~vec4<u32>(96817u, 4294967295u, 4035u, 4294967295u)) ^ vec4<u32>(~(var_0 ^ 5951u), var_0, 1u, _wgslsmith_dot_vec2_u32(~u_input.b.ww, _wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), u_input.d.xy)))) | vec4<u32>(~(u_input.d.x ^ u_input.d.x) << (~_wgslsmith_mult_u32(var_0, 5576u) % 32u), u_input.d.x, ~55077u & var_0, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0 ^ u_input.d.x, var_0), ~u_input.b.x));
    var var_2 = Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-17813i, u_input.a, u_input.a, -72341i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 1i), vec4<i32>(-6200i, u_input.a, 0i, -34930i))), u_input.a), func_3(vec4<bool>(all(vec4<bool>(true, true, true, true)) & true, select(false, true, true), false, _wgslsmith_add_i32(u_input.a, u_input.a) < u_input.a), ~(~max(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 2147483647i)))), firstTrailingBit(countOneBits(abs(select(vec3<u32>(var_1.x, var_0, 23254u), u_input.b.xyz, false)))));
    var_2 = Struct_3(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(0i, ~var_2.a), -firstLeadingBit(abs(var_2.a)), _wgslsmith_mult_i32(-_wgslsmith_mod_i32(var_2.a, -2147483647i), var_2.b.x)), var_2.b, _wgslsmith_add_vec3_u32(var_2.c, ~vec3<u32>(_wgslsmith_mod_u32(var_0, var_2.c.x), 1u, _wgslsmith_dot_vec3_u32(var_2.c, var_2.c))));
    let var_3 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), min(var_2.b.zy, var_2.b.zz)) & (var_2.b.xz << (var_2.c.zx % vec2<u32>(32u))), vec2<i32>(-1i, 0i)), select(vec2<bool>(!any(vec2<bool>(true, false)), true), vec2<bool>(true, any(vec3<bool>(false, true, true)) & true), !vec2<bool>(true, any(vec2<bool>(true, true)))), u_input.b, -984f, var_2.b);
    return Struct_2(Struct_1(var_3.a, !select(vec2<bool>(false, false), select(var_3.b, vec2<bool>(false, var_3.b.x), var_3.b), all(vec3<bool>(var_3.b.x, var_3.b.x, var_3.b.x))), ~(~vec4<u32>(var_1.x, 1u, 1u, var_3.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-211f, var_3.d, var_3.b.x)) * var_3.d), var_3.e));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-1172f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(370f - arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1062f)), -566f)))));
    return func_2();
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = !(!(!(!(!vec4<bool>(arg_0.a.b.x, false, false, false)))));
    var_0 = !(!select(select(vec4<bool>(arg_0.a.b.x, true, arg_0.a.b.x, false), select(vec4<bool>(false, true, var_0.x, arg_0.a.b.x), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, true, false), false), 23317i == u_input.a), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, true)), select(vec4<bool>(true, arg_0.a.b.x, var_0.x, var_0.x), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, var_0.x, false), arg_0.a.b.x), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(arg_0.a.b.x, var_0.x, true, false), vec4<bool>(false, arg_0.a.b.x, var_0.x, true))), select(vec4<bool>(false, arg_0.a.b.x, true, var_0.x), select(vec4<bool>(true, arg_0.a.b.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), arg_0.a.b.x), arg_0.a.b.x)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.d);
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d) - _wgslsmith_f_op_f32(f32(-1f) * -336f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1649f - arg_0.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d)))), u_input.a, func_2().a.e.x, vec3<f32>(-797f, -584f, _wgslsmith_f_op_f32(-arg_0.a.d))).a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.d, 1000f, -251f) * vec3<f32>(var_2.d, arg_0.a.d, arg_0.a.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, var_2.d, var_2.d))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -1000f, var_2.d))), vec3<f32>(var_2.d, var_2.d, -499f))))));
    return !(!select(vec4<bool>(any(arg_0.a.b), !arg_0.a.b.x, true, arg_0.a.b.x), !vec4<bool>(var_2.b.x, false, var_0.x, true), !arg_0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true)));
    var_0 = !(!all(func_4(func_1(vec3<f32>(-443f, 734f, 893f), u_input.a, 2147483647i, vec3<f32>(1229f, -1081f, 1798f)))));
    let var_1 = 1864f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), -vec2<i32>(1i, -593i)) >> (~(~u_input.d.xz) % vec2<u32>(32u)), vec2<bool>(_wgslsmith_f_op_f32(trunc(-1000f)) >= -169f, true), max(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4616u, u_input.c, 4294967295u, u_input.b.x)), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(0u, 17861u, u_input.d.x, 26570u))), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-369f * var_1)))), reverseBits(~vec3<i32>(u_input.a, u_input.a, 9706i)) & vec3<i32>(0i, u_input.a, 16533i)));
    let var_3 = var_2.a.e.xz;
    var var_4 = var_2.a.c.x;
    let var_5 = !var_2.a.b;
    var_4 = 45748u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(0u, ~1u, false), 4294967295u, var_2.a.c.x), u_input.d.x, var_2.a.c.yxx);
}

