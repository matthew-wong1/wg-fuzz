struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = Struct_1(select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 63669u, 1u), abs(vec3<u32>(4294967295u, 1u, 79780u))), vec3<u32>(85591u, 56174u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))))), -53929i);
    var_0 = Struct_1(~var_0.a, ~var_0.b);
    var_0 = Struct_1(31696u, abs(firstTrailingBit(-38261i)));
    let var_1 = Struct_1(var_0.a, 55004i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, 729f, 285f, 1559f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-836f, 1107f, -908f, 384f)))), !any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1140f, 707f, 2773f, 600f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, 719f, -395f, -386f))))), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, all(vec3<bool>(false, true, false)), true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))))));
    return all(select(select(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), vec4<bool>(4294967295u < var_1.a, true, all(vec3<bool>(true, false, false)) && true, true), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_4(select(-vec2<i32>(68416i, u_input.b.x), u_input.b, true) << (arg_0.yx % vec2<u32>(32u)));
    let var_1 = select(abs(firstLeadingBit(_wgslsmith_add_vec2_i32(abs(u_input.a), -vec2<i32>(u_input.a.x, u_input.a.x)))), u_input.a >> (arg_0.zx % vec2<u32>(32u)), func_3(u_input.a));
    var_0 = Struct_4(u_input.a);
    var var_2 = u_input.a;
    var_2 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.a, min(u_input.a, -var_1)), min(-_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-1i, var_0.a.x)), var_1));
    return Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_0.x, arg_0.x, 22605u, arg_0.x) ^ (vec4<u32>(59094u, 4294967295u, 4074u, arg_0.x) & vec4<u32>(0u, 4294967295u, 19741u, arg_0.x))), ~(~(~vec4<u32>(arg_0.x, arg_0.x, 0u, 4294967295u)))), -17249i);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_3(449f, ~(i32(-1i) * -arg_0.b), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))), !select(false, false, true)), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    let var_1 = false;
    let var_2 = vec4<u32>(~firstLeadingBit(~21801u), 27286u, ~_wgslsmith_mod_u32(~countOneBits(arg_0.a), ~1u), arg_0.a);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(1092f + 1000f), 2147483647i | arg_0.b, vec4<bool>(true, !(_wgslsmith_f_op_f32(307f + 1194f) <= var_0.a), true, var_1), select(!vec2<bool>(var_1, true), select(!select(var_0.c.zx, var_0.c.wz, var_0.c.xy), var_0.d, vec2<bool>(var_0.c.x, true || var_1)), select(select(var_0.c.xz, vec2<bool>(true, true), var_0.c.x), select(vec2<bool>(true, var_1), !var_0.d, var_0.a == var_0.a), any(!var_0.c.yxy))));
    var var_4 = vec3<i32>(2147483647i, i32(-1i) * -1i, -firstLeadingBit(1i ^ (var_0.b | -20605i)));
    return ~_wgslsmith_sub_vec3_u32(~reverseBits(~var_2.xyw), ~vec3<u32>(0u, 0u, 32309u) | ~var_2.zzz);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_4(reverseBits(vec2<i32>(max(_wgslsmith_add_i32(arg_2.x, -2147483647i), u_input.a.x), arg_1.x)));
    var var_1 = max(max(_wgslsmith_mult_vec3_u32(func_4(func_2(arg_0.xzx)), vec3<u32>(arg_0.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x), 49826u)), ~abs(vec3<u32>(4294967295u, arg_0.x, arg_0.x) >> (vec3<u32>(4294967295u, 32036u, arg_0.x) % vec3<u32>(32u)))), arg_0.zxy);
    return !select(vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), select(vec3<bool>(false, all(vec2<bool>(false, false)), true), func_1(vec4<u32>(1u, 1u, 1u, 1u), u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x), vec4<i32>(-62096i, -91658i, 1i, -31954i))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), vec3<bool>(true, true, true));
    var var_1 = Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(-29577i, u_input.b.x), u_input.b));
    var_0 = !func_1(vec4<u32>(1u, 1u, 1u, 1u), vec2<i32>(abs(1i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-39895i, var_1.a.x, u_input.b.x)), vec3<i32>(-26792i, var_1.a.x, -14793i) << (vec3<u32>(7911u, 4294967295u, 0u) % vec3<u32>(32u)))), abs(vec4<i32>(1i, 1i, 1i, 1i) & firstLeadingBit(vec4<i32>(u_input.b.x, var_1.a.x, 25029i, u_input.a.x))));
    let var_2 = 0u;
    var var_3 = !(!(!select(!vec3<bool>(false, var_0.x, false), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), true), vec3<bool>(var_0.x, var_0.x, var_0.x))));
    var var_4 = vec3<bool>(var_0.x, true, var_3.x);
    var var_5 = func_2(~vec3<u32>(select(~var_2, ~var_2, true), reverseBits(var_2) & ~var_2, ~(~var_2)));
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, 1i));
}

