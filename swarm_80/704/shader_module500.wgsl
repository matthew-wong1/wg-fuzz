struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_5((~(vec4<i32>(72909i, -1i, u_input.d, u_input.d) << (u_input.b % vec4<u32>(32u))) & abs(select(vec4<i32>(2147483647i, u_input.d, u_input.d, u_input.d), vec4<i32>(-16316i, u_input.d, u_input.d, 0i), arg_1.a))) & (reverseBits(~vec4<i32>(u_input.d, u_input.d, 12936i, u_input.d)) ^ firstTrailingBit(countOneBits(vec4<i32>(u_input.d, -1i, u_input.d, 1i)))), _wgslsmith_f_op_f32(541f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.c, arg_1.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2398f) * _wgslsmith_f_op_f32(min(arg_1.c, arg_1.c))))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f * 318f) - arg_1.c)));
    var_0 = Struct_5(vec4<i32>(_wgslsmith_mod_i32(17166i, ~(~1i)), var_0.a.x, 1i, 44958i), -1946f);
    let var_2 = arg_1;
    let var_3 = vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_add_i32(-1i, -2147483647i), -var_0.a.x, u_input.d), var_0.a), _wgslsmith_dot_vec2_i32(var_0.a.yz, _wgslsmith_clamp_vec2_i32(var_0.a.yy, ~var_0.a.zw, _wgslsmith_clamp_vec2_i32(vec2<i32>(10925i, var_0.a.x), vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(var_0.a.x, u_input.d))) << (min(~vec2<u32>(var_2.b, 87373u), ~u_input.b.zx) % vec2<u32>(32u))), i32(-1i) * -(~var_0.a.x));
    return var_2.c;
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    return Struct_2(Struct_1(true, u_input.e.x | countOneBits(56594u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-509f * -1357f)) * _wgslsmith_div_f32(-1221f, _wgslsmith_f_op_f32(abs(1557f)))), vec2<bool>(any(!vec3<bool>(false, var_0, var_0)), var_0)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<bool>(var_0, false), Struct_1(false, 1u, -1764f, vec2<bool>(true, var_0)))))) != _wgslsmith_f_op_f32(f32(-1f) * -1049f), u_input.a, -1295f, select(vec2<bool>(true, true), select(select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), false), select(vec2<bool>(true, true), vec2<bool>(false, var_0), true), true), var_0 && (var_0 || false))), Struct_1(true, 490u, 1f, select(!(!vec2<bool>(var_0, false)), select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), false), vec2<bool>(var_0, false), !vec2<bool>(var_0, var_0)), vec2<bool>(any(vec2<bool>(var_0, var_0)), true))), abs(4294967295u), _wgslsmith_clamp_i32(i32(-1i) * -1972i, ~u_input.d, u_input.d));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = true;
    let var_1 = !select(arg_2.d, arg_2.d, any(!(!vec4<bool>(true, false, var_0, true))));
    let var_2 = func_2();
    let var_3 = Struct_4(max(65806u, 4294967295u), arg_0, Struct_3(min(46182i, 2147483647i), Struct_1(func_2().a.d.x, _wgslsmith_sub_u32(arg_3, arg_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.c - 714f), var_2.c.c), !var_1)));
    var var_4 = arg_1;
    return ~var_2.e >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), u_input.e, var_3.b), _wgslsmith_add_vec2_u32(arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(37218u, u_input.b.x), vec2<u32>(u_input.b.x, var_2.b.b)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(-vec4<i32>(-1i, ~(-2147483647i) >> ((4294967295u ^ u_input.b.x) % 32u), 2147483647i, u_input.d & ~u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f))))));
    var var_1 = min(_wgslsmith_mult_vec4_i32(select(var_0.a & abs(var_0.a), vec4<i32>(-1i, -var_0.a.x, _wgslsmith_div_i32(var_0.a.x, -55290i), u_input.d), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true)), var_0.a), select(var_0.a, _wgslsmith_mod_vec4_i32(var_0.a, vec4<i32>(56428i, 0i, 0i, var_0.a.x) ^ var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + var_0.b) - _wgslsmith_div_f32(var_0.b, 445f)) >= -1150f));
    var var_2 = Struct_1(-_wgslsmith_mod_i32(var_1.x, reverseBits(2147483647i)) != _wgslsmith_mod_i32(-45086i, func_1(~u_input.b.yw, true, Struct_1(true, u_input.b.x, -834f, vec2<bool>(true, false)), u_input.b.x)), ~_wgslsmith_mod_u32(u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b.xxz, vec3<u32>(13465u, u_input.b.x, u_input.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(553f * _wgslsmith_div_f32(420f, _wgslsmith_f_op_f32(trunc(var_0.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1271f), true)))), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_1 = abs(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(var_0.a), ~var_0.a)), var_1.x, -2147483647i, ~_wgslsmith_mult_i32(~0i, ~(-1970i))));
    let var_3 = func_2().b;
    let var_4 = Struct_3(firstTrailingBit(-28023i), Struct_1(var_3.a, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b - -1431f))) + -108f), vec2<bool>(var_0.a.x <= u_input.d, !(var_3.a && true))));
    var var_5 = _wgslsmith_f_op_f32(-var_3.c);
    var var_6 = vec2<u32>(~_wgslsmith_mod_u32(min(_wgslsmith_mod_u32(var_2.b, var_2.b), var_4.b.b), 4294967295u), _wgslsmith_add_u32(~abs(982u), countOneBits(~var_4.b.b)) >> ((var_4.b.b ^ ~1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-25953i, 2147483647i, 2147483647i, var_0.a.x), max(vec4<i32>(var_1.x, 2147483647i, u_input.d, 38668i), vec4<i32>(var_4.a, -9636i, u_input.d, -1i))), 2147483647i), var_4.a), (vec3<i32>(-1i) * -vec3<i32>(u_input.d, 0i, 1024i)) >> ((_wgslsmith_add_vec3_u32(~u_input.b.yzy, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), u_input.b.wxy)) << (u_input.b.xxy % vec3<u32>(32u))) % vec3<u32>(32u)), abs(~1u), abs(~(~u_input.b.xx)) << (min(vec2<u32>(~var_6.x, ~var_4.b.b), u_input.e) % vec2<u32>(32u)), ~(vec4<i32>(_wgslsmith_mod_i32(-378i, 1i), _wgslsmith_clamp_i32(-2147483647i, u_input.d, var_4.a), var_0.a.x, var_4.a) ^ vec4<i32>(var_0.a.x, var_4.a, var_4.a, var_1.x)));
}

