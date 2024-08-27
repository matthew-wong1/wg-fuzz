struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~arg_1.x, abs(1u), u_input.b), ~arg_1.wyz);
    var_0 = arg_2;
    var var_2 = Struct_2(arg_2, arg_2, Struct_1(true));
    var_0 = arg_2;
    return Struct_1(!(!var_0.a));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 315f))))))));
    let var_1 = arg_1;
    let var_2 = 0i;
    let var_3 = Struct_1(select(u_input.b != u_input.b, false, false));
    return arg_1.b;
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = countOneBits(select(select(vec2<i32>(1i, reverseBits(5956i)), -vec2<i32>(u_input.a, -1i), !(!arg_0.c.a)), countOneBits(-vec2<i32>(u_input.a, u_input.a)), vec2<bool>(true, all(select(vec3<bool>(false, arg_0.b.a, false), vec3<bool>(arg_0.b.a, arg_0.a.a, true), arg_0.a.a)))));
    let var_1 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -882f), arg_0, -var_0, arg_0.a);
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-713f, -215f, _wgslsmith_div_f32(321f, _wgslsmith_div_f32(-541f, 432f))), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - -1000f)), all(vec4<bool>(all(vec4<bool>(var_1.a, true, var_2.a, arg_0.b.a)), false && var_1.a, false, var_1.a)))));
    let var_4 = var_0;
    return max(reverseBits(_wgslsmith_div_vec2_i32(select(vec2<i32>(var_0.x, u_input.a), ~var_4, select(true, var_1.a, true)), -max(var_0, var_0))), ~(~firstTrailingBit(-var_0)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> vec4<bool> {
    var var_0 = true;
    var var_1 = !vec4<bool>(true, 1364f < arg_0.x, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true)), true);
    var var_2 = func_4(Struct_2(Struct_1(var_1.x & all(var_1.xy)), func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1530f)))), Struct_2(Struct_1(false), func_2(arg_0, vec4<u32>(16557u, arg_1, arg_1, arg_1), Struct_1(var_1.x)), Struct_1(var_1.x)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(19236i, -1i), vec2<i32>(53525i, u_input.a)), vec2<i32>(u_input.a, u_input.a)), Struct_1(var_1.x)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) * arg_0)), ~select(vec4<u32>(4294967295u, 0u, 63204u, 17615u), vec4<u32>(36471u, u_input.b, u_input.b, 14403u), true), Struct_1(true))));
    var var_3 = u_input.b;
    var var_4 = firstTrailingBit(min(~(~_wgslsmith_div_u32(7056u, u_input.b)), ~u_input.b));
    return vec4<bool>(var_1.x, ((all(vec3<bool>(var_1.x, var_1.x, true)) || true) && (false & var_1.x)) & false, all(select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, true), vec2<bool>(false, true), var_1.xz), !vec2<bool>(true, var_1.x))) || var_1.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 458f, -302f)))), vec3<f32>(460f, _wgslsmith_f_op_f32(round(-1000f)), 594f)), abs(~u_input.b));
    let var_1 = select(var_0.zw, var_0.zy, func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(980f, 1877f)), 484f), 62058u).zy);
    let var_2 = abs(firstTrailingBit(4294967295u));
    let var_3 = ~select(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), 34610i >> (u_input.b % 32u), func_3(1f, Struct_2(Struct_1(false), func_3(-849f, Struct_2(Struct_1(var_0.x), Struct_1(false), Struct_1(true)), vec2<i32>(u_input.a, u_input.a), Struct_1(true)), func_2(vec3<f32>(-734f, 2352f, 1447f), vec4<u32>(var_2, 21038u, 1u, var_2), Struct_1(var_0.x))), _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, u_input.a), func_4(Struct_2(Struct_1(var_1.x), Struct_1(false), Struct_1(true)))), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-958f, 652f, -433f), vec3<f32>(-149f, 808f, 1163f), true)), max(vec4<u32>(var_2, 35166u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 0u, 21049u, var_2)), Struct_1(var_1.x))).a);
    var var_4 = Struct_2(Struct_1(true), Struct_1(false), Struct_1(var_0.x));
    var_4 = Struct_2(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-280f)) - _wgslsmith_f_op_f32(-330f * 603f))), Struct_2(Struct_1(true), Struct_1(all(var_0.zxy)), func_2(vec3<f32>(-1062f, 1997f, 1000f), abs(vec4<u32>(var_2, u_input.b, 77206u, var_2)), var_4.a)), ~(-vec2<i32>(1i, 1i)), var_4.a), var_4.a, func_3(_wgslsmith_f_op_f32(step(520f, -559f)), Struct_2(var_4.a, func_3(-293f, Struct_2(var_4.a, Struct_1(var_1.x), Struct_1(false)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_3, -12864i), false), func_2(vec3<f32>(522f, -463f, 489f), vec4<u32>(35053u, 12431u, var_2, 38183u), var_4.b)), Struct_1(u_input.a < 1i)), ~_wgslsmith_mod_vec2_i32(select(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, var_3), vec2<bool>(false, var_1.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(36202i, u_input.a))), var_4.c));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1462f))), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(~(i32(-1i) * -31943i), -41118i, countOneBits(u_input.a | var_3), firstLeadingBit(var_3 & -46595i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-var_3, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_3, var_3, var_3), vec4<i32>(var_3, -1i, u_input.a, -47943i)), 1i, u_input.a), _wgslsmith_mult_vec4_i32(~vec4<i32>(28266i, 63522i, 1i, 0i), vec4<i32>(-1i, 22398i, var_3, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5 - _wgslsmith_f_op_f32(-293f - var_5)), _wgslsmith_f_op_f32(ceil(var_5))) * var_5));
}

