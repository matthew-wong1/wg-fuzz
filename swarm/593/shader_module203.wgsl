struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-211f, 308f)));
    let var_1 = arg_1.b && all(arg_1.c);
    var var_2 = false;
    var var_3 = arg_1;
    global0 = -1i;
    return _wgslsmith_add_u32(54899u, u_input.b.x);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> i32 {
    global0 = ~32964i;
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -202f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1679f + 811f)), _wgslsmith_f_op_f32(f32(-1f) * -402f)))));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(arg_2, -8483i, 2147483647i, arg_0)), vec4<i32>(arg_0 >> (4294967295u % 32u), ~(-8475i), _wgslsmith_mult_i32(17156i, u_input.a), arg_2)), select(vec4<i32>(countOneBits(arg_2), i32(-1i) * -33955i, arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_2, 59517i), vec4<i32>(2147483647i, -1i, arg_2, 1i))), ~(~vec4<i32>(u_input.e.x, u_input.c, u_input.c, arg_0)), vec4<bool>(true, true, true, true))) ^ firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(u_input.c, countOneBits(u_input.c)), -arg_0, select(9173i, -23594i, any(vec2<bool>(false, false))), ~min(arg_2, 0i)));
    var var_2 = u_input.b.x >> (_wgslsmith_sub_u32(firstLeadingBit(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_2(vec2<f32>(-1145f, -930f), false, vec4<bool>(true, true, true, false)), Struct_1(u_input.b.x, 72140u))), 54380u | (_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zz) & _wgslsmith_sub_u32(arg_1, u_input.d))) % 32u);
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = -(countOneBits(~(u_input.c << (73674u % 32u))) >> (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(55339u, 77893u), vec2<u32>(u_input.d, arg_0.b))) % 32u));
    global0 = -_wgslsmith_mult_i32(min(u_input.c, ~(-2147483647i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, u_input.e.x) ^ u_input.a, func_2(u_input.a, ~u_input.d, ~(-1i))));
    var_0 = u_input.e.x;
    global0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(405f, arg_2.a.x))));
    return countOneBits(vec3<u32>(firstLeadingBit(u_input.b.x & _wgslsmith_mod_u32(1u, arg_0.a)), ~_wgslsmith_clamp_u32(select(arg_0.b, u_input.d, arg_1), ~24374u, _wgslsmith_mod_u32(19997u, 1u)), 34820u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_1(arg_0.x, countOneBits(arg_2));
    global0 = abs(~u_input.c >> (_wgslsmith_mod_u32(1u, 10571u | var_0.b) % 32u));
    var_0 = Struct_1(_wgslsmith_mod_u32(arg_0.x, 0u), var_0.b);
    let var_1 = all(select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), !any(vec4<bool>(true, true, true, false))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), true), true || (3063u > _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.b, arg_2), vec3<u32>(u_input.d, 33721u, 4294967295u)))));
    var var_2 = Struct_1(~(~_wgslsmith_add_u32(u_input.b.x, 1u) & 4294967295u), u_input.d);
    return arg_0;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<i32>) -> i32 {
    global0 = ~(firstTrailingBit(~_wgslsmith_mod_i32(1i, arg_3.x)) >> (~(~35546u) % 32u));
    var var_0 = Struct_1(~0u, ~_wgslsmith_add_u32(1u, (109155u << (u_input.d % 32u)) | max(1u, 51969u)));
    var var_1 = i32(-1i) * -min(~(-3437i), u_input.a);
    let var_2 = Struct_1(4294967295u, firstTrailingBit(61800u));
    global0 = _wgslsmith_dot_vec4_i32(-(~abs(arg_3)), vec4<i32>(-7332i, u_input.c, arg_2.x, arg_3.x));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, arg_3.x ^ arg_3.x, select(arg_3.x, ~u_input.e.x, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)))), 16062i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i;
    global0 = ~(~3453i);
    global0 = func_5(~func_4(func_1(Struct_1(4294967295u, u_input.b.x), select(true, false, true), Struct_2(vec2<f32>(-123f, -1238f), true, vec4<bool>(false, true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, -305f)))), 85796u | u_input.d), Struct_1(func_4(u_input.b, vec2<f32>(-1304f, _wgslsmith_div_f32(1061f, -343f)), 4294967295u).x, func_3(vec2<bool>(true, true), Struct_2(vec2<f32>(-749f, -670f), true, select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)), Struct_1(u_input.d & 4294967295u, u_input.d))), vec3<i32>(u_input.c | ~(-u_input.e.x), abs(u_input.e.x), ~1i), -(select(reverseBits(vec4<i32>(u_input.a, -8166i, u_input.c, 14552i)), min(vec4<i32>(u_input.c, u_input.a, -2147483647i, 8433i), vec4<i32>(u_input.e.x, -27572i, u_input.c, u_input.e.x)), true) ^ max(countOneBits(vec4<i32>(1i, -8408i, -29441i, -66589i)), countOneBits(vec4<i32>(-2147483647i, -1i, u_input.a, -23071i)))));
    global0 = ~(-((i32(-1i) * -59391i) << (u_input.d % 32u)));
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(322f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(662f, -182f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-470f, -1242f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2646f, 321f) * vec2<f32>(1000f, 750f))))))));
    var var_1 = 21290i;
    let var_2 = u_input.b.xy;
    let var_3 = Struct_1(~var_2.x, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(~66400u, _wgslsmith_div_u32(var_2.x, var_2.x)), max(firstLeadingBit(var_2.x), u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~_wgslsmith_mod_i32(func_5(u_input.b, var_3, vec3<i32>(u_input.a, -2147483647i, u_input.c), vec4<i32>(35959i, u_input.e.x, 2147483647i, u_input.a)), 7467i) & u_input.a);
}

