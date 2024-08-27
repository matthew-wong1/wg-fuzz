struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(trunc(-1000f)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 6197i), vec3<i32>(u_input.a, u_input.a, arg_0.c.x))), -28471i), -15651i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.d)))))));
    return arg_0.c | max(var_0.c, var_0.c);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    var var_0 = u_input.b.x;
    var_0 = ~(~u_input.b.x);
    var var_1 = Struct_1(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 34771u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-237f)), 1f)), _wgslsmith_add_vec2_i32(~reverseBits(abs(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_clamp_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-7894i, u_input.a), vec2<i32>(u_input.a, 4047i)), func_3(Struct_1(u_input.b.x, -264f, vec2<i32>(-7363i, -9553i), 1050f)), vec2<i32>(u_input.a, u_input.a >> (10308u % 32u)))), _wgslsmith_f_op_f32(select(396f, -1051f, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, 371f, 836f), vec3<f32>(-1395f, 110f, -1492f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 317f, var_1.d) + vec3<f32>(var_1.d, var_1.b, 104f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d, var_1.d, 421f))), true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(-var_1.d)))));
    let var_3 = arg_0;
    return 4294967295u;
}

fn func_1() -> vec4<i32> {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), func_2(vec4<bool>(any(vec2<bool>(false, false)), true, false, true), true), 25991u << ((select(_wgslsmith_sub_u32(u_input.b.x, 50081u), ~u_input.b.x, true) | (u_input.b.x ^ abs(16236u))) % 32u), ~(~u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(-776f - 1186f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -659f), -477f)) - _wgslsmith_f_op_f32(f32(-1f) * -301f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f + 2183f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(694f * -924f)))), _wgslsmith_f_op_f32(f32(-1f) * -826f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f))))));
    let var_2 = Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -846f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f), _wgslsmith_div_f32(-1530f, 112f)))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(1u, var_0.x) % vec2<u32>(32u)), reverseBits(vec2<i32>(-1i, 1i))) & vec2<i32>(1i, _wgslsmith_add_i32(u_input.a, 1i)), ~(~vec2<i32>(u_input.a, u_input.a)) & max(~vec2<i32>(-11343i, u_input.a), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(26943i, u_input.a), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1735f))))));
    return _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(abs(var_2.c.x) ^ var_2.c.x, -24150i, -8493i, var_2.c.x)), ~firstLeadingBit(countOneBits(vec4<i32>(var_2.c.x, 1565i, -24579i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(select(func_1(), countOneBits(select(-vec4<i32>(-12511i, 1i, u_input.a, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(-8076i, -2147483647i, u_input.a, 96032i), vec4<i32>(u_input.a, 34495i, 48445i, -2147483647i)), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), firstTrailingBit(~select(min(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, 0i, u_input.a)), max(vec4<i32>(u_input.a, u_input.a, -7218i, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, false, false, false))));
    let var_1 = _wgslsmith_div_u32(69414u, ~1u);
    var var_2 = _wgslsmith_clamp_i32(0i | select(2147483647i, reverseBits(var_0.x), all(vec4<bool>(false, false, false, true))), var_0.x, -3096i);
    var_0 = ~vec4<i32>(2147483647i, _wgslsmith_div_i32(~reverseBits(u_input.a), -u_input.a), -2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(1i, -2147483647i)), vec2<i32>(-1i) * -var_0.xz));
    var_2 = i32(-1i) * -11924i;
    var_2 = i32(-1i) * -25658i;
    var var_3 = u_input.b;
    let var_4 = Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(firstLeadingBit(firstTrailingBit(vec2<u32>(67945u, 4294967295u)))), _wgslsmith_mult_vec2_u32(~select(var_3.yx, var_3.zx, vec2<bool>(true, false)), ~_wgslsmith_add_vec2_u32(u_input.b.xz, var_3.zy))), -408f, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1i, var_0.x), var_0.x), -var_0.xw)), 477f);
    var_3 = min(~u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, select(vec4<u32>(0u, ~1u, ~0u, _wgslsmith_add_u32(u_input.b.x, var_1)), vec4<u32>(~4294967295u, min(0u, 0u), firstLeadingBit(u_input.b.x), _wgslsmith_mod_u32(var_1, 4294967295u)), vec4<bool>(true, 0u >= var_1, all(vec4<bool>(false, false, false, true)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_4.c.x, var_4.c.x, var_0.x), vec4<i32>(var_4.c.x, 1i, 22819i, var_0.x), vec4<i32>(-28289i, -26059i, var_0.x, var_4.c.x)), countOneBits(vec4<i32>(u_input.a, u_input.a, -12889i, var_0.x))), vec4<i32>(~0i, var_0.x, -14672i, u_input.a)), -_wgslsmith_add_vec4_i32(func_1(), -vec4<i32>(1940i, 33480i, 2147483647i, var_4.c.x))));
}

