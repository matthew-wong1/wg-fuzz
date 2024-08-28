struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(14018i, 4713i, -50711i, -19963i), -691f, vec2<u32>(28942u, 0u), vec3<f32>(-602f, -828f, -841f), vec2<f32>(-714f, 145f));

var<private> global1: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    global1 = arg_0.c.x;
    var var_0 = !(!select(vec4<bool>(arg_0.c.x | false, 24359u < arg_1.x, arg_0.c.x, arg_0.c.x), select(select(vec4<bool>(true, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(true, arg_0.c.x, true, true), false), vec4<bool>(arg_0.c.x, false, true, true), arg_0.c.x), arg_0.c.x));
    var var_1 = arg_0;
    var_0 = !vec4<bool>(var_0.x, any(select(!var_0.wz, vec2<bool>(var_1.c.x, arg_0.c.x), vec2<bool>(true, false))), false, any(select(select(vec2<bool>(true, arg_0.c.x), vec2<bool>(arg_0.c.x, false), vec2<bool>(true, false)), select(vec2<bool>(var_1.c.x, var_0.x), vec2<bool>(false, true), vec2<bool>(arg_0.c.x, false)), all(vec4<bool>(false, var_0.x, var_0.x, false)))));
    var var_2 = arg_0.a;
    return 1000f;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = true || any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), arg_0), 0u > global0.c.x), vec2<bool>(select(arg_0, arg_0, false), all(vec4<bool>(arg_0, true, arg_0, arg_0))), (true || arg_0) || arg_0));
    global1 = arg_0;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-777f - 1112f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.d.x)), 1000f), -1670f)))));
    let var_1 = Struct_2(Struct_1(vec4<i32>(-2147483647i, global0.a.x, global0.a.x, ~0i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-496f + _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global0.a, var_0.x, vec2<u32>(88710u, 23739u), global0.d, global0.d.xy), vec4<i32>(-5041i, u_input.d.x, global0.a.x, -25143i), vec2<bool>(true, true)), vec4<u32>(u_input.b, 4294967295u, 44169u, u_input.e.x)))))), select(u_input.e.wz, max(reverseBits(u_input.e.yw), u_input.e.xz), arg_0), vec3<f32>(1946f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) - global0.d.x), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(-48018i, u_input.a, 51699i, 1i), 161f, u_input.e.xz, global0.d, global0.d.zx), vec4<i32>(global0.a.x, global0.a.x, -9516i, global0.a.x), vec2<bool>(false, arg_0)), u_input.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.d.x, -983f))))), global0.a >> (~_wgslsmith_clamp_vec4_u32(u_input.e | u_input.e, u_input.e, u_input.e) % vec4<u32>(32u)), select(select(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), false), vec2<bool>(true, arg_0)), vec2<bool>(any(vec2<bool>(true, arg_0)), arg_0), false), vec2<bool>(arg_0, !select(true, false, arg_0)), vec2<bool>(!(353f <= var_0.x), all(!vec3<bool>(false, false, arg_0)))));
    var var_2 = vec2<i32>(var_1.a.a.x, ~2147483647i) << (_wgslsmith_add_vec2_u32(max(abs(countOneBits(global0.c)), abs(select(vec2<u32>(u_input.c, 80777u), u_input.e.yy, vec2<bool>(arg_0, true)))), ~u_input.e.zx >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, u_input.e.x), ~u_input.e.zz, global0.c) % vec2<u32>(32u))) % vec2<u32>(32u));
    return var_1;
}

