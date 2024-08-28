struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1137f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1257f), -105f)))) * arg_0.c.x);
    var var_1 = Struct_3(Struct_1(~arg_0.a, u_input.d, arg_0.c), Struct_2(u_input.d.xyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - 717f), -firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.d.wyx, u_input.d.xzy))), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.c.zy))), Struct_2(((arg_0.b.xzz & vec3<i32>(u_input.c.x, 1i, arg_0.b.x)) >> ((arg_0.a.yxw & arg_0.a.zyy) % vec3<u32>(32u))) | vec3<i32>(-1i, firstTrailingBit(-2147483647i), i32(-1i) * -27163i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.x))), u_input.d.zyy));
    let var_2 = 6987i;
    return ~var_1.c.a.ywz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = ~vec2<u32>(~(~select(71166u, 0u, true)), ~74008u);
    var_1 = _wgslsmith_mult_vec2_u32(~(_wgslsmith_clamp_vec2_u32(arg_0.a.ww, vec2<u32>(arg_1.a.x, arg_0.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, 43589u), vec2<u32>(arg_1.a.x, 27659u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), arg_1.a.xy, select(vec2<u32>(arg_0.a.x, arg_1.a.x), arg_0.a.zw, false)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(abs(arg_1.a.xz), _wgslsmith_sub_vec2_u32(arg_1.a.xw, vec2<u32>(var_1.x, 38344u))), arg_1.a.xw)));
    let var_2 = _wgslsmith_dot_vec3_u32(func_3(Struct_1(firstLeadingBit(arg_1.a), ~_wgslsmith_add_vec4_i32(arg_1.b, vec4<i32>(2147483647i, u_input.a, u_input.a, -26114i)), _wgslsmith_f_op_vec3_f32(-arg_1.c)), vec2<f32>(arg_2.b, arg_1.c.x)), vec3<u32>(var_1.x ^ _wgslsmith_add_u32(~var_1.x, _wgslsmith_add_u32(arg_0.a.x, 4294967295u)), max(~u_input.b, 9532u), firstTrailingBit(_wgslsmith_mult_u32(abs(0u), arg_0.a.x))));
    var var_3 = arg_0;
    return select(!vec4<bool>(-34304i == arg_0.b.x, true, false, false), !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true))), arg_2.b == -2104f);
}

fn func_1() -> i32 {
    var var_0 = reverseBits(_wgslsmith_dot_vec4_i32(u_input.c, u_input.d) << (firstLeadingBit(4294967295u) % 32u));
    var var_1 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), !select(func_2(Struct_1(vec4<u32>(u_input.b, u_input.b, 19155u, 40889u), vec4<i32>(1i, u_input.c.x, -12553i, -23383i), vec3<f32>(3016f, 2557f, -858f)), Struct_1(vec4<u32>(u_input.b, 1u, 81770u, 2608u), vec4<i32>(u_input.e.x, u_input.a, u_input.c.x, -76604i), vec3<f32>(-908f, -369f, 1300f)), Struct_2(vec3<i32>(u_input.c.x, 2147483647i, u_input.a), 2019f, u_input.d.wxw), 382f), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), !func_2(Struct_1(vec4<u32>(51901u, 55570u, u_input.b, u_input.b), vec4<i32>(44640i, 1i, -14845i, u_input.e.x), vec3<f32>(1175f, -568f, 687f)), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), u_input.d, vec3<f32>(-829f, -774f, 826f)), Struct_2(u_input.c.xzz, -874f, u_input.c.zzz), _wgslsmith_f_op_f32(309f * -1668f))), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true)) && func_2(Struct_1(max(vec4<u32>(8842u, 91205u, 1u, 2114u), vec4<u32>(u_input.b, 4294967295u, 11193u, 1138u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -58399i, 22499i, u_input.e.x), u_input.d), vec3<f32>(263f, -186f, -894f)), Struct_1(~vec4<u32>(43270u, 0u, 37034u, 51481u), -vec4<i32>(-4085i, u_input.a, u_input.c.x, 35007i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-473f, -1000f, 670f)))), Struct_2(~u_input.d.xzw, _wgslsmith_f_op_f32(117f * -1347f), u_input.d.yyy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1786f) + 105f)).x);
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-194f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(290f)))))), 1f);
    var var_1 = all(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), 1064f >= _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-1000f - 995f)), -func_1() <= 35278i));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1279f * 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_0.x))) + -838f)));
    var var_4 = func_3(Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, u_input.b), vec4<u32>(var_2, 58489u, u_input.b, u_input.b))), -(vec4<i32>(59699i, u_input.c.x, u_input.a, u_input.a) >> (vec4<u32>(53546u, 4294967295u, 36427u, var_2) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1436f, var_0.x, 468f), var_0)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(round(var_0.zx)), true))))).xx ^ (_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2, u_input.b), vec2<u32>(var_2, 1u)), select(~vec2<u32>(17101u, 53665u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(u_input.b, 1u), vec2<u32>(var_2, var_2)), select(vec2<bool>(true, true), vec2<bool>(false, false), true))) | vec2<u32>(u_input.b, u_input.b << (u_input.b % 32u)));
    var var_5 = Struct_4(countOneBits(~(u_input.b | u_input.b)), vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, u_input.a, u_input.e.x), u_input.c)), -13081i) >> (firstTrailingBit(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.b, 0u)), func_3(Struct_1(vec4<u32>(43592u, 1u, var_2, u_input.b), u_input.d, var_0), var_0.xy).zy)) % vec2<u32>(32u)), abs(vec2<i32>(-2147483647i, ~reverseBits(u_input.a))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1063f)) * _wgslsmith_f_op_f32(round(1000f))) - _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), func_2(Struct_1(vec4<u32>(reverseBits(57296u), 36265u, reverseBits(var_2), ~1u), vec4<i32>(-u_input.e.x, u_input.c.x, u_input.a, -u_input.c.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -241f, var_0.x) - var_0)))), Struct_1(vec4<u32>(firstTrailingBit(var_2), firstLeadingBit(var_4.x), var_2, ~u_input.b), countOneBits(-vec4<i32>(u_input.e.x, -162i, -57341i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-var_0)), Struct_2(abs(u_input.d.zyw << (vec3<u32>(25181u, 12345u, u_input.b) % vec3<u32>(32u))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), u_input.c.xxw), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-576f, _wgslsmith_f_op_f32(var_0.x - -451f), all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(max(555f, 1869f))))).xw);
    var_5 = Struct_4(66330u << (abs(1u) % 32u), var_5.b, vec2<i32>(min(var_5.c.x, var_5.c.x ^ var_5.c.x), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_5.d))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(select(-2548f, -1128f, true)), _wgslsmith_f_op_f32(-var_5.d.x)))), !select(func_2(Struct_1(vec4<u32>(u_input.b, u_input.b, 4294967295u, 95590u), u_input.c, var_0), Struct_1(vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u), vec4<i32>(-2147483647i, u_input.e.x, var_5.c.x, 27567i), vec3<f32>(862f, var_0.x, 1064f)), Struct_2(vec3<i32>(u_input.d.x, 32985i, u_input.d.x), 419f, u_input.d.wzx), _wgslsmith_f_op_f32(f32(-1f) * -1437f)).zy, !vec2<bool>(var_5.e.x, var_5.e.x), any(select(var_5.e, var_5.e, true))));
    var var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), select(vec2<i32>(u_input.c.x, u_input.e.x), vec2<i32>(u_input.c.x, u_input.d.x), false)) ^ reverseBits(vec2<i32>(u_input.d.x, -2147483647i) & u_input.c.xz)), 2185f, u_input.d.x);
}

