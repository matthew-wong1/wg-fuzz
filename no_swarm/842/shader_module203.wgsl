struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(-42135i, -119f, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18965u, u_input.b, 0u, u_input.b), ~vec4<u32>(58129u, u_input.b, 4294967295u, u_input.b)), ~u_input.b, u_input.b), true, ~countOneBits(u_input.b) < _wgslsmith_div_u32(u_input.b, 16822u)));
    var var_1 = true;
    let var_2 = var_0.a.b;
    let var_3 = vec3<bool>(false, var_0.a.e, (var_0.a.d & var_0.a.d) || true);
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(min(var_0.a.c, 98265u), u_input.b), abs(~4294967295u)), 0u, var_0.a.c, u_input.b), _wgslsmith_div_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 35347u, u_input.b), vec4<u32>(31046u, var_0.a.c, 4294967295u, 1u)) | (vec4<u32>(4294967295u, u_input.b, 31167u, var_0.a.c) & vec4<u32>(1u, 37682u, 43745u, 21803u)), select(~vec4<u32>(81624u, u_input.b, 1u, u_input.b), countOneBits(vec4<u32>(4294967295u, 64037u, 78411u, u_input.b)), select(vec4<bool>(false, false, var_3.x, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0.a.d, false, var_3.x, false)))), firstLeadingBit(~vec4<u32>(4294967295u, 1u, 4294967295u, var_0.a.c))));
    return var_0.a.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    var var_0 = select(select(vec3<bool>(!arg_0.e | arg_0.d, !arg_0.e, true), vec3<bool>(any(vec2<bool>(arg_0.d, arg_0.d)) & false, all(!vec4<bool>(true, arg_0.d, arg_0.e, arg_0.d)), arg_0.e), select(vec3<bool>(true, arg_0.e, false), select(!vec3<bool>(arg_0.d, false, arg_0.d), select(vec3<bool>(false, false, arg_0.e), vec3<bool>(true, false, true), vec3<bool>(arg_0.e, arg_0.d, false)), arg_0.d), select(!vec3<bool>(false, arg_0.d, false), vec3<bool>(arg_0.d, false, true), select(vec3<bool>(arg_0.e, arg_0.d, false), vec3<bool>(false, false, true), arg_0.d)))), select(!vec3<bool>(any(vec4<bool>(true, arg_0.e, false, true)), select(arg_0.e, false, arg_0.d), false), vec3<bool>(true, true, true), _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(arg_0.c, 21759u)) > _wgslsmith_clamp_u32(1u << (arg_1.x % 32u), abs(4294967295u), 4294967295u ^ arg_0.c)), any(select(vec4<bool>(select(false, false, false), true, any(vec4<bool>(arg_0.e, arg_0.d, arg_0.d, arg_0.d)), arg_0.e), vec4<bool>(!arg_0.d, select(arg_0.e, false, arg_0.d), !arg_0.d, -370f <= arg_0.b), !(-566f > arg_0.b))));
    let var_1 = _wgslsmith_mult_i32(-_wgslsmith_mult_i32(arg_0.a, u_input.a), abs(22947i)) & u_input.a;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, abs(abs(-2147483647i)), arg_0.a, firstLeadingBit(arg_0.a) ^ ~1i), ~_wgslsmith_mult_vec4_i32(-u_input.c, u_input.c)), arg_0.b, arg_0.c, any(vec3<bool>(false != (false | arg_0.e), all(select(var_0.zz, var_0.xz, vec2<bool>(false, var_0.x))), !arg_0.e)), all(vec3<bool>(false, var_0.x, any(vec2<bool>(arg_0.d, var_0.x)))));
    var_0 = select(select(!vec3<bool>(arg_0.d, any(var_0.zz), var_0.x), vec3<bool>(false, _wgslsmith_div_f32(arg_0.b, -1000f) > var_2.b, true), true), select(select(select(select(vec3<bool>(true, true, var_2.d), vec3<bool>(arg_0.e, var_0.x, arg_0.d), true), !vec3<bool>(true, var_2.e, false), vec3<bool>(true, var_0.x, arg_0.d)), vec3<bool>(arg_0.e | false, any(vec3<bool>(var_2.d, false, true)), false), !select(vec3<bool>(true, false, arg_0.d), vec3<bool>(arg_0.e, var_2.e, var_2.d), var_0.x)), select(!(!vec3<bool>(true, true, var_0.x)), !(!vec3<bool>(false, arg_0.e, true)), !(!vec3<bool>(false, true, var_0.x))), select(select(select(vec3<bool>(arg_0.d, var_2.e, var_0.x), vec3<bool>(true, arg_0.d, false), vec3<bool>(false, false, false)), vec3<bool>(true, arg_0.d, arg_0.d), !arg_0.e), !select(vec3<bool>(var_2.e, true, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(arg_0.e, true, arg_0.e)), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(arg_0.d, false, true), arg_0.d))), select(select(select(select(vec3<bool>(true, arg_0.e, var_0.x), vec3<bool>(var_2.e, var_2.d, var_0.x), true), !vec3<bool>(arg_0.e, var_2.e, var_2.e), arg_0.d), select(!vec3<bool>(true, true, var_2.d), vec3<bool>(var_0.x, var_0.x, var_2.e), !vec3<bool>(false, arg_0.d, false)), select(select(vec3<bool>(var_2.e, arg_0.d, var_2.d), vec3<bool>(arg_0.e, false, var_2.d), vec3<bool>(false, arg_0.e, var_0.x)), vec3<bool>(false, false, true), select(var_0.x, var_2.e, var_2.d))), vec3<bool>(true, !var_2.d | !var_0.x, !(!var_2.d)), select(select(!vec3<bool>(false, false, var_0.x), vec3<bool>(arg_0.d, true, true), vec3<bool>(arg_0.e, arg_0.d, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, arg_0.d), false), all(!vec4<bool>(true, var_0.x, arg_0.e, true)))));
    let var_3 = Struct_5(Struct_3(Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(max(1000f, var_2.b)), 61074u, var_0.x, true)), Struct_2(arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.b)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_mod_i32(-1i, -var_1) >= (i32(-1i) * -u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(190f)) - _wgslsmith_f_op_f32(-1005f * _wgslsmith_f_op_f32(-1f))), arg_0.a, 14860u);
    return false;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2182f)) + 262f)))));
    var var_1 = Struct_1(u_input.a & u_input.a, 2219f, 23642u, func_4(Struct_1(-(~u_input.a), _wgslsmith_f_op_f32(func_3()), _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(1u, u_input.b, u_input.b)), true, all(vec3<bool>(true, true, true))), max(vec2<u32>(u_input.b, ~u_input.b), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(44197u, u_input.b)) | (vec2<u32>(56898u, u_input.b) ^ vec2<u32>(1u, u_input.b)))), !select(true, true, true));
    var_0 = -1000f;
    var var_2 = -u_input.c;
    var var_3 = vec3<i32>(2147483647i, _wgslsmith_mod_i32(var_1.a, u_input.a), countOneBits(~(-1i << (countOneBits(var_1.c) % 32u))));
    return firstLeadingBit(var_3.x);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = ~func_2();
    var var_1 = false;
    let var_2 = Struct_5(Struct_3(Struct_2(arg_0.b), Struct_2(arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)), _wgslsmith_f_op_f32(arg_0.b.b + arg_0.b.b)), !(arg_0.b.e || (u_input.a <= arg_0.a))), _wgslsmith_f_op_f32(-arg_0.b.b), var_0, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b))) | 96451u);
    let var_3 = ~(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(var_2.d, var_2.a.b.a.c), _wgslsmith_dot_vec4_u32(vec4<u32>(34098u, arg_0.b.c, 6117u, 2962u), vec4<u32>(4294967295u, var_2.a.b.a.c, arg_0.b.c, var_2.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(11631u, arg_0.b.c), vec2<u32>(31956u, arg_0.b.c)))) | _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(var_2.d, 0u, 1u)), select(~vec3<u32>(0u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 36064u, var_2.d), vec3<u32>(33338u, 4294967295u, 17429u), vec3<u32>(73675u, arg_0.b.c, arg_0.b.c)), !vec3<bool>(false, var_2.a.a.a.e, false))));
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1653f - -1875f) + _wgslsmith_div_f32(arg_0.b.b, var_2.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(var_2.a.c, arg_0.b.b)), arg_0.b.b)))))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i << (1u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-841f - -1000f)))) * _wgslsmith_f_op_f32(f32(-1f) * -756f)), 22002u, true, select(true, false, true));
    var_0 = func_1(Struct_4(var_0.a, Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -153f), ~var_0.c, false, all(vec2<bool>(var_0.d, var_0.d)))), select(vec2<bool>(false, var_0.d), !(!select(vec2<bool>(false, var_0.d), vec2<bool>(false, var_0.e), true)), !(!(!vec2<bool>(true, var_0.e)))));
    var_0 = Struct_1(-22460i, 1000f, ~u_input.b, true || (any(!vec4<bool>(true, var_0.d, var_0.d, var_0.d)) == func_4(Struct_1(u_input.c.x, 397f, var_0.c, false, var_0.e), vec2<u32>(var_0.c, var_0.c) ^ vec2<u32>(var_0.c, u_input.b))), false);
    var var_1 = select(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(var_0.d, var_0.d, var_0.e), var_0.e), vec3<bool>(false, var_0.d, true), !vec3<bool>(var_0.d, var_0.d, true))), !(!select(!vec3<bool>(var_0.e, true, false), vec3<bool>(var_0.d, var_0.e, var_0.e), !var_0.d)), var_0.d);
    var var_2 = ~(_wgslsmith_add_u32(84629u, ~u_input.b) >> (var_0.c % 32u));
    let var_3 = !(!var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(select(abs(u_input.b), ~u_input.b, true), ~var_0.c, var_0.c), u_input.a, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1344f * -495f) - _wgslsmith_f_op_f32(var_0.b * 343f)))), u_input.c);
}

