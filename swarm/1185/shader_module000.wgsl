struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: vec2<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = reverseBits(firstTrailingBit(~_wgslsmith_dot_vec2_u32(select(u_input.e, vec2<u32>(1u, u_input.c), vec2<bool>(false, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, arg_1.x), vec2<u32>(arg_1.x, 0u)))));
    var var_1 = true;
    var var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~(vec4<u32>(1u, arg_1.x, 68889u, 4294967295u) >> (vec4<u32>(arg_1.x, 35255u, arg_1.x, u_input.e.x) % vec4<u32>(32u))) >> (vec4<u32>(firstLeadingBit(0u), firstTrailingBit(742u), ~arg_1.x, _wgslsmith_div_u32(arg_1.x, arg_1.x)) % vec4<u32>(32u))), countOneBits(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 5961u, 4294967295u), vec4<u32>(arg_1.x, 0u, arg_1.x, u_input.c)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(36954u, 135651u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, u_input.e.x, u_input.e.x, u_input.c)), countOneBits(vec4<u32>(u_input.c, 0u, 4294967295u, 1u)), vec4<bool>(false, false, false, false)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(983f)) + _wgslsmith_div_f32(692f, -216f))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(-vec4<i32>(7315i, global1.x, u_input.a.x, global1.x), vec4<i32>(arg_0, -56120i, u_input.a.x, global1.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, -39557i, arg_0), true), ~select(vec4<i32>(-1i, arg_0, u_input.b, 14149i), vec4<i32>(global1.x, global1.x, arg_0, global1.x), false), vec4<i32>(~(-2147483647i), 1i, 1i, _wgslsmith_div_i32(-28059i, 2147483647i))), (~vec4<i32>(arg_0, -2147483647i, global1.x, arg_0) << (reverseBits(vec4<u32>(4294967295u, 10793u, 779u, 0u)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 81053u, arg_1.x, 25517u), vec4<u32>(69573u, u_input.c, 0u, u_input.e.x)), ~vec4<u32>(arg_1.x, u_input.c, arg_1.x, 1910u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f)), max(min(vec4<u32>(~u_input.e.x, u_input.e.x, max(u_input.e.x, 1u), ~4294967295u), vec4<u32>(65654u, abs(1u), 24025u, 4294967295u)), abs(vec4<u32>(~4294967295u, countOneBits(0u), 4294967295u, arg_1.x << (u_input.c % 32u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(26884i, global1.x, -2147483647i, arg_0)), max(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d, arg_0, global1.x, global1.x), countOneBits(vec4<i32>(-20443i, global1.x, 1i, -4686i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-64437i, 19224i, 1362i, 1i), vec4<i32>(-2147483647i, u_input.a.x, global1.x, arg_0)), select(vec4<i32>(arg_0, 1i, -2147483647i, -2147483647i), vec4<i32>(3530i, 0i, u_input.b, -1i), false), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, -1481i, -2147483647i), vec4<i32>(global1.x, u_input.b, 2356i, -32435i))))));
    var_2 = 29357u;
    return firstLeadingBit(vec4<u32>(41237u, arg_1.x, ~firstLeadingBit(12368u), _wgslsmith_mod_u32(3419u, max(74734u, ~22150u))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    let var_0 = Struct_1(-812f, ~1i, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * arg_1.x), -1702f))), max(func_3(-1i, reverseBits(~vec3<u32>(27720u, 75318u, u_input.c))), vec4<u32>(_wgslsmith_div_u32(u_input.e.x, u_input.e.x), u_input.e.x, u_input.c, ~u_input.e.x) << (~(vec4<u32>(u_input.c, u_input.c, 4294967295u, 6784u) << (vec4<u32>(4294967295u, 1u, 11100u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), 1i);
    var var_1 = u_input.a.xy & -vec2<i32>(2147483647i, 0i);
    return _wgslsmith_f_op_f32(arg_1.x * arg_1.x);
}

fn func_1() -> Struct_2 {
    var var_0 = max(~(~(vec4<u32>(53443u, 27564u, u_input.c, u_input.c) | abs(vec4<u32>(107542u, 0u, u_input.c, 5894u)))), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 50801u), select(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.e.x, u_input.c, u_input.c, u_input.e.x), false))));
    return Struct_2(select(select(vec3<u32>(var_0.x, _wgslsmith_sub_u32(4294967295u, var_0.x), ~59226u), var_0.zyx, true), _wgslsmith_sub_vec3_u32(var_0.zww, ~(~var_0.zxz)), vec3<bool>(!(var_0.x > var_0.x), !select(true, true, true), false)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1285f, -411f))), -219f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, false, false), vec4<f32>(1018f, 671f, 1054f, 1000f), global1.x))) * 212f)), Struct_1(646f, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.d, 1795i), vec4<i32>(0i, global1.x, 2147483647i, 2147483647i))), u_input.d), -1692f, abs(select(vec4<u32>(0u, var_0.x, 34522u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 20242u, 3707u, var_0.x), vec4<u32>(u_input.c, u_input.e.x, u_input.e.x, 7175u)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false))), select(-u_input.a.x, -2147483647i, false)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = array<vec2<bool>, 21>();
    var var_0 = arg_0.c.a;
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.zz, u_input.e) << (arg_0.a.yz % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(~func_1().c.d.yy, _wgslsmith_sub_vec2_u32(arg_0.a.zz | vec2<u32>(arg_0.a.x, 86805u), reverseBits(u_input.e))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 183f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 2389f))))), arg_0, arg_1);
    global1 = min(arg_2.zx, firstLeadingBit(arg_2.xy >> (abs(arg_0.c.d.yx) % vec2<u32>(32u))));
    return vec2<bool>(all(vec2<bool>(true, false)) | ((-32972i ^ -u_input.d) != (33252i << (1u % 32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 48481i;
    var var_1 = select(min(~abs(u_input.e) << ((_wgslsmith_mult_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, u_input.e.x)) >> (select(u_input.e, vec2<u32>(4294967295u, u_input.c), global0[_wgslsmith_index_u32(1u, 21u)]) % vec2<u32>(32u))) % vec2<u32>(32u)), firstTrailingBit(u_input.e)), u_input.e, func_4(func_1(), 2147483647i, vec3<i32>(-1i, 3040i, i32(-1i) * -25814i)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1622f - 296f) - -340f), _wgslsmith_f_op_f32(-1f))), Struct_2(_wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.c, var_1.x, 1u) & vec3<u32>(125333u, 4294967295u, u_input.c)), countOneBits(vec3<u32>(57004u, 4294967295u, var_1.x) >> (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1305f), vec2<f32>(518f, -1260f))) + vec2<f32>(1f, 1f)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1657f - -1356f))), 30111i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-677f * -951f)), vec4<u32>(u_input.e.x, 0u, ~var_1.x, u_input.e.x), global1.x)), (_wgslsmith_sub_i32(func_1().c.b, -1i) & ~81246i) << ((u_input.c | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), max(u_input.e, u_input.e))) % 32u));
    var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~min(var_2.b.a.yz, var_2.b.c.d.yx), firstTrailingBit(vec2<u32>(var_2.b.a.x, var_1.x))), ~var_2.b.a.xz) << (abs(~(~var_2.b.c.d.xy)) % vec2<u32>(32u));
    let var_3 = !global0[_wgslsmith_index_u32(var_2.b.c.d.x, 21u)];
    var var_4 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.b.x, -326f, var_4.a) * vec3<f32>(-137f, var_4.a, var_2.a.x)))))), vec3<f32>(1051f, -644f, -664f))));
}

