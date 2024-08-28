struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 4>();
    let var_0 = -max(vec4<i32>(22383i, _wgslsmith_mod_i32(abs(-7402i), ~23395i), select(_wgslsmith_div_i32(u_input.a, u_input.b), u_input.b, true), 1i), select((vec4<i32>(-1i, u_input.b, -2147483647i, 2147483647i) ^ vec4<i32>(u_input.a, u_input.b, -2147483647i, 0i)) << (~vec4<u32>(4294967295u, 0u, 51670u, 96799u) % vec4<u32>(32u)), -(vec4<i32>(0i, 3268i, u_input.a, 0i) | vec4<i32>(1i, u_input.a, 33223i, 1i)), vec4<bool>(true, any(vec4<bool>(true, false, false, false)), true, u_input.a < 2147483647i)));
    let var_1 = -vec3<i32>(~(-_wgslsmith_add_i32(-57670i, var_0.x)), var_0.x ^ firstTrailingBit(-2147483647i), 0i);
    let var_2 = Struct_1(1u, ~(~vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2246f, -811f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(292f, 149f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2095f) - vec2<f32>(-1768f, 497f)))))), !vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<i32>(firstTrailingBit(-1i), _wgslsmith_mod_i32(~(-var_0.x), var_0.x)));
    var var_3 = select(_wgslsmith_div_vec3_u32(~(~vec3<u32>(39458u, var_2.a, var_2.b.x)) | (~vec3<u32>(1u, 29940u, var_2.b.x) | ~vec3<u32>(var_2.a, 35536u, 19477u)), vec3<u32>(var_2.a, countOneBits(var_2.b.x), ~(~0u))), ~(reverseBits(max(vec3<u32>(var_2.b.x, 1u, var_2.a), vec3<u32>(3587u, 0u, 5375u))) << ((vec3<u32>(0u, var_2.b.x, var_2.b.x) & vec3<u32>(var_2.a, var_2.a, var_2.a)) % vec3<u32>(32u))), !vec3<bool>(true, all(!vec4<bool>(var_2.d.x, false, var_2.d.x, false)), _wgslsmith_f_op_f32(round(-1302f)) <= _wgslsmith_f_op_f32(-1000f - 1000f)));
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 92515u, 16419u, 17614u), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_3.x, 7542u, var_3.x), vec4<u32>(var_3.x, 38776u, var_2.b.x, var_2.b.x)), min(vec4<u32>(29197u, var_2.b.x, var_3.x, var_3.x), vec4<u32>(var_2.b.x, var_3.x, 0u, 9562u)) ^ vec4<u32>(33902u, 1u, 0u, var_2.a)), vec4<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 4294967295u, var_3.x, var_2.a), vec4<u32>(var_2.b.x, var_2.a, var_3.x, var_3.x)), 0u, ~(~var_3.x)) & abs(~min(vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<u32>(38435u, var_2.a, var_3.x, var_3.x))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(~0u, vec2<u32>(1u, _wgslsmith_add_u32(~select(1u, 9885u, false), _wgslsmith_mult_u32(countOneBits(0u), func_3()))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(max(-1181f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) * _wgslsmith_f_op_f32(269f - 135f))))), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false))), vec2<i32>(-7917i, u_input.a << (_wgslsmith_add_u32(1u, 1u) % 32u)));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-u_input.b, 2147483647i), ~_wgslsmith_add_i32(39120i, var_0.e.x)) ^ ~var_0.e, ~reverseBits(~(~vec2<i32>(var_0.e.x, 2147483647i))));
    global0 = array<Struct_1, 4>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 22u)];
    var var_3 = Struct_1(4294967295u, abs(~var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x), _wgslsmith_f_op_vec2_f32(-var_0.c)))), var_0.d, var_0.e);
    return var_3.a;
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_i32(8395i, min(-(u_input.a & (19288i | arg_0.e.x)), min(countOneBits(0i), -(u_input.a ^ 2147483647i))));
    let var_1 = global1[_wgslsmith_index_u32(521u, 22u)];
    var var_2 = _wgslsmith_mult_vec4_u32(~countOneBits(firstLeadingBit(vec4<u32>(1u, var_1.a, var_1.a, 0u))), vec4<u32>(func_2(), firstLeadingBit(~(~arg_0.a)), 18068u, 1u));
    global0 = array<Struct_1, 4>();
    var_0 = max(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-2147483647i, -11521i, arg_0.e.x, -6560i)), -vec4<i32>(reverseBits(16465i), -var_1.e.x, 1i, _wgslsmith_div_i32(u_input.a, var_1.e.x))), min(var_1.e.x, _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(var_1.e.x, u_input.a, var_1.e.x, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, var_1.e.x, 1i), reverseBits(vec4<i32>(5519i, arg_0.e.x, u_input.a, 2147483647i))))));
    return vec4<f32>(_wgslsmith_div_f32(arg_0.c.x, 1860f), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x * 1120f), var_1.d.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    global0 = array<Struct_1, 4>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) & _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), false), ~vec2<u32>(0u, 1u), abs(vec2<u32>(4294967295u, 1505u))), vec2<u32>(1u, ~62462u) >> (countOneBits(~vec2<u32>(4294967295u, 48254u)) % vec2<u32>(32u))) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~4294967295u, 1u), firstLeadingBit(firstLeadingBit(vec3<u32>(4294967295u, 13082u, 38555u))))), 4u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, abs(_wgslsmith_div_u32(~27938u, 4294967295u))), 22u)];
    return global0[_wgslsmith_index_u32(var_0.b.x, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1600f) + _wgslsmith_f_op_f32(f32(-1f) * -1962f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(173f, 1550f))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1041f, -998f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f), 2027f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1488f)) + 530f));
    global0 = array<Struct_1, 4>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(829f, -345f, 704f))))))))), _wgslsmith_f_op_f32(796f * -209f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(54291u, vec2<u32>(1u, 9701u), vec2<f32>(582f, 170f), vec2<bool>(var_0, var_0), vec2<i32>(-36324i, u_input.a)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-879f, 1342f, 1000f, -884f), vec4<f32>(1570f, -175f, 899f, 1276f), vec4<bool>(var_0, var_0, false, var_0)))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(1011f, -340f)), _wgslsmith_f_op_f32(-1096f - -887f), _wgslsmith_f_op_f32(trunc(-745f)), _wgslsmith_f_op_f32(step(-1164f, -476f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(978f, 1585f, -2062f, 941f)))))))));
    let var_2 = _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(1i, 16388i, var_1.e.x) | vec3<i32>(13735i, u_input.a, var_1.e.x)), ~vec3<i32>(-2147483647i, var_1.e.x, var_1.e.x)), -vec3<i32>(_wgslsmith_add_i32(0i, 0i), ~var_1.e.x, ~24234i) << (countOneBits(~(~vec3<u32>(var_1.b.x, var_1.a, 1u))) % vec3<u32>(32u)));
    let var_3 = firstTrailingBit(vec2<i32>(0i, -19866i));
    global1 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

