struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1038f, Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), 2147483647i), -621f);

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    var var_0 = global0.b;
    var var_1 = Struct_3(arg_0.yx, vec3<bool>(any(!(!vec3<bool>(false, arg_2.x, arg_2.x))), false, any(!(!vec2<bool>(arg_2.x, arg_2.x)))), 51040u & min(~countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c.x, 3597u, 32444u)), vec3<u32>(global1.a.x, arg_1, 26750u))), global0.b);
    let var_2 = vec3<u32>(4294967295u, ~0u, global0.b.a.x);
    global1 = var_1.d;
    let var_3 = -1i;
    return var_0.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1294f)));
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -470f), global0.b, 772f);
    global1 = global0.b;
    var var_1 = -vec3<i32>(0i, reverseBits(_wgslsmith_mod_i32(global0.b.b, global0.b.b)) | -global0.b.b, 1i);
    global0 = Struct_2(-970f, global0.b, -1068f);
    return vec4<i32>((1i >> (reverseBits(global0.b.a.x) % 32u)) ^ -35557i, _wgslsmith_dot_vec4_i32(vec4<i32>(select(40050i, countOneBits(1i), true), i32(-1i) * -global1.b, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(606f, arg_0.x, var_0) * vec3<f32>(833f, -1816f, -1891f)), ~global0.b.a.x, vec4<bool>(true, true, true, true)), abs(func_3(vec3<f32>(arg_2.x, var_0, -1288f), global1.a.x, vec4<bool>(false, false, false, true)))), _wgslsmith_div_vec4_i32(-vec4<i32>(4595i, -54749i, 11385i, -1i) << (~vec4<u32>(4306u, arg_1, 4294967295u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(global1.b, var_1.x, -1i, var_1.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(19254u, 0u, 1u, 20619u), vec4<u32>(0u, global1.a.x, 0u, 1u)) % vec4<u32>(32u)))), -firstTrailingBit(_wgslsmith_mod_i32(~1i, 29606i)), global0.b.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1327f, 938f))) - vec2<f32>(288f, 793f)))), 5374u, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f - global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1346f))), 1000f));
    var var_1 = true;
    var var_2 = Struct_5(~(~select(vec3<u32>(u_input.a.x, global0.b.a.x, 1u), global0.b.a, true)) << ((global0.b.a | vec3<u32>(abs(103940u), u_input.c.x, firstLeadingBit(20605u))) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1562f, arg_2, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))), global0.b, _wgslsmith_div_f32(-683f, global0.a)), vec2<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -1003f) * vec2<f32>(572f, arg_2)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), 32850u, Struct_1(global0.b.a, -60693i)));
    let var_3 = _wgslsmith_div_u32(arg_0.x, arg_0.x);
    var var_4 = Struct_4(4294967295u, vec4<bool>(any(!(!vec4<bool>(true, false, var_2.d.b.x, true))), false, true, any(vec3<bool>(all(vec4<bool>(var_2.d.b.x, var_2.d.b.x, var_2.d.b.x, true)), any(vec4<bool>(var_2.d.b.x, var_2.d.b.x, false, true)), any(var_2.d.b)))), -var_0.zw);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, Struct_1(reverseBits(global1.a), -9539i), -2408f);
    let var_0 = min(vec3<u32>(u_input.d.x, global0.b.a.x, global1.a.x), vec3<u32>(global1.a.x & (14934u | global1.a.x), ~u_input.c.x, ~global0.b.a.x)) | u_input.a;
    var var_1 = ~35221i;
    var var_2 = Struct_5(u_input.b, func_1(vec4<u32>(~102179u, min(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a.x, global1.a.x, global0.b.a.x), var_0)), ~max(4294967295u, var_0.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(48768u, global0.b.a.x), u_input.c.x)), ~max(vec4<u32>(global0.b.a.x, 7580u, global1.a.x, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(69423u, global0.b.a.x, u_input.b.x, 23310u), vec4<u32>(var_0.x, 0u, var_0.x, 0u))), -554f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, _wgslsmith_f_op_f32(round(-2023f))) + vec2<f32>(_wgslsmith_f_op_f32(-func_1(vec4<u32>(global1.a.x, 47625u, global1.a.x, 82766u), vec4<u32>(global0.b.a.x, 1u, global1.a.x, 1u), 739f).a), global0.a)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) - vec2<f32>(1974f, -279f))))), vec3<bool>(true, true, true), 1u, Struct_1(_wgslsmith_mod_vec3_u32(global0.b.a, ~vec3<u32>(2023u, global1.a.x, global1.a.x)), global0.b.b >> (_wgslsmith_mult_u32(1u, global1.a.x) % 32u))));
    global1 = func_1(~vec4<u32>(~1u, global0.b.a.x, 2223u, 1u), reverseBits((~vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) << (~vec4<u32>(global1.a.x, global0.b.a.x, 67985u, 0u) % vec4<u32>(32u))) ^ vec4<u32>(1u, reverseBits(0u), _wgslsmith_dot_vec3_u32(global0.b.a, vec3<u32>(0u, 1u, 12504u)), ~var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.b.a, var_2.c.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(trunc(global0.c))))))).b;
    global0 = Struct_2(global0.a, Struct_1(max((u_input.d >> (vec3<u32>(103077u, 4294967295u, global0.b.a.x) % vec3<u32>(32u))) & ~var_2.b.b.a, max(vec3<u32>(var_2.d.d.a.x, 4294967295u, 1u), vec3<u32>(60529u, 1u, 36252u)) & ~global0.b.a), global1.b), var_2.b.c);
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-reverseBits(vec3<i32>(global0.b.b, 37239i, global0.b.b)), vec3<i32>(min(global0.b.b & global1.b, var_2.b.b.b | 71609i), 1i, max(var_2.d.d.b, ~2147483647i))), vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(32713i, global0.b.b, 0i, -2147483647i), vec4<i32>(global0.b.b, var_2.d.d.b, -1i, 1i)), vec4<i32>(var_2.b.b.b, 0i, -2147483647i, -7410i) << (vec4<u32>(var_2.d.c, var_0.x, var_0.x, global1.a.x) % vec4<u32>(32u))), var_2.b.b.b, _wgslsmith_div_i32(global1.b, ~firstLeadingBit(global0.b.b))));
    var var_4 = Struct_4(_wgslsmith_add_u32(u_input.d.x, 1u), !select(!vec4<bool>(var_2.d.b.x, false, var_2.d.b.x, false), select(!vec4<bool>(false, var_2.d.b.x, false, true), select(vec4<bool>(var_2.d.b.x, false, var_2.d.b.x, false), vec4<bool>(var_2.d.b.x, false, var_2.d.b.x, var_2.d.b.x), var_2.d.b.x), vec4<bool>(true, var_2.d.b.x, var_2.d.b.x, var_2.d.b.x)), all(!vec4<bool>(true, false, true, var_2.d.b.x))), vec2<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(var_2.b.b.b, -2147483647i, 0i) | vec3<i32>(13895i, 0i, global0.b.b)), vec3<i32>(var_2.d.d.b, 17400i, -2147483647i) ^ select(vec3<i32>(global0.b.b, 1i, 19696i), vec3<i32>(global0.b.b, 2147483647i, global1.b), var_2.d.b.x)), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(global1.b, 1i), vec2<i32>(var_2.b.b.b, global1.b), any(vec2<bool>(true, true))), abs(max(vec2<i32>(global1.b, 5982i), vec2<i32>(global1.b, var_2.d.d.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.c.x);
}

