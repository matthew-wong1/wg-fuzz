struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_mult_i32(arg_1.x, _wgslsmith_clamp_i32(firstTrailingBit(1i), reverseBits(firstTrailingBit(arg_2)) ^ -1i, 2147483647i));
    var var_1 = Struct_2(Struct_1(select(arg_3 == false, all(vec3<bool>(true, false, false)), all(vec3<bool>(false, arg_3, arg_3))) & !arg_3, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1604f, _wgslsmith_f_op_f32(-arg_0)))), false, select(false, !any(vec3<bool>(arg_3, true, false)), any(vec4<bool>(false, true, false, arg_3))), u_input.b.x), vec3<i32>((i32(-1i) * -var_0) << ((abs(u_input.d) | ~0u) % 32u), 33015i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, -2147483647i, 7213i)), vec3<i32>(max(arg_1.x, 14618i), 2147483647i, select(arg_1.x, 2147483647i, arg_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f)), arg_2);
    var var_2 = _wgslsmith_f_op_f32(-var_1.c);
    var var_3 = Struct_2(var_1.a, ~var_1.b, arg_0, -countOneBits(firstTrailingBit(-31277i)));
    var var_4 = vec4<bool>(var_1.a.d, any(!select(vec2<bool>(false, false), vec2<bool>(var_1.a.c, arg_3), vec2<bool>(false, true))), !all(vec2<bool>(all(vec2<bool>(var_1.a.c, true)), var_3.a.b.x > -469f)), (select(any(vec3<bool>(true, true, false)), u_input.e >= 1i, true) | true) | arg_3);
    return any(vec2<bool>(true, var_1.a.a));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> i32 {
    let var_0 = min(101051u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.b.x, u_input.a.x, arg_1.b.e)) ^ vec4<u32>(4294967295u, u_input.d, arg_1.b.e, arg_1.b.e), u_input.a)) != arg_1.b.e;
    let var_1 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(arg_1.b.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1445f, -1066f) * arg_1.b.b))), any(!vec4<bool>(arg_1.a, false, arg_1.a, var_0)) | arg_0, true, arg_1.b.e), min(reverseBits(abs(~vec3<i32>(-24190i, 15071i, -2147483647i))), firstTrailingBit(~vec3<i32>(7483i, 50563i, u_input.c))), arg_1.b.b.x, reverseBits(~(~u_input.c)) ^ u_input.c);
    let var_2 = arg_1.b;
    let var_3 = _wgslsmith_sub_vec4_i32(min((~vec4<i32>(u_input.e, u_input.c, var_1.d, u_input.c) & -vec4<i32>(25338i, var_1.b.x, 2147483647i, -1i)) ^ vec4<i32>(_wgslsmith_sub_i32(u_input.e, u_input.c), _wgslsmith_div_i32(0i, 2358i), -37635i, 2147483647i), abs(vec4<i32>(countOneBits(-18934i), -2147483647i, u_input.c, 0i))), ~vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, var_1.d, var_1.d, -33339i), vec4<i32>(u_input.e, var_1.b.x, 2147483647i, var_1.b.x)), -1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(56741i, u_input.c, u_input.c), var_1.b), 14711i, ~u_input.c));
    var var_4 = vec2<bool>(select(var_1.c <= arg_1.b.b.x, (false || var_2.c) | any(vec4<bool>(true, arg_0, var_0, false)), var_2.c) | true, !all(select(select(vec4<bool>(var_2.c, arg_0, var_1.a.d, arg_1.b.a), vec4<bool>(arg_1.b.a, arg_1.a, var_2.a, var_1.a.c), vec4<bool>(arg_1.b.c, true, true, false)), !vec4<bool>(true, true, var_0, false), false)));
    return 0i;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = u_input.e;
    var_0 = u_input.c;
    let var_1 = vec2<u32>(~(~u_input.a.x), u_input.b.x);
    var var_2 = select(!vec2<bool>(any(vec4<bool>(true, true, false, false)) | any(vec4<bool>(false, true, true, false)), ~var_1.x > u_input.d), vec2<bool>((1u > _wgslsmith_mod_u32(u_input.b.x, u_input.a.x)) & any(vec3<bool>(true, true, true)), !(34126u <= _wgslsmith_dot_vec3_u32(u_input.b.zwx, vec3<u32>(var_1.x, u_input.d, var_1.x)))), true);
    let var_3 = vec4<i32>(-(~_wgslsmith_mult_i32(u_input.c, 0i) >> (~(~1u) % 32u)), _wgslsmith_mod_i32(~(-9602i & u_input.e), -9796i), 0i, func_4(true, Struct_4(func_3(_wgslsmith_f_op_f32(min(142f, arg_0)), vec2<i32>(-1i, u_input.c), 13573i & u_input.c, true), Struct_1(!var_2.x, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0))), var_2.x, var_2.x | var_2.x, firstLeadingBit(var_1.x)))));
    return select(vec4<bool>(true, select(true, var_2.x, true), !(!(u_input.a.x == u_input.b.x)), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, var_2.x, var_2.x)))), vec4<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, true))), var_2.x, var_2.x, false), false);
}

