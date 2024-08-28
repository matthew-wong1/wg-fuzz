struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = ~(~51934i);
    let var_1 = ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 44744u, 38710u), countOneBits(u_input.a)) >> ((vec3<u32>(54879u, u_input.e.x, u_input.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u)));
    var var_2 = !vec3<bool>(true, all(vec2<bool>(any(vec4<bool>(true, true, false, false)), false)), any(vec2<bool>(true, select(true, true, true))));
    var_2 = select(select(select(vec3<bool>(all(vec3<bool>(true, true, var_2.x)), false, !var_2.x), !vec3<bool>(var_2.x, true, var_2.x), select(!vec3<bool>(var_2.x, false, false), select(vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, var_2.x, false), var_2.x), !vec3<bool>(var_2.x, true, false))), select(!vec3<bool>(false, false, var_2.x), select(select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, true)), !vec3<bool>(var_2.x, var_2.x, false), !vec3<bool>(true, var_2.x, true)), true), var_2.x), !(!vec3<bool>(var_2.x, var_2.x, var_2.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, var_2.x, var_2.x), var_2.x)) || !all(vec2<bool>(var_2.x, true)));
    let var_3 = Struct_1(18888i, arg_1.b);
    return u_input.e.x;
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), u_input.a.x & 74593u, firstTrailingBit(u_input.e.x), u_input.e.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, reverseBits(4294967295u))) | abs(1u));
    var var_1 = Struct_1(u_input.d.x, _wgslsmith_div_f32(arg_0, arg_0));
    let var_2 = var_1.a;
    return _wgslsmith_mod_vec4_u32(~(~reverseBits(vec4<u32>(u_input.e.x, u_input.a.x, 76556u, u_input.a.x))) << (vec4<u32>(4206u | _wgslsmith_mod_u32(35320u, u_input.e.x), _wgslsmith_mult_u32(~u_input.a.x, 4294967295u), func_3(59412i, Struct_1(1i, arg_0), Struct_1(var_1.a, 1230f)), _wgslsmith_add_u32(~u_input.e.x, firstLeadingBit(u_input.e.x))) % vec4<u32>(32u)), vec4<u32>(u_input.e.x, u_input.a.x, 82960u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, ~u_input.e.x), ~(~u_input.e.x))));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<bool>(!select(true, (-1i >> (u_input.a.x % 32u)) <= (i32(-1i) * -2836i), true), any(vec3<bool>(true, true, true)), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), u_input.e.x > (u_input.a.x & u_input.a.x));
    let var_1 = max(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(u_input.e, u_input.e)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e.x, 1u, u_input.a.x, 64630u), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(82262u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(u_input.e.x, 62518u, u_input.e.x, u_input.e.x)))), countOneBits(func_2(_wgslsmith_f_op_f32(852f * -206f))));
    var var_2 = vec2<u32>(1u, 44553u);
    let var_3 = Struct_1((1i & reverseBits(-u_input.b.x)) ^ u_input.c, -675f);
    let var_4 = min(firstTrailingBit(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, u_input.b.x), u_input.d.www))), firstTrailingBit(~(u_input.b.ywz >> (~u_input.a % vec3<u32>(32u)))));
    return abs(~vec3<u32>(_wgslsmith_add_u32(~4294967295u, var_1.x), ~(~12973u), min(u_input.a.x, abs(15387u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(min(12608i, 0i), _wgslsmith_f_op_f32(-121f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(128f)))));
    let var_2 = var_1;
    var_0 = func_2(-375f).yzz >> ((vec3<u32>(~0u, ~u_input.a.x | var_0.x, _wgslsmith_sub_u32(46958u, var_0.x ^ var_0.x)) << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-168f))));
    var var_4 = vec2<bool>(all(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), false)), true);
    let var_5 = select(vec2<i32>(var_1.a, -2147483647i), vec2<i32>(var_3.a, _wgslsmith_add_i32(11594i, var_2.a ^ var_3.a)), select(select(!(!vec2<bool>(false, var_4.x)), vec2<bool>(var_4.x, var_4.x), var_4.x && (var_4.x || var_4.x)), !vec2<bool>(var_4.x, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, var_4.x), vec2<bool>(var_4.x, false), var_4.x), !select(vec2<bool>(var_4.x, var_4.x), vec2<bool>(var_4.x, true), true))));
    var_4 = vec2<bool>(var_4.x, var_4.x);
    let var_6 = Struct_1(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 0i, -2147483647i), abs(vec3<i32>(var_3.a, 0i, var_2.a))), var_5.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -614f))), _wgslsmith_f_op_f32(f32(-1f) * -270f), false)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(-2158i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-356f, _wgslsmith_f_op_f32(var_6.b * -745f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-522f, var_3.b) + var_2.b), var_2.a);
}

