struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = Struct_2(arg_0, -1i ^ ~u_input.a, select(~(~vec2<i32>(arg_0.b.x, arg_0.b.x) >> (vec2<u32>(0u, 32408u) % vec2<u32>(32u))), ~arg_0.b.zw, all(!(!vec3<bool>(false, true, arg_0.a)))), select(vec2<bool>(arg_0.a, true), select(vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true)), any(vec4<bool>(true, false, arg_0.a, false)) & false), arg_0.a), -200f);
    var var_1 = var_0;
    let var_2 = Struct_2(var_0.a, countOneBits(var_0.c.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 1u, 0u, 79701u)) % 32u), countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.c.x, arg_0.b.x), vec2<i32>(arg_1, -2147483647i)), -var_0.a.b.yz)) ^ arg_0.b.yw, var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(var_0.e, 482f)))))));
    var_1 = var_2;
    var var_3 = u_input.a;
    return reverseBits(-1i);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2225f - arg_1))));
    var var_1 = select(vec2<i32>(-1i, -(i32(-1i) * -17610i)), vec2<i32>(43821i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -11630i)), _wgslsmith_div_i32(u_input.a, u_input.a))), select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(true, true))), select(true, true, true))) ^ (~countOneBits(-vec2<i32>(2147483647i, 1i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 33747i), abs(32490i)), vec2<i32>(u_input.a, u_input.a) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))));
    var_1 = -(~(-vec2<i32>(_wgslsmith_mult_i32(37897i, -1i), func_2(Struct_1(true, vec4<i32>(0i, u_input.a, var_1.x, 10939i)), var_1.x))));
    var_0 = -1165f;
    var_0 = -1234f;
    return false;
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = Struct_2(Struct_1(all(vec2<bool>(false, false)) & false, -vec4<i32>(2147483647i, ~(-2147483647i), -1i >> (arg_1.x % 32u), -2147483647i)), 2147483647i, (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(21891i, 0i), vec2<i32>(u_input.a, -26636i))) & vec2<i32>(i32(-1i) * -14040i, ~(-u_input.a)), vec2<bool>(!(func_1(vec2<u32>(18650u, arg_0), -349f) || true), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, true), true))), -258f);
    var var_1 = firstLeadingBit(vec2<u32>(arg_1.x, 1u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~arg_0, ~20033u), ~_wgslsmith_div_u32(arg_1.x, arg_1.x)), ~arg_1);
    var_1 = ~abs(arg_1);
    var var_2 = Struct_2(var_0.a, 22004i, _wgslsmith_add_vec2_i32(vec2<i32>(50268i, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.c.x, var_0.b), -1i)), vec2<i32>(-2147483647i, _wgslsmith_div_i32(i32(-1i) * -36256i, u_input.a))), vec2<bool>(var_0.d.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - -409f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1946f * var_0.e), var_0.e)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.e, 740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1040f + -1190f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2.e)), var_2.e))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.e)), _wgslsmith_f_op_f32(step(var_2.e, var_0.e)), _wgslsmith_f_op_f32(var_2.e * 408f), _wgslsmith_f_op_f32(-486f + var_0.e)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, var_2.e, -818f, var_0.e) + vec4<f32>(var_2.e, 966f, var_2.e, var_2.e)))))), !(!var_2.a.a)));
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(vec3<bool>(!func_1(vec2<u32>(0u, 6325u), 424f), !func_3(184139u, vec2<u32>(18195u, 62537u)), true)), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -1707i)), min(vec3<i32>(-49404i, -1i, u_input.a), vec3<i32>(2147483647i, 14002i, 1i))), -(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(1i, 1i, 8199i))), -23114i, -39391i, 1i));
    var_0 = Struct_1(var_0.a, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, 4732i)), vec2<i32>(var_0.b.x, 52148i), -var_0.b.zz), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(25345i, -1i))), ~_wgslsmith_mod_i32(firstTrailingBit(var_0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_0.b.xy)), -(~(i32(-1i) * -33695i)), _wgslsmith_add_i32(u_input.a, ~1i)));
    var var_1 = true;
    var_1 = all(vec3<bool>(var_0.a, true, !var_0.a));
    var_1 = 0i < firstLeadingBit(u_input.a);
    let var_2 = Struct_1(false, ~vec4<i32>(41149i, u_input.a, u_input.a, _wgslsmith_sub_i32(-6083i, _wgslsmith_dot_vec2_i32(vec2<i32>(25437i, u_input.a), vec2<i32>(var_0.b.x, 1i)))));
    let var_3 = -u_input.a;
    var_1 = false;
    var var_4 = select(vec3<u32>(max(40929u, 1u), 1u, ~(~1u)), abs(vec3<u32>(select(0u, 0u, var_0.a), ~6877u, firstTrailingBit(4294967295u))), func_1(~(~vec2<u32>(4294967295u, 4504u)), _wgslsmith_f_op_f32(1772f + _wgslsmith_f_op_f32(max(-109f, -1051f))))) >> ((~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 25488u, 39514u), vec3<u32>(4294967295u, 1u, 85316u)), min(28245u, 37805u), 1u) << (select(vec3<u32>(0u, 1u, ~4294967295u), min(_wgslsmith_div_vec3_u32(vec3<u32>(17909u, 41685u, 11754u), vec3<u32>(1u, 1u, 48716u)), vec3<u32>(1u, 1u, 1u)), true | var_0.a) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-var_0.b.x, firstLeadingBit(_wgslsmith_mod_i32(-15554i, 8662i))));
}

