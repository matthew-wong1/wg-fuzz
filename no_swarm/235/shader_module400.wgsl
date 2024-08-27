struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = vec3<u32>(~(~(~1u)), _wgslsmith_mod_u32(31133u, 4294967295u), _wgslsmith_mod_u32(~((u_input.a.x ^ 74100u) ^ 1u), 4306u));
    var var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(~u_input.a.x, u_input.a.x)), 57094u), vec4<f32>(_wgslsmith_f_op_f32(min(-1370f, -1000f)), _wgslsmith_f_op_f32(floor(1799f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2125f * -155f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f) + _wgslsmith_f_op_f32(1135f - -614f)) + -618f)), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, false)) && true), vec4<i32>(1i, -2147483647i, abs(countOneBits(~(-34425i))), firstTrailingBit(~_wgslsmith_div_i32(-2147483647i, -1i))), 2147483647i);
    var var_2 = var_1.c.x;
    let var_3 = select(!select(var_1.c, vec2<bool>(true, true), select(!var_1.c, select(var_1.c, vec2<bool>(var_1.c.x, var_1.c.x), vec2<bool>(var_1.c.x, var_1.c.x)), vec2<bool>(true, var_1.c.x))), select(select(select(!vec2<bool>(var_1.c.x, false), var_1.c, var_1.c), var_1.c, !var_1.c), select(var_1.c, vec2<bool>(var_1.b.x == 1690f, true), vec2<bool>(true, true)), vec2<bool>(false, true)), select(select(select(select(var_1.c, var_1.c, var_1.c), vec2<bool>(var_1.c.x, var_1.c.x), true), vec2<bool>(var_1.c.x && false, true), true), var_1.c, all(!vec3<bool>(var_1.c.x, true, true))));
    var_1 = Struct_1(~32781u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-298f, var_1.b.x)), _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, _wgslsmith_div_f32(612f, _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x))))), !(!(!var_3)), firstLeadingBit(reverseBits(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(6449i, 25859i, var_1.d.x, 2147483647i), var_1.d), 2147483647i, var_1.d.x))), ~_wgslsmith_mod_i32((1932i >> (arg_0 % 32u)) & -1086i, 6691i));
    return vec3<bool>(_wgslsmith_f_op_f32(ceil(var_1.b.x)) >= 723f, !var_3.x && !var_1.c.x, any(select(select(!vec4<bool>(var_1.c.x, var_3.x, false, false), select(vec4<bool>(false, true, var_3.x, var_1.c.x), vec4<bool>(var_3.x, var_3.x, false, false), vec4<bool>(var_1.c.x, false, false, var_3.x)), false), select(select(vec4<bool>(var_3.x, true, var_3.x, var_1.c.x), vec4<bool>(false, false, var_1.c.x, var_3.x), vec4<bool>(var_3.x, false, true, true)), select(vec4<bool>(var_1.c.x, false, true, false), vec4<bool>(var_3.x, true, var_1.c.x, false), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false)), vec4<bool>(false, true, var_1.c.x, false)), any(select(vec4<bool>(var_3.x, var_3.x, var_1.c.x, false), vec4<bool>(false, var_1.c.x, false, var_3.x), vec4<bool>(var_1.c.x, var_1.c.x, false, true))))));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_3(u_input.a.x);
    var var_1 = select(vec4<bool>(!var_0.x, _wgslsmith_mod_u32(~arg_0.a, select(1u, arg_0.a, true)) >= u_input.a.x, true, false), !vec4<bool>(arg_0.b.x != arg_0.b.x, _wgslsmith_dot_vec3_u32(u_input.a.xyz, u_input.a.xzz) != u_input.a.x, !(false && var_0.x), arg_0.c.x), select(!(!(!vec4<bool>(arg_0.c.x, var_0.x, false, var_0.x))), vec4<bool>(var_0.x, select(arg_0.c.x, true, arg_0.c.x), true, false), !arg_0.c.x));
    var_0 = select(var_1.xzx, vec3<bool>(!var_1.x && all(!vec2<bool>(false, var_1.x)), var_1.x, var_0.x), func_3(1u));
    var_0 = select(!(!vec3<bool>(var_0.x | true, var_0.x | var_1.x, !var_1.x)), var_1.xzy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(602f - 877f), _wgslsmith_f_op_f32(f32(-1f) * -1390f))));
    var var_2 = arg_0.c;
    return arg_0.c;
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = ~(~u_input.a);
    var var_1 = Struct_1(var_0.x | var_0.x, _wgslsmith_f_op_vec4_f32(-arg_0), !(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), func_2(Struct_1(u_input.a.x, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec2<bool>(false, false), vec4<i32>(-1i, 0i, 1i, 1i), 5072i)))), vec4<i32>(_wgslsmith_mult_i32(~1i, -1i), firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 7691i, 4099i), vec4<i32>(1i, 1i, 1i, 1i))), 21963i, -(~abs(-1i))), max(i32(-1i) * -1i, _wgslsmith_clamp_i32(-2147483647i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2920i, 21245i, -39574i), vec3<i32>(2147483647i, 29050i, 11673i)))) & -max(35177i, i32(-1i) * -1i));
    var_1 = Struct_1((max(~u_input.a.x, var_0.x) ^ _wgslsmith_clamp_u32(firstTrailingBit(2601u), 11347u, 47375u)) & (countOneBits(_wgslsmith_div_u32(var_0.x, var_1.a)) << (max(1u, ~91814u) % 32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, 1000f)), _wgslsmith_f_op_f32(trunc(-283f)), var_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x)))))), !select(!func_3(20307u).zy, vec2<bool>(!var_1.c.x, var_1.c.x), !(!var_1.c)), var_1.d, -var_1.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.xy)));
    var var_3 = Struct_1(u_input.a.x, var_1.b, !var_1.c, var_1.d, select(var_1.e, 66869i, false));
    return firstTrailingBit(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~_wgslsmith_sub_vec4_u32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 504f, -500f, -1364f) + vec4<f32>(1068f, 548f, -230f, -1095f))), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(4133u, u_input.a.x, u_input.a.x, 11058u)) >> ((vec4<u32>(6704u, 1152u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), 1u, Struct_2(!vec3<bool>(true, any(vec3<bool>(true, false, false)), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-395f, 179f, 359f, 673f) * vec4<f32>(-332f, -1342f, -1317f, -144f)))), -reverseBits(select(vec4<i32>(-2147483647i, -29764i, 0i, 2147483647i), vec4<i32>(-19568i, -1i, 844i, 12253i), vec4<bool>(false, false, true, false))), Struct_1(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -265f, -939f, -793f))), select(func_3(u_input.a.x).xx, func_3(1u).zz, true), vec4<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, 2147483647i), _wgslsmith_clamp_i32(-36328i, 1i, 2147483647i), -1i >> (u_input.a.x % 32u), -4443i), 56747i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, var_0.c.d.e, var_0.c.d.e, var_0.c.c.x), _wgslsmith_f_op_f32(-var_0.c.b.x), ~_wgslsmith_sub_vec2_i32(var_0.c.d.d.xy, vec2<i32>(-1i, 9986i) & vec2<i32>(1i, var_0.c.d.d.x)), vec4<i32>(-(~select(var_0.c.d.e, var_0.c.d.e, var_0.c.d.c.x)), ~firstLeadingBit(1i), -35149i, abs(_wgslsmith_mult_i32(1i, 2147483647i))));
}

