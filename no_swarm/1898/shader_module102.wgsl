struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = 4294u;
    let var_1 = firstLeadingBit(-vec4<i32>(_wgslsmith_sub_i32(-3102i, -arg_1.x), 0i, arg_1.x & arg_1.x, _wgslsmith_add_i32(1i, min(-2147483647i, arg_1.x))));
    let var_2 = max(min(var_1, _wgslsmith_mod_vec4_i32(var_1, vec4<i32>(var_1.x, arg_1.x, -39304i, _wgslsmith_div_i32(17145i, var_1.x)))), var_1);
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-432f + 695f)))), arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, arg_3.a, arg_3.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, -1000f, arg_3.a), vec3<f32>(953f, -891f, arg_0))) + vec3<f32>(179f, arg_0, arg_3.a)))));
    let var_4 = all(select(vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), arg_2 != arg_2), true)) & (var_0 < 1u);
    return vec2<bool>(!(!(!var_4)), var_4);
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = true;
    var_0 = !any(!func_3(3228f, vec2<i32>(73988i, 32154i), ~41698u, Struct_1(arg_0.x)));
    let var_1 = any(!select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, false, true), all(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true))), vec4<bool>(any(vec3<bool>(false, true, false)), false, true, true)));
    var var_2 = any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), !vec2<bool>(var_1, false), var_1), !select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), true)));
    var_2 = true;
    return Struct_1(arg_0.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    return select(vec2<i32>(1i, 1i), vec2<i32>(i32(-1i) * -21034i, ~(~0i)), vec2<bool>(select(false, false, false), (arg_1.x <= arg_1.x) && false)) >> ((vec2<u32>(arg_1.x, arg_1.x) >> (arg_1.xx % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = -min(-func_4(vec4<f32>(177f, -1575f, -488f, 640f), vec3<u32>(8532u, u_input.a.x, u_input.a.x), func_2(vec4<f32>(773f, -317f, -1000f, 205f)), Struct_2(Struct_1(997f), Struct_1(363f), vec3<f32>(891f, 1141f, -239f))), vec2<i32>(i32(-1i) * -5717i, select(1i, -1i, false) << (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)));
    let var_1 = Struct_2(func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2655f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-152f))), 1408f, 1000f)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1305f))), _wgslsmith_f_op_f32(ceil(858f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-675f * -446f))))));
    var var_2 = Struct_3(Struct_2(var_1.b, var_1.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a * var_1.b.a) * 101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) - _wgslsmith_f_op_f32(f32(-1f) * -830f)), var_1.c.x)));
    var var_3 = var_2.a.a;
    var var_4 = select(vec3<bool>(false, true, select(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec2<bool>(true, false)), func_3(var_1.b.a, ~var_0, ~57051u, var_2.a.b).x)), vec3<bool>(select(false, true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), true, !(var_0.x < var_0.x) && ((u_input.a.x >> (u_input.a.x % 32u)) <= u_input.a.x)), !(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, true), true)));
    return func_2(vec4<f32>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1330f, var_3.a, 1643f, -1091f))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a.b.a)) * _wgslsmith_f_op_f32(sign(var_3.a)))), -1577f, _wgslsmith_f_op_f32(min(var_2.a.b.a, var_3.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec3_i32(arg_3, arg_3, select(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.x, -2238i, 2147483647i), arg_3), -vec3<i32>(-26192i, 18612i, arg_3.x)) ^ arg_3, vec3<i32>(arg_3.x, -24050i << (max(1u, 0u) % 32u), ~1i), !any(select(vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(true, true, false, true)))));
    var var_1 = func_2(vec4<f32>(945f, -482f, arg_0.a, arg_0.a));
    var_1 = arg_0;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(var_0.x, -_wgslsmith_mult_i32(reverseBits(-38811i), select(0i, -2147483647i, arg_2))), 8044i, _wgslsmith_mult_i32(14448i, arg_3.x), ~var_0.x);
    var_1 = func_1();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(496f, arg_0.a))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-907f, var_1.a)), vec2<f32>(780f, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_1(), select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 35207u), vec2<u32>(u_input.a.x, u_input.a.x)), firstTrailingBit(124482u), ~u_input.a.x, ~u_input.a.x), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a.x, 25550u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 32775u), false), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u))), vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true)) >> (~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 44398u))) % vec4<u32>(32u)), any(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, false, all(vec2<bool>(true, true))), true)), firstTrailingBit(abs(select(vec3<i32>(2147483647i, 38132i, 2147483647i), vec3<i32>(0i, -2147483647i, 0i), vec3<bool>(false, true, true)) ^ vec3<i32>(1i, 1i, 1i)))));
    var var_1 = ~select(~(~1u), firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, abs(u_input.a.x))), !(true && (u_input.a.x == 4294967295u)));
    var var_2 = false;
    let var_3 = 253f;
    var var_4 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(trunc(179f))) - -1079f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1460f)) - var_3), 2112f, var_0.x));
    var var_5 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, var_3, var_3, var_4.a)) + vec4<f32>(var_0.x, 1000f, 1070f, -1288f))), func_1(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1545f, _wgslsmith_f_op_f32(f32(-1f) * -533f), -375f) * vec3<f32>(-759f, _wgslsmith_f_op_f32(var_4.a - -907f), _wgslsmith_f_op_f32(round(var_4.a))))));
    let var_6 = 13570i;
    let x = u_input.a;
    s_output = StorageBuffer((~(vec2<i32>(2147483647i, var_6) & vec2<i32>(50577i, var_6)) | vec2<i32>(-2147483647i, -var_6)) << (((u_input.a >> (u_input.a % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(vec2<u32>(60776u, 1u), vec2<u32>(u_input.a.x, 0u))) % vec2<u32>(32u)), ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 60662u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0, vec2<f32>(-440f, var_3))))))), vec2<f32>(_wgslsmith_f_op_f32(min(-269f, var_0.x)), var_4.a));
}

