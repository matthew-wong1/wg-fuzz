struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = select(_wgslsmith_add_vec4_i32(vec4<i32>(~firstTrailingBit(arg_1.b.x), 0i, u_input.c.x, -var_0.b.x), firstTrailingBit(-vec4<i32>(-1i, arg_1.a.x, -21884i, arg_1.b.x))), min(var_0.b, vec4<i32>(~(var_0.a.x | var_0.a.x), ~0i, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_sub_i32(-1i, -48365i)), ~1i)), !select(!select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), true));
    let var_2 = arg_1;
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(var_2.a | vec4<i32>(firstTrailingBit(u_input.c.x), var_2.b.x >> (arg_3 % 32u), var_2.b.x, -var_0.b.x), vec4<i32>(max(0i, arg_1.a.x) & _wgslsmith_mod_i32(15026i, var_0.a.x), 25159i, -2147483647i, firstLeadingBit(var_1.x)), vec4<i32>(-max(var_1.x, -2147483647i), 0i, var_2.a.x, countOneBits(_wgslsmith_add_i32(u_input.c.x, var_2.b.x)))), ~var_2.a);
    let var_4 = Struct_1(arg_1.b, vec4<i32>(reverseBits(-1i), 4546i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-var_0.a.x, 1i), -1i), 45525i));
    return vec2<i32>(var_1.x << (u_input.a.x % 32u), var_0.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_1(arg_0.a, -(~(-arg_0.b)));
    var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.c, func_3(vec2<bool>(arg_1, true), arg_0, -401f, 4294967295u)), vec2<i32>(_wgslsmith_add_i32(~43925i, 0i), abs(var_0.b.x))), arg_0.a.x);
    var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c.x, ~52098i, -1i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0.b.x, var_1.x, 1i) << (max(vec3<u32>(u_input.d, 1u, 38511u), vec3<u32>(u_input.d, 15589u, u_input.d)) % vec3<u32>(32u)), vec3<i32>(arg_0.a.x, i32(-1i) * -1i, -u_input.c.x), vec3<i32>(u_input.c.x, reverseBits(u_input.b.x), _wgslsmith_div_i32(-2147483647i, var_1.x)))), u_input.c.x);
    return select(!vec2<bool>(false, all(!vec3<bool>(arg_1, arg_1, arg_1))), !(!vec2<bool>(all(vec4<bool>(arg_1, arg_1, arg_1, false)), select(arg_1, false, arg_1))), true);
}

fn func_1() -> Struct_1 {
    var var_0 = !select(select(vec2<bool>(false, true), !func_2(Struct_1(vec4<i32>(1i, u_input.c.x, u_input.b.x, u_input.c.x), u_input.b), false), true), select(vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), false), true);
    var var_1 = Struct_1(u_input.b, vec4<i32>(u_input.b.x, ~_wgslsmith_sub_i32(71303i, 1i), u_input.c.x, u_input.b.x ^ (_wgslsmith_mult_i32(u_input.b.x, -19845i) >> (108159u % 32u))));
    let var_2 = Struct_1(countOneBits(vec4<i32>(var_1.b.x, _wgslsmith_clamp_i32(~56091i, ~(-4663i), countOneBits(0i)), min(u_input.b.x, var_1.b.x), var_1.b.x)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(22184i, u_input.c.x, u_input.b.x, -2147483647i) >> (~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), -reverseBits(u_input.b)));
    var var_3 = vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_add_u32(~u_input.d, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(11563u, u_input.d, u_input.d)), ~vec3<u32>(u_input.d, u_input.d, u_input.d) >> (abs(vec3<u32>(0u, 10779u, u_input.d)) % vec3<u32>(32u)))), u_input.a.x);
    var var_4 = var_2;
    return Struct_1(u_input.b ^ vec4<i32>(1i, _wgslsmith_sub_i32(var_2.a.x & -11174i, i32(-1i) * -13372i), -var_4.a.x, -3005i), ~(vec4<i32>(1i, 1i, func_3(vec2<bool>(var_0.x, var_0.x), var_2, -793f, u_input.a.x).x, i32(-1i) * -16021i) >> (~(vec4<u32>(u_input.a.x, 23794u, 4294967295u, 4294967295u) << (vec4<u32>(u_input.a.x, var_3.x, u_input.d, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = !(true != (_wgslsmith_f_op_f32(1f * -1159f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1161f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1174f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(989f + 1202f), _wgslsmith_f_op_f32(trunc(624f))))))), 1f);
    var var_2 = min(86541u, _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(u_input.a.x, 40238u), firstTrailingBit(abs(u_input.d))), firstLeadingBit(vec2<u32>(u_input.a.x, u_input.d ^ 14098u))));
    var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -931f))));
    return !(~0u < ~(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-259f, _wgslsmith_f_op_f32(-1000f - 350f), 368f));
    let var_1 = select(vec3<bool>(func_4(func_1()), any(vec4<bool>(func_2(Struct_1(vec4<i32>(-29144i, 3415i, 15022i, u_input.b.x), u_input.b), true).x, func_4(Struct_1(vec4<i32>(-2147483647i, u_input.c.x, 0i, u_input.b.x), vec4<i32>(2147483647i, 13667i, u_input.c.x, 0i))), u_input.c.x > -16392i, any(vec2<bool>(false, true)))), true), select(vec3<bool>(func_4(func_1()), false, _wgslsmith_div_f32(var_0.x, var_0.x) == _wgslsmith_f_op_f32(ceil(-1141f))), !vec3<bool>(all(vec2<bool>(false, true)), false, func_2(Struct_1(vec4<i32>(u_input.c.x, -1i, u_input.c.x, -2743i), vec4<i32>(-5930i, u_input.b.x, u_input.b.x, u_input.c.x)), true).x), false), !(!vec3<bool>(false, func_2(Struct_1(vec4<i32>(-3565i, u_input.c.x, 2147483647i, u_input.b.x), vec4<i32>(0i, 2147483647i, -1i, -39865i)), false).x, 1000f <= var_0.x)));
    let var_2 = var_0.xx;
    let var_3 = func_1();
    let var_4 = select(var_1, !(!select(select(var_1, vec3<bool>(var_1.x, var_1.x, false), var_1), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), true), !vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec3<bool>(_wgslsmith_sub_i32(1i, var_3.a.x) == 62816i, var_1.x, true), vec3<bool>(u_input.c.x < 0i, !var_1.x, var_1.x && all(vec2<bool>(true, var_1.x))), all(func_2(Struct_1(u_input.b, var_3.b), var_1.x))));
    var var_5 = true;
    let var_6 = var_4.x;
    let var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -231f), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c.x), min(var_3.b.x, u_input.c.x), max(var_7.b.x, var_7.a.x), 2147483647i), abs(vec4<i32>(-1i, -18389i, -1i, u_input.c.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(var_3.a.x, 57492i)), func_3(var_1.yy, Struct_1(vec4<i32>(1i, -15158i, var_7.b.x, var_3.a.x), var_3.b), var_0.x, u_input.a.x)), abs(abs(vec2<i32>(-2147483647i, u_input.c.x)))), _wgslsmith_add_i32(-1i, 42142i)), vec3<f32>(288f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-416f)))), var_2.x), _wgslsmith_f_op_f32(sign(932f)));
}

