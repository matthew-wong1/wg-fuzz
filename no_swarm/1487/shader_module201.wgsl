struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    let var_0 = Struct_2(select(vec4<u32>(arg_2, _wgslsmith_add_u32(~arg_1.x, arg_1.x >> (arg_1.x % 32u)), 22266u, _wgslsmith_dot_vec4_u32(vec4<u32>(43078u, arg_2, arg_1.x, arg_2) >> (vec4<u32>(4294967295u, 58756u, arg_2, 0u) % vec4<u32>(32u)), vec4<u32>(arg_2, arg_2, arg_2, arg_1.x))), vec4<u32>(85542u, arg_2 | ~arg_2, 15u << (_wgslsmith_sub_u32(arg_2, arg_1.x) % 32u), arg_1.x), false), u_input.a, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f - arg_0)) == 168f, select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), select(any(vec4<bool>(false, false, true, false)), all(vec3<bool>(false, false, false)), false))));
    let var_1 = Struct_1(var_0.c.a, all(select(vec4<bool>(false, all(var_0.c.a), var_0.c.b, !var_0.c.c.x), vec4<bool>(all(var_0.c.a.yz), true, var_0.c.a.x, var_0.c.a.x), select(select(vec4<bool>(var_0.c.a.x, true, true, var_0.c.c.x), vec4<bool>(var_0.c.b, true, false, true), vec4<bool>(true, var_0.c.c.x, var_0.c.c.x, var_0.c.c.x)), select(vec4<bool>(var_0.c.a.x, var_0.c.a.x, false, true), vec4<bool>(true, false, false, var_0.c.a.x), vec4<bool>(true, var_0.c.b, true, false)), true))), vec2<bool>(var_0.c.a.x, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0, -773f)))), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -645f))))))));
    let var_3 = Struct_1(vec3<bool>(var_0.b < _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, var_0.b), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.b, var_0.b), vec3<i32>(u_input.a, 0i, 1i))), false, !(!var_0.c.a.x)), false, var_1.a.yy);
    var var_4 = 169f;
    return 1u;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = !(!vec4<bool>(arg_0, !arg_0 || arg_0, true, false));
    var_0 = vec4<bool>(arg_0, true, arg_2.b.a.x, arg_2.b.c.x);
    var var_1 = vec4<u32>(~(~83998u), _wgslsmith_mod_u32(arg_1.x, ~1u), func_3(arg_2.a.x, max(vec2<u32>(4294967295u, arg_1.x) ^ vec2<u32>(arg_1.x, 0u), vec2<u32>(arg_1.x, 10316u)), arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 37552u, arg_1.x ^ 47077u, _wgslsmith_mult_u32(arg_1.x, 43625u)), vec4<u32>(arg_1.x, 79347u & arg_1.x, arg_1.x, arg_1.x))) >> (abs(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 32636u, 1u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))) & ~(~vec4<u32>(104877u, arg_1.x, arg_1.x, 4294967295u))) % vec4<u32>(32u));
    var var_2 = arg_2;
    var_1 = firstLeadingBit(~countOneBits(~vec4<u32>(arg_1.x, 1u, arg_1.x, 0u) & vec4<u32>(0u, arg_1.x, var_1.x, var_1.x)));
    return -_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -1i), -vec3<i32>(-46475i, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, -13117i), vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<i32>(reverseBits(5939i), max(-11588i, 60048i), ~u_input.a)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(countOneBits(var_1.x), 48614u & var_1.x), ~(~arg_1.x), 0u), var_1.yxw) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(vec4<u32>(4294967295u, 4294967295u, ~1u, ~_wgslsmith_div_u32(abs(32109u), 1u)), _wgslsmith_dot_vec3_i32(select(func_2(true, vec3<u32>(27038u, 1645u, 1u), Struct_3(vec2<f32>(2184f, -390f), arg_1)) | firstTrailingBit(vec3<i32>(u_input.a, -1i, u_input.a)), vec3<i32>(u_input.a, -1i, countOneBits(arg_0.x)), true), -arg_0 | vec3<i32>(_wgslsmith_mult_i32(u_input.a, arg_0.x), 2147483647i, -33984i)), Struct_1(vec3<bool>(true, any(!vec4<bool>(arg_1.c.x, arg_1.c.x, false, true)), arg_1.a.x && all(vec3<bool>(true, true, true))), 67297u == ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 72438u, 1u, 4294967295u), vec4<u32>(29540u, 0u, 36313u, 0u)), !(!arg_1.c)));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(arg_0.x, ~_wgslsmith_mod_i32(arg_0.x, var_0.b), _wgslsmith_div_i32(~(-17508i), _wgslsmith_dot_vec3_i32(arg_0, arg_0)), arg_0.x);
    return Struct_1(vec3<bool>(true, false, any(select(select(vec4<bool>(arg_1.b, false, var_0.c.a.x, true), vec4<bool>(false, arg_1.b, true, arg_1.b), vec4<bool>(true, false, false, arg_1.a.x)), select(vec4<bool>(arg_1.a.x, var_0.c.b, var_0.c.b, false), vec4<bool>(true, true, arg_1.c.x, arg_1.c.x), var_0.c.a.x), select(var_0.c.a.x, var_0.c.a.x, var_0.c.b)))), true, !(!vec2<bool>(all(vec3<bool>(true, arg_1.c.x, var_0.c.b)), false)));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = func_4(func_2(!(!arg_0.c.b) && true, ~arg_0.a.xzz << (~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, 4294967295u), vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) % vec3<u32>(32u)), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-501f, -111f)))), arg_0.c)), Struct_1(!vec3<bool>(true, all(vec3<bool>(arg_0.c.b, arg_0.c.a.x, arg_0.c.c.x)), any(vec3<bool>(true, false, arg_0.c.a.x))), !((arg_0.c.a.x | true) || true), vec2<bool>(arg_0.c.c.x, false)));
    var var_1 = max(-func_2(true, firstLeadingBit(vec3<u32>(arg_0.a.x, arg_0.a.x, 43745u)), Struct_3(vec2<f32>(-2095f, -740f), Struct_1(vec3<bool>(false, true, var_0.b), true, vec2<bool>(var_0.b, arg_0.c.a.x)))).x >> (arg_0.a.x % 32u), ~0i | arg_0.b);
    return vec3<bool>(!(arg_0.c.b && arg_0.c.b), any(vec4<bool>(false, true, select(arg_0.c.a.x, arg_0.c.c.x, var_0.c.x), var_0.a.x)), true);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    var var_0 = -1537f;
    let var_1 = Struct_2(~abs(vec4<u32>(1u, 1u, 1u, 1u)), u_input.a ^ -1i, Struct_1(arg_0.a, all(arg_0.a), !func_4(vec3<i32>(u_input.a, u_input.a, u_input.a), arg_0).c));
    var var_2 = vec3<i32>(u_input.a, var_1.b, _wgslsmith_add_i32(countOneBits(-abs(var_1.b)), -max(var_1.b, countOneBits(10967i))));
    var var_3 = _wgslsmith_div_f32(437f, arg_2);
    var_2 = firstLeadingBit(~(~(~vec3<i32>(20809i, u_input.a, var_1.b) & firstLeadingBit(vec3<i32>(u_input.a, 2147483647i, 1i)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_5(Struct_1(func_1(Struct_2(vec4<u32>(20643u, 51139u, 0u, 1761u), u_input.a, Struct_1(vec3<bool>(false, false, false), true, vec2<bool>(false, true)))), false, vec2<bool>(true, true)), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1381f + 1229f))), 1i, 19840i));
}

