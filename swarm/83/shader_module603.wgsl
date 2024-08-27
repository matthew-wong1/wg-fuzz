struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(global0.d.x, !global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 971f, -225f, -512f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(314f, 1424f, 1250f, 956f), vec4<f32>(1631f, 686f, -713f, 652f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2804f, -961f, -1176f, -138f)))), global0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-374f, 668f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(742f, -2026f), vec2<f32>(359f, -1034f))))) * vec2<f32>(1f, 1f))), abs(countOneBits(min(vec4<u32>(1u, u_input.b, 1u, global0.a.x), vec4<u32>(9487u, 23125u, global0.a.x, 16925u))) >> (~global0.a % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, -1643f, 1082f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1424f, 951f, -1000f) * vec3<f32>(-624f, 874f, 467f))))))));
    var var_1 = Struct_3(1401f, Struct_1(var_0.a.d, !(!(!vec3<bool>(true, var_0.a.a, false))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.c.x, -1107f) + _wgslsmith_f_op_f32(f32(-1f) * -284f)), _wgslsmith_f_op_f32(131f - _wgslsmith_f_op_f32(abs(var_0.d.x))), 1f), global0.d.x));
    var var_2 = _wgslsmith_add_i32(abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.b.x, -2147483647i) | -44765i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, global0.b.x, -1i, global0.b.x), vec4<i32>(2147483647i, 1i, 2147483647i, global0.b.x)) & global0.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(global0.b.x), -global0.b.x, -global0.b.x), _wgslsmith_div_vec3_i32(select(-vec3<i32>(2736i, 0i, global0.b.x), global0.b, true), vec3<i32>(global0.b.x, global0.b.x, 0i))));
    var_2 = firstLeadingBit(-max(-44159i, global0.b.x));
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.c.x, var_1.a)))) + -836f), var_1.b);
    return var_1.b.a;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    global0 = Struct_4(~(~reverseBits(global0.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, _wgslsmith_dot_vec3_i32(global0.b, -global0.b)), abs(_wgslsmith_clamp_vec3_i32(global0.b, -global0.b, vec3<i32>(global0.b.x, 2147483647i, arg_1)))), global0.d, vec3<bool>(!(!(!arg_2.x)), select(110f >= _wgslsmith_f_op_f32(max(arg_0, -2187f)), func_3(), any(select(vec4<bool>(false, global0.c.x, false, global0.d.x), arg_2, vec4<bool>(global0.c.x, false, arg_2.x, arg_2.x)))), func_3()), ~u_input.a);
    var var_0 = Struct_2(Struct_1(true, select(select(vec3<bool>(false, false, global0.d.x), vec3<bool>(arg_2.x, true, true), global0.c), vec3<bool>(-6161i == arg_1, any(arg_2.ywz), any(vec4<bool>(arg_2.x, global0.c.x, false, true))), vec3<bool>(arg_2.x, global0.d.x, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-395f, 744f, -1354f, 2133f))))), any(arg_2.yxw)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(arg_0, 1000f), _wgslsmith_f_op_f32(-1709f - _wgslsmith_f_op_f32(f32(-1f) * -1992f))))), ~vec4<u32>(25617u, ~u_input.b, ~reverseBits(global0.a.x), ~firstLeadingBit(0u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), arg_0, arg_0)))));
    var var_1 = select(!select(!vec4<bool>(arg_2.x, false, false, false), arg_2, true), select(!arg_2, select(arg_2, arg_2, u_input.a <= 0u), arg_2), !arg_2);
    let var_2 = Struct_3(-2093f, var_0.a);
    var var_3 = !arg_2;
    return var_0.d.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(450f * 2094f)), -(~global0.b.x), vec4<bool>(true, global0.d.x, true, all(select(vec2<bool>(global0.d.x, global0.d.x), global0.c.yy, vec2<bool>(false, global0.d.x)))))));
    let var_1 = -703f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-737f))));
    var_0 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(select(-1280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1306f, -2366f)))), any(vec2<bool>(global0.c.x, !global0.d.x)))));
    let var_2 = Struct_1(true, vec3<bool>(global0.d.x, !(_wgslsmith_f_op_f32(var_1 - var_1) <= _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), select(false, true, global0.d.x)), vec4<f32>(var_1, arg_2.x, var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(f32(-1f) * -710f)))))), !(!(!(!global0.c.x))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    let var_0 = Struct_4(~(~vec4<u32>(u_input.b, 1u, ~4294967295u, 45995u)), ((min(global0.b, global0.b) >> (vec3<u32>(global0.a.x, 0u, 1u) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(reverseBits(global0.b), vec3<i32>(-31334i, -2147483647i, global0.b.x))) >> (abs(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, 0u), vec3<u32>(global0.a.x, 0u, 11842u)), global0.a.wxx)) % vec3<u32>(32u)), !select(arg_1.b, global0.d, true), func_1(global0.b.x & global0.b.x, ~global0.a.x, _wgslsmith_f_op_vec3_f32(-arg_0.b.c.zyy)).b, u_input.b);
    global0 = Struct_4(~global0.a, var_0.b, vec3<bool>(true, true, true), vec3<bool>(true, func_3() | any(!global0.c.yx), global0.d.x), ~_wgslsmith_dot_vec3_u32(var_0.a.wxx, ~firstTrailingBit(global0.a.xyz)));
    global0 = var_0;
    let var_1 = -29774i;
    var var_2 = Struct_3(func_1(-2147483647i, 23518u, arg_0.b.c.ywz).c.x, func_1(global0.b.x, ~u_input.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1050f) - arg_1.c.x), arg_1.c.x, _wgslsmith_f_op_f32(-1f))));
    return StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 1473f))), vec3<i32>(_wgslsmith_sub_i32(-61694i, -global0.b.x), 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-64587i, 1i, -18906i, var_1), vec4<i32>(global0.b.x, 21533i, -2147483647i, global0.b.x)), select(abs(vec4<i32>(var_1, 1i, 0i, var_1)), max(vec4<i32>(-1i, 1476i, var_1, 7814i), vec4<i32>(-54592i, -39902i, 20158i, -2147483647i)), vec4<bool>(true, arg_1.b.x, false, true)))), _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_div_f32(1000f, var_2.b.c.x)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0.c.x, false);
    let x = u_input.a;
    s_output = func_4(Struct_3(1116f, func_1(firstTrailingBit(-3217i), ~(~global0.e), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(658f, -275f, -1261f))))))), Struct_1(-352f >= _wgslsmith_f_op_f32(round(func_1(global0.b.x, 10417u, vec3<f32>(-1036f, 208f, 386f)).c.x)), !vec3<bool>(true, var_0.x, -1i < global0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-738f, -1170f, -2022f, 1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(697f, -404f, -1884f, 1282f), vec4<f32>(1970f, -445f, 2222f, -2390f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 380f, -175f, 916f) + vec4<f32>(2213f, -1098f, 311f, -291f)))), false), func_3());
}

