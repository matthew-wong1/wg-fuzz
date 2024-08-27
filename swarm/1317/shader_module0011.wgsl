struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = Struct_1(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1706f))))), -abs(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(arg_0, u_input.b, -43083i, 41359i)), vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x))));
    let var_1 = Struct_3(_wgslsmith_div_i32(0i, -var_0.c.x), Struct_2(Struct_1(-693f, var_0.a, var_0.c), vec3<i32>(reverseBits(18881i), var_0.c.x, ~(-34512i))));
    let var_2 = vec4<bool>(any(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), any(vec2<bool>(false, true)))), all(vec3<bool>(all(vec3<bool>(true, true, true)), true, false)), true, any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, true)), all(vec3<bool>(true, true, true)))));
    var var_3 = ~min(vec3<u32>(1u, 1u, 1u), vec3<u32>(firstTrailingBit(0u), ~20048u, ~29250u)) >> (min(vec3<u32>(abs(_wgslsmith_add_u32(66612u, 57449u)), 1u, firstTrailingBit(1u)), reverseBits(countOneBits(vec3<u32>(2752u, 4294967295u, 4294967295u)))) % vec3<u32>(32u));
    var var_4 = 1u;
    return ~_wgslsmith_sub_vec4_u32(select(~vec4<u32>(0u, 53064u, var_3.x, var_3.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 63681u, var_3.x, 1u), vec4<u32>(var_3.x, 1u, var_3.x, var_3.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, 0u, var_3.x, var_3.x), _wgslsmith_div_vec4_u32(vec4<u32>(11824u, 121839u, var_3.x, 4294967295u), vec4<u32>(40078u, var_3.x, var_3.x, 4294967295u)), vec4<u32>(var_3.x, 1u, 1u, var_3.x) << (vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x) % vec4<u32>(32u))), var_2), firstLeadingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, 1u, var_3.x, 4294967295u), vec4<u32>(18133u, 14416u, var_3.x, 4294967295u)), select(vec4<u32>(var_3.x, 25293u, var_3.x, var_3.x), vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x), var_2), vec4<bool>(var_2.x, false, var_2.x, true))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(306f, -581f, (vec4<i32>(u_input.a.x, ~u_input.a.x, u_input.b, u_input.a.x) << ((~vec4<u32>(0u, 33821u, 1u, 1u) ^ func_3(u_input.a.x)) % vec4<u32>(32u))) & ((firstLeadingBit(vec4<i32>(1i, u_input.b, u_input.b, u_input.b)) & (vec4<i32>(u_input.b, u_input.b, u_input.b, 15477i) ^ vec4<i32>(u_input.b, -30326i, -1i, -2147483647i))) << (vec4<u32>(~0u, _wgslsmith_clamp_u32(50103u, 1924u, 4294967295u), 4294967295u, _wgslsmith_mod_u32(4294967295u, 91314u)) % vec4<u32>(32u))));
    let var_1 = abs(vec4<u32>(61286u, 13366u, ~1u, 69543u));
    var var_2 = !(((any(vec2<bool>(false, true)) && all(vec3<bool>(true, false, true))) && select(all(vec2<bool>(false, false)), true, -6721i == var_0.c.x)) | true);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))), 250f, ~vec4<i32>(-1i, u_input.b, abs(44706i), ~u_input.a.x)), Struct_3(var_0.c.x, Struct_2(Struct_1(var_0.b, _wgslsmith_f_op_f32(163f + var_0.b), ~var_0.c), u_input.a)), abs(var_0.c), countOneBits(-u_input.a.x), _wgslsmith_add_u32(~38649u, 0u) >> (_wgslsmith_dot_vec3_u32(countOneBits(min(var_1.wxy, var_1.yyz)), vec3<u32>(var_1.x, var_1.x, ~var_1.x)) % 32u));
    return 582f;
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1320f)) + -441f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-665f - _wgslsmith_f_op_f32(f32(-1f) * -687f)));
    var var_1 = Struct_5(~vec3<u32>(1u, max(~54489u, reverseBits(38346u)), abs(firstTrailingBit(1u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-530f, var_0.x)), 595f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1215f, -1110f)), -1071f)))));
    var var_2 = vec3<bool>(true, !(var_1.a.x <= var_1.a.x), false);
    let var_3 = max(max(var_1.a.x, min(var_1.a.x, var_1.a.x)), 12300u);
    let var_4 = vec4<bool>(!(!var_2.x), true, -401f >= var_0.x, true);
    return Struct_5(~(~vec3<u32>(var_1.a.x, var_3, 13445u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1047f, 428f, var_1.c.x))) * vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(var_1.b.x * var_0.x))))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x >> (select(reverseBits(4294967295u), ~15174u, false) % 32u);
    var var_1 = func_1();
    var var_2 = -317f;
    let var_3 = 83615u;
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1683f) + _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)))), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a ^ -u_input.a) >> (func_3(_wgslsmith_mod_i32(var_0, var_0)).yzw % vec3<u32>(32u)), vec3<f32>(618f, _wgslsmith_div_f32(-765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-362f, 1660f)) + _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)))), var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) - 1000f));
}

