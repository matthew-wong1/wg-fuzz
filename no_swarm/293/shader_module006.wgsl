struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7647u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<i32> {
    global0 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 38704u, u_input.a.x)), max((vec3<u32>(u_input.a.x, 4294967295u, 46629u) ^ vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) & vec3<u32>(u_input.a.x, u_input.a.x, 1u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(244u, 1u, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))) | u_input.a.x;
    let var_0 = !select(true, true, all(vec2<bool>(true, true)));
    let var_1 = 26332i;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1461f * -658f)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), _wgslsmith_div_vec2_f32(vec2<f32>(-1962f, 117f), vec2<f32>(var_2, var_2))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(604f, -361f))))));
    return reverseBits(firstTrailingBit(_wgslsmith_mult_vec3_i32(select(~vec3<i32>(-43659i, var_1, -5286i), vec3<i32>(-7258i, 18484i, -2147483647i), true), countOneBits(-vec3<i32>(2147483647i, 0i, -30551i)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    let var_0 = arg_0;
    global0 = ~4294967295u;
    global0 = 1u;
    let var_1 = u_input.a;
    var var_2 = var_0.a.b.x;
    return u_input.a;
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    global0 = u_input.a.x;
    let var_0 = func_4(Struct_2(Struct_1(-func_3(), vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))), 19855u, -vec3<i32>(320i, 0i, -36118i))), Struct_1(~(-vec3<i32>(1i, 1i, 1i)), vec3<bool>(true, true, true), u_input.a.x, ~(-vec3<i32>(21306i, -4623i, 1i))), false);
    global0 = 0u;
    let var_1 = true;
    let var_2 = all(vec2<bool>(!var_1, false));
    return !vec4<bool>(!var_2, !select(var_1, false, any(vec4<bool>(var_2, var_2, true, var_2))), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-667f - 1694f), false & var_1)) >= 972f, var_1);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = select(!select(!func_2(vec2<f32>(181f, -965f)), select(vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(true, arg_3, arg_0.b.x, arg_0.b.x), false), arg_2.x < arg_2.x), all(vec3<bool>(true, false, arg_3))), !(!(!vec4<bool>(false, arg_0.b.x, arg_0.b.x, false))), any(vec2<bool>(!arg_3 || arg_3, arg_3)));
    let var_1 = arg_0.b.yz;
    let var_2 = Struct_2(Struct_1(-vec3<i32>(1i, _wgslsmith_add_i32(5424i, 29913i), min(36873i, 66777i)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(-922f, 440f)))).wyx, u_input.a.x, arg_0.a));
    global0 = ~max(~(func_4(Struct_2(arg_0), Struct_1(var_2.a.a, vec3<bool>(false, true, var_2.a.b.x), arg_1, vec3<i32>(var_2.a.d.x, 47659i, 55534i)), var_1.x).x >> ((arg_1 << (arg_0.c % 32u)) % 32u)), firstLeadingBit(~4294967295u));
    let var_3 = vec2<f32>(591f, arg_2.x);
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(arg_1.a);
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(arg_1.a);
    let var_1 = var_0.a.b.x;
    global0 = 0u;
    return countOneBits(var_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(select(-23643i << (u_input.a.x % 32u), _wgslsmith_div_i32(2147483647i, -3713i), all(vec4<bool>(true, true, false, false))), ~min(2147483647i, -1i), -14949i);
    global0 = ~35753u;
    var var_1 = Struct_2(Struct_1(func_5(vec4<bool>(true, all(vec3<bool>(false, true, false)), func_1(Struct_1(vec3<i32>(-19180i, var_0.x, var_0.x), vec3<bool>(false, false, false), 0u, vec3<i32>(2700i, 1i, var_0.x)), u_input.a.x, vec2<f32>(-303f, 1000f), true), true), Struct_2(Struct_1(vec3<i32>(var_0.x, 49764i, var_0.x), vec3<bool>(false, false, true), 78475u, var_0))), vec3<bool>(false, (0u >= u_input.a.x) && true, true), firstLeadingBit(u_input.a.x), var_0));
    global0 = 4294967295u;
    var var_2 = vec3<i32>(abs(_wgslsmith_sub_i32(~var_0.x, ~firstTrailingBit(1i))), 0i << (~_wgslsmith_add_u32(0u & var_1.a.c, min(83924u, 11362u)) % 32u), _wgslsmith_clamp_i32(var_0.x, var_1.a.d.x, 2704i));
    var_2 = var_1.a.d;
    var var_3 = 381f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(var_1.a.a.zz, min(min(var_0.zx, var_0.xz), var_2.yy) << ((countOneBits(vec2<u32>(0u, var_1.a.c)) & u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1840f, -737f)), _wgslsmith_mult_i32(-22815i, firstLeadingBit(1i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1178f, -318f, -595f, -879f), vec4<f32>(1349f, -793f, 332f, 377f)))))))));
}

