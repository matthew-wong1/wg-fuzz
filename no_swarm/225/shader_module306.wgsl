struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(79989u, 21417u);

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = Struct_1(vec4<i32>(4040i, 26801i, i32(-1i) * -2147483647i, 1i) ^ vec4<i32>(-1i, ~max(-1996i, 1i), ~firstTrailingBit(-1i), -min(-2147483647i, -9267i)));
    var var_1 = vec2<bool>(!all(vec3<bool>(arg_0, arg_0, arg_0)) && arg_0, _wgslsmith_div_i32(-2147483647i, var_0.a.x) < ~1i);
    var_0 = Struct_1(var_0.a);
    let var_2 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>((var_0.a.x & var_0.a.x) & (1i >> (u_input.a.x % 32u)), _wgslsmith_add_i32(-var_0.a.x, 1i), 2147483647i, _wgslsmith_dot_vec4_i32(var_0.a & var_0.a, _wgslsmith_mult_vec4_i32(var_0.a, var_0.a))), _wgslsmith_add_vec4_i32(-var_0.a, _wgslsmith_div_vec4_i32(var_0.a, -vec4<i32>(var_0.a.x, 34976i, -2147483647i, 1i)))));
    var var_3 = Struct_2(Struct_1(var_0.a), var_2, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(1u, u_input.b), ~(52240u >> (0u % 32u))), 0u, abs(u_input.b)), 33160i);
    return _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, ~(~74788u), ~67860u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c, var_3.c, var_3.c), vec3<u32>(101305u, 1u, global0.x) << (vec3<u32>(global0.x, var_3.c, var_3.c) % vec3<u32>(32u)))), reverseBits(vec4<u32>(global0.x, ~4294967295u, global0.x, 12822u)), select(vec4<bool>(var_1.x, true, true, var_1.x), !(!vec4<bool>(true, false, false, var_1.x)), !arg_0)), vec4<u32>(max(_wgslsmith_mod_u32(0u, ~47536u), _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, global0.x), ~u_input.b)), 1u, global0.x, min(var_3.c, var_3.c >> (1u % 32u))), vec4<u32>(_wgslsmith_sub_u32((global0.x << (27917u % 32u)) ^ u_input.b, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, var_3.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c, 4294967295u), u_input.a))), firstLeadingBit(max(~1u, ~u_input.a.x)), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(global0.x, 50910u, 18193u)), vec3<u32>(_wgslsmith_clamp_u32(58780u, u_input.b, 10734u), var_3.c, 0u)), ~var_3.c));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = select(~_wgslsmith_sub_vec4_u32(func_3(arg_0.x), vec4<u32>(0u, u_input.b, u_input.b, 0u)) >> (~vec4<u32>(reverseBits(global0.x), _wgslsmith_mod_u32(u_input.b, global0.x), 1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(25166u, 37063u, global0.x) | vec3<u32>(30377u, global0.x, 21666u), vec3<u32>(u_input.b, 1u, 1u) << (vec3<u32>(4294967295u, 26018u, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, 11809u), vec3<u32>(global0.x, u_input.a.x, 4294967295u)) | ~vec3<u32>(4294967295u, 4294967295u, 1u)), 4294967295u, 0u, ~global0.x), true);
    var var_1 = countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -11909i), vec3<i32>(_wgslsmith_sub_i32(232i, -1i), 1i, 1i)) ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(~1i, reverseBits(-60705i)), ~(~1i)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -269f);
    var var_3 = Struct_1(~(~firstTrailingBit(-vec4<i32>(2147483647i, -2826i, 2147483647i, -39776i))));
    var var_4 = Struct_1(~(-_wgslsmith_div_vec4_i32(~vec4<i32>(1i, var_3.a.x, var_3.a.x, -2147483647i), vec4<i32>(22719i, var_3.a.x, var_3.a.x, var_3.a.x) << (var_0 % vec4<u32>(32u)))));
    return Struct_2(Struct_1(-vec4<i32>(var_4.a.x, 51409i ^ var_4.a.x, abs(var_4.a.x), 0i)), Struct_1(var_4.a), _wgslsmith_clamp_u32(global0.x, var_0.x, ~83486u), var_4.a.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    let var_0 = (true & (arg_0.x < 46630i)) | true;
    var var_1 = ~(~0u);
    let var_2 = func_2(!(!vec2<bool>(var_0, true)));
    let var_3 = var_2;
    let var_4 = vec2<i32>(-select(_wgslsmith_mod_i32(~var_3.d, -23971i << (u_input.a.x % 32u)), 1i, (var_0 & var_0) | false), arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
}

fn func_4(arg_0: vec2<f32>) -> bool {
    global0 = u_input.a;
    let var_0 = true;
    var var_1 = !all(!vec3<bool>(!var_0, !var_0, true));
    var var_2 = func_2(select(!select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, true)), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)), !(!select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(var_0, var_0))), vec2<bool>(!any(vec2<bool>(var_0, var_0)), any(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, true), var_0)))));
    var_2 = func_2(select(select(vec2<bool>(false, true), vec2<bool>(var_0, true || var_0), var_0), select(!(!vec2<bool>(true, var_0)), select(select(vec2<bool>(false, var_0), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, var_0), vec2<bool>(false, false), vec2<bool>(true, var_0)), select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), vec2<bool>(true, true))), all(vec3<bool>(false, false, var_0))), var_0));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(max(vec2<i32>(-23735i, 0i), vec2<i32>(1i, -1i)), _wgslsmith_f_op_f32(-global1.x))))));
    var var_2 = global1.x;
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(~global0.x, ~_wgslsmith_mod_u32(global0.x, 29516u)), 4294967295u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.a.x, 45284u, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.x, 0u, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.a.x, u_input.a.x))), global0.x));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, 620f))));
    var var_4 = ~select(global0.x, func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))).c, !(func_4(vec2<f32>(-976f, 1262f)) & false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(1u >> (u_input.b % 32u)), ~_wgslsmith_div_u32(18731u, 2237u), ~u_input.b), var_3), -44174i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1295f, global1.x, global1.x) * vec3<f32>(global1.x, -1764f, -738f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 179f, global1.x), vec3<f32>(1111f, global1.x, global1.x), vec3<bool>(true, true, false)))))))));
}

