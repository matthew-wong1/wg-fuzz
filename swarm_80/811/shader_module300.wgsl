struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_i32(arg_0.a.a.b.a, _wgslsmith_div_i32(-(~arg_1.a.b.a ^ ~71635i), ~(i32(-1i) * -4493i)));
    var var_1 = arg_1.a.b;
    var var_2 = arg_1.a.a;
    var var_3 = vec2<bool>(true, arg_0.a.a.a);
    let var_4 = arg_1.a.b;
    return !select(!vec4<bool>(!var_3.x, any(vec4<bool>(arg_1.d.x, arg_1.a.a, true, true)), false, any(arg_1.d)), select(!(!vec4<bool>(true, var_3.x, var_3.x, true)), !vec4<bool>(arg_0.a.d.x, var_3.x, false, var_3.x), !select(vec4<bool>(false, arg_1.a.a, arg_1.d.x, true), vec4<bool>(true, var_3.x, false, false), false)), !select(vec4<bool>(false, arg_1.d.x, arg_0.a.d.x, var_3.x), vec4<bool>(arg_0.a.d.x, true, true, var_3.x), 31342u <= arg_1.b));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = any(select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(false, any(vec3<bool>(false, true, true))), true)));
    var_0 = select(any(vec2<bool>(true, true)), false, false) && (any(vec3<bool>(true, true, true)) || false);
    var_0 = !(!(true || all(vec2<bool>(true, true))));
    var var_1 = vec3<bool>(true, _wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~4294967295u >> (arg_1.x % 32u)) <= (u_input.b ^ ~arg_1.x), true);
    var_1 = vec3<bool>(var_1.x, any(!select(vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(var_1.x, false, false, var_1.x), func_3(Struct_5(Struct_3(Struct_2(true, Struct_1(u_input.a.x, vec2<f32>(362f, -370f)), 88401u), u_input.b, vec4<u32>(51522u, 1509u, 4294967295u, arg_1.x), vec3<bool>(false, false, true))), Struct_3(Struct_2(false, Struct_1(u_input.a.x, vec2<f32>(-1167f, 2015f)), arg_1.x), 0u, vec4<u32>(0u, 763u, u_input.c, 4294967295u), vec3<bool>(var_1.x, true, var_1.x))))), any(vec3<bool>(true, !var_1.x, var_1.x)) & !(firstLeadingBit(arg_1.x) == ~u_input.b));
    return Struct_2(all(vec4<bool>(!(!var_1.x), any(vec3<bool>(false, var_1.x, var_1.x)), false, true)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(arg_0.x), arg_0.x, u_input.a.x, select(u_input.a.x, arg_0.x, var_1.x)), vec4<i32>(firstTrailingBit(1i), ~1i, arg_0.x, ~arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-304f, -2387f) - vec2<f32>(-1128f, 354f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1248f, -1000f))))), ~(~(~(~1u))));
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = u_input.a.x;
    let var_1 = arg_0.a.b.b.x;
    var_0 = abs(42063i);
    var_0 = u_input.a.x;
    var var_2 = arg_0.a.b.a;
    return arg_0.c.xx;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_4 {
    let var_0 = ~(func_4(Struct_3(func_2(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec2<u32>(arg_2, arg_2)), ~arg_2, min(vec4<u32>(u_input.b, arg_2, 1u, 5323u), vec4<u32>(0u, u_input.b, 21140u, arg_2)), !vec3<bool>(arg_3, false, arg_0))) << ((vec2<u32>(func_4(Struct_3(Struct_2(arg_3, Struct_1(-2147483647i, vec2<f32>(arg_1, -566f)), arg_2), 0u, vec4<u32>(0u, arg_2, arg_2, 0u), vec3<bool>(true, arg_0, arg_0))).x, ~4294967295u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = Struct_5(Struct_3(func_2(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -15800i), vec3<i32>(0i, u_input.a.x, -10906i)), vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<bool>(false, arg_0, false)), ~_wgslsmith_mult_vec2_u32(var_0, var_0)), 4294967295u, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(74263u, u_input.b, 1u, 26939u), vec4<u32>(0u, arg_2, u_input.c, 33289u))), !(!select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))));
    let var_2 = ~(~_wgslsmith_div_vec3_i32((vec3<i32>(-12624i, u_input.a.x, var_1.a.a.b.a) | vec3<i32>(1i, var_1.a.a.b.a, -27833i)) << (min(vec3<u32>(var_0.x, var_0.x, arg_2), vec3<u32>(var_1.a.a.c, u_input.c, 90533u)) % vec3<u32>(32u)), vec3<i32>(~u_input.a.x, _wgslsmith_mult_i32(24740i, var_1.a.a.b.a), -21523i)));
    let var_3 = var_1.a.c;
    let var_4 = var_1.a.d.xz;
    return Struct_4(~(~vec4<i32>(~var_2.x, -1i, -var_1.a.a.b.a, countOneBits(var_1.a.a.b.a))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = 0u;
    let var_2 = func_1(true, -3372f, ~u_input.b, true);
    let var_3 = !(!vec4<bool>(func_3(Struct_5(Struct_3(Struct_2(var_2.b, Struct_1(var_2.a.x, vec2<f32>(-929f, 122f)), var_1), 1u, vec4<u32>(0u, var_1, u_input.b, u_input.b), vec3<bool>(var_2.b, var_2.b, false))), Struct_3(Struct_2(var_2.b, Struct_1(49927i, vec2<f32>(-906f, 2711f)), 19851u), 1u, vec4<u32>(0u, 20468u, u_input.c, u_input.b), vec3<bool>(false, var_2.b, false))).x, var_2.b, true, !(4294967295u >= var_1)));
    var var_4 = u_input.a.x;
    var var_5 = ~countOneBits(firstLeadingBit(23837u));
    var var_6 = var_3.wy;
    var_5 = u_input.b;
    let var_7 = var_3.zwx;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(17674i), _wgslsmith_div_i32(var_0, (var_0 ^ 32239i) << (0u % 32u)) & (42545i << (select(u_input.b, firstTrailingBit(66381u), any(var_3.wz)) % 32u)));
}