fn func_1() -> u32 {
    var var_0 = global0.e;
    var_0 = global0.e;
    var var_1 = Struct_3(func_2(false));
    let var_2 = ~0u;
    global1 = _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 750u), vec3<u32>(global0.c.x, u_input.b, var_2)) >> (~var_2 % 32u)), countOneBits(min(_wgslsmith_sub_u32(1u, var_1.a.a.c.x), u_input.b ^ var_1.a.a.c.x))) < (abs(~countOneBits(u_input.b)) << (1u % 32u));
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(~(vec2<i32>(25333i, ~arg_3.a.x) & vec2<i32>(~arg_3.a.x, reverseBits(-11952i))));
    var var_1 = Struct_3(func_2(false));
    global0 = func_2((abs(43593u) ^ (~global0.c.x << (var_1.a.a.c.x % 32u))) > ~(~4294967295u)).a;
    let var_2 = _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_clamp_i32(global0.a.x, firstLeadingBit(-2147483647i), -40895i) & ~arg_3.a.x), global0.a.x, global0.a.x);
    var var_3 = ~arg_3.c.x >> (firstLeadingBit(63007u) % 32u);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_mult_i32(10668i, _wgslsmith_add_i32(global0.a.x, u_input.a) & (global0.a.x | -1i)) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.c.x, 37144u), func_1()), _wgslsmith_clamp_u32(~0u, func_1(), _wgslsmith_mult_u32(1u, 1u))) % 32u), _wgslsmith_f_op_vec3_f32(global0.d + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(select(global0.b, -1050f, false))))), reverseBits(u_input.d >> (u_input.e.xxz % vec3<u32>(32u))), Struct_1(select(global0.a, firstLeadingBit(reverseBits(global0.a)), vec4<bool>(any(vec2<bool>(false, false)), true, u_input.a >= u_input.d.x, global0.e.x < global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-global0.d.x))), global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d * global0.d)) - func_2(false).a.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)))));
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-11953i, global0.a.x, 9028i, -58418i) >> (~vec4<u32>(0u, 32541u, 0u, u_input.e.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(global0.a, global0.a), ~global0.a)) << ((((vec4<u32>(global0.c.x, 1u, global0.c.x, global0.c.x) ^ vec4<u32>(53519u, global0.c.x, 4294967295u, u_input.e.x)) | ~u_input.e) | ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.c.x, global0.c.x, u_input.c), vec4<u32>(global0.c.x, 1u, 0u, global0.c.x))) % vec4<u32>(32u)), 1021f, vec2<u32>(~35431u, global0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-722f, -1303f), _wgslsmith_f_op_f32(727f * 594f), _wgslsmith_f_op_f32(f32(-1f) * -178f))) * global0.d), vec2<f32>(_wgslsmith_f_op_f32(floor(-1113f)), _wgslsmith_f_op_f32(func_3(func_2(any(vec2<bool>(false, false))), ~vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 65965u)))));
    global1 = !(1154f < _wgslsmith_f_op_f32(-global0.d.x));
    global0 = func_4(0i, _wgslsmith_f_op_vec3_f32(global0.d - global0.d), vec3<i32>(global0.a.x, global0.a.x >> ((~105270u >> (reverseBits(u_input.c) % 32u)) % 32u), -global0.a.x), func_2(false).a);
    let var_0 = -753f;
    global1 = !(27094i != ((min(1i, u_input.a) ^ _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(-1i, u_input.d.x, 32538i, global0.a.x))) | 2051i));
    var var_1 = Struct_3(Struct_2(Struct_1(vec4<i32>(global0.a.x, 1i, 0i, 0i & u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1270f)), -1406f), vec2<u32>(_wgslsmith_mod_u32(global0.c.x, 24177u), 0u), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.a, global0.a.x, 0i, u_input.a), 818f, global0.c, global0.d, vec2<f32>(var_0, -1607f)), vec4<i32>(global0.a.x, 2147483647i, global0.a.x, -40651i), vec2<bool>(true, true)), vec4<u32>(u_input.b, u_input.c, 1u, 1u))), -1036f, _wgslsmith_div_f32(-1878f, var_0)), global0.d.yx), vec4<i32>(-55810i, reverseBits(u_input.a << (53452u % 32u)), _wgslsmith_clamp_i32(2147483647i, ~u_input.a, u_input.d.x), 1i >> (_wgslsmith_mult_u32(1u, u_input.b) % 32u)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(global0.a, abs(vec4<i32>(2147483647i, var_1.a.b.x, -34815i, u_input.a))), _wgslsmith_add_vec4_i32(var_1.a.a.a, ~vec4<i32>(global0.a.x, 0i, var_1.a.b.x, 19625i))));
}