fn func_1() -> bool {
    let var_0 = all(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)))), any(func_2(-200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-184f, -3801f))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(422f, 608f))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(!var_0, vec2<f32>(115f, _wgslsmith_f_op_f32(2100f + _wgslsmith_f_op_f32(min(-651f, 1670f)))), false, any(!vec3<bool>(var_0, any(vec3<bool>(false, false, var_0)), all(vec3<bool>(var_0, false, var_0)))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x | 0u, 1u, _wgslsmith_mult_u32(u_input.d, u_input.b.x)), u_input.a.wwz), 1u));
    let var_2 = ~abs(vec4<u32>(~reverseBits(31798u), ~1u, ~(~1u), _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.b.x)) & var_1.e));
    let var_3 = _wgslsmith_mult_u32(~(~u_input.a.x), firstTrailingBit(abs(~u_input.d)));
    var var_4 = ~u_input.b.ywy;
    var_4 = _wgslsmith_clamp_vec3_u32(u_input.b.wwz, vec3<u32>(abs(_wgslsmith_mod_u32(var_3, abs(var_2.x))), ~_wgslsmith_add_u32(var_3, ~u_input.b.x), var_2.x), vec3<u32>(1u, select(44177u, var_1.e, true), _wgslsmith_sub_u32(1u ^ u_input.b.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(var_2.xz, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(27654u, 1u, var_3), vec3<u32>(var_2.x, 67201u, var_1.e)), ~u_input.b.yyw), var_1.e), ~select(vec2<u32>(1u, u_input.d), u_input.b.yz >> (vec2<u32>(var_3, var_2.x) % vec2<u32>(32u)), vec2<bool>(var_0, var_1.a))), vec2<i32>(0i, firstTrailingBit(2147483647i)), (max(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 0i, u_input.c, u_input.c), vec4<i32>(u_input.e, u_input.c, u_input.e, u_input.e)), -vec4<i32>(u_input.c, u_input.c, 7691i, 2147483647i)) & -vec4<i32>(-12549i, -2147483647i, u_input.e, -31465i)) >> (_wgslsmith_div_vec4_u32(u_input.b, reverseBits(max(u_input.b, vec4<u32>(var_4.x, var_3, var_1.e, 1u)))) % vec4<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(0u), _wgslsmith_sub_u32(4294967295u, 87919u)), ~vec2<u32>(var_4.x, 0u), _wgslsmith_div_vec2_u32(var_4.yz, vec2<u32>(var_4.x, 2288u) << (vec2<u32>(1u, var_1.e) % vec2<u32>(32u)))) >> (vec2<u32>(var_3, var_3) % vec2<u32>(32u)));
}

