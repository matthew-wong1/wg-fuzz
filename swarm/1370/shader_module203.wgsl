struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(4294967295u, 27888u), vec2<u32>(64922u, 42860u), vec2<u32>(11607u, 61403u), vec2<u32>(266u, 4294967295u), vec2<u32>(45004u, 2130u), vec2<u32>(1u, 4294967295u), vec2<u32>(65182u, 4294967295u), vec2<u32>(1u, 0u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(167f, _wgslsmith_f_op_f32(f32(-1f) * -838f))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, !(any(vec3<bool>(arg_0.a.x, arg_1.a.x, arg_1.a.x)) | select(false, arg_1.a.x, false)))), _wgslsmith_f_op_f32(step(111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1006f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))))), all(!select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_1.a.x), select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), vec3<bool>(true, false, arg_1.a.x), arg_1.a.x), 1000f != var_0.x))));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = countOneBits(reverseBits(~(~select(vec3<u32>(arg_0.e, 38312u, 45254u), vec3<u32>(arg_0.c, 0u, arg_0.c), arg_0.b.a.x))));
    var var_1 = vec4<i32>(-1i) * -firstLeadingBit(countOneBits(vec4<i32>(arg_0.d, arg_0.d, -36294i, -661i)));
    let var_2 = !any(vec4<bool>(true, true, true, true)) && arg_0.b.a.x;
    var var_3 = Struct_1(vec2<bool>(!(!var_2), !var_2 | false), ~vec4<i32>(_wgslsmith_clamp_i32(arg_0.a.b.x ^ arg_0.d, abs(2147483647i), var_1.x), -firstLeadingBit(u_input.c.x), -1i, u_input.c.x));
    var var_4 = max(var_3.b.x, 1404i);
    return ~var_3.b;
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<u32>, 8>();
    global1 = array<vec2<u32>, 8>();
    let var_0 = -u_input.c;
    var var_1 = Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -53684i, 10551i), select(firstTrailingBit(u_input.c.x), 1217i, true), firstTrailingBit(-var_0.x), -1i)), Struct_1(vec2<bool>(true, true), func_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(42275i, var_0.x, -36316i, var_0.x)), Struct_1(vec2<bool>(false, false), vec4<i32>(6235i, var_0.x, -39195i, var_0.x)), _wgslsmith_div_u32(u_input.d, 29336u), 1i, 0u))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 56218u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(16180u, u_input.d, 23565u), vec3<u32>(u_input.a, u_input.d, 4294967295u)))), _wgslsmith_mod_i32(var_0.x, var_0.x), u_input.d);
    let var_2 = !(!(_wgslsmith_dot_vec2_u32(vec2<u32>(15134u, u_input.a), vec2<u32>(u_input.d, u_input.a)) < abs(var_1.c))) == any(!vec4<bool>(var_1.b.a.x || true, false, var_1.a.a.x | var_1.a.a.x, all(vec3<bool>(var_1.b.a.x, var_1.b.a.x, true))));
    return var_1.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global0 = -2159f;
    var var_0 = vec2<i32>(1i, ~16872i);
    var var_1 = arg_1;
    let var_2 = arg_1.c >> (_wgslsmith_dot_vec4_u32((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_1.e, 1u), vec4<u32>(13242u, 1u, 0u, arg_1.c)) & abs(vec4<u32>(arg_2, arg_2, 52380u, arg_1.c))) >> (vec4<u32>(4294967295u, 9056u, u_input.d, ~arg_2) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 4294967295u, arg_2, u_input.d), vec4<u32>(arg_2, 77589u, 1u, u_input.a)), vec4<u32>(arg_1.c, u_input.a, 62458u, 1u)) ^ min(firstTrailingBit(vec4<u32>(83450u, 1u, u_input.d, arg_1.c)), vec4<u32>(14785u, arg_2, 4294967295u, arg_2))) % 32u);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, -1000f)), arg_0))), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + arg_0), arg_0, abs(arg_1.c) > (u_input.d | 16045u))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(576f - arg_0))))), _wgslsmith_f_op_f32(f32(-1f) * -106f)));
    return arg_1;
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(!vec2<bool>(true, any(vec4<bool>(true, true, true, arg_0.a.a.x))), arg_0.b.b), arg_0.a, firstTrailingBit(_wgslsmith_div_u32(~(~67996u), func_4(1000f, arg_0, u_input.a).c ^ ~arg_0.c)), ~arg_0.d, ~arg_0.e);
    global1 = array<vec2<u32>, 8>();
    let var_1 = false;
    global0 = _wgslsmith_f_op_f32(-1115f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1886f * 1009f) + _wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_f_op_f32(ceil(1561f)))));
    let var_2 = ~vec3<u32>(1u >> (_wgslsmith_div_u32(~34894u, var_0.c & 0u) % 32u), abs(select(45090u, var_0.c, all(vec3<bool>(var_1, true, var_1)))), ~u_input.d);
    return StorageBuffer(arg_0.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(954f, -663f, -551f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(true, false), vec4<i32>(28842i, 1i, -28411i, u_input.b)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 0i, 3977i, -1i))))), 567f), Struct_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec4<i32>(-25553i, -2147483647i, -1i, 34997i)), func_2(), u_input.a | firstLeadingBit(u_input.d), 1i, ~abs(u_input.d)), ~1u));
}

