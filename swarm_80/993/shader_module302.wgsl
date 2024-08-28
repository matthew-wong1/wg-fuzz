struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_0.x, _wgslsmith_clamp_u32(u_input.b, arg_0.x, 62399u), u_input.b, u_input.b)), max(~select(vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x), vec4<u32>(u_input.c.x, arg_0.x, 4294967295u, 1u), arg_1), _wgslsmith_mult_vec4_u32(~vec4<u32>(58997u, 48048u, u_input.b, u_input.b), ~vec4<u32>(55680u, 1415u, 0u, u_input.c.x))), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), 4294967295u, 47705u, u_input.b) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, arg_0.x, 1u, arg_0.x), vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(22910u, 73949u, u_input.c.x, arg_0.x)) % vec4<u32>(32u)));
    var var_1 = -1i;
    var_1 = -(~(~u_input.a.x)) >> (reverseBits(firstTrailingBit(1u)) % 32u);
    var_1 = u_input.d;
    let var_2 = _wgslsmith_mod_u32(min(85762u, var_0.x), _wgslsmith_sub_u32((~var_0.x ^ 1u) >> (u_input.c.x % 32u), _wgslsmith_mod_u32(reverseBits(var_0.x << (0u % 32u)), firstTrailingBit(var_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-540f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = arg_1;
    let var_1 = Struct_1(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec4<bool>(true, true, true, true))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1426f - _wgslsmith_div_f32(arg_0, 1138f)) + var_0.b)));
    var var_2 = ~firstLeadingBit(u_input.c.x) | 0u;
    let var_3 = !(!vec3<bool>(true, any(vec2<bool>(true, true)), arg_1.a != var_0.a));
    var var_4 = 27398u | _wgslsmith_mult_u32(countOneBits(4294967295u), ~(~u_input.b));
    return ~max(abs(~(~vec4<u32>(7900u, u_input.c.x, 12952u, 4294967295u))), ~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)) | vec4<u32>(7538u, u_input.c.x, ~0u, u_input.b));
}

fn func_1() -> Struct_1 {
    let var_0 = ~max(~(~vec4<u32>(4294967295u, 1u, u_input.c.x, 21177u)) >> ((countOneBits(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.c.x)) ^ vec4<u32>(u_input.b, 1u, 63585u, 3113u)) % vec4<u32>(32u)), func_2(184f, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, 21081i, u_input.a.x), vec4<i32>(-5673i, u_input.a.x, 2147483647i, u_input.a.x)), -484f)));
    var var_1 = vec2<i32>(u_input.d << (firstLeadingBit(max(~0u, _wgslsmith_dot_vec4_u32(var_0, var_0))) % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(-countOneBits(35285i), _wgslsmith_mod_i32(u_input.d, 1i >> (1u % 32u))), ~u_input.a.x));
    var_1 = firstLeadingBit(~min(-u_input.a, min(vec2<i32>(var_1.x, var_1.x) | vec2<i32>(2147483647i, -22786i), u_input.a)));
    var_1 = ~vec2<i32>(u_input.a.x, u_input.a.x);
    var_1 = select(vec2<i32>(2147483647i, ~var_1.x << (~var_0.x % 32u)) | vec2<i32>(_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(-1423i, var_1.x)), ~_wgslsmith_mult_i32(4687i, -1i)), u_input.a, select(select(vec2<bool>(true, true), vec2<bool>(4294967295u >= u_input.b, true), false), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), false)));
    return Struct_1(u_input.a.x, 569f);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = 2147483647i;
    var var_1 = func_1();
    let var_2 = arg_3;
    let var_3 = var_2.b;
    var var_4 = vec2<bool>(true, true);
    return true;
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(-_wgslsmith_mult_i32(u_input.d, -16057i) >> (select(~0u, reverseBits(abs(4294967295u)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), arg_0))) % 32u), 2147483647i);
    var var_1 = arg_0.yz;
    var_1 = vec2<bool>(arg_0.x, true);
    var_1 = select(arg_0.yy, select(select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0.yz), select(vec2<bool>(true, !arg_0.x), !(!vec2<bool>(false, var_1.x)), any(arg_0)), arg_0.yz), var_1.x);
    let var_2 = arg_0;
    return Struct_1(var_0.x << (~u_input.c.x % 32u), -1105f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -506f);
    var_0 = 1856f;
    let var_1 = func_5(vec3<bool>(func_4(Struct_1(-u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -941f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 4294967295u, u_input.c.x), abs(vec4<u32>(u_input.b, u_input.b, 1u, 89935u))), ~vec4<u32>(u_input.b, 4294967295u, u_input.c.x, 1u) | select(vec4<u32>(u_input.b, 66322u, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 27814u, 51771u, u_input.c.x), true), func_1()), !all(vec2<bool>(true, true)), !(!all(vec2<bool>(false, false)))));
    let var_2 = ~(-select(~(-vec4<i32>(-26411i, u_input.a.x, u_input.d, var_1.a)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 75425i, var_1.a, u_input.d), vec4<i32>(u_input.d, -1i, var_1.a, u_input.a.x))), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, 1i, firstLeadingBit(vec3<i32>(var_2.x | (i32(-1i) * -2147483647i), 1i, 73499i)), 36352u, 0i);
}

