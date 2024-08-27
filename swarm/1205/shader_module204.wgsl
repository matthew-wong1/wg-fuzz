struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2062f, -328f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, -1259f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -703f) - vec2<f32>(-323f, 130f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1710f) - vec2<f32>(725f, 318f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3, -2140f), vec2<f32>(arg_0.a, arg_0.a))), vec2<f32>(arg_3, arg_0.a), vec2<bool>(arg_0.c.x, false))))), arg_0.c.wz));
    let var_1 = Struct_1(~(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 13732i, arg_2, -28897i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2, arg_2, u_input.a.x, arg_2), vec4<i32>(u_input.a.x, 20244i, -54177i, -1i)))), 432f, reverseBits(-u_input.a) << (_wgslsmith_add_vec2_u32(min(~vec2<u32>(arg_1, arg_1), countOneBits(vec2<u32>(4294967295u, arg_1))), vec2<u32>(firstLeadingBit(arg_1), ~arg_1)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(1668f)));
    let var_2 = Struct_3(firstLeadingBit(~arg_1), select(select(!arg_0.c.yxx, vec3<bool>(true, true, arg_0.c.x), select(!arg_0.c.wxz, select(arg_0.c.xwy, vec3<bool>(arg_0.c.x, true, arg_0.c.x), arg_0.c.ywy), arg_0.c.x)), !vec3<bool>(arg_1 <= arg_1, arg_0.c.x, any(vec2<bool>(false, false))), true));
    return var_1.b;
}

fn func_2() -> f32 {
    var var_0 = 50892u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(1000f, 2147483647i, vec4<bool>(true, false, true, false)), 0u, -1i, 895f)), 1253f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1645f - 454f), _wgslsmith_f_op_f32(632f + -2125f)))) - _wgslsmith_f_op_f32(ceil(212f)));
    var_0 = ~(4294967295u & firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 0u, 23379u), ~0u)));
    var_0 = _wgslsmith_clamp_u32(countOneBits(_wgslsmith_mod_u32(1u, firstTrailingBit(0u) | 1u)), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 19879u), 1u)), 10234u);
    var var_2 = Struct_1(abs(vec4<i32>(reverseBits(0i), abs(0i), max(abs(-30080i), max(u_input.a.x, u_input.b)), -1i)), var_1, u_input.a << (countOneBits(reverseBits(~vec2<u32>(35059u, 27622u))) % vec2<u32>(32u)), var_1);
    return 164f;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1012f * 634f))), _wgslsmith_f_op_f32(func_2())) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(908f - -157f), _wgslsmith_div_f32(1000f, 762f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_2(1380f, 1i, vec4<bool>(true, true, true, false)), 70795u, u_input.b, -677f))))))));
    let var_1 = -_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a.x, ~(-30052i), ~u_input.b), firstLeadingBit(-vec3<i32>(u_input.b, u_input.a.x, u_input.b)), !all(vec3<bool>(false, true, true))), _wgslsmith_mod_vec3_i32(select(min(vec3<i32>(u_input.b, -1i, -1i), vec3<i32>(-263i, u_input.a.x, u_input.a.x)), vec3<i32>(25146i, u_input.b, 29762i), vec3<bool>(true, true, false)), -vec3<i32>(8631i, u_input.a.x, 1i)));
    var_0 = vec2<f32>(994f, -337f);
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -1006f), vec2<f32>(-1063f, var_0.x))))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 925f, -888f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(max(743f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 1f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(675f, var_0.x, var_0.x, var_0.x))))))))));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(var_2.x, var_2.x))), 173f), _wgslsmith_sub_i32(var_1.x, _wgslsmith_div_i32(u_input.b, u_input.a.x)), !vec4<bool>(true, u_input.b >= 1i, (var_1.x >> (6784u % 32u)) >= _wgslsmith_clamp_i32(u_input.b, var_1.x, 3360i), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(abs(~(~19677u)), ~(~(~countOneBits(1u))));
    var var_1 = func_1();
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(min(min(vec2<u32>(52870u, 4294967295u), ~vec2<u32>(6446u, 0u)), vec2<u32>(firstTrailingBit(4294967295u), 1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 29235u), vec2<u32>(1u, 18330u), false), vec2<u32>(65360u, 4294967295u)), ~_wgslsmith_clamp_u32(3027u, 51048u, 68167u)), ~(~vec2<u32>(59749u, 22429u))), ~vec2<u32>(1u, 1u));
    var_2 = ~vec2<u32>(firstTrailingBit(~(~0u)), 19141u);
    var var_3 = Struct_2(1766f, u_input.b >> (1u % 32u), vec4<bool>(!any(!vec2<bool>(var_1.c.x, var_1.c.x)), true == all(var_1.c), var_1.c.x, var_1.c.x));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(ceil(var_1.a)), 25174i, vec4<bool>(~(~0u) <= var_2.x, select(28878u <= var_2.x, var_3.c.x & false, var_1.c.x) & !(!var_3.c.x), var_1.c.x, true));
    var_2 = (min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 9505u), vec2<u32>(var_2.x, 1u) >> (vec2<u32>(70833u, 1u) % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, var_2.x))) >> (countOneBits(vec2<u32>(var_2.x, ~1u)) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(vec2<u32>(99445u, max(0u, var_2.x)) & ((vec2<u32>(var_2.x, var_2.x) | vec2<u32>(71744u, var_2.x)) << ((vec2<u32>(1u, 23644u) << (vec2<u32>(16020u, var_2.x) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, var_2.x) & ~vec2<u32>(9767u, 1u), firstLeadingBit(vec2<u32>(var_2.x, var_2.x))));
    var_1 = func_1();
    let var_5 = _wgslsmith_mult_vec3_i32(select(-(firstTrailingBit(vec3<i32>(var_1.b, -1i, u_input.b)) << (~vec3<u32>(var_2.x, var_2.x, var_2.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(select(max(vec3<i32>(var_4.b, var_3.b, var_3.b), vec3<i32>(var_3.b, var_4.b, 0i)), ~vec3<i32>(var_3.b, 2147483647i, var_4.b), vec3<bool>(false, var_3.c.x, var_1.c.x)), firstTrailingBit(reverseBits(vec3<i32>(var_3.b, var_3.b, -12958i)))), any(select(select(var_3.c.zw, var_4.c.yz, var_4.c.x), vec2<bool>(false, false), var_2.x >= 77114u))), select(vec3<i32>(_wgslsmith_mult_i32(-var_3.b, 2147483647i), ~(-43883i), 2147483647i), vec3<i32>(_wgslsmith_mod_i32(func_1().b, countOneBits(13041i)), countOneBits(-1i), 0i), select(vec3<bool>(true, 0i == var_4.b, var_1.c.x && var_3.c.x), select(var_1.c.zyy, var_1.c.yyz, var_1.c.x & var_1.c.x), vec3<bool>(-331f >= var_4.a, any(var_1.c.wwx), true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.b, -42050i));
}

