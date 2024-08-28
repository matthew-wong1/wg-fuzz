struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-66105i);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    var var_0 = Struct_1((global1.a ^ vec4<u32>(select(global1.a.x, 1u, false), 3201u, global1.a.x, ~24912u)) | (abs(select(global1.a, global1.a, vec4<bool>(true, false, false, true))) >> (~(~global1.a) % vec4<u32>(32u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -2415f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-553f * _wgslsmith_div_f32(var_1.x, 897f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * var_1.x))))));
    var var_3 = Struct_2(global0.a);
    var var_4 = Struct_2(min(countOneBits(-34987i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(40306i), max(6258i, 37119i)), _wgslsmith_clamp_i32(-51623i, global0.a, 2147483647i >> (u_input.a % 32u)))));
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<i32> {
    global0 = arg_2;
    global1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, _wgslsmith_div_u32(4294967295u, 46559u), 1u), global1.a) << (global1.a % vec4<u32>(32u)));
    global1 = Struct_1(vec4<u32>(~(0u & global1.a.x), 0u, func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a, global0.a), vec2<i32>(-1i, 45097i)), _wgslsmith_f_op_f32(round(arg_0))), u_input.a) ^ global1.a);
    global0 = arg_2;
    global1 = Struct_1(global1.a);
    return -vec4<i32>(arg_2.a, global0.a, reverseBits(reverseBits(-global0.a)), -2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global1 = Struct_1(arg_0.a);
    let var_0 = true;
    var var_1 = _wgslsmith_mod_vec4_i32(func_2(-1549f, select(vec4<bool>(var_0, false, all(vec4<bool>(var_0, true, var_0, var_0)), var_0), !vec4<bool>(var_0, false, false, true), !select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0))), arg_1), vec4<i32>(~(-(~arg_1.a)), _wgslsmith_mod_i32(2147483647i, ~arg_1.a), ~(-2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, -10664i), vec2<i32>(-1i, global0.a))), func_2(-588f, vec4<bool>(any(vec2<bool>(false, var_0)), var_0, true, all(vec2<bool>(false, var_0))), Struct_2(_wgslsmith_add_i32(global0.a, global0.a))).x));
    var_1 = countOneBits(vec4<i32>(select(max(-1194i, 1i), ~(-arg_1.a), !(!var_0)), -1i, select(1i, -6745i, !all(vec3<bool>(var_0, false, true))), ~(-(~global0.a))));
    global0 = Struct_2(29210i);
    return arg_1;
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = min(firstLeadingBit(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-10199i, arg_0.a, -2147483647i), vec3<i32>(arg_0.a, global0.a, arg_0.a), true), ~vec3<i32>(-1i, arg_0.a, 2147483647i), vec3<i32>(1i, global0.a, arg_0.a))) << (global1.a.ywz % vec3<u32>(32u)), max(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, global0.a, 16529i), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(31153i, 1i, arg_0.a)), vec3<i32>(675i, 36713i, -38749i) & vec3<i32>(global0.a, arg_0.a, global0.a))), vec3<i32>(~global0.a, abs(-1i), i32(-1i) * -global0.a)));
    global0 = Struct_2(~max(global0.a, ~(~(-2147483647i))));
    let var_1 = vec4<i32>(arg_0.a, firstLeadingBit(_wgslsmith_clamp_i32(~global0.a, -1i, abs(~41736i))), -2147483647i, 2432i);
    var_0 = vec3<i32>(_wgslsmith_mult_i32(1i, var_1.x), 0i, 25665i ^ -firstLeadingBit(~arg_0.a));
    global0 = arg_0;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1609f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1750f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(167f, 461f)) + _wgslsmith_f_op_f32(-570f + 1f))));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1699f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(247f)) - -1000f))));
    let var_1 = var_0.x != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1969f), var_0.x);
    let var_2 = Struct_1(abs(max(vec4<u32>(u_input.b.x, 0u, u_input.a, global1.a.x), abs(vec4<u32>(12854u, global1.a.x, 42354u, 3207u))) & _wgslsmith_mult_vec4_u32(max(global1.a, vec4<u32>(global1.a.x, 66174u, 4294967295u, u_input.b.x)), global1.a)));
    var var_3 = arg_0;
    var var_4 = vec2<bool>(true, var_1);
    return Struct_1(reverseBits(vec4<u32>(21607u, ~abs(15289u), select(~global1.a.x, ~57979u, false), ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_i32(global0.a, _wgslsmith_clamp_i32(-2147483647i, 30132i, global0.a)));
    global1 = func_5(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 791f))) - _wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_1(global1.a), Struct_2(-2147483647i)))))));
    let var_1 = vec3<u32>(u_input.a, ~u_input.b.x, u_input.a) << (vec3<u32>(~0u, global1.a.x ^ u_input.a, 20952u) % vec3<u32>(32u));
    global0 = func_1(Struct_1(abs(global1.a)), Struct_2(7911i));
    var_0 = Struct_2(var_0.a);
    var var_2 = Struct_2(-11759i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2430f + -573f), _wgslsmith_f_op_f32(692f * 1346f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1553f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(620f, 1210f)), _wgslsmith_f_op_f32(1000f - -1140f))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1230f + -375f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(728f + -251f), _wgslsmith_f_op_f32(1000f + -645f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(173f, -495f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(793f, -1000f))) * _wgslsmith_f_op_f32(-899f + _wgslsmith_f_op_f32(778f + -398f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -457f)))), -1000f);
}

